class AlterColumnQuestions < ActiveRecord::Migration
  def up
    change_column(:questions, :multiple_choice, :boolean, default: false, null: false)
  end

  def down
    change_column(:questions, :multiple_choice, :boolean, null: false)
  end
end
