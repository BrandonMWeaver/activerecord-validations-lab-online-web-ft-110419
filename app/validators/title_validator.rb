class TitleValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.match(//)
      post.errors[:title] << "Not clickbait"
    end
  end
end
