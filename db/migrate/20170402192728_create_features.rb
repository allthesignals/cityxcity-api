class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.belongs_to :city
      t.string :name  
      t.boolean :is_addressy 
      t.string :address 
      t.string :non_addressy_location 
      t.string :feature_type  
      t.string :feature_subtype 
      t.boolean :is_employer 
      t.boolean :is_street_activating  
      t.json :open_or_closed  
      t.attachment :featured_photo  
      t.attachment :pub_docs  
      t.attachment :priv_docs 
      t.string :related_link_title  
      t.string :related_link_url  
      # to-do: HABTM
      # t.array :related_features  
      # t.array :related_investments 
      t.text :relation_notes  
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
      t.boolean :is_collision_point  
    end
  end
end
