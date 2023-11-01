//
// Created by Elion Karaboja on 12/05/22.
//

#include <c++/v1/iostream>
#include "Grid.h"

Grid::Grid(Vector2i _dim){
    dim = _dim;
    nodes.reserve((dim.x)*(dim.y));
    for (int i = 0; i < dim.y; i++) {
        for (int j = 0; j < dim.x; j++) {
            nodes.push_back( Node(j , i ));
        }
    }
};
// 13 = {1,2}   x*dim.x
Node* Grid::getNodeByPos(sf::Vector2i p) {
    if(p.x>=0 && p.y>=0 && p.x<dim.x && p.y<dim.y){
        return &nodes[p.x+((p.y)*dim.y)];
    }else {
        std::cout<<"Node not found"<<std::endl;
        return  nullptr;
    };
};
