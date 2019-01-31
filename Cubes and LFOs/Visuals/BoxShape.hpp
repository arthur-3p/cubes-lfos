//
//  BoxShape.hpp
//  Master1
//
//  Created by Arthur Wilson on 12/10/2018.
//
//

#ifndef BoxShape_hpp
#define BoxShape_hpp

#include "ofMain.h"
#include "ofxGui.h"
#include "OscClass.hpp"


class BoxShape{
public:
    void setup();
    void update();
    void boxPattern();
    void draw();
    
    ofParameterGroup boxParameters;
    ofParameter<int> countX;
    ofParameter<float> stepX, twistX, scale, rotate, shiftY;
    ofParameter<glm::vec2> boxSize;
    float spin;
    OscClass OSC;
    float rotater = 90;
    float sizex;
    float sizey;
    
};


#endif /* BoxShape_hpp */
