class CreateRequestStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :request_statuses do |t|
      t.string :name
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
