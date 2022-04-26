class CreateRecipieFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipie_foods do |t|
      t.decimal :quantity
      t.references :food, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
