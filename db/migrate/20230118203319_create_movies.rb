class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :letterboxd_id, index: true
      t.string :title
      t.string :link
      t.string :film_year
      t.string :poster
      t.date :watched_date

      t.timestamps
    end
  end
end
