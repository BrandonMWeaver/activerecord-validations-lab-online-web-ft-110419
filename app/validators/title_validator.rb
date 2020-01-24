class TitleValidator < ActiveModel::Validator
  def validate(post)
    unless post/title && post.title.match?(/Won't Believe|Secret|Top \d|Guess/)
      post.errors[:title] << "Not clickbait"
    end
  end
end
