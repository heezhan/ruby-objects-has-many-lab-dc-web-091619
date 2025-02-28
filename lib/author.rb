class Author
    attr_accessor :name 
     
    def initialize(name)
        @name = name
        @posts = []
    end 
    
    def self.post_count
        Post.all.count
    end 

    def add_post(post)
        posts << post 
        post.author = self 
    end 

    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self 
    end 

    def posts 
        Post.all.select do |post|
            post.author == self 
        end 
    end 
end 