class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :what
      t.string :when
      t.string :where
      t.string :done

      t.timestamps
    end
  end
end
