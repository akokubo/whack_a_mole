// 円の座標
float x;
float y;
// 円の直径
float diameter;

void setup() {
  // ディスプレイ・ウィンドウのサイズを640x360に
  size(640, 360);

  // 直径を指定
  diameter = 72;

  // ランダムな位置を指定
  x = random(0, width);
  y = random(0, height);
}

void draw() {
  // 残像を消す
  background(204);

  // 円を表示
  ellipse(x, y, diameter, diameter);

  // マウスをクリックしたら
  if (mousePressed) {
    // 円の内側にマウスがあったら
    if (dist(x, y, mouseX, mouseY) < diameter / 2) {
      // ランダムな位置を再指定
      x = random(0, width);
      y = random(0, height);
    }
  }
}