class TitleValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.match(/Won't Believe|Secret|Top/)
  end
end
