class ArticlesController < ApplicationController
    
   def business
    articles = Article.getBusinessArticles

    render json: articles
   end

   def entertainment
    articles = Article.getEntertainmentArticles

    render json: articles
   end

   def general
    articles = Article.getGeneralArticles

    render json: articles
   end

   def health
    articles = Article.getHealthArticles

    render json: articles
   end


   def science  
    articles = Article.getScienceArticles

    render json: articles
   end

   def sports
    articles = Article.getSportsArticles

    render json: articles
   end

    def technology
    articles = Article.getTechnologyArticles

    render json: articles
   end

     def index 
        user = get_current_user
        if user 
            render json: user.articles 
        else 
            render json: {error: 'Unable to validate user'}, status: 401
        end
     end
    #     article = Article.all 
    #     render json: article
    # end

    def create
      article_name = params[:article_name]
      article_key = hash_string(article_name)
      article = Article.create(title: params[:title], user_id: params[:user_id], article_key: article_key)
 
        puts 'got to the create method'
        render json: article
        # if comment.save 
        #     render json: comment
        # else 
        #     render json: {error: "Not Saved"}, status: 401
        # end
    end

    def show
        article_name = params[:article_name]
        article_key = hash_string(article_name)

        articles = Article.where(article_key: article_key)
        puts articles
        render json: articles
    end



    def hash_string(string)
        Digest::MD5.hexdigest(string)
    end


end
