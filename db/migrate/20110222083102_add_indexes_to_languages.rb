class AddIndexesToLanguages < ActiveRecord::Migration
  def self.up
    add_index('languages', 'year')
    add_index('languages', 'category_id')
    add_index('languages', 'name')
  end

  def self.down
    remove_index('languages', 'year')
    remove_index('languages', 'category_id')
    remove_index('languages', 'name')
  end
end