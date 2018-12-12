class ChangeUserIdToArticle < ActiveRecord::Migration[5.0]
  def change
    change_column :articles, :user_id, :integer
  end
end
