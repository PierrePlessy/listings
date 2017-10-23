class Account::UserController < Account::AccountController

  def index
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)

    if @user.update_attributes(user_params)
      redirect_to account_user_index_path
    else
      render template: '/account/user/index'
    end
  end

  private
  def user_params
    params.required(:user).permit(:email, :first_name, :last_name, :password).merge(id: current_user.id)
  end
end
