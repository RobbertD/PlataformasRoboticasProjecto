#include "findShape.h"

using namespace cv;
using namespace std;
Color color;
int thresh = 50, N = 11;
const char* wndname = "Square Detection Demo";

double originX = -1, originY = -1, edgeX = -1, edgeY = -1;
// helper function:
// finds a cosine of angle between vectors
// from pt0->pt1 and from pt0->pt2
static double angle( Point pt1, Point pt2, Point pt0 )
{
    double dx1 = pt1.x - pt0.x;
    double dy1 = pt1.y - pt0.y;
    double dx2 = pt2.x - pt0.x;
    double dy2 = pt2.y - pt0.y;
    return (dx1*dx2 + dy1*dy2)/sqrt((dx1*dx1 + dy1*dy1)*(dx2*dx2 + dy2*dy2) + 1e-10);
}

static void getCoordinates(vector<Point>& s, int& x, int& y)
{
	Moments m  = moments(s, false );

	  ///  Get the mass centers:
	x =  m.m10/m.m00;
	y = m.m01/m.m00;
	   
}

// returns sequence of squares detected on the image.
// the sequence is stored in the specified memory storage
// 
static void findShapes( const Mat& image, vector<Shape>& shapes)
{
	cout << "finShapes()" <<endl;
	shapes.clear();
    Mat pyr, timg, gray0(image.size(), CV_8U), gray;

    // down-scale and upscale the image to filter out the noise
    pyrDown(image, pyr, Size(image.cols/2, image.rows/2));
    pyrUp(pyr, timg, image.size());
    vector<vector<Point> > contours;
    // find contours and store them all as a list
    findContours(timg, contours, RETR_LIST, CHAIN_APPROX_SIMPLE);

	vector<Point> approx;
	// test each contour
	for( size_t i = 0; i < contours.size(); i++ ) 
	{
		// approximate contour with accuracy proportional
		// to the contour perimeter
		// there might be more contours because of irregularities, approx PolyDP attempts to join short contours to longer ones
				// see Douglas-Puecker algorithm
		approxPolyDP(Mat(contours[i]), approx, arcLength(Mat(contours[i]), true)*0.02, true);

		// square contours should have 4 vertices after approximation
		// relatively large area (to filter out noisy contours)
		// and be convex.
		// Note: absolute value of an area is used because
		// area may be positive or negative - in accordance with the
		// contour orientation
		if( approx.size() == 4 &&
		    fabs(contourArea(Mat(approx))) > 200 &&
		    isContourConvex(Mat(approx)) )
		{
		    double maxCosine = 0;

		    for( int j = 2; j < 5; j++ )
		    {
			// find the maximum cosine of the angle between joint edges
			double cosine = fabs(angle(approx[j%4], approx[j-2], approx[j-1]));
			maxCosine = MAX(maxCosine, cosine);
		    }

		    // if cosines of all angles are small
		    // (all angles are ~90 degree) then write quandrange
		    // vertices to resultant sequence
		    if( maxCosine < 0.3 )
		    {
			int x,y;
			getCoordinates(approx, x, y);
			Shape s(x, y, SQUARE, color);
			s.setContour(approx);
			shapes.push_back(s);
		    }

		}
		else if( approx.size() == 8 && fabs(contourArea(Mat(approx))) > 1000 &&	//Circles
		    isContourConvex(Mat(approx)) )
		{
			int x,y;
			getCoordinates(approx, x, y);
			Shape s(x, y, CIRCLE, color);
			s.setContour(approx);
			shapes.push_back(s);
		}
		else if( approx.size() < 6  &&		//Triangles
		    fabs(contourArea(Mat(approx))) > 1000 //approx.size() < 6 because it has trouble detecting triangle points
		    && isContourConvex(Mat(approx)) 
		    )
		{
		    double maxCosine = 0;

		    for( int j = 2; j < 4; j++ )
		    {
			// find the maximum cosine of the angle between joint edges
			double cosine = fabs(angle(approx[j%3], approx[j-2], approx[j-1]));
			maxCosine = MAX(maxCosine, cosine);
		    }

		    //if( maxCosine < 0.7 )
		    //{
			int x,y;
			getCoordinates(approx, x, y);
			Shape s(x, y, TRIANGLE, color);
			s.setContour(approx);
			shapes.push_back(s);
			//}
		}
		else if(fabs(contourArea(Mat(approx)))>400
				&& isContourConvex(Mat(approx))
				//&& approx.size()<10
				)	//test to find the corners
		{
			int x,y;
			getCoordinates(approx, x, y);
			Shape s(x, y, SQUARE, color);
			s.setContour(approx);
			shapes.push_back(s);
		
		}
		}
}


// the function draws all the squares in the image
static void drawShapes( Mat& image, vector<Shape>& shapes)
{
    
    cvtColor(image, image,CV_GRAY2RGB);//converting so the contours are visible in green 

	for( size_t i = 0; i < shapes.size(); i++ )
    {
        vector<Point> contour = shapes[i].getContour();
	const Point* p = &contour[0];
        const int n = (int)shapes[i].getContour().size();
	circle(image, shapes[i].getCenter(), 5, Scalar(255,0,0), -1);
	polylines(image, &p, &n, 1, true, Scalar(0,255,0), 3, LINE_AA);
    }
}
static bool findCorners(vector<Shape>& shapes)
{
	vector<Point> corners ;
	for(size_t i = 0; i < shapes.size(); i++ )//loop once to find corner squares
	{
		if((shapes[i].getColor() == red) && (shapes[i].getShape() == SQUARE))	//red squares indicate edges of field
		{
			corners.push_back(Point(shapes[i].getX(), shapes[i].getY()));
	       		cout << "corner coord" << corners << endl;
			originX = MIN(corners[0].x, corners[1].x);//origin in field is lower left corner, in image it is in top left corner
			originY = MIN(corners[0].y, corners[1].y);
			edgeX = MAX(corners[0].x, corners[1].x);
			edgeY = MAX(corners[0].y, corners[1].y);
		}
	}
	if(corners.size() != 2)
	{
		cout << "corner shapes not yet detected, not able to calculate Fanuc coordinates" << endl;
		return false;
	}
	else	//corner shapes are detected correctly
  	{
		cout << "corners found" << endl;
		return true;
	}
}
static void getFanucCoord(vector<Shape>& shapes)
{
	cout<< "gteFanucCoord"<<endl;	
	for(size_t i = 0; i < shapes.size(); i++ )//loop second time to set Fanuc coordinates
	{	
		if(shapes[i].getX()<originX || shapes[i].getY()<originY || shapes[i].getY()>edgeY || shapes[i].getX()>edgeX)
		{
			shapes.erase(shapes.begin()+i);
		}	
		else
		{
			double Fx = (((double)shapes[i].getX() - originX)/(edgeX - originX))*  50;
			double Fy =50-((((double)shapes[i].getY() - originY)/(edgeY - originY))*  50);//50-... because axis is flipped when going from mat to fanuc coordinates
		//	cout<<"fx,fy: " << Fx<<", "<<Fy<<endl;
			shapes[i].setFanucX(Fx);
			shapes[i].setFanucY(Fy);
		}
	}
}

int displaySquares(Mat *image, Color c, vector<Shape>& shapes)
{
	color = c;
	findShapes(*image, shapes);
	if(color == red)
	{
		if(!findCorners(shapes))
		{
			return 1;
		}
	}
	getFanucCoord(shapes);
	for(size_t i =0; i < shapes.size(); i++)
	{
	//	shapes[i].printShape();
		//cout << shapes[i].getContour() << endl;
	}
	drawShapes(*image, shapes);
	return 0;
}
int  identifyShape(Shape &detectedShape) {
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
		redShapes.clear();
		blueShapes.clear();
		yellowShapes.clear();
		shapes.clear();

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
		color = red;
		findShapes(threshRed, redShapes);
		color = yellow;
		findShapes(threshYellow, yellowShapes);
		color = blue;
		findShapes(threshBlue, blueShapes);

		shapes.reserve(redShapes.size() + blueShapes.size() + yellowShapes.size());
		shapes = redShapes;
		shapes.insert(shapes.end(),  blueShapes.begin(), blueShapes.end());
		shapes.insert(shapes.end(),  yellowShapes.begin(), yellowShapes.end());
		//imshow("cam", cameraFrame);
		///imshow("red", threshRed);
		//imshow("blue", threshBlue);
		//imshow("yellow", threshYellow);
		if(shapes.size() > 0)
		{

			detectedShape = shapes[0];
			detectedShape.printShape();
			return 0;
		}
		cout << "frame end" <<endl;
		if (waitKey(30) >= 0)
		break;
	}
	return 0;
}
int  searchInField(Shape reqShape, double &x, double &y) {
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
		redShapes.clear();
		blueShapes.clear();
		yellowShapes.clear();
		shapes.clear();

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
		//imshow("cam", cameraFrame);
		///imshow("red", threshRed);
		//imshow("blue", threshBlue);
		//imshow("yellow", threshYellow);
	
		for(size_t i =0; i < shapes.size(); i++)
		{
			//shapes[i].printShape();
			if(shapes[i].getColor() == reqShape.getColor() && shapes[i].getShape() == reqShape.getShape())
			{
				
				Shape foundShape = shapes[i];
				foundShape.printShape();
				x = foundShape.getFx();
				y = foundShape.getFy();				
				cout << x << endl;
				return 0;
			}		
			//cout << shapes[i].getContour() << endl;
		}
		cout << "frame end" <<endl;
		if (waitKey(30) >= 0)
		break;
	}
	return 0;
}
