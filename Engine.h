//
// Created by Elion Karaboja on 11/05/22.
//




#include "Node.h"
#include "SFML/Graphics.hpp"
#include <iostream>
#include <vector>
#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <memory>
#include "Grid.h"
using namespace sf;
using namespace std;


class Engine {
private:
    Vector2i resolution ;

    Grid griglia = Grid(resolution);
    // old Grid background = Grid(0, 0);



public:
    vector<Node*> a_star(Node* start,Node* goal, vector<Node> &grid) ;
    Engine();
    RenderWindow window;
    void run();

    void draw(bool f_path);

    void inputMouse();
    void inputKeyboard();

};






/*
class Engine {
private:
    Vector2u resolution;
    RenderWindow window;
    Grid background = Grid(0, 0);
    std::vector<Cell> open;
    std::vector<Cell> closed;

public:
    Engine();

    void run();

    void draw();

    void inputMouse();
    void inputKeyboard();
    std::vector<Cell&> a_star(Cell &start,Cell &finish,Grid g);
};

#endif //A_STAR_ENGINE_H
*/