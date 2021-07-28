class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :category
      t.string :location
      t.string :job_author
      t.string :author_email
      t.datetime :expire
      t.boolean :remote
      t.string :apply_url

      t.timestamps
    end
  end
end
