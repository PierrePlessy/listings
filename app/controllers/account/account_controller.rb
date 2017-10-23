class Account::AccountController < Account::AccountController

  before_action :authenticate_user!
  layout 'account'
  
end
