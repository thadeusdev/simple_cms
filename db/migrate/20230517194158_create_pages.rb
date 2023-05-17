class CreatePages < ActiveRecord::Migration[7.0]
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name"
      t.string "permalink"
      t.integer "postion"
      t.boolean "visible", :default => false

      t.timestamps
    end
    #look ups
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end

  def down
    # dont need to drop indexes when dropping the whole table
    drop_table :pages
  end
end
