#ifndef FINDSHAPE_H    // To make sure you don't declare the function more than once by including the header multiple times.
#define FINDSHAPE_H

#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include <iostream>
#include <math.h>
#include <string.h>
#include "shape.h"
#include "colorThreshold.h"
	int displaySquares(cv::Mat *image, Color, vector<Shape>&);
	int searchInField(Shape, double&, double&);
	int identifyShape(Shape&);
#endif
