class AddDesignationIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :designation, index: true, foreign_key: true
  end
end