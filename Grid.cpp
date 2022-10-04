//
// Created by Elion Karaboja on 12/05/22.
//

#include <c++/v1/iostream>
#include "Grid.h"


Grid::Grid(int w, int h) {
    height = h;
    width = w;
    grid.reserve(w*h);
    for (float i = 0; i < w; i++) {
        for (float j = 0; j < h; j++) {
            grid.push_back( Cell(i * 60, j * 60));
        }
    }

}
//TODO




void Grid::setColorCell(sf::Vector2f p, const sf::Color &c) {
    int pos;
    pos = p.x * p.y;
    grid[pos].setColor(c);
}

void Grid::inputMouse(sf::RenderWindow &w) {
    sf::Vector2i posM = sf::Mouse::getPosition(w);
    posM.x /= 60;
    posM.y /= 60;
    if(posM.x>=0&&posM.y>=0&&posM.x<=width&&posM.y<=height) {  //FIXME width interchanged with height


        if (sf::Mouse::isButtonPressed(sf::Mouse::Left)) {

            std::cout << posM.x<< "," << posM.y << std::endl;
            grid.at()
            // grid[pos].setColor(sf::Color::Magenta);


        }
    }
}



