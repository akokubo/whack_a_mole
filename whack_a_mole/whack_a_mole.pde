// オブジェクト
Mole mole; // モグラ
Hammer hammer; // ハンマー

// 画像
PImage stageImage; // ステージ

// フォント
PFont font;

// スコア
int score;

// 経過時間
int time;
// 制限時間
int timeMax;

void setup() {
  // ディスプレイ・ウィンドウのサイズを640x360に
  size(640, 360);

  // 画像を表示するときに中心を指定するモードに設定
  imageMode(CENTER);

  // オブジェクトを作る
  mole = new Mole(loadImage("mole.png"));
  hammer = new Hammer(loadImage("hammer.png"));

  // 画像の読み込み
  stageImage = loadImage("stage.png");

  // モグラをランダムな位置に移動
  mole.move();

  // スコアを0に
  score = 0;

  // フォントを読み込み
  font = createFont("MS Gothic", 20);

  // 制限時間を設定
  timeMax = 20;
}

void draw() {
  // 経過時間を求める
  time = millis() / 1000;

  if (time <= timeMax) {
    // 残像を消す
    background(204);

    // ステージを表示
    image(stageImage, 240, 180);

    // モグラを表示
    mole.display();


    // ハンマーを移動して表示
    hammer.move();
    hammer.display();

    // マウスをクリックしたら
    if (mousePressed) {
      // モグラとハンマーが当たったら
      if (dist(mole.x, mole.y, hammer.x, hammer.y)
        < (mole.image.width + hammer.image.width) / 2) {
        // モグラをランダムな位置に移動
        mole.move();

        // スコアを増やす
        score++;
      }
    }

    // スコアを表示
    textFont(font);
    fill(0);
    text("SCORE: " + score, stageImage.width, 20);

    // 残り時間の表示
    text("残り時間: " + (timeMax - time), stageImage.width, 40);
  }
}