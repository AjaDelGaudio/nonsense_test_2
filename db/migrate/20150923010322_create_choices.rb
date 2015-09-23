class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.hstore :data
      t.belongs_to :question, null: false
    end
  end
end
