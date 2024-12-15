class Rectangle {
  double calculateArea(double width, double height) {
    if (width < 0 || height < 0) {
      throw ArgumentError("Width and height must be non-negative.");
    }
    return width * height;
  }
}