class NavbarComponent < ViewComponent::Base
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def user_signed_in?
    user.present?
  end
end
