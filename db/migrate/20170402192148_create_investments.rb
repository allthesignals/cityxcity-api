class CreateInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :investments do |t|
      t.belongs_to :city
      t.string :project 
      t.boolean :is_addressy 
      t.string :address 
      t.string :non_addressy_location 
      t.string :source_type 
      t.boolean :is_tdi_influenced 
      t.string :investment_type 
      t.string :product_massdev 
      t.string :product_public  
      t.string :product_private 
      t.boolean :is_amount_known 
      t.boolean :is_amount_estimated 
      t.boolean :is_amount_public  
      t.numeric :amount_exact  
      t.string :amount_estimated  
      t.json :investment_status
      t.boolean :is_close_date_approx  
      t.attachment :featured_photo  
      t.attachment :pub_docs  
      t.string :related_link_title  
      t.string :related_link_url  
      # to-do: these are has many: throughs
      # t.array :related_features  
      # t.array :related_investments 
      t.string :relation_notes  
      t.text :pub_notes 
      t.text :cta_text  
      t.string :cta_contact 
      t.string :pub_contact_1 
      t.string :pub_contact_org_1 
      t.string :pub_contact_role_1  
      t.string :pub_contact_phone_1 
      t.string :pub_contact_email_1 
      t.string :pub_contact_website_1 
      t.string :pub_contact_2 
      t.string :pub_contact_org_2 
      t.string :pub_contact_role_2  
      t.string :pub_contact_phone_2 
      t.string :pub_contact_email_2 
      t.string :pub_contact_website_2 
    end
  end
end
