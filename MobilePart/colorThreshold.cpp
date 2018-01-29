#include "colorThreshold.h"

using namespace cv;
using namespace std;

int colorThreshold(Mat *original, Mat *imgThresholded, int iLowH, int iHighH, int iLowS, int iHighS, int iLowV, int iHighV)
{
	Mat imgHSV;
 
	cvtColor(*original, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV
  
 
	inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), *imgThresholded); //Threshold the image
       
	//morphological opening (remove small objects from the foreground)
	erode(*imgThresholded, *imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
	dilate( *imgThresholded, *imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 

	//morphological closing (fill small holes in the foreground)
	dilate( *imgThresholded, *imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 
	erode(*imgThresholded, *imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
	
	return 0;
}
