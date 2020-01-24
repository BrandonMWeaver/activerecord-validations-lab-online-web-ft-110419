class TitleValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.match(/Won't Believe|Secret|Top \d|Guess/)
    
  end
end
