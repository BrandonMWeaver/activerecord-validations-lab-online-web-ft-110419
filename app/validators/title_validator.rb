class TitleValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.include?(/Won't Believe|Secret|Top \d|Guess/)
      post.errors[:title] << "Not clickbait"
    end
  end
end
