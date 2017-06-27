class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.column :title, :string
      t.column :order, :integer

      t.timestamps
    end
  end
end
