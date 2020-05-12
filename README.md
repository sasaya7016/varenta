# Varenta（美容院HP 作成中）
![varenta](https://user-images.githubusercontent.com/61730661/81335718-03908400-90e3-11ea-98ab-e39c7dbaf76d.jpg)

## 🌐 App URL

### **IP：000.000.00.00**
**user：000, pass：000**  
　
## 💬 Usage

`$ git clone 作成中` 

## 概要
### 搭載予定機能
### gest機能
* ユーザーの登録、ログイン、ログアウト、APIを使った認証ログイン登録
* 予約機能、予約詳細、予約削除
* 商品の購入、商品購入詳細
* マイページ機能から予約履歴、購入履歴の確認、ユーザー登録情報の変更、退会
* 商品購入の際クレジットカードを登録させて購入

### host機能 (id 1のみ制限)
* ニュース、スケジュール投稿機能
* blog投稿
* 商品入替 (追加、編集、削除)
* スタッフ変更


## 使用した技術
* 言語:  Haml/SCSS/Javascript,Ruby/SQL
* FW:  Ruby on Rails
* DB:  MySQL
* AWS:  EC2,S3,Route 53
* ミドルウェア:  Unicorn,Nginx
  

## 制作背景
> HP制作を依頼があったことを想定して、美容院HP作成
> プログラミングスクールで学んだ内容を復習しつつ個人で作成した。




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
