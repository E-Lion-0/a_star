//
// Created by Elion Karaboja on 12/05/22.
//

#include "Grid.h"


Grid::Grid(int h, int w) {
    height = h;
    width = w;
    grid.reserve(w*h);
    for (float i = 0; i < h; i++) {
        for (float j = 0; j < w; j++) {
            grid.push_back( Cell(i * 60, j * 60));
        }
    }
}

