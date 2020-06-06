class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :text
      t.string :user_id
      t.timestamps
    end
  end
end
