// 画像
PImage stageImage; // ステージ
PImage moleImage; // モグラ
PImage hammerImage; // ハンマー

// モグラの座標
float x;
float y;

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
  x = random(0, width);
  y = random(0, height);
}

void draw() {
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
      x = random(0, width);
      y = random(0, height);
    }
  }
}