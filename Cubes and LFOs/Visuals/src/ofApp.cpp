#include "ofApp.h"

void ofApp::setup(){
    ofSetWindowTitle("MASTAH");
    ofSetWindowShape(ofGetWidth(), ofGetHeight());
    ofSetFrameRate(60);
    ofSetBackgroundColor(0, 0, 0);
    //BoxShape Class Setup start.
    Box.setup();
    //boxes.set("Boxes", false);
    //mainParameters.add(boxes);
    //mainParameters.add(Box.boxParameters);
    //BoxShape Class Setup end.
    //mainGui.setup(mainParameters);
    //video.setup();
    
}

void ofApp::update(){
    Box.update();
    //video.update();
   
}

void ofApp::draw(){
    //video.draw();
    //mainGui.draw();
    Box.draw();
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
