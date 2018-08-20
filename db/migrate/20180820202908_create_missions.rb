class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :title
      t.string :category
      t.string :address
      t.integer :volunteers_needed
      t.text :description
      t.text :skills_needed
      t.datetime :starting_at
      t.integer :duration_in_hours
      t.boolean :recurrent
      t.integer :recurrency_in_days
      t.date :recurrency_ending_on
      t.date :end_candidature_date
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
