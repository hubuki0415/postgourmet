# テーブル設計

## Users テーブル

| Column               | Type   | Options     |
| --------             | ------ | ----------- |
| email                | string | null: false |
| nickname             | string | null: false |

### Association

- has_many   :tweets
- has_many   :likes
- has_many   :comments

## Comment テーブル

| Column                 | Type       | Options                         |
| --------               | ------     | -----------                     |
| user                   | references | null: false, foreign_key: true  |
| tweet                  | references | null: false, foreign_key: true  |

### Association

- belongs_to :tweet
- belongs_to :user

## Tweet テーブル

| Column               | Type       | Options                        |
| --------             | ------     | -----------                    |
| user                 | references | null: false, foreign_key: true |
| text                 | text       | null: false                    |

### Association

- belongs_to :user
- has_many   :likes
- has_many   :comments

## likes テーブル

| Column             | Type       | Options                             |
| --------           | ------     | -----------                         |
| user                   | references | null: false, foreign_key: true  |
| tweet                  | references | null: false, foreign_key: true  |
### Association

- belongs_to :user
- belongs_to :tweet
