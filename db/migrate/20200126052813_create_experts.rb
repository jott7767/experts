class CreateExperts < ActiveRecord::Migration[6.0]
  def change
    create_table :experts do |t|
      t.string :first_name
      t.string :last_name
      t.string :website_url
      t.string :shortened_url
      t.text :website_data

      t.timestamps
    end
  end
end
