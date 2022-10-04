//
// Created by Elion Karaboja on 12/05/22.
//

#ifndef A_STAR_CELL_H
#define A_STAR_CELL_H
//#include "SFML/Graphics.hpp"
#include <vector>
#include <SFML/Graphics/Color.hpp>
#include <SFML/System/Vector2.hpp>
#include <SFML/Graphics/RectangleShape.hpp>


class Cell {
private:
    sf::Vector2f pos;
    sf::Color color;
    bool obstacle, start, finish, visited;
    sf::RectangleShape shape;
public:
    Cell();
    Cell(const float& x,const  float& y);
    void setPosition(const float& Px,const float& Py){
        shape.setPosition({Px,Py});
    };
    sf::Vector2<float> getPosition(){
        return pos;
    }

    const sf::Color &getColor() const;

    void setColor(const sf::Color &color);

    const sf::RectangleShape &getShape() const;

    void setShape(const sf::RectangleShape &shape);

    bool isStart() const;

    void setStart(bool start);

    bool isFinish() const;

    void setFinish(bool finish);

    bool isVisited() const;

    void setVisited(bool visited);

    bool isObstacle() const;

    void setObstacle(bool obstacle);
};

#endif //A_STAR_CELL_H
