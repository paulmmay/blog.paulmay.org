class ArticlesController < ApplicationController
  
  def index
    @articles = Article.find(:all, :order => 'created_at DESC')
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    if current_user.try(:admin?)
      @article = Article.new
    else
      redirect_to :root
    end
  end

  def edit
    if current_user.try(:admin?)
      @article = Article.find(params[:id])
    else
      redirect_to :root
    end
  end

  def create
    if current_user.try(:admin)
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
    else
      redirect_to :root
    end
  end
  
  def update
    if current_user.try(:admin)
      @article = Article.find(params[:id])

      respond_to do |format|
        if @article.update_attributes(params[:article])
          format.html { redirect_to @article, notice: 'Article was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @article.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to :root
    end
  end

end
