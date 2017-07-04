class CreateTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :terms do |t|
      t.string :source
      t.string :target

      t.timestamps
    end
  end
end
