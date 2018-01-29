#ifndef COLORTHRESHOLD_H    // To make sure you don't declare the function more than once by including the header multiple times.
#define COLORTHRESHOLD_H

#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include <iostream>
#include <math.h>
#include <string.h>


int colorThreshold(cv::Mat *original,cv::Mat *imgThresholded, int iLowH, int iHighH, int iLowS, int iHighS, int iLowV, int iHighV);

#endif
