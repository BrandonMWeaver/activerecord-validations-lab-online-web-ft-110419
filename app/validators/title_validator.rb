class TitleValidator < ActiveModel::Validator
  PATTERNS = [
    /Won't Believe/
    /
  ]
  
  def validate(post)
    unless post.title.(/Won't Believe|Secret|Top \d|Guess/)
      post.errors[:title] << "Not clickbait"
    end
  end
end
