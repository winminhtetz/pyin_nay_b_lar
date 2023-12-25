extension ScreenSizeExt on double {
  bool get isMobile => (this <= 375) ? true : false;
}
