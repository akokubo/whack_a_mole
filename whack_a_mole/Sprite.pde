// スプライト・クラス
class Sprite {
  // 画像
  PImage image;

  // 座標
  float x;
  float y;

  // コンストラクタ(デフォルト)
  Sprite() {
  }

  // コンストラクタ(画像を指定するとき)
  Sprite(PImage image) {
    this.image = image;
  }

  // 表示
  void display() {
    image(this.image, x, y);
  }

  // 移動
  void move() {
  }
}