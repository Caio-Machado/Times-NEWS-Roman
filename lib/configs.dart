class ResponsiveConfigs {
  static double adjustsWidth(double screenWidth, double margin) {
    if (screenWidth >= 500) {
      return 450;
    }
    return screenWidth - (margin * 2);
  }
}
