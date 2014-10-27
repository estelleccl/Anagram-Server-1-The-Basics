class AddIndexToSortedDowncase < ActiveRecord::Migration
  def change
      add_index :words, :word_sorted_downcase
  end
end