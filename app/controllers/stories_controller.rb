class StoriesController < ApplicationController
    def index 
        stories = Story.all 
        render json: stories
    end

    def new 
        story = Story.new 
        render json: story 
    end

    def show 
        story = Story.find(params[:id])
        render json: story
    end

    def create 
        story = Story.new(story_params)

        if story.save 
        render json: story
        else  
        render json: {error: 'Story cannot be saved'}, status: :not_accepted
        end 
    end

    def edit 
        story = Story.find(params[:id])
    end

    def update 
        story = Story.find(params[:id])
        if story.update(story_params)
            render json: story
        else  
            render json: {error: 'Unable to update'}, status: :not_accepted
        end
    end

    private 

    def story_params 
        params.require(:story).permit!
    end

end
