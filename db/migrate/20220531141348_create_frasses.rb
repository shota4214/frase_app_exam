class CreateFrasses < ActiveRecord::Migration[6.0]
  def change
    create_table :frasses do |t|
      t.string :title
      t.text :content
    end
  end
end
