class Post < ApplicationRecord 
    #vlidate the title such that the title cannot be empty or falsy 
    validates :title, presence: true
    #validate the length of the content to be at least 250 
   validates :content, length: {minimum: 250}
    #validate the length of the summary to be at most 250 
   validates :summary, length: {maximum: 250}
    #validate the category 
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
   #Allow title to be "True Facts"
   validate :is_clickbait 
   def  is_clickbait
      if title == "True Facts"
        errors.add(:title, "Title not permitted")
    end
end
end
