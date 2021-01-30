class CreateFriendRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_requests do |t|
      t.references :requester, null: false, foreign_key: true
      t.references :requestee, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
