class CreateClassProjects < ActiveRecord::Migration
  def change
    create_table :class_projects do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
