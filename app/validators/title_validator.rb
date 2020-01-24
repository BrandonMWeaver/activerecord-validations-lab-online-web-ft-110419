class TitleValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.match(//)
  end
end
