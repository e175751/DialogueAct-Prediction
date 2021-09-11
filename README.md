# DialogueAct-Prediction

## 何をしている
+ 応答の対話行為推定の精度向上を目指している
  + データセットの偏り問題を解消する
+ 背景
  + 対話データセットでは、同じ対話行為タグが使われる事が多いため、タグによって偏りが現れる
+ 問題提起
  + タグによる偏りによって、出現しにくいタグが出てきてしまい、対話の多様性が失われてしまう
+ 目的
  + データの偏りを解消する方法の一つである、コスト考慮型がこの問題を解決するための有効的であると示す
## Cost Sensitive loss とは
+ 
### Cost Sensitive Cross Entoropy loss
### Affinity loss

## Up sampling / Down sampling


## Usage
```
python3 train.py --expr [Model name]
```