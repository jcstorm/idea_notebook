class IdeasController < ApplicationController
  
  def create
    i = Idea.new
    i.title = params[:title]
    i.description = params[:description]
    i.save
    if i.save
      redirect_to "/ideas"
    else render 'new'
    end
  end
  
  def show
    @idea = Idea.find_by(id: params[:id])
  end
  
  def index
    @idea = Idea.all
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
