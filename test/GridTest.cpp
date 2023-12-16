//
// Created by Elion Karaboja on 14/11/23.
//


#include "gtest/gtest.h"
#include "../Grid.h"
#include "../Grid.cpp"
#include "../A-star.h"
#include "SFML/System.hpp"


class GridSuite : public ::testing::Test {

protected:
    virtual void SetUp() {
        path = {};
    }
    Grid g;
    Node* start;
    Node* goal;
    vector<Node*> path;
    vector<Vector2i> obstacles_positions;


};

TEST(GridSuite, TestMapWithoutObsactles){
    Vector2i dim = {12,12};
    Grid g = Grid(dim);
    Node* start = g.getNodeByPos({0,0});
    Node* goal = g.getNodeByPos({6,6});
    vector<Node*> path  = a_star(start, goal,g);
    ASSERT_NE(start, nullptr);
    ASSERT_NE(goal, nullptr);
    for(int i = 0; i>path.size()-1;i++){
        EXPECT_EQ(path.at(i)->get_parent(),path.at(i+1));
    }
    std::cout<<"Grid without obstacles: PATH FOUND!"<<std::endl;
};

TEST(GridSuite, TestMapWithObsactles){
    Vector2i dim = {12,12};
    Grid g = Grid(dim);
    Node* start = g.getNodeByPos({0,0});
    Node* goal = g.getNodeByPos({6,6});
    vector<Vector2i> obstacles_positions = {
            {1,1},{1,2},{1,3},{1,4},{1,5},{1,6},
            {3,1},{4,1},{5,1},{6,1},{7,1},{8,1},
            {1,7},{1,8},{1,9},{1,10},{2,1},{2,10},
            {1,3},{3,3},{4,3},{5,3},{6,3},{7,3},
            {8,3},{3,4},{8,4},{3,5},{8,5},{9,1},
            {10,1},{2,10},{3,10},{4,10},{5,10},{6,10},
            {7,10},{8,10},{9,10},{10,10},{10,2},{10,3},
            {10,4},{10,5},{10,7},{10,8},{10,9},
            {3,6},{3,8},{4,8},{5,8},{6,8},
            {7,8},{8,8},{8,6},{8,7},{5,7},{5,6},
            {5,5},{6,5}
    };
    ASSERT_NE(start, nullptr);
    ASSERT_NE(goal, nullptr);
    for(auto m:obstacles_positions){
        Node* ob = g.getNodeByPos(m);
        ob->make_obstacle(true);
    }
    vector<Node*> path  = a_star(start,goal,g);
    for(int i = 0; i>path.size()-1;i++){
        EXPECT_EQ(path.at(i)->get_parent(),path.at(i+1));
    }
    std::cout<<"Grid with obstacles: PATH FOUND!"<<std::endl;
};

TEST(GridSuite, TestMapImpossibile){
    Vector2i dim = {12,12};
    Grid g = Grid(dim);
    Node* start = g.getNodeByPos({0,0});
    Node* goal = g.getNodeByPos({6,6});
    vector<Vector2i> obstacles_positions = {
            {1,1},{1,2},{1,3},{1,4},{1,5},{1,6},
            {3,1},{4,1},{5,1},{6,1},{7,1},{8,1},
            {1,7},{1,8},{1,9},{1,10},{2,1},{2,10},
            {1,3},{3,3},{4,3},{5,3},{6,3},{7,3},
            {8,3},{3,4},{8,4},{3,5},{8,5},{9,1},
            {10,1},{2,10},{3,10},{4,10},{5,10},{6,10},
            {7,10},{8,10},{9,10},{10,10},{10,2},{10,3},
            {10,4},{10,5},{10,7},{10,8},{10,9},{10,6},
            {3,6},{3,8},{4,8},{5,8},{6,8},
            {7,8},{8,8},{8,6},{8,7}
    };
    ASSERT_NE(start, nullptr);
    ASSERT_NE(goal, nullptr);
    for(auto m:obstacles_positions){
        Node* ob = g.getNodeByPos(m);
        ob->make_obstacle(true);
    }
    vector<Node*> path  = a_star(start, goal,g);
    EXPECT_EQ(path.empty(),true);
    std::cout<<"Grid Impossible: PATH NOT FOUND!"<<std::endl;
};

