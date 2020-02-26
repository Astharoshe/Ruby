class CreateBoardposts < ActiveRecord::Migration[6.0]
  def change
 
    create_table :boardposts do |t|
      t.string :title
	  t.text :content
      t.timestamps null:false
    end
  end
end
