//
// Created by Elion Karaboja on 27/04/22.
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
                grid.drawPath(path);
                flag = true ;
            } else if( flag){
                cout << "Path already found" << endl;
            }else{
                cout << "No path found." << endl;
            }
            sf::sleep(sf::milliseconds(350));
        }

        window.clear(Color::Black);

        for( auto i : grid.getNodes()){
            window.draw(i.getShape());
        };

        window.display();

    };
    return 0;
};

