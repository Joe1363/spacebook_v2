class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @user = current_user
    @post.destroy
    respond_to do |format|
      format.html { redirect_to "/users/#{@user.id}" }
      format.json { head :no_content }
    end
  end

  def new_post
    @user = current_user
    @post = Post.new(:content => params[:post_content])
    @post.save
    @user.posts << @post
    @user.save
    @post = Post.where(:user_id => current_user.id)

    redirect_to "/users/#{@user.id}"
  end

  def new_picture
    @user = current_user
    @post = Post.new
    @post.content = params[:post_content]
    @picture = Picture.new
    @picture.image = params[:user_picture]
    @picture.save
    @post.picture = @picture
    @post.save
    @user.posts << @post
    @user.pictures << @picture
    @user.save
    @post = Post.where(:user_id => current_user.id)

    redirect_to "/users/#{@user.id}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:user_id, :content, :image, :user_picture)
    end
end
