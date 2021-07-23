class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  # GET/users/ :id
  def show

    end


  def edit

  end

  def update
  if @user.update(user_params)
    redirect_to users_path
  else
    render 'edit'
  end
end

# Delete/users/ :id
def destroy
  @user.destroy
  redirect_to users_path
end

private

def user_params
  params.require(:user).permit(:name, :address)
end

def find_user
  @user = User.find(params[:id])
end
end
