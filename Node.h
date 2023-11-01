//
// Created by Elion Karaboja on 12/06/22.
//

#ifndef A_STAR_NODE_H
#define A_STAR_NODE_H
#include <SFML/Graphics.hpp>

class Node {

private:
    bool obstacle = false;
    sf::Color color;
    sf::RectangleShape shape;
    int x, y; //posizione

    ///values
    int step;  //costo del passo
    int heuristic;   // stima del costo rimanente
    int cost;    // f = g + h
    Node* parent; // riferimento al nodo padre

public:

    Node(int x_, int y_) : x(x_), y(y_), step(0), heuristic(0), cost(0) ,parent(nullptr){
        shape.setSize({25,25});
        color = sf::Color (0,0,200);
        shape.setFillColor(color);
        shape.setOutlineThickness(5);
        shape.setOutlineColor(sf::Color::Black);
        shape.setPosition(x*30,y*30);
    };

    Node(int x_, int y_,int step_, int heuristic_, int cost_,Node* parent_) : x(x_), y(y_), step(step_), heuristic(heuristic_), cost(cost_) ,parent(parent_){};

    /// metodi costanti

    //Getters's

    const sf::RectangleShape getShape(){
        return shape;
    }

    const sf::Vector2i getPos(){     //const
        sf::Vector2i r = {x,y};
        return r;
    };

    const int get_step(){
        return step;
    }

    const int get_heuristic(){
        return heuristic;
    }

    const int get_cost(){
        return cost;
    }

    Node* get_parent(){
        return parent;
    }

    const bool is_obstacle(){
        return obstacle;
    };

    //Setter's

    void set_heuristic(int h){
        heuristic = h;
    }

    void set_step(int g){
        step = g;
    }

    void set_cost(int f){
        cost = f;
    }

    void set_start(){
        if(!obstacle){
            shape.setFillColor(sf::Color (0,255,0));
        };
    };

    void set_goal(){
        if(!obstacle){
            shape.setFillColor((sf::Color::White));
        };
    };

    void set_path(){
        if(!obstacle){
            shape.setFillColor(sf::Color (0,190,0));
        };
    };

    void setColor(sf::Color c){
        shape.setFillColor(c);
    };

    void make_obstacle(bool f){
        if(f){
            this->setColor(sf::Color (0,0,0));
        }else{
            this->setColor(sf::Color (0,0,200));
        }
        this->obstacle = f;

    }

};


#endif //A_STAR_NODE_H
