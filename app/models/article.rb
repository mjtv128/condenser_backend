class Article < ApplicationRecord
    belongs_to :user
        @allnews = News.new("79c185b798594a608f4576ae054c4f49")

    def self.getBusinessArticles 
        business = @allnews.get_top_headlines(category: 'business', country: 'gb', pageSize: 50)
    end

    def self.getGeneralArticles 
        business = @allnews.get_top_headlines(category: 'general', country: 'gb', pageSize: 50)
    end

    def self.getEntertainmentArticles 
        business = @allnews.get_top_headlines(category: 'entertainment',country: 'gb', pageSize: 50)
    end

    def self.getHealthArticles 
        business = @allnews.get_top_headlines(category: 'health', country: 'gb', pageSize: 50)
    end

    def self.getScienceArticles 
        business = @allnews.get_top_headlines(category: 'science', country: 'gb', pageSize: 50)
    end
     
    def self.getSportsArticles 
        business = @allnews.get_top_headlines(category: 'sports',country: 'gb', pageSize: 50)
    end

     def self.getTechnologyArticles 
        business = @allnews.get_top_headlines(category: 'technology', country: 'gb', pageSize: 50)
    end

    # def self.searchAllArticles 
    #     searches = @allnews.get_everything
    # end

    

end
