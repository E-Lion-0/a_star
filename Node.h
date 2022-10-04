//
// Created by Elion Karaboja on 12/06/22.
//

#ifndef A_STAR_NODE_H
#define A_STAR_NODE_H
#include "Cell.h"

/*Pseudo-code:
 *
 * f(current.node) = h(current.node) + g(current.node)
 * f() := costo totale del nodo
 * h() := funzione di stima(euristica) del nodo ->pitagora
 * g() := distanza corrente-inizio del nodo
 *
 * 1) l algoritmo privilegia nodi con f() minore
 * 2) vengono esaminati gli 8 possibili nodi adiacenti
 * 3) iterazione
 */


class Node {
private:
    int  posX,posY;

public:

};


#endif //A_STAR_NODE_H
