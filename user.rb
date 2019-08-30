class User
  attr_accessor :name
  def initialize(name)
    @name = name
    
  end
  
  def photos
    Photo.all.select {|photo| photo.user == self}
  end

  def make_photo
    photo = Photo.new
    photo.user = self
  end

  
end