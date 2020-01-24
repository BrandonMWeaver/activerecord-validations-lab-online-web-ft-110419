class TitleValidator < ActiveModel::Validator
  def validate(title)
    unless title.match
  end
end
