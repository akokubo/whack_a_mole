// スプライト・クラスを継承したステージ・クラス
class Stage extends Sprite {
  // フォント
  PFont font;

  // スコア
  int score;

  // 経過時間
  int time;
  // 制限時間
  int timeMax;

  Stage(PImage image) {
    // 親クラスのコンストラクタをそのまま使う
    super(image);

    // 画像の中心を指定
    x = this.image.width / 2;
    y = this.image.height / 2;

    // スコアを0に
    score = 0;

    // フォントを読み込み
    font = createFont("MS Gothic", 20);

    // 制限時間を設定
    timeMax = 20;
  }

  // 表示(オーバーライド)
  void display() {
    super.display();

    // スコアを表示
    textFont(font);
    fill(0);
    text("SCORE: " + score, this.image.width, 20);

    // 残り時間の表示
    text("残り時間: " + (timeMax - time), this.image.width, 40);
  }

  // 制限時間を過ぎたか？
  boolean isTimeOver() {
    // 判定結果を入れる変数
    boolean result = false;

    // 経過時間を求める
    time = millis() / 1000;

    // 制限時間を過ぎたか？
    if (time > timeMax) {
      result = true;
    }

    // 判定結果を返す
    return result;
  }

  // スコアを増やす
  void scoreUp() {
    score++;
  }
}