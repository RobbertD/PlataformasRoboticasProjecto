import numpy as np
import cv2
import time
#print(cv2.getBuildInformation())
'''
cap = cv2.VideoCapture(0);
time.sleep(2);

while(True):
        # Capture frame-by-frame
    ret, frame = cap.read()

    #if ret is True: # Our operations on the frame come here
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    #else:
     #   continue

                        # Display the resulting frame
    cv2.imshow('frame',frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

                                        # When everything done, release the capture
cap.release()
cv2.destroyAllWindows()
'''
#import c2       https://docs.opencv.org/3.3.1/da/d22/tutorial_py_canny.html
#import numpy as np
from matplotlib import pyplot as plt
img = cv2.imread('download.png',0)
edges = cv2.Canny(img,100,200)
#imgray = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)
#ret, thresh = cv2.threshold(imgray, 127, 255, 0)
im2, contours, hierarchy = cv2.findContours(edges, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
cv2.drawContours(img, contours, -1, (0,255,0), 3)






plt.subplot(121),plt.imshow(img,cmap = 'gray')
plt.title('Original Image'), plt.xticks([]), plt.yticks([])
plt.subplot(122),plt.imshow(im2,cmap = 'gray')
plt.title('Edge Image'), plt.xticks([]), plt.yticks([])
plt.show()

