# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

##users table

| Column             |Type  | Options
---------------------|------|----------|
| email              |string|	null: false, unique: true
| encrypted_password |string|	null: false
| nickname           |string|	null: false
| sei_kanji	         |string|	null: false
| mei_kanji          |string|	null: false
| sei_kana	         |string| null: false
| mei_kana           |string| null: false
| birthday           |date| null: false

##Association
has_many :goods_post
has_many :goods_get
has_many :goods_send


##goods_post  table
| Column	  | Type    	| Options
----------------------------------------------
| goods_name| string  	| null: false
| pr        | text	    | null: false
| content	  | text	    | null: false
| price  	  | integer   | null: false
| user      | references|	null: false, foreign_key: true

##Association
belongs_to :user
belong_to :goods_get

##goods_get table
| Column  | Type        | Options|
-------------------------------------
card_number	    | integer	      | null: false
card_limit	    | integer	      | null: false
card_password	  | integer	      | null: false
goods_post      | references	  | null: false, foreign_key: true
user	          | references	  | null: false, foreign_key: true

##Association
belongs_to :goods_post
belongs_to :user
belong_to :goods_send

##goods_send table
| Column  | Type        | Options|
-------------------------------------
address_number  | integer	      | null: false
municipalities  | string      	| null: false
street_address  | string      	| null: false
building        | string      	| null: false
phone_number    | integer  	    | null: false
goods_get       | references	  | null: false, foreign_key: true
user	          | references	  | null: false, foreign_key: true

##Association
belongs_to :goods_get
belongs_to :user