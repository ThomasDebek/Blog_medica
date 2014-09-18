class Post < ActiveRecord::Base
  has_attached_file :avatar

  belongs_to :user
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_attached_file :avatar1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar1, :content_type => /\Aimage\/.*\Z/

  has_attached_file :avatar2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar2, :content_type => /\Aimage\/.*\Z/


  def avatar_from_url(url)
    self.picture = open(url)
  end


end
