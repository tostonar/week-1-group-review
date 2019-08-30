class Comment
  attr_reader :photo, :comment
  @@all = []
  def initialize(photo, comment)
    @photo = photo
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end
end