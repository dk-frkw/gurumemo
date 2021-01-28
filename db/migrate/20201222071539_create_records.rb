class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string       :store_name                , null: false
      t.integer      :genre_id                  , null: false
      t.float        :score
      t.string       :address
      t.string       :station                   , null: false
      t.integer      :phone_number
      t.string       :holiday
      t.text         :memo
      t.float        :latitude
      t.float        :longitude
      t.references   :user                      , foreign_key: true
      t.timestamps
    end
  end
end
