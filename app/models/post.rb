class Post < ActiveRecord::Base
    belongs_to :author
    validates :title, length: { minimum: 2 }
    validates :content, length: { minimum: 200 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
