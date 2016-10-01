class CreatePertanyaans < ActiveRecord::Migration[5.0]
  def change
    create_table :pertanyaans do |t|

      t.timestamps
    end
  end
end
