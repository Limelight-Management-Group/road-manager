class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
        t.string  :name
        t.text    :venue_name
        t.text    :location
        t.text    :days_available
        t.boolean :age_restriction
        t.text    :genre
        t.boolean :registration_required
        t.string  :website
        t.string  :special_instructions
        t.timestamps
    end
  end
end
