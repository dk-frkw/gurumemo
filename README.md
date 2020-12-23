＃テーブル設計

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