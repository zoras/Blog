class Post < ActiveRecord::Base
  # validates :title, :presence => true
  validate :custom_presence_of
  #validates :body, :presence => true, :length => { :minimum => 5}
  
  has_many :comments, :dependent => :destroy
  
  def custom_presence_of
     errors.add(:title, "should not be empty") if self.title.blank?
  end
end
