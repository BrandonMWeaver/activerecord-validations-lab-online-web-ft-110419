class TitleValidator < ActiveModel::Validator
  PATTERNS = [
    /Won't Believe/,
    /Secret/,
    /Top \d/,
    /Guess/
  ]
  
  def validate(post)
    unless post.title.none? { |p| }
      post.errors[:title] << "Not clickbait"
    end
  end
end
