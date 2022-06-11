class ResponsiveConfigs {
  static double adjustsWidth(double screenWidth, double margin) {
    if (screenWidth >= 600) {
      return 550;
    }
    return screenWidth - (margin * 2);
  }
}
