class CreateIncidentAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :incident_attachments do |t|
      t.integer :incident_id
      t.string :avatar

      t.timestamps
    end
  end
end
