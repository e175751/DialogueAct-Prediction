# DialogueAct-Prediction

## 何をしている
+ 応答の対話行為推定の再現率向上を目指している
  + データセットの偏り問題を解消する
+ 背景
  + 対話データセットでは、同じ対話行為タグが使われる事が多いため、タグによって偏りが現れる
+ 問題提起
  + タグによる偏りによって、出現しにくいタグが出てきてしまい、対話の多様性が失われてしまう
+ 目的
  + 予測タグと正解タグによって損失値の重みを変動させることで、少数派のタグ予測を行えるようにする
  + データの偏りを解消する方法の一つである、コスト考慮型がこの問題を解決するための有効的であると示す

## Usage
```
docker-compose up -d
```

## データセットのリンク先
データセット加工前
[Processing the Switchboard Dialogue Act Corpus](https://github.com/NathanDuran/Switchboard-Corpus)
データセット加工後
[加工後のデータセットのリンク先](https://drive.google.com/drive/folders/114HBmAobzA00GkKbU-rJbU0L04TYGA2R)

## 修論
[不均衡データセットに有効な応答の対話行為分類法](https://gitlab.ie.u-ryukyu.ac.jp/thesis/2022/k218591/-/blob/main/master_paper.pdf)

## References