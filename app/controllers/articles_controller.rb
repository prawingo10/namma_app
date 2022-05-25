
class ArticlesController < ApplicationController

    def new
        @articles = Article.new
    end

    def create
      @articles = Article.new(params.require(:article).permit(:name, :description))
     if  @articles.save
        flash[:notice] = "Articles was successfully saved!"
        redirect_to articles_path(@articles)
     else
        render 'new'
     end

    end

     def index
         @articles = Article.all
    end

    def show
        @articles = Article.find(params[:id])
    end

     def edit
        @article = Article.find(params[:id])

     end

     def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:name, :description))
       flash[:notiice] = "Article was updated successfully"
       redirect_to article_path(@article)
        else
          render 'edit'
        end


     end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
    end

end