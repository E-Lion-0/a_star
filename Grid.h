//
// Created by Elion Karaboja on 12/05/22.
//

#ifndef A_STAR_GRID_H
#define A_STAR_GRID_H

#include "Cell.h"
#include <vector>
#include "SFML/Graphics.hpp"
#include "SFML/System.hpp"
#include "SFML/Window.hpp"
class Grid {
private:
    std::vector<Cell> grid ;
    int height, width;
    std::vector<Cell> open;
    std::vector<Cell> closed;

public:
    Grid(int w, int h);


    void inputMouse(sf::RenderWindow &w);

    void setColorCell(sf::Vector2f ,const sf::Color &c);
    Cell getCell(int  i){
        return this->grid[i];
    }
    int getSize(){
        return grid.size();
    }
    Grid& operator[](sf::Vector2i i){};
};


#endif //A_STAR_GRID_H
