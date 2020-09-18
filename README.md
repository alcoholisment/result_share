![Result_Share](https://user-images.githubusercontent.com/68902680/93584143-de404a80-f9df-11ea-9c12-734a24bb0565.gif)

<h2 align="center">Result_Share</h2>

## 🌐App URL
https://result-share.herokuapp.com/

## テストアカウント
email:masao@com  
pw:asdff1

## 概要
音ゲーのリザルト画像をシェアできるサイトです。  
会員登録&ログインをして画像の投稿と、投稿に対してコメントを送ることができます。

## 制作背景
音ゲーのリザルト画像をシェアできる専用のサイトがあればいいなと思い、TECH::CAMPで作ったPicTweetというアプリを雛形に作ってみました。

## 工夫したポイント
iPhoneで撮影した画像は4:3になるので、ツイートの枠も4:3にしました。

## 今後実装したい機能
ユーザー間のフォロー機能、いいね機能、レスポンシブデザインなどを取り入れたいと思っています。

## 開発環境
Ruby on Rails  
Heroku

## DB設計

### users テーブル

| Column | Type | Option |
| - | - | - |
| nickname | string | null:false |
| email | string | null:false default: "" |
| :encrypted_password | string | null:false default: "" |

### Association

has_many :tweets  
has_many :comments

### tweets テーブル

| Column | Type |
| ------ | ---- |
| name | string | 
| text | string |

### Association

belongs_to :user  
has_many :comments  
has_one_attached :image

### comments テーブル

| Column | Type |
| ------ | ---- |
| text | text |
| user_id | integer |
| tweet_id | integer |

### Association

  belongs_to :tweet  
  belongs_to :user
