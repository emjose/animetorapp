class AddDescToAvatars < ActiveRecord::Migration[5.2]
  add_column :avatars, :desc, :string
end
