class AddAbbreviationsToLanguage < ActiveRecord::Migration
  def self.up
    add_column :languages, :abbreviation, :string
  end

  def self.down
    remove_column :languages, :abbreviation
  end
end
