class AddOns {
  float xpos;
  float ypos;
  float addon_width;
  float addon_height;
  float addon_scale;
  PImage addon_image;
  float stacheScale;
  boolean imageDropped;

  AddOns(PImage img, float _x, float _y, float _scale) {
   
    addon_image = img;
    addon_width = img.width;
    addon_height = img.height;
    stacheScale = _scale;
    imageDropped = false;
    xpos = _x;
    ypos = _y;
  }

  void display() {
    image(addon_image, xpos, ypos, addon_width*stacheScale, addon_height*stacheScale);

  }


  void stamp() {
    imageDropped= true;
    loop();
   
    
  }
}

