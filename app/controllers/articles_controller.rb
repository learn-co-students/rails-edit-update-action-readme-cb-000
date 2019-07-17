class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here

  #This code is telling the edit action to store the article record in 
  #an instance variable called @article
  def edit  
    @article = Article.find(params[:id])
  end
   
  def update
    @article = Article.find(params[:id])
  @article.update(title: params[:article][:title], description: params[:article][:description])
  redirect_to article_path(@article)
  end

end
