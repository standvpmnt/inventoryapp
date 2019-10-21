class CreateCobasReagents < ActiveRecord::Migration[6.0]
  def change
    create_table :cobas_reagents do |t|
    	t.string :test_code
    	t.integer :reagent_bottle
    	t.string :test_short_name
    	t.string :reagent_name
    	t.integer :test_nos
    	t.integer :expiry_month
    	t.integer :expiry_year
    	t.string :lot_no
    	t.string :unique_identifier
    	t.datetime :ho_in_time
    	t.string :ho_in_employee
    	t.datetime :ho_out_time
    	t.string :ho_out_employee
    	t.datetime :lab_in_time
    	t.string :lab_location
    	t.string :lab_in_employee
    	t.datetime :lab_use_time
    	t.string :lab_use_employee
    	t.datetime :lab_discard_time
    	t.string :lab_discard_employee
    	t.string :status
    	t.timestamps 
    end
  end
end
