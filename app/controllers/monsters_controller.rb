class MonstersController < ApplicationController
  
  def show
    @monster = Monster.find(params[:id])
  end
  
  def new
    @monster = Monster.new
  end
  
  def create
    @monster = Monster.new( monster_params )
    
    if @monster.save
      flash[:notice] = "Monster was created"
      redirect_to @monster
    else
      flash[:error] = "There was an error creating the Monster. Please try again."
      render :new
    end
  end
  
  private
  
  def monster_params
    params.require(:monster).permit(:name, :mon_type)
  end
  
end
