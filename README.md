# Varenta
![varenta](https://user-images.githubusercontent.com/61730661/83250469-1fb7aa80-a1e3-11ea-92db-e564e51a5186.jpg)

## 🌐 App URL
### **IP：000.000.00.00**

## 概要
美容院のHPをイメージして作成しております。
現状マークアップでの大枠の作成のみでございますが、追加で修正や機能のカスタマイズをしていく予定でございます。


## 機能
### GEST機能
* ユーザーの登録、ログイン、ログアウト
* お知らせ検索
* レビューの投稿、削除 
* レビュー ▶︎ コメント投稿、削除
* ページネーション

搭載予定
* レビュー ▶︎ いいね機能
* 予約/問合せ チャット機能
* 商品の購入、詳細
* ユーザー登録情報

### HOST機能 (管理者)
▶︎このID／Passのみ使用可能
  Log_in ID
  nickname:管理者
  email: "admin@gmail.com",
  password:  "11111111",

* 管理者のログイン、ログアウト(admin)
* お知らせの投稿、編集、詳細、削除


## 使用した技術
* 言語:  Haml/SCSS/Javascript,Ruby/SQL
* FW:  Ruby on Rails
* DB:  MySQL
* heroku ▶︎ AWSに切替予定
  

## データベース設計 
### usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|lastname|string|null: false|
|firstname|string|null: false|
|lastnameKANA|string|null: false|
|firstnameKANA|string|null: false|
|birth_date|date|null:false|
|email|string|null: false|
|password|string|null: false|
### Association
has_many :products
has_one :address
has_many :tweets
has_many :comments
has_many :posts


## addressテーブル
|Column|Type|Options|
|------|----|-------|
|postalcode|integer|null: false|
|prefecture_id|integer|null: false|
|first_address|string|null: false|
|second_address|string|null: false|
|third_address|string||
|phone_number|integer||
|user_id|references||
### Association
belongs_to_active_hash :prefecture
belongs_to :user, optional: true


## productsテーブル
|Column|Type|Options|
|------|----|-------|
name|string|null: false|
introduction|text|null: false|
price|integer|null: false|
...随時追加
### Association
belongs_to :user
※商品購入機能追加予定


## postsテーブル
|Column|Type|Options|
|------|----|-------|
name|string|null: false|
text|string|null: false|
image|text|
### Association
belongs_to :user (admin:管理者のみ使用可)


## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
name|string|null: false|
text|string|null: false|
user_id|string|
### Association
belongs_to :user
has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
user_id|integer|
tweet_id|integer|
text|text|
### Association
belongs_to :tweet
belongs_to :user 

