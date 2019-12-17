# README


# freemarket_sample DB設計

## item テーブル
  |column|Type|Options|
  |------|----|-------|
  |name|string|null: false, add_index: item, unique: true|
  |user_id|integer|null: false, foreign_key: true|
  |category_id|integer|null: false, foreign_key: true|
  |brand_id|integer|null:false, foreign_key: true|
  |prefecture_id|integer|null: false, foreign_key: true|
  |price|integer|null: false|
  |status|integer|null: false|
  |description|text|null: false|
  |shipping_burden|integer|null: false|
  |shipping_method|integer|null: false|
  |shipping_date|integer|null: false|
  |size|integre|
  
###  Association
- belongs_to  :user
- belongs_to  :brand
- belongs_to :category
- belongs_to_active_hash :prefecture
- has_many: comments
- has_many: images


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :items


## brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :items


## imageテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


### userテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, uniqueness: true|
|email|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|born_year|integer|null: false|
|born_month|integer|null: false|
|born_day|integer|null: false|
|phone_number|integer|null: false, uniqueness: true|

##Association
 - has_one :address
 - has_one :profile


## addressテーブル
|Column|Type|Options|
|------|----|-------|
|post_number|integer|null: false|
|city|string|null: false|
|town|string|null: false|
|building|string||
|user_id|integer| foreign_key: true|
|prefecture_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to_active_hash :prefecture



## profileテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|avatar|string||
|comment|text||
|user_id|integer| foreign_key: true|

### Association
- belongs_to :user

