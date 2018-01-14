class LitAddIsCompletedAndIsStarredToLocalizationKeys < ActiveRecord::Migration[5.2]
  def up
    unless column_exists?(:lit_localization_keys, :is_completed)
      add_column :lit_localization_keys, :is_completed, :boolean, default: false
    end
    unless column_exists?(:lit_localization_keys, :is_starred)
      add_column :lit_localization_keys, :is_starred, :boolean, default: false
    end
  end

  def down
    remove_column :lit_localization_keys, :is_completed
    remove_column :lit_localization_keys, :is_starred
  end
end
