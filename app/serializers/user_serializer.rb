class UserSerializer < ActiveModel::Serializer
  attributes :id, :folders

  def folders
    object.folders.map do |folder|
      {
        name: folder.name,
        saved_pages: folder.saved_pages
      }
    end
  end
end
