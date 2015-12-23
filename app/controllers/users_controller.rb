class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("updated_at DESC")
    @picture = Picture.all
    @pid
    # @picture = Picture.where(:user_id => @user.id)
    @changed = {:user => {:userid => @user.id, :first => @user.first_name, :last => @user.last_name}}

    respond_to do |format|
      format.html { render 'show.html.erb', status: 200 }
      format.json { render json: @changed, status: 200 }
    end

  end

  def follow
    @user = User.find(params[:id])
    current_user.follow!(@user)
    redirect_to action: :show
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.unfollow!(@user)
    redirect_to action: :show
  end

  def view_followers
    @user = User.find(params[:id])
    @following = @user.followees(User)
    @yourFollowers = @user.followers(User)
  end

  def add_profile_image
    @user = current_user
    @user.image = params[:profile_image]
    @user.save
    redirect_to action: :show
  end

private
  def user_params
     params.require(:user).permit(:first_name, :last_name, :posts, :image, :user_picture, posts_attributes: [:id, :content, :_destroy])
  end
end
