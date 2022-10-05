class UserSessionsController < ApplicationController
  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to(admin_root_path)
    else
      flash.now[:alert] = "Login failed"
      render action: "new", status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to(:root, notice: t(".session"))
  end
end
