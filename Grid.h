//
// Created by Elion Karaboja on 12/05/22.
//

#ifndef A_STAR_GRID_H
#define A_STAR_GRID_H

#include "Cell.h"
#include <vector>
#include "SFML/Graphics.hpp"

class Grid {
private:
    std::vector<Cell> grid ;
    int height, width;
public:
    Grid(int h, int w);

    Cell getCell(int  i){
        return this->grid[i];
    }
    int getSize(){
        return grid.size();
    }
};


#endif //A_STAR_GRID_H
