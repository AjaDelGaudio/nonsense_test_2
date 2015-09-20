class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :number, null: false
      t.string :text, null: false
      t.boolean :multiple_choice, null: false
    end
  end
end
