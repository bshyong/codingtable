class RemoveGenerationFromLanguages < ActiveRecord::Migration
  def self.up
    remove_column :languages, :generation
  end

  def self.down
    add_coumn :languages, :generation, :string
  end
end