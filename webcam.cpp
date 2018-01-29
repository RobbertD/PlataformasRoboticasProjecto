/*
 * * File:   main.cpp
 * * Author: sagar
 * *
 * * Created on 10 September, 2012, 7:48 PM
 * */
 
#include "opencv2/videoio/videoio.hpp"
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include "colorThreshold.h"
#include "findShape.h"

using namespace cv;
using namespace std;
int  searchInField(Shape reqShape, Shape foundShape) {
	vector<Shape> redShapes;
	vector<Shape> blueShapes;
	vector<Shape> yellowShapes;
	vector<Shape> shapes;
	VideoCapture stream1(1);   //0 is the id of video device.0 if you have only one camera.
	 
	if (!stream1.isOpened()) { //check if video device has been initialised
		cout << "cannot open camera";
	}
	
	//unconditional loop
	while (true) {
		cout<< "frame start" << endl;
		Mat cameraFrame;
		Mat threshRed;
		Mat threshRed2;
		Mat threshYellow;
		Mat threshBlue;
		stream1.read(cameraFrame);
		//displaySquares(&cameraFrame);
		//GaussianBlur( cameraFrame, cameraFrame, Size( 3, 3 ), 0, 0);	
		
		colorThreshold(&cameraFrame,&threshRed, 0, 15, 152, 255, 0, 255);	
		colorThreshold(&cameraFrame,&threshRed2, 149, 179, 0, 255, 0, 255);
		compare(threshRed, threshRed2, threshRed, CMP_NE);	
		colorThreshold(&cameraFrame,&threshBlue, 44, 142, 90, 170, 0, 254);	
		colorThreshold(&cameraFrame,&threshYellow, 12, 40, 120, 255, 120, 255);	
		
		if(displaySquares(&threshRed, red, redShapes) == 0)//==0 implies that corners of the field have been found and we can start looking for other shapes
		{
			displaySquares(&threshYellow, yellow, yellowShapes);
			displaySquares(&threshBlue, blue, blueShapes);
		}
		shapes.reserve(redShapes.size() + blueShapes.size() + yellowShapes.size());
		shapes = redShapes;
		shapes.insert(shapes.end(),  blueShapes.begin(), blueShapes.end());
		shapes.insert(shapes.end(),  yellowShapes.begin(), yellowShapes.end());

		for(size_t i =0; i < shapes.size(); i++)
		{
			shapes[i].printShape();
			if(shapes[i].getColor() == reqShape.getColor() && shapes[i].getShape() == reqShape.getShape())
			{
				foundShape = shapes[i];
				return 0;
				
			//cout << shapes[i].getContour() << endl;
		}
		imshow("cam", cameraFrame);
		imshow("red", threshRed);
		imshow("blue", threshBlue);
		imshow("yellow", threshYellow);
		cout << "frame end" <<endl;
		if (waitKey(30) >= 0)
		break;
	}
	return 0;
}
