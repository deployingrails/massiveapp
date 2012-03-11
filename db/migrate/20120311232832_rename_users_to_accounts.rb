class RenameUsersToAccounts < ActiveRecord::Migration
  def up
    rename_table :users, :accounts
  end

  def down
    rename_table :accounts, :users
  end
end
