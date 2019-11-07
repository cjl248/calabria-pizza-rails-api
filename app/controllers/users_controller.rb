class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.to_json(
      include: :menu_categories,
      except: [:created_at, :updated_at, :password_digest]
    )
  end

  def create
    userPassword = params[:password]
    new_user_params = user_params
    new_user_params[:password] = userPassword
    user = User.create(new_user_params)

    if user.valid?
      render json: {username: user.username, email: user.email}, status: :ok
    else
      render json: user.errors.full_messages, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
