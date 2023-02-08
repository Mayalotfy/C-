#ifndef _HEAPSORT_H
#define _HEAPSORT_H

#include <string>
#include <vector>
#include <cctype>
#include <fstream>
#include <sstream>
#include <iostream>
#include <iterator>
#include <algorithm>
#include <bits/stdc++.h>


using namespace std;

struct Node{
    int var;
    int i;

    Node *parent;
    Node *right;
    Node *left;
};


class Heap{
    public:
        Node* root;
        Node* nil;
        Heap();
        void insert(int key, int index);    //insert an element into the heap
        int min();  //returns the min elem
        int index();
        void removeMin(); //removes the root of the heap
        int size(Node* curr);     //returns the number of nodes
        bool isEmpty(); 
};



#endif
