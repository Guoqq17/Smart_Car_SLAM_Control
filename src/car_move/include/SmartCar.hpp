#include <wiringPi.h>
 
class SmartCar{
public:
  //default constructor
  SmartCar(){
    wiringPiSetup () ;
    pinMode (FL, OUTPUT) ;
    pinMode (FR, OUTPUT) ;
    pinMode (BL, OUTPUT) ;
    pinMode (BR, OUTPUT) ;
    pinMode (ENA, OUTPUT) ;
    pinMode (ENB, OUTPUT) ;
    stop();
  };
  //constuctor with pin numbers
  SmartCar(const int &FL,
           const int &FR,
           const int &BL,
           const int &BR,
           const int &ENA,
           const int &ENB) : state(0),  FL(FL), FR(FR), BL(BL), BR(BR), ENA(ENA), ENB(ENB){
    wiringPiSetup () ;
    pinMode (FL, OUTPUT) ;
    pinMode (FR, OUTPUT) ;
    pinMode (BL, OUTPUT) ;
    pinMode (BR, OUTPUT) ;
    pinMode (ENA, OUTPUT) ;
    pinMode (ENB, OUTPUT) ;
    stop();
  };
  //destructor
  ~SmartCar(){stop();};
 
  void go(const int& d);
  void stop();
  int getCurState(){return state;}
private:
  int state = 0;
  int FL = 28;
  int FR = 29;
  int BL = 24;
  int BR = 25;
  int ENA = 27;
  int ENB = 23;
  
  void goForward();
  void goBackward();
  void goLeft();
  void goRight();
};
