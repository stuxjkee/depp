class ChangeHtmlStringToText < ActiveRecord::Migration
  def change
    change_column :news, :html, :text
  end
end
