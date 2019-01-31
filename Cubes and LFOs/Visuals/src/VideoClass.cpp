/*
//  VideoClass.cpp
//  Master1
//
//  Created by Arthur Wilson on 21/10/2018.
//
//

#include "VideoClass.hpp"

void VideoClass::setup(){
    video.load("chloeVid.mov");
}

void VideoClass::update(){
    video.update();
    int i = 0;
    while( i < pix.size()) {
        image.getPixels()[i] = video.getPixels()[i] * 2; // double-brightness
        i++;
    }
    image.update(); // this puts the ofPixels into the texture on the graphics card
}

void VideoClass::draw(){
    image.draw(ofGetWidth()/2, ofGetHeight()/2, 768, 576); // now you're drawing the new texture you made.

}
*/