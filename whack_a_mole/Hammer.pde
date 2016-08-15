// スプライト・クラスを継承したハンマー・クラス
class Hammer extends Sprite {
  // コンストラクタ
  Hammer(PImage image) {
    // 親クラスのコンストラクタをそのまま使う
    super(image);
  }

  // 移動(オーバーライド)
  void move() {
    x = mouseX;
    y = mouseY;
  }
}