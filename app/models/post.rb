class Post < ActiveRecord::Base
  has_attached_file :avatar
  has_attached_file :avatar1
  has_attached_file :avatar2

  belongs_to :user
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_attached_file :avatar1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar1, :content_type => /\Aimage\/.*\Z/

  has_attached_file :avatar2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar2, :content_type => /\Aimage\/.*\Z/


  validates_attachment_content_type :avatar, :content_type => /\Aimage/
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  do_not_validate_attachment_file_type :avatar

  validates_attachment_content_type :avatar1, :content_type => /\Aimage/
  validates_attachment_file_name :avatar1, :matches => [/png\Z/, /jpe?g\Z/]
  do_not_validate_attachment_file_type :avatar1

  validates_attachment_content_type :avatar2, :content_type => /\Aimage/
  validates_attachment_file_name :avatar2, :matches => [/png\Z/, /jpe?g\Z/]
  do_not_validate_attachment_file_type :avatar2



end
