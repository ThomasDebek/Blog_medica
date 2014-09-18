class User < ActiveRecord::Base
  has_many :posts

  after_create :send_invitation

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def to_s
    "#{email}"
  end

  private

  def send_invitation
    UserMailer.welcome self
  end

end
