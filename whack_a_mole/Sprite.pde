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

  // 当たり判定
  boolean isContactedWith(Sprite sprite) {
    // 判定結果を入れる変数。デフォルトはfalse
    boolean result = false;

    // 当たったらtrueに
    if (dist(x, y, sprite.x, sprite.y) <  (this.image.width + sprite.image.width) / 2) {
      result = true;
    }

    return result;
  }
}