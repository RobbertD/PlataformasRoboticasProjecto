#ifndef SQUARE_H    // To make sure you don't declare the function more than once by including the header multiple times.
#define SQUARE_H

#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include <iostream>
#include <math.h>
#include <string.h>


int displaySquares(cv::Mat *image);

#endif
