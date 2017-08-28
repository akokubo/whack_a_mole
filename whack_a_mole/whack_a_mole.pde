// オブジェクト
Stage stage; // ステージ
Mole mole; // モグラ
Hammer hammer; // ハンマー

void setup() {
  // ディスプレイ・ウィンドウのサイズを640x360に
  size(640, 360);

  // 画像を表示するときに中心を指定するモードに設定
  imageMode(CENTER);

  // オブジェクトを作る
  stage = new Stage(loadImage("stage.png"));
  mole = new Mole(loadImage("mole.png"));
  hammer = new Hammer(loadImage("hammer.png"));

  // モグラをランダムな位置に移動
  mole.move();
}

void draw() {
  // 制限時間を過ぎていない
  if (stage.isTimeOver() == false) {
    // 残像を消す
    background(204);

    // ステージを表示
    stage.display();

    // モグラを表示
    mole.display();


    // ハンマーを移動して表示
    hammer.move();
    hammer.display();

    // マウスをクリックしたら
    if (mousePressed) {
      // モグラとハンマーが当たったら
      if (mole.isContactedWith(hammer)) {
        // モグラをランダムな位置に移動
        mole.move();

        // スコアを増やす
        stage.scoreUp();
      }
    }
  }
}