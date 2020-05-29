# Varenta
![varenta](https://user-images.githubusercontent.com/61730661/83250469-1fb7aa80-a1e3-11ea-92db-e564e51a5186.jpg)

## 🌐 App URL
### **IP：000.000.00.00**

## 概要
美容院のHPをイメージして作成しております。
現状マークアップでの大枠の作成のみでございますが、追加で修正や機能のカスタマイズをしていく予定でございます。

### 搭載予定機能
### gest機能
* ユーザーの登録、ログイン、ログアウト、APIを使った認証ログイン登録
* 予約機能、予約詳細、予約削除
* 商品の購入、商品購入詳細
* マイページ機能から予約履歴、購入履歴の確認、ユーザー登録情報の変更、退会
* 商品購入の際クレジットカードを登録させて購入

### host機能 
* ニュース、スケジュール投稿機能
* blog投稿
* 商品入替 (追加、編集、削除)
* スタッフ変更


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
- has_many :items
source: :item
- has_one :credit_card
- has_one :address


## credit_cardsデーブル
|Column|Type|Options|
|------|----|-------|
|customer_id|string|null: false|
|card_id|string|null :false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user, optional true

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
- belongs_to :user, optional: true
- belongs_to_active_hash :prefecture

## productsテーブル
|Column|Type|Options|
|------|----|-------|
続き
