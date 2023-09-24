//
// Created by Elion Karaboja on 12/05/22.
//

#ifndef A_STAR_GRID_H
#define A_STAR_GRID_H

#include "Node.h"
#include <vector>
#include "SFML/Graphics.hpp"
#include "SFML/System.hpp"
#include "SFML/Window.hpp"

using namespace std;
using namespace sf;
class Grid {
private:
    vector<Node> m ;
    Vector2i dim;

public:

     Grid(Vector2i _dim);

    int altezza() const{
        return dim.y;
    };
    int larghezza() const {
        return dim.x;
    };
    vector<Node> getNodes() const{
        return m;
    }

    Node* getNodeByPos(sf::Vector2i p);
    void drawPath(vector<Node*> path){
        for(auto node : path){
            if(node != path[0] && node != path[path.capacity()-1]){
                this->getNodeByPos(node->getPos())->setColor(sf::Color::Magenta);

            }
        };
    }
    void clearPath(vector<Node*> path){
        for(auto node : path){
            if(node != path[0] && node != path[path.capacity()-1]){
                this->getNodeByPos(node->getPos())->setColor(sf::Color::Blue);

            }
        };
    }

    void clearObstacles(){
        for (auto i : m){
            if(i.is_obstacle()){
                i.make_obstacle(false);
            }
        }
    }
    Vector2i getDim(){
        return dim;
    }

};


#endif //A_STAR_GRID_H
