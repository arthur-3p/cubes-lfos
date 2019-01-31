/*
//  VideoClass.hpp
//  Master1
//
//  Created by Arthur Wilson on 21/10/2018.
//
//

#ifndef VideoClass_hpp
#define VideoClass_hpp

#include "ofMain.h"

class VideoClass{
public:
    void setup();
    void update();
    void draw();
    
    ofVideoPlayer video;
    ofImage image;
    ofPixels pix = video.getPixels();

};

#endif /* VideoClass_hpp */