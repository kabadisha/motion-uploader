# Motion detect CCTV with Google Drive upload

A program that wraps [motion](http://lavrsen.dk/foswiki/bin/view/Motion/WebHome), uploading any videos recorded to your Google Drive.
Based on the on the original work by [Jeremy Blythe](http://jeremyblythe.blogspot.com) - [Motion Google Drive Uploader](http://jeremyblythe.blogspot.co.uk/2012/06/motion-google-drive-uploader-and.html)

## Features
- All features of [motion](http://lavrsen.dk/foswiki/bin/view/Motion/WebHome) (see [here](http://lavrsen.dk/foswiki/bin/view/Motion/MotionGuideBasicFeatures) for details)
- Upload captured videos to a Google Drive location of your choice
- Automatically delete videos once uploaded (so you don't fill up your Pi's disk)
- Automatically upload a photo every x minutes so you can get a near real-time view from the camera even if no video capture was triggered.
- Optional email notification when video is captured.

## To Do
- Delete videos older than x days from Google drive.
