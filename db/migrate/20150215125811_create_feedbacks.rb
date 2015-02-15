class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :comments

      t.timestamps null: false
    end
  end
end
