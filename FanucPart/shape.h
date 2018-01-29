#ifndef YOURFILENAME_H

#define YOURFILENAME_H

#include <iostream>
#include <opencv/cv.h>
using namespace cv;
using namespace std;
enum GeoShape{ SQUARE, TRIANGLE, CIRCLE };
enum Color{ red, yellow, blue };

class Shape	{
	public:
		Shape(int, int,GeoShape, Color);
		Shape();
		Shape(GeoShape,Color);
		Color getColor(void){return shapeColor;};
		GeoShape getShape(void){return gshape;};
		int getX(void){return x;};
		int getY(void){return y;};
		Point getCenter(void){return Point(x,y);};
		void setFanucX(double x){Fx = x; return;};
		void setFanucY(double y){Fy = y; return;};
		double getFx(void){return Fx;};
		double getFy(void){return Fy;};
		void printShape(void);
		void setContour(vector<Point> c);
		std::vector<Point> getContour(void){return contour;};
	private:
		int x, y;
		double Fx, Fy;
		Color shapeColor;
		GeoShape gshape;
		vector<Point> contour;
	
};

#endif //ndef YOURFILENAME_H
