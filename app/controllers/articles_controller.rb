class ArticlesController < ApplicationController
  
  def index
    @articles = Article.find(:all, :order => 'created_at DESC')
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])
    
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

end
