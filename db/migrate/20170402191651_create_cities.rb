class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name  
      t.boolean :has_tdi_fellow  
      t.attachment :cover_image 
      t.text :cta_text  
      t.string :cta_contact 
      t.string :cta_contact_org 
      t.string :cta_contact_role  
      t.string :cta_contact_phone 
      t.string :cta_contact_email 
      t.text :feature_cta_default 
      t.text :investment_cta_default  
      t.text :parcel_cta_default  
    end
  end
end
