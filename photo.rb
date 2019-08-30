class Photo
  attr_accessor :user

  @@all = []
  def initialize
    @@all << self
  end

  def make_comment(comment)
    Comment.new(self, comment)
  end

  def comments
    Comment.all.select {|comment| comment.photo == self}
  end

  def self.all
    @@all
  end
end