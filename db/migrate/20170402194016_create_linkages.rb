class CreateLinkages < ActiveRecord::Migration[5.0]
  def change
    create_table :linkages do |t|
      t.references :investment
      t.references :feature
    end
  end
end
