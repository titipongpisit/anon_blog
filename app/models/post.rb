class Post < ActiveRecord::Base
  validates :body, presence: true
  validates :title, presence: true
  # before_save :author_check                               # we don't need this since we already set default

  has_many :tag_lookups
  has_many :tags, :through => :tag_lookups


  # def input_tags=(input_tags)
  def something=(hey)  
    self.tags.clear                                         #self is instance of post 
    tag_array = hey.gsub(' ','').split(',')
    # tag_array = input_tags.gsub(' ','').split(',')
    tag_array.uniq!
    puts tag_array.inspect
    tag_array.each do |tag|
      #Add Tag (if necessary) to Table and Association
      self.tags << Tag.find_or_create_by_name(tag)                
    end
    self.tags
  end

  # def author_check                                         #we don't need this since we already set default
  #   self.author = 'Anonymous' if self.author == ""
  # end
end
