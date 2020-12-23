class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      # * this is the foreign key


      t.timestamps null: false
      # * automatically adds timestamps when updateing or creating models
    end
  end
end
