class AddJudulToMataharinya < ActiveRecord::Migration[5.0]
  def change
    add_column :mataharinyas, :judul, :string
  end
end
