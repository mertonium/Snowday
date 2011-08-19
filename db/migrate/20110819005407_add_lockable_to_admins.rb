class AddLockableToAdmins < ActiveRecord::Migration
  def self.up
    change_table(:admins) do |t|
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
    end
  end

  def self.down
  end
end
