class Dog < ActiveRecord::Base
  attr_accessible :name, :song, :youtube
  mount_uploader :song, MusicUploader
end
