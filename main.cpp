//
// Created by Elion Karaboja.
//
#include "SFML/Graphics.hpp"
#include <iostream>
#include <vector>
#include "Node.h"
#include "Grid.h"
#include "A-star.h"

using namespace sf;
using namespace std;

int main() {

    //inizializzazione finestra
    Vector2i resolution = Vector2i(360,360);
    RenderWindow window(VideoMode(resolution.x,resolution.y),"A* algorithm!");
    window.setFramerateLimit(60);
    Grid grid =  Grid(resolution/30);

    // nodo iniziale
    Node* start = grid.getNodeByPos({0,0});
    start->set_start();

    // nodo finale
    Node* goal = grid.getNodeByPos({6,6});
    goal->set_goal();

    //inizializzazione percorso
    vector<Node*> path = {};
    bool flag = false ;

    //inizializzazione ostacoli
    vector<Vector2i> obstacles_positions = {
            {1,1},{1,2},{1,3},{1,4},{1,5},{1,6},
            {3,1},{4,1},{5,1},{6,1},{7,1},{8,1},
            {1,7},{1,8},{1,9},{1,10},{2,1},{2,10},
            {1,3},{3,3},{4,3},{5,3},{6,3},{7,3},
            {8,3},{3,4},{8,4},{3,5},{8,5},{9,1},
            {10,1},{2,10},{3,10},{4,10},{5,10},{6,10},
            {7,10},{8,10},{9,10},{10,10},{10,2},{10,3},
            {10,4},{10,5},{10,7},{10,8},{10,9},
            {3,6},{3,8},{4,8},{5,8},{6,8},
            {7,8},{8,8},{8,6},{8,7},{5,7},{5,6},
            {5,5},{6,5}
    };
    for(auto m:obstacles_positions){
        Node* ob = grid.getNodeByPos(m);
        ob->make_obstacle(true);
    }

    //window loop
    while (window.isOpen()) {
        Event event;

        while(window.pollEvent(event)) {
            if (event.type == Event::Closed) {
                window.close();
            }
        }

        //con "Spazio" l'algoritmo A-star inizia e viene evidenziato il percorso trovato
        if (Keyboard::isKeyPressed(Keyboard::Space)) {
            path = a_star(start, goal,grid);
            if (!path.empty() && !flag ) {
                cout << "Path found!" << endl;
                for (auto path_node : path) {
                    cout << "(" << path_node->getPos().x << ", " << path_node->getPos().y << ") ";

                };
                cout<<endl;
                grid.drawPath(path);
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
                grid.clearPath(path);
                path = {};
                flag = false;
            }
        };

        if(Keyboard::isKeyPressed(Keyboard::X)){
            grid.clearObstacles();
        }

        window.clear(Color::Black);

        for( auto i : grid.getNodes()){
            window.draw(i.getShape());
        };

        window.display();

    };

    return 0;
};

