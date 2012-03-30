class CreateTeachables < ActiveRecord::Migration
  def change
    create_table :teachables do |t|
      t.string :content

      t.timestamps
    end
  end
end
