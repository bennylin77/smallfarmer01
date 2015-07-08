class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.attachment :cover
      t.string :name
      t.text :description
      t.text :words
      t.belongs_to :user, index: true
      t.boolean :deleted_c, default: false, null: false    
      t.boolean :activated_c, default: true, null: false        
      t.datetime :activated_at      

      t.string   :phone_no
      t.string   :postal
      t.string   :county
      t.string   :district                        
      t.string   :address 
      t.string   :country

      t.timestamps
    end
  end
end
