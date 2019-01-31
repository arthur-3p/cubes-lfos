#pragma once

#include "ofMain.h"
#include "BoxShape.hpp"
#include "OscClass.hpp"
#include "VideoClass.hpp"

class ofApp : public ofBaseApp{

	public:
		void setup();
        void boxPattern();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void mouseEntered(int x, int y);
		void mouseExited(int x, int y);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
		
    BoxShape Box;
    ofxPanel mainGui;
    ofParameter<bool> boxes;
    ofParameterGroup mainParameters;
    OscClass OSC;
    //VideoClass video;

};