class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answer do |t|
      t.text :body
      t.references :Question, index: true

      t.timestamps null: false
    end
    add_foreign_key :answer, :Question
  end
end
