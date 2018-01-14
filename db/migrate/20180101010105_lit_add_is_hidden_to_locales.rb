class LitAddIsHiddenToLocales < ActiveRecord::Migration[5.2]
  def up
    return if column_exists?(:lit_locales, :is_hidden)
    add_column :lit_locales, :is_hidden, :boolean, default: false
  end

  def down
    remove_column :lit_locales, :is_hidden
  end
end
