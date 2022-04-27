//
// Created by Elion Karaboja on 27/04/22.
//

#include <iostream>
#include "SFML/include/SFML/Graphics.hpp"


int main(){
    std::cout<<"A-Star algorithm!"<<std::endl;
    sf::RenderWindow window(sf::VideoMode(300,300),"First Window");
    sf::CircleShape shape(100.f);
    shape.setFillColor(sf::Color::Green);

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();
        window.draw(shape);
        window.display();
    }
    return 0;
}