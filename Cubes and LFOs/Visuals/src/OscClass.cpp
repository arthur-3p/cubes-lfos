//
//  OscClass.cpp
//  Master1
//
//  Created by Arthur Wilson on 15/10/2018.
//
//

#include "OscClass.hpp"

void OscClass::setup(){
    ofLog() << "listening for superosc messages on port " << PORT;
    receiver.setup(PORT);
}

void OscClass::update(){
    while(receiver.hasWaitingMessages()){
        ofxOscMessage m;
        receiver.getNextMessage(m);
        
        
        if(m.getAddress() == "/Message1"){
            msg1 = m.getArgAsFloat(0);
            }
        if(m.getAddress() == "/Message2"){
            msg3 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Gain1"){
            msg4 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Gain2"){
            msg5 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Gain3"){
            msg6 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Toggle1"){
            msg7 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Toggle2"){
            msg8 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Toggle3"){
            msg9 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Toggle4"){
            msg10 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Toggle5"){
            msg11 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Fader1"){
            msg12 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Fader2"){
            msg13 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Fader3"){
            msg14 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/Fader4"){
            msg15 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/x"){
            msg16 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/y"){
            msg17 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/amplitude1"){
            msg18 = m.getArgAsFloat(0);
        }
        if(m.getAddress() == "/amplitude2"){
            msg19 = m.getArgAsFloat(0);
        }
    }
    OSC1 = msg1;
    OSC2 = msg1;
    OSC3 = msg3+0.1;
    OSC4 = msg4;
    OSC5 = msg5;
    OSC6 = msg6;
    OSC7 = msg7;
    OSC8 = msg8;
    OSC9 = msg9;
    OSC10 = msg10;
    OSC11 = msg11;
    OSC12 = msg12 * 80;
    OSC13 = msg13 * 3;
    OSC14 = msg14 * 45;
    OSC15 = msg15;
    xin = msg16 * 10;
    yin = msg17 * 10;
    OSC16 = msg18;
    OSC17 = msg19;
}
