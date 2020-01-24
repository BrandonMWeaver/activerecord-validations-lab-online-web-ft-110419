class TitleValidator < ActiveModel::Validator
  PATTERNS = [
    /Won't Believe/i,
    /Secret/i,
    /Top \d/i,
    /Guess/i
  ]
  
  def validate(post)
    unless PATTERNS.none? { |p| p.match? post.title}
      post.errors[:title] << "is not clickbait"
    end
  end
end
