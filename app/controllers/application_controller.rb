class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def create
    i = Idea.new
    i.title = params[:title]
    i.description = params[:description]
    i.save
    if i.save
      redirect_to "/ideas/#{i.id}"
    else render 'new'
    end
  end
  
  def show
    @idea = Idea.find_by(id: params[:id])
  end
  
  def index
    @ideas = Idea.all
  end
  
  def new
  end
  
  def edit
    @idea = Idea.find_by(id: params[:id])
  end
  
  def update
    i = Idea.find_by(id: params[:id])
    i.title = params[:title]
    i.description = params[:description]
    if i.save
      redirect_to "/ideas/#{i.id}" 
    else
      redirect_to 'ideas/#{i.id}/update'
    end
  end
    
    def destroy
      i = Idea.find_by(id: params[:id])
      i.destroy
      redirect_to "/ideas" 
  end
  
end
