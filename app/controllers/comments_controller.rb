class CommentsController < ApplicationController
    def index 
        comments = Comment.all 
        render json: comments
    end

    def create
        article_name = params[:article_name]
        article_key = hash_string(article_name)
        comment = Comment.create(content: params[:content], user_id: params[:user_id], article_key: article_key)
        puts 'create mthod'
        render json: comment
        # if comment.save 
        #     render json: comment
        # else 
        #     render json: {error: "Not Saved"}, status: 401
        # end
    end

    def show_by_article_name
        article_name = params[:article_name]
        article_key = hash_string(article_name)

        comments = Comment.where({ article_key: article_key})
        puts comments

        render json: comments
    end

    # def createComment(insert) # insert is an object with keys {article_key, content, user_id}
    #     Comment.create({:article_key => article key, :content => content, :user_id => user_id})
    # end

    def hash_string(string)
        Digest::MD5.hexdigest(string)
    end
end
