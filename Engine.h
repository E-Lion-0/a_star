//
// Created by Elion Karaboja on 11/05/22.
//

#ifndef A_STAR_ENGINE_H
#define A_STAR_ENGINE_H

#include "SFML/Graphics.hpp"
#include "Grid.h"
#include <iostream>
using namespace sf;

class Engine {
private:
    Vector2u resolution;
    RenderWindow window;
    Grid background = Grid(0, 0);
public:
    Engine();

    void run();

    void draw();
};

#endif //A_STAR_ENGINE_H
