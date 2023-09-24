//
// Created by Elion Karaboja on 27/04/22.
//
#include <SFML/Graphics.hpp>
#include <iostream>
#include <vector>
#include <cmath>
#include "Node.h"
#include "Grid.h"

using namespace sf;
using namespace std;


void drawGrid(RenderWindow& window, const Grid& griglia){
    for( auto i : griglia.getNodes()){
        window.draw(i.getShape());
    };
};


vector<Node*> a_star(Node* start,Node* goal, Grid& griglia){


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
    start->g = 0;
    start->h = abs(start->x - goal->x) + abs(start->y - goal->y);  ///calcolo euristica
    start->f = start->g + start->h;
    open_set.push_back(start);

    while (!open_set.empty()) {      // terminazione a lista degli aperti vuota

        Node* current = open_set.front();       // prende in nodo iniziale
        open_set.erase(open_set.begin());// toglie dal vettore dei nodi in analisi

        if (current->x == goal->x && current->y == goal->y) {       // se questo nodo è quello di arrivo ci fermiamo
            vector<Node*> path;
            Node* node = current;
            while (node != nullptr) {
                path.push_back(node);
                //node->getShape().setFillColor(sf::Color::Green);

                node = node->parent;
            }
            return path;
        }



        closed_set.push_back(current);          // se questo non è il nodo di arrivo lo aggiungo al vettore dei nodi analizzati
        Node* m = griglia.getNodeByPos(current->getPos());
        if(m->is_obstacle()){
            continue;
        }
        for (int i = 0; i < num_directions; ++i) {          /// controllo le 8 celle adiacenti una ad uno
            int x = current->x + dx[i];
            int y = current->y + dy[i];

            if (x < 0 || x >= griglia.larghezza()/30 || y < 0 || y >= griglia.altezza()/30  ) { // se il nodo ha coordinate "out of bounds" ritorna all'inizio del loop
                continue;                                               //TODO modify the bound of the a-star alg search
            }



            int g = current->g + 1; // avanzo di un passo
            //int  h = std::sqrt((x-goal->x)^2 -(y-goal->y)^2);
            int h = abs(x - goal->x) + abs(y - goal->y);  /// calcolo euristica Manhattan-Distance
            int f = g + h;  /// a-star algorithm core

            bool in_closed_set = false;
            for (auto node : closed_set) {    // se un nodo è gia stato anallizzato  vado a quello successivo
                if (node->x == x  && node->y == y && node->f <= f) {
                    in_closed_set = true;
                    break;
                }
            }

            if (in_closed_set ) {
                continue;
            }

            bool in_open_set = false;   //flag
            for (auto node : open_set) {   // analizzo con i nodi da analizzare e se ha f(x_i)<=f(x_current)
                if (node->x == x && node->y == y && node->f <= f) {
                    in_open_set = true;
                    break;
                }
            }

            if (!in_open_set) {
                Node* nb=  new Node(x, y, g, h, f, current);
                open_set.push_back(nb);
            }
        }
    }

    return {};  //it returns an empty vector if no path was found
}


int main() {

    //inizializzazione finestra
    Vector2i resolution = Vector2i(1200,600);
    RenderWindow window(VideoMode(resolution.x,resolution.y),"A* algorithm!");
    window.setFramerateLimit(60);
    Grid griglia =  Grid(resolution);

    // nodo iniziale
    Node* start = griglia.getNodeByPos({0,5});
    start->is_start();

    // nodo finale
    Node* goal = griglia.getNodeByPos({15,10});
    goal->is_goal();

    //inizializzazione percorso
    vector<Node*> path ={};
    bool flag   = false ;

    //window loop
    while (window.isOpen()) {
        Event event;

        while(window.pollEvent(event)) {
            if (event.type == Event::Closed) {
                window.close();
            }
        }

        //settaggio degli ostacoli a finestra aperta premendo sulle singole celle
        if(Mouse::isButtonPressed(Mouse::Left)){


            Vector2i pos = Mouse::getPosition(window)/30;
            if(pos.x != 0 && pos.y != 0){
                Node* m = griglia.getNodeByPos(pos);
                while(m != nullptr){
                    if(!m->is_obstacle()){
                        m->make_obstacle(true);
                        //m->setColor(sf::Color::Red);
                    };
                    sf::sleep(sf::milliseconds(20));
                    m = nullptr;
                }

            }


        };

        //con "Spazio" l'algoritmo A-star inizia e viene evidenziato il percorso trovato
        if (Keyboard::isKeyPressed(Keyboard::Space)) {
            path = a_star(start, goal,griglia);

            if (!path.empty() && !flag ) {
                cout << "Path found!" << endl;
                for (auto node : path) {

                    cout << "(" << node->x << ", " << node->y << ") ";

                };
                griglia.drawPath(path);
                flag = true ;
            } else if( flag){
                cout << "Path already found" << endl;
            }else{
                cout << "No path found." << endl;

            }
            sf::sleep(sf::milliseconds(350));

        }


        //Premendo "c" il percorso viene eliminato
        if(Keyboard::isKeyPressed(Keyboard::C)){
            if(flag){
                griglia.clearPath(path);
                path = {};
                flag = false;
            }
        };

        if(Keyboard::isKeyPressed(Keyboard::X)){
            griglia.clearObstacles();
        }

        window.clear(Color::Black);

        drawGrid(window, griglia);

        window.display();


    };



    return 0;
};

