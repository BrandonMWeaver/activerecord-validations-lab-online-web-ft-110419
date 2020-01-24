class Author < ActiveRecord::Base
  validates :name, presence: true, uniqun
end
