## users table

| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## rooms table

| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| name               | string | null: false |

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users　table

| Column             | Type       | Option                         |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| room               | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :room 

## messages table

| Column             | Type       | Option                         |
| ------------------ | ---------- | ------------------------------ |
| content            | string     |                                |
| user               | references | null: false, foreign_key: true |
| room               | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :room