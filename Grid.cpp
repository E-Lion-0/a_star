//
// Created by Elion Karaboja on 12/05/22.
//

#include <c++/v1/iostream>
#include <unistd.h>
#include "Grid.h"


Grid::Grid(Vector2i _dim){
        dim = _dim;
        m.reserve((dim.x/30)*(dim.y/30));
        for (int i = 0; i < dim.y/30; i++) {
            for (int j = 0; j < dim.x/30; j++) {
                m.push_back( Node(j , i ));

            }
        }
};

Node* Grid::getNodeByPos(sf::Vector2i p) {
    if(p.x>=0&&p.y>=0&&p.x*30<=dim.x&&p.y*30<=dim.y){
        return &m[p.x+(p.y*40)];
    }else {
        std::cout<<"Node not found"<<std::endl;
        return  nullptr;
    };


};
