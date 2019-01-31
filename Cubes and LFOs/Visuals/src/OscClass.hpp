//
//  OscClass.hpp
//  Master1
//
//  Created by Arthur Wilson on 15/10/2018.
//
//

#ifndef OscClass_hpp
#define OscClass_hpp

#include "ofMain.h"
#include "ofxOsc.h"

#define HOST "localhost"
#define PORT 12345

class OscClass{
public:
    void setup();
    void update();

    ofxOscReceiver receiver;
    float OSC1;
    float OSC2;
    float OSC3;
    float OSC4;
    float OSC5;
    float OSC6;
    float OSC7;
    float OSC8;
    float OSC9;
    float OSC10;
    float OSC11;
    float OSC12;
    float OSC13;
    float OSC14;
    float OSC15;
    float OSC16;
    float OSC17;
    float msg1;
    float msg2;
    float msg3;
    float msg4;
    float msg5;
    float msg6;
    float msg7;
    float msg8;
    float msg9;
    float msg10;
    float msg11;
    float msg12;
    float msg13;
    float msg14;
    float msg15;
    float msg16;
    float msg17;
    float msg18;
    float msg19;
    float xin;
    float yin;
    
    bool Toggle1=false;
    bool Toggle2=false;
    bool Toggle3=false;
    bool Toggle4=false;
    bool Toggle5=false;

};

#endif /* OscClass_hpp */
