// モグラ・クラス
class Mole {
  // 画像
  PImage image;

  // 座標
  float x;
  float y;

  // コンストラクタ
  Mole(PImage image) {
    this.image = image;
  }

  // 表示
  void display() {
    image(this.image, x, y);
  }

  // 移動
  void move() {
    x = random(this.image.width / 2, stageImage.width - this.image.width / 2);
    y = random(64 + this.image.height / 2, stageImage.height - this.image.height / 2);
  }
}