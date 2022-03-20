# frozen_string_literal: true

class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.date :year
      t.boolean :active

      t.timestamps
    end
  end
end
