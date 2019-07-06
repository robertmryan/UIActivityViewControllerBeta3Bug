#  UIActivityViewController bug

To reproduce problem on iOS 13 Beta 3:

1. Have first view controller present/show second view controller.

2. In second view controller:

- Tap "Save Image";
 - Grant permission to photo library;
 - Choose to save image to library;
 - You will not return to second view controller, but rather to the presenting view, the first view controller; and
 - If you choose option other than save to library, you will return to appropriate place, the second view controller.
