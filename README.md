概要

このアプリでできること
今までに行ったお気に入りの飲食店を記録したり
SNSなどで行きたいと思ったお店の写真を記録して
お店選びや思い出の振り返りに使えるアプリです！

本番環境　テストアカウント
URL https://gurumemo-app.herokuapp.com/
メールアドレス　a@a
パスワード　aaaaa1

制作背景

前職の際に、飲食店に行くことが多く、お店選びの際に
あの時のお店どこだっけ？と思い出せないことがあったので
あとで見返すためのアプリがあるといいなと思い制作しました。

工夫したポイント

メモの欄を作ることで、そのお店の特徴なども残すことができる。
共有のアカウントを持つことで、友達やカップル同士で使うことも可能。

開発環境
・macOS Catalina 10.15.7
・ruby 2.6.5
・Rails 6.0.0

課題や今後実装したい機能
・お店の評価機能
・ジャンルごとの一覧表示
・Googleマップの導入


テーブル設計

## usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user_name          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :records

## itemsテーブル
| Column            | Type         | Options                        |
| ------------------| ------------ | ------------------------------ |
| store_name        | string       | null: false                    |
| genre_id          | integer      | null: false                    |
| score             | float        | null: false                    |
| address           | string       |                                |
| station           | string       | null: false                    |
| phone_number      | integer      |                                |
| holiday           | string       |                                |
| memo              | text         |                                |
| latitude          | float        |                                |
| longitude         | text         |                                |
| user              | references   | null: false, foreign_key: true |

### Association
- belongs_to user
