class AddWeekIdToTeachables < ActiveRecord::Migration
  def change
    add_column :teachables, :week_id, :integer

  end
end
