class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :string
      t.text :body
      t.string :source

      t.timestamps
    end
  end
end
