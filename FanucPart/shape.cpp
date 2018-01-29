#include "shape.h"


using namespace std;
Shape::Shape(){}
Shape::Shape(int xx, int yy, GeoShape g, Color c)
{
	x = xx;
	y = yy;
	gshape = g;
	shapeColor = c;
	Fx = -1;
	Fy = -1;
}

Shape::Shape(GeoShape g, Color c)
{
	gshape = g;
	shapeColor = c;
	x = -1;
	y = -1;
	Fx = -1;
	Fy = -1;
}

void Shape::printShape(void)
{
	cout<<"coordinates: " << x << ", " << y << endl;
	cout<<"shape: " << gshape << endl;
	cout<<"color: " << shapeColor << endl;
	//cout<<"contour: " << contour << endl;
	cout<<"fanuc: " << Fx << ", " << Fy << endl;	
}

void Shape::setContour(vector<Point> c)
{
	contour = c;
}	
