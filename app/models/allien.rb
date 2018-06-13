class Allien < ApplicationRecord
validates_presence_of :name, :image, :desc
end
