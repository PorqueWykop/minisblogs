class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :tweet_id
      t.text :status

      t.timestamps
    end
    add_index :tweet_id
  end
end
