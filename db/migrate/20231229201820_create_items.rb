# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items, id: :uuid do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
