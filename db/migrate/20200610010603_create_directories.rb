class CreateDirectories < ActiveRecord::Migration[5.2]
  def change
    create_table :directories do |t|
      t.string :name, null: false, default: ""
      t.string :slug, index: true, uniq: true, null: false
      t.references :directory, index: true
      
      t.timestamps
    end
  end
end
