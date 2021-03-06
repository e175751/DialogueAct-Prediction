# 論文サーベイ

## 個々の対話行為の特徴を考慮した自由対話における対話行為推定
1. どんなもの？
   => 個々の対話行為毎に適切な特徴量セットを設定する事で、全体の対話行為の成功率をあげる
2. 先行研究と比べてどこがすごい？
   => 先行研究では、単語の個数や、連続する単語関係、直前の対話行為をひとまとまりで学習したが、どの特徴量がどの対話行為に有効に働くか議論されていないため、各特徴量の組み合わせから各対話行為に有効的に働く最適な特徴量を発見する
3. 技術や手法のキモはどこ？
   => 分類クラス毎に異なる特徴量セットの用意
   => 入力発話文がある対話行為に該当するかどうか二値分類器で学習
    　最終的に、分類と同時に行われる判定の信頼度が高い値が出力結果となる
4. どうやって有効だと検証した？
   => 対話行為ごとの二値分類で評価
   => 提案手法とベースライン(全特徴量こみ)で比較し評価
5. 議論はある？
   => 判定の信頼度が低い対話行為が選択されにくい結果
   => 発話の対話行為推定について行われていたが、応答の対話行為推定にも応用が効きそう
6. 次に読むべき論文は？
   => 応答の一貫性について議論した論文
7. この論文から使えそうな事 = 自身の研究に繋がりそうなアイディア
   => 対話行為毎に適切な応答の対話行為であるか二値分類を行う

## 事態の一貫性推定に基づく雑談対話応答選択モデル
1. どんなもの？
   => 文脈や理論を考慮した応答候補からリランキングして選択する
2. 先行研究と比べてどこがすごい？
   => 事態の一貫性を考慮したスコアを計算を行い、それに基づいた応答候補を選択
    事態の一貫性の考慮を行うために、大規模なコーパスから因果関係ペアを用い、RFTMによる自体の分散表現
    事態を述語と付随する各要素のペアと定義
　　=> Coherence Modelに基づく応答候補の一貫性推定
3. 技術や手法のキモはどこ？
   => 因果関係ペア
    + 各事態(原因となる事態/結果となる事態)との自己相互情報量(因果関係の結びつきの強さ)を表す
   => 事態分散表現
    + 応答候補と対話履歴の発話との間の事態ペアに対して、類似性が高いものを選び(因果関係ペアの分散表現から)、因果関係ペアの自己相互情報量と乗算する
   => Coherence Model (応答候補の対話履歴に対する一貫性推定)
    => コヒーレンスモデルの学習には
      + 正例：話履歴と対話履歴中の発話に対し因果関係を持つ応答候補のペア
      + 負例：その逆
    + 発話から事態を抽出、事態と対話履歴・応答候補に基づき応答候補の対話履歴に対する一貫性スコア推定、一貫性スコアに基づきリランキングを行う
      + Coherence Model => 文書と文の一貫性推定
        + 対話履歴、応答候補、対話履歴中の事態、応答候補中の事態を入力とする

4. どうやって有効だと検証した？
   => リランキングを行う手法と行わない手法で比較
    応答候補の割合、多様性、一貫性、文の品質性
        => 語彙動詞の組み合わせが
5. 議論はある？
   => 

6. 次に読むべき論文は？
   => 

7. この論文から使えそうな事 = 自身の研究に繋がりそうなアイディア
   => 文と文の一貫性を測る事ができるCoherence Modelは生成文と発話文の一貫性を比較する際に有効だと思われる

## A Cross-Domain Transferable Neural Coherence Model
1. どんなもの？
   => 
2. 先行研究と比べてどこがすごい？
   => 
3. 技術や手法のキモはどこ？
   => 
4. どうやって有効だと検証した？
   => 
5. 議論はある？
   => 
6. 次に読むべき論文は？
   => 
7. この論文から使えそうな事 = 自身の研究に繋がりそうなアイディア
   => 

## Evaluating Coherence in Dialogue Systems using Entailment
1. どんなもの？
   => 
2. 先行研究と比べてどこがすごい？
   => 
3. 技術や手法のキモはどこ？
   => 
4. どうやって有効だと検証した？
   => 
5. 議論はある？
   => 
6. 次に読むべき論文は？
   => 
7. この論文から使えそうな事 = 自身の研究に繋がりそうなアイディア
   => 


## Task-Oriented Dialog Systems that Consider Multiple Appropriate Responses under the Same Context
1. どんなもの？
   => 現在の対話モデルは、一対一のモデルとなっているが、本来人間の対話は一対多であるため、実世界での多様なユーザーの行動を扱うことができない
   
2. 先行研究と比べてどこがすごい？
   => 
3. 技術や手法のキモはどこ？
   => 
4. どうやって有効だと検証した？
   => 
5. 議論はある？
   => 
6. 次に読むべき論文は？
   => 
7. この論文から使えそうな事 = 自身の研究に繋がりそうなアイディア
   => 