class CreateGoodsPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :goods_posts do |t|

      t.string :goods_name, null: false, default: ""
      t.string :pr, null: false, default: ""
      t.string :content, null: false, default: ""
      t.integer :category_id, null: false
      t.integer :statement_id, null: false 
      t.integer :burden_id, null: false
      t.integer :area_id, null: false
      t.integer :day_id, null: false 
      t.integer :price_id, null: false
     
      
      t.timestamps
      

    end
  end
end
