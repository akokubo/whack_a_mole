// 画像
PImage stageImage; // ステージ
PImage moleImage; // モグラ
PImage hammerImage; // ハンマー

// モグラの座標
float x;
float y;

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

  // 画像の読み込み
  stageImage = loadImage("stage.png");
  moleImage = loadImage("mole.png");
  hammerImage = loadImage("hammer.png");

  // ランダムな位置を指定
  x = random(moleImage.width / 2, stageImage.width - moleImage.width / 2);
  y = random(64 + moleImage.height / 2, stageImage.height - moleImage.height / 2);

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
    image(moleImage, x, y);

    // ハンマーを表示
    image(hammerImage, mouseX, mouseY);

    // マウスをクリックしたら
    if (mousePressed) {
      // モグラとハンマーが当たったら
      if (dist(x, y, mouseX, mouseY) < (moleImage.width + hammerImage.width) / 2) {
        // ランダムな位置を再指定
        x = random(moleImage.width / 2, stageImage.width - moleImage.width / 2);
        y = random(64 + moleImage.height / 2, stageImage.height - moleImage.height / 2);

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