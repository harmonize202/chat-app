class UsersController < ApplicationController

  def edit
  end

  def update
    # devise特有の処理で、変数を設定しなくても「current_user」とするだけで上書き可能
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
