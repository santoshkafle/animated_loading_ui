class IconType {
  static String GetIcon(IconImage iconImage) {
    switch (iconImage) {
      case IconImage.wheel:
        return "assets/wheel_icon.png";
      case IconImage.fan:
        return "assets/fan_icon.png";
      case IconImage.gear:
        return "assets/gear_icon.png";
    }
  }
}

enum IconImage { wheel, fan, gear }
