class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :video_id
      t.integer :note
      t.text :comment
      t.timestamps
    end
  end
end
