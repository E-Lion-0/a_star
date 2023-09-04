//
// Created by Elion Karaboja on 11/05/22.
//

#include "Engine.h"

Engine::Engine() {
    resolution = Vector2i(2400,1200);
    window.create(VideoMode(resolution.x,resolution.y),"A* algorithm!");
    window.setFramerateLimit(60);

    //background = Grid(resolution.x/60,resolution.y/60);


}


vector<Node*> Engine::a_star(Node* start, Node* goal) {
    int dx[] = {-1, 0, 1, -1, 1, -1, 0, 1};
    int dy[] = {-1, -1, -1, 0, 0, 1, 1, 1};
    int num_directions = sizeof(dx) / sizeof(dx[0]);

    vector<Node*> open_set;         //nodi in analisi
    vector<Node*> closed_set;       //nodi analizzati


    //initialize start node
    start->g = 0;
    start->h = abs(start->x - goal->x) + abs(start->y - goal->y);  ///calcolo euristica
    start->f = start->g + start->h;
    open_set.push_back( start);

    while (!open_set.empty()) {      // terminazione a lista degli aperti vuota

        Node* current = open_set.front();       // prende in nodo iniziale
        open_set.erase(open_set.begin());// toglie dal vettore dei nodi in analisi

        if (current->x == goal->x && current->y == goal->y) {       // se questo nodo è quello di arrivo ci fermiamo
            vector<Node*> path;
            Node* node = current;
            while (node != nullptr) {
                path.push_back(node);
                node = node->parent;
            }
            return path;
        }

        closed_set.push_back(current);          // se questo non è il nodo di arrivo lo aggiungo al vettore dei nodi analizzati

        for (int i = 0; i < num_directions; ++i) {          /// controllo le 8 celle adiacenti una ad uno
            int x = current->x + dx[i];
            int y = current->y + dy[i];

            if (x < 0 || x >= griglia.larghezza() || y < 0 || y >= griglia.altezza() || ) { // se il nodo ha coordinate "out of bounds" ritorna all'inizio del loop
                continue;                                               //TODO modify the bound of the a-star alg search
            }

            /*if (griglia[] == 1) {// se il nodo è (1,1) ritorno all'inizio del ciclo for
                continue;
            }*/

            int g = current->g + 1; // avanzo di un passo
            int h = abs(x - goal->x) + abs(y - goal->y);  /// calcolo euristica Manhattan-Distance
            int f = g + h;  /// a-star algorithm core

            bool in_closed_set = false;
            for (Node* node : closed_set) {    // se un nodo è gia stato anallizzato  vado a quello successivo
                if (node->x == x && node->y == y && node->f <= f) {
                    in_closed_set = true;
                    break;
                }
            }

            if (in_closed_set) {
                continue;
            }

            bool in_open_set = false;   //flag
            for (Node* node : open_set) {   // analizzo con i nodi da analizzare e se ha f(x_i)<=f(x_current)
                if (node->x == x && node->y == y && node->f <= f) {
                    in_open_set = true;
                    break;
                }
            }

            if (!in_open_set) {
                Node* neighbor = new Node(x, y, g, h, f, current);
                open_set.push_back(neighbor);
            }
        }
    }

    return {};  //it returns an empty vector if no path was found
}














void Engine::draw(bool f_path) {
    window.clear(Color::Black);

    for(auto i : griglia.getNodes()){
        //background.getCell(i).setColor(sf::Color::White);
        //std::cout<<i<<std::endl;
        window.draw(i.getShape());
    };

    if(f_path){
        for(auto i : griglia.getNodes()){

            window.draw(i.getShape());
        };
    }



    /*
    window.clear();

    //draw the grid


    for(auto i : background.getGrid()){
        //background.getCell(i).setColor(sf::Color::White);
        //std::cout<<i<<std::endl;
        window.draw(i.getShape());
    };

    window.display();
     */
}
void Engine::run() {    //modify return type TODO
  while(window.isOpen()){
      Event event;

      while(window.pollEvent(event)){
          //...code(?? i dont thinks so...
          if(event.type == sf::Event::Closed){
              window.close();
          }
      }


      if (Keyboard::isKeyPressed(Keyboard::Space)) {

          vector<Node*> path = a_star(start, goal, grid);
      }
      window.clear(Color::Black);
      draw();

  }
}

void Engine::inputKeyboard() {

}

void Engine::inputMouse() {
    sf::Vector2i posM = sf::Mouse::getPosition(window);
    posM.x /= 60;
    posM.y /= 60;
    if (sf::Mouse::isButtonPressed(sf::Mouse::Left)) {
        Cell *c = background.getCellByPos(posM);
        if(c!= nullptr){
            if(c->getColor()== sf::Color::Blue) {

                c->setColor(sf::Color::Red);
            }else if(c->getColor()==sf::Color::Red){

                c->setColor(sf::Color::White);

            }else if(c->getColor()==sf::Color::White){

                c->setColor(sf::Color::Blue);


            }

        }
        sf::sleep(sf::milliseconds(250));


    };

}


