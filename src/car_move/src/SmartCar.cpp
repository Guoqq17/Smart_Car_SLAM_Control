#include <SmartCar.hpp>
#include <iostream>
#include <ros/ros.h>
 
using namespace std;
 
 
//define class methodsiillljjii,,kkkklkkkkk
void SmartCar::stop(){

  digitalWrite (FL,  LOW) ;
  digitalWrite (FR,  LOW) ;
  digitalWrite (BL,  LOW) ;
  digitalWrite (BR,  LOW) ;
  state = 0;
}
 
void SmartCar::goForward(){
  stop();
  digitalWrite (FL,  HIGH) ;
  digitalWrite (BL,  HIGH) ;
  state = 1;
}
 
void SmartCar::goBackward(){
  stop();
  digitalWrite (FR,  HIGH) ;
  digitalWrite (BR,  HIGH) ;
  state = 2;
}
 
void SmartCar::goLeft(){
  stop();
  digitalWrite (BL,  HIGH) ;
  //digitalWrite (BR,  HIGH) ;
  state = 3;
}
 
void SmartCar::goRight(){
  stop();
  digitalWrite (FL,  HIGH) ;
  //digitalWrite (BL,  HIGH) ;
  state = 4;
}
void SmartCar::go(const int &d ){
  if(d == state){
    return;
  }
  //ROS_INFO("d: [%d]", d);
  //ROS_INFO("state: [%d]", state);
  digitalWrite (ENA, HIGH);
  digitalWrite (ENB, HIGH);
  switch(d){
  case 0 :
    stop();
    break;
  case 1 :
    goForward();
    break;  
  case 2 :
    goBackward();
    break;
  case 3 :
    goLeft();
    break;
  case 4 :
    goRight();
    break;
  default :
    stop();
  }
}
