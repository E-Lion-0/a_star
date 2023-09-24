//
// Created by Elion Karaboja on 12/06/22.
//

#ifndef A_STAR_NODE_H
#define A_STAR_NODE_H
#include "Cell.h"

/*Pseudo-code:
 *
 * f(current.node) = h(current.node) + g(current.node)
 * f() := costo totale del nodo
 * h() := funzione di stima(euristica) del nodo ->pitagora
 * g() := distanza corrente-inizio del nodo
 *5
 * 1) l algoritmo privilegia nodi con f() minore
 * 2) vengono esaminati gli 8 possibili nodi adiacenti
 * 3) iterazione
 */


class Node {

private:
    bool obstacle = false;
    sf::Color color;
    sf::RectangleShape shape;

public:
    int x, y; //posizione

    Node* parent; // riferimento al nodo padre

    ///values
    int g;  //costo del passo
    int h;   // stima del costo rimanente
    int f;    // f = g + h
    Node(int x_, int y_) : x(x_), y(y_), g(0), h(0), f(0) ,parent(nullptr){
        shape.setSize({25,25});
        color = sf::Color::Blue;
        shape.setFillColor(color);
        shape.setOutlineThickness(5);
        shape.setOutlineColor(sf::Color::Black);
        shape.setPosition(x*30,y*30);
    };
    Node(int x_, int y_,int g_, int h_, int f_,Node* parent_) : x(x_), y(y_), g(g_), h(h_), f(f_) ,parent(parent_){};

    bool operator==(const Node& other) const{
        bool op = false;
        if(this->shape.getPosition() == other.shape.getPosition()){
            op = true;
        }
        return op;
    };


    bool operator<(const Node& other) const {
        //todo
        return f < other.f;
    }
    sf::RectangleShape getShape(){
        return shape;
    }
    void is_start(){
        if(!obstacle){
            shape.setFillColor(sf::Color::Green);
        };
    };

    void is_goal(){
        if(!obstacle){
            shape.setFillColor((sf::Color::White));
        };
    };
    void is_path(){
        if(!obstacle){
            shape.setFillColor(sf::Color::Yellow);
        };
    };
    void setColor(sf::Color c){
        shape.setFillColor(c);
    };
    sf::Vector2i getPos(){
        sf::Vector2i r = {x,y};
        return r;
    };
    bool is_obstacle(){
        return obstacle;
    };
    void make_obstacle(bool f){
        if(f){
            this->setColor(sf::Color::Green);
        }else{
            this->setColor(sf::Color::Blue);
        }
        this->obstacle = f;

    }


};


#endif //A_STAR_NODE_H
