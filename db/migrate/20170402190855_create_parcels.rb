class CreateParcels < ActiveRecord::Migration[5.0]
  def change
    create_table :parcels do |t|
      t.belongs_to :city
      t.text :geom
      t.string :ownership_type 
      t.boolean :is_engaged_owner 
      t.string :land_use 
      t.string :zoning 
      t.string :parcel_id 
      t.boolean :is_for_sale 
      t.boolean :is_for_lease 
      t.integer :year_built 
      t.boolean :is_vacant_lot 
      t.string :ground_floor_vacancy 
      t.string :upper_floor_vacancy 
      t.string :own_contact_name 
      t.string :own_contact_role 
      t.string :own_contact_organization 
      t.string :own_contact_phone 
      t.string :own_contact_email 
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
