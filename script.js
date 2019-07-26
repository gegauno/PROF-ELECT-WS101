function light(sw) {
    var pic;
    if (sw == 0) {
      pic = "img/off.gif"
    } else {
      pic = "img/on.gif"
    }
    document.getElementById('myImage').src = pic;
  }