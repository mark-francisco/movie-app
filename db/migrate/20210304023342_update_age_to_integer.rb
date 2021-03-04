class UpdateAgeToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :actors, :age, "numeric USING CAST(age AS numeric)"

  end
end
