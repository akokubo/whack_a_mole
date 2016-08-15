// ハンマー・クラス
class Hammer {
  // 画像
  PImage image;

  // 座標
  float x;
  float y;

  // コンストラクタ
  Hammer(PImage image) {
    this.image = image;
  }

  // 表示
  void display() {
    image(this.image, x, y);
  }

  // 移動
  void move() {
    x = mouseX;
    y = mouseY;
  }
}