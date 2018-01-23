class HomeworkBlogsController < ApplicationController
  before_action :set_homework_blog, only: [:show, :edit, :update, :destroy]

  # GET /homework_blogs
  # GET /homework_blogs.json
  def index
    @homework_blogs = HomeworkBlog.all
  end

  # GET /homework_blogs/1
  # GET /homework_blogs/1.json
  def show
  end

  # GET /homework_blogs/new
  def new
    @homework_blog = HomeworkBlog.new
  end

  # GET /homework_blogs/1/edit
  def edit
  end

  # POST /homework_blogs
  # POST /homework_blogs.json
  def create
    @homework_blog = HomeworkBlog.new(homework_blog_params)

    respond_to do |format|
      if @homework_blog.save
        format.html { redirect_to @homework_blog, notice: 'Homework blog was successfully created.' }
        format.json { render :show, status: :created, location: @homework_blog }
      else
        format.html { render :new }
        format.json { render json: @homework_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homework_blogs/1
  # PATCH/PUT /homework_blogs/1.json
  def update
    respond_to do |format|
      if @homework_blog.update(homework_blog_params)
        format.html { redirect_to @homework_blog, notice: 'Homework blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @homework_blog }
      else
        format.html { render :edit }
        format.json { render json: @homework_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homework_blogs/1
  # DELETE /homework_blogs/1.json
  def destroy
    @homework_blog.destroy
    respond_to do |format|
      format.html { redirect_to homework_blogs_url, notice: 'Homework blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework_blog
      @homework_blog = HomeworkBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homework_blog_params
      params.require(:homework_blog).permit(:title, :body, :published)
    end
end
