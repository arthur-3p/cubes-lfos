//
//  BoxShape.cpp
//  Master1
//
//  Created by Arthur Wilson on 12/10/2018.
//
//

#include "BoxShape.hpp"

void BoxShape::setup(){
    OSC.setup();
    //boxParameters.setName("Box Parameters");
    //boxParameters.add(countX.set("count x", 50, 0, 200));
    //boxParameters.add(stepX.set("step x", 1, 0, 3));
    //boxParameters.add(twistX.set("twist x", 5, -45, 45));
    //boxParameters.add(scale.set("Scale", 1, 0.0, 1));
    //boxParameters.add(rotate.set("rotate", 0, -180, 180));
    //boxParameters.add(shiftY.set("shift y", 0.0, -1000.0, 1000.0));
    //boxParameters.add(boxSize.set("size", ofVec2f(6,6), ofVec2f(0,0), ofVec2f(20,20)));
}

void BoxShape::update(){
    OSC.update();
    spin = ((OSC.OSC1)* -90)*OSC.OSC4;
    countX = OSC.OSC12;
    stepX = OSC.OSC13;
    twistX = OSC.OSC14;
    scale = OSC.OSC15 + (OSC.OSC16*0.2)+(OSC.OSC17*0.2);
    boxSize= ofVec2f(OSC.xin, OSC.yin);
}

void BoxShape::boxPattern(){
    ofSetColor(153, 218, 232);
    ofSetLineWidth(1);
    ofNoFill();
    for (int i = -countX; i<countX; i++) {
        ofPushMatrix();
        float Step = pow(stepX, 5.0f);
        ofTranslate(i*Step, 0);
        ofRotateDeg(i*twistX);
        ofRotateXDeg(rotater+OSC.OSC7+OSC.OSC8+OSC.OSC9+OSC.OSC10+OSC.OSC11);
        ofRotateDeg(spin-90);
        ofScale(boxSize->x, boxSize->y);
        ofDrawBox(-50, -50, 0, 100, (100*OSC.OSC3), (500*OSC.OSC2)+(OSC.OSC6*500));
        ofPopMatrix();
    }
}

void BoxShape::draw(){
    ofPushMatrix();
    ofTranslate(ofGetWidth()/2, ofGetHeight()/2);
    float Scl = pow(scale, 2.0f);//raises the scale slider value to the fourth power to control small values of the scale more precisely. first half of slider will give 0 - 0.0625.
    ofScale(Scl, Scl);//scale of coord system.
    //rotation of coord system.
    boxPattern();
    ofPopMatrix();
    }

