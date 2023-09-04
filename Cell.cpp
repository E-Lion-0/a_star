//
// Created by Elion Karaboja on 12/05/22.
//

#include <iostream>
#include "Cell.h"

Cell::Cell(const float& x, const float& y) {
    pos = {x,y};
    obstacle = false;
    start = false;
    finish = false;
    visited = false;
    shape.setSize({50,50});
    color = sf::Color::Blue;
    shape.setFillColor(color);
    shape.setOutlineThickness(10);
    shape.setOutlineColor(sf::Color::Black);
    shape.setPosition(x,y);
}

bool Cell::isStart() const {
    return start;
}

void Cell::setStart(bool start) {
    Cell::start = start;
}

bool Cell::isFinish() const {
    return finish;
}

void Cell::setFinish(bool finish) {
    Cell::finish = finish;
}

bool Cell::isVisited() const {
    return visited;
}

void Cell::setVisited(bool visited) {
    Cell::visited = visited;
}

bool Cell::isObstacle() const {
    return obstacle;
}

void Cell::setObstacle(bool obstacle) {
    Cell::obstacle = obstacle;
    if(obstacle == true){
        shape.setFillColor(sf::Color::White);
    }
}

const sf::RectangleShape &Cell::getShape() const {
    return shape;
}

void Cell::setShape(const sf::RectangleShape &shape) {
    Cell::shape = shape;
}

const sf::Color &Cell::getColor() const {
    return color;
}

void Cell::setColor(const sf::Color &color) {
    if(shape.getFillColor() != color){
        Cell::color = color;
        shape.setFillColor(color);
    }
}

void Cell::changeColor() {
    std::cout << "jj" << std::endl;
    if (color == sf::Color::Blue) {

        setColor(sf::Color::Green);

    }else if(color == sf::Color::Green){
        setColor(sf::Color::Red);
    }else if(color == sf::Color::Red){
        setColor(sf::Color::Blue);
    }

}