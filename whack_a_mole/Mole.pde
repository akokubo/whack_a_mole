// スプライト・クラスを継承したモグラ・クラス
class Mole extends Sprite {
  // コンストラクタ
  Mole(PImage image) {
    // 親クラスのコンストラクタをそのまま使う
    super(image);
  }

  // 移動(オーバーライド)
  void move() {
    x = random(this.image.width / 2, stage.image.width - this.image.width / 2);
    y = random(64 + this.image.height / 2, stage.image.height - this.image.height / 2);
  }
}