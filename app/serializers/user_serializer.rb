class UserSerializer < ActiveModel::Serializer
  attributes :id, :pages

  def pages
    object.pages
  end
end
