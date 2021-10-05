class Post < ActiveRecord::Base 
belongs_to :author
has_rich_text :body



end 