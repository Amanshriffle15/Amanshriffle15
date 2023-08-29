class RenameUserProfilestoUserProfiles < ActiveRecord::Migration[7.0]
  def change
    rename_table :userprofiles ,:user_profiles
  end
end
