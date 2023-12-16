//
// Created by Elion Karaboja on 02/10/23.
//

#ifndef A_STAR_A_STAR_H
#define A_STAR_A_STAR_H

#include "Node.h"
#include "Grid.h"

/*Pseudo-code:
 *
 * cost(current.node) = heuristic(current.node) + step(current.node)
 *
 * cost() := costo totale del nodo
 * heuristic() := funzione di stima(euristica) del nodo
 * step() := distanza corrente-inizio del nodo
 *
 *
 * 1) vengono esaminati i possibili nodi adiacenti
 * 2) l algoritmo privilegia nodi con f() minore
 * 3) iterazione
 */


vector<Node*> a_star(Node* start,Node* goal, Grid& grid){

    int dx[] = {-1,0,1,0}; // 4 directions
    int dy[] = {0,1,0,-1};

    /*
    int dx[] = {-1, 0, 1, -1, 1, -1, 0, 1};    // 8 directions
    int dy[] = {-1, -1, -1, 0, 0, 1, 1, 1};
    */

    int num_directions = sizeof(dx) / sizeof(dx[0]);

    vector<Node*> open_set;         //nodi in analisi
    vector<Node*> closed_set;       //nodi analizzati

    //initialize start node
    start->set_step(0);
    Vector2i start_pos = start->getPos();
    Vector2i goal_pos = goal->getPos();
    start->set_heuristic(abs(start_pos.x - goal_pos.x) + abs(start_pos.y - goal_pos.y))  ;  ///calcolo euristica
    start->set_cost(start->get_step() + start->get_heuristic()) ;
    open_set.push_back(start);

    while (!open_set.empty()) {      // terminazione a lista degli aperti vuota

        Node* current = open_set.front();// prende in nodo iniziale
        Vector2i current_pos = current->getPos();
        open_set.erase(open_set.begin());// toglie dal vettore dei nodi in analisi

        if (current_pos == goal_pos) {       // se questo nodo è quello di arrivo ci fermiamo
            vector<Node*> path;
            Node* node = current;
            while (node != nullptr) {
                path.push_back(node);
                node = node->get_parent();
            }
            return path;
        }

        closed_set.push_back(current);          // se questo non è il nodo di arrivo lo aggiungo al vettore dei nodi analizzati

        Node* m = grid.getNodeByPos(current->getPos());
        if(m->is_obstacle()){
            continue;
        }

        for (int i = 0; i < num_directions; ++i) {          /// controllo le 8 celle adiacenti una ad uno
            int x = current_pos.x + dx[i];
            int y = current_pos.y + dy[i];

            if (x < 0 || x >= grid.getWidth() || y < 0 || y >= grid.getHeight()  ) { // se il nodo ha coordinate "out of bounds" ritorna all'inizio del loop
                continue;
            }

            int step = current->get_step() + 1; // avanzo di un passo
            //int  h = std::sqrt((x-goal->x)^2 -(y-goal->y)^2);
            int heuristic = abs(x - goal_pos.x) + abs(y - goal_pos.y);  /// calcolo euristica Manhattan-Distance
            int cost = step + heuristic;  /// a-star algorithm core

            bool in_closed_set = false;
            for (auto node : closed_set) {    // se un nodo è gia stato anallizzato  vado a quello successivo
                if (node->getPos().x == x  && node->getPos().y == y && node->get_cost() <= cost) {
                    in_closed_set = true;
                    break;
                }
            }

            if (in_closed_set ) {
                continue;
            }

            bool in_open_set = false;   //flag
            for (auto node : open_set) {   // analizzo con i nodi da analizzare e se ha f(x_i)<=f(x_current)
                if (node->getPos().x == x  && node->getPos().y == y && node->get_cost() <= cost) {
                    in_open_set = true;
                    break;
                }
            }

            if (!in_open_set) {
                Node* nb=  new Node(x, y, step, heuristic, cost, current);
                open_set.push_back(nb);
            }
        }
    }

    return {};  //it returns an empty vector if no path was found
}


#endif //A_STAR_A_STAR_H
