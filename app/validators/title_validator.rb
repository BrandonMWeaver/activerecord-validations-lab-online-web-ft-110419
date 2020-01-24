class TitleValidator < ActiveModel::Validator
  def validate(post)
    if post.title.match?(/(Won't Believe|Secret|Top \d|Guess)/).any
      post.errors[:title] << "is not clickbait"
    end
  end
end
