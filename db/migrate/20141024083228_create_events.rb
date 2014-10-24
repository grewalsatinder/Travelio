class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :category
      t.string :attendees
      t.string :organizer
      t.string :order
      t.string :subcategory
      t.string :venue
      t.string :event
      t.belongs_to :user

      t.timestamps
    end
    add_index :events, [:user_id, :created_at]
  end
end
