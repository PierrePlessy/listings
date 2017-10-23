class Account::UserController < Account::AccountController

  def index
    @user = current_user
  end

  def update
    @user = User.find(current_user)

    
  end

end
