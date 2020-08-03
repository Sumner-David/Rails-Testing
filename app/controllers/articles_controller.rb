class ArticlesController < ApplicationController


    def index
        # Query for all our articles
        @articles = Article.all
    end

    def show
        # Article.find queries DB with the params we want.
        # @article is the variable that we will pass onto the view named show.html.erb. notice the function has the same name as the view we will use
        @article = Article.find(params[:id]);
    end

    



    # The action named "new"
    def new
        @article = Article.new
    end;

    # This will  handle updates
    def edit
        @article = Article.find(params[:id])
    end

    

    # POST Requests Handling


    # the action named "Create". This accepts post requests
    def create
        
        # We create a new Article an pass it down to the view as its parameter
       @article = Article.new(article_params);

       if(@article.save)
            redirect_to @article;
       else
        render 'new';
       end;

    end;

    def update 
        @article = find(params[:id]);

        if @article.update(article_params)
            redirect_to @article;
        else
            render 'edit';
        end
    end;


    # Everything after this is private. Not public
    private

        # article params is a variable with the specific parameters of the request that we will accept to avoid attacks
        def article_params
           return params.require(:article).permit(:title, :text);
        end;

    

end
