class CreateHomeworkBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :homework_blogs do |t|
      t.string :title
      t.text :body
      t.boolean :published

      t.timestamps
    end
  end
end
