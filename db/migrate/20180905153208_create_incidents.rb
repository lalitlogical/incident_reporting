class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.text :school_name
      t.string :incident_type
      t.text :incident
      t.string :name
      t.string :email_or_phone
      t.string :role
      t.text :people_involved
      t.text :observers
      t.datetime :observed_at
      t.string :location
      t.text :location_details
      t.text :description

      t.timestamps
    end
  end
end
