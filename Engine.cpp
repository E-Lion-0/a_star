//
// Created by Elion Karaboja on 11/05/22.
//

#include "Engine.h"

Engine::Engine() {
    resolution = Vector2u(2400,1200);
    window.create(VideoMode(resolution.x,resolution.y),"A* algorithm!");
    window.setFramerateLimit(60);
    background = Grid(resolution.x/60,resolution.y/60);
}

void Engine::draw() {
    window.clear();

    //draw the grid


    for(int  i = 0; i < background.getSize(); i++){
        //background.getCell(i).setColor(sf::Color::White);
        //std::cout<<i<<std::endl;
        window.draw(background.getCell(i).getShape());
    };

    window.display();
}
void Engine::run() {
  while(window.isOpen()){
      //FIXME input();

      background.inputMouse(window);

      //FIXME update();
      //FIXME
      sf::Event event;

      while(window.pollEvent(event)){
          //...code

          if(event.type == sf::Event::Closed){
              window.close();
          }
      }
      draw();
  }
}
