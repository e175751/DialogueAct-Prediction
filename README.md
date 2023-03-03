# 不均衡データセットに有効な応答の対話行為分類法

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

## データセットのリンク先
データセット加工前
[Processing the Switchboard Dialogue Act Corpus](https://github.com/NathanDuran/Switchboard-Corpus)

データセット加工後
[加工後のデータセットのリンク先](https://drive.google.com/drive/folders/114HBmAobzA00GkKbU-rJbU0L04TYGA2R)

## Usage

加工後のデータセットを ```work/ipynb/data/```の下に保存
その後```docker-compose up -d```で動くはず
```work/ipynb/CostSensitiveCostMatrix.ipynb```がコスト考慮型とFLの実験環境
```work/ipynb/DialogueActEstimationofResponceHierarchicalClassification.ipynb```が階層型手法の実験環境

## モデル

model_name: ```CmbAttention``` => B4時の提案した学習モデル

loss_name: 修士で提案した手法
+ 修士論文中の名前: コード内の名前
+ CE: CE
+ IS: LogAll
+ MS: CE_weight
+ DPC: CE_CostMatrix
+ CER: CE_CostMatrix_V2
+ Focal Loss: FL
+ Dice Loss: GDiceLoss 
  + 調査中

reductions: バッチ内の損失値の計算方法
+ mean: 基本はこれ
+ sum: 調査中

Pramater_N: 修士で提案した手法のパラメータをいじる値
+ 1: ベース(MSとFL以外はこれ)
+ 1~7: MSは手動設定のため設定したコスト値をパラメータとして割り振り使用したz
+ 2: FLは[本論文](https://arxiv.org/abs/1708.02002)でも採用された数値(現在これしか調査していない)
+ 2~5: DPCはここまで試した



## 修論
[不均衡データセットに有効な応答の対話行為分類法](https://gitlab.ie.u-ryukyu.ac.jp/thesis/2022/k218591/-/blob/main/master_paper.pdf)

## References