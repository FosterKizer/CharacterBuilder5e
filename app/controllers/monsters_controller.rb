class MonstersController < ApplicationController
  
  def show
    @monster = Monster.find(params[:id])
  end
  
  def new
    @monster = Monster.new
    @ability_options = ["-5","-4","-3","-2","-1","0","1","2","3","4","5","6","7","8","9","10"]
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
    params.require(:monster).permit(:name, :mon_type, :communication, :animal_handling, :bargaining, :deception,
      :disguise, :etiquette, :gambling, :investigation, :leadership, :performance, :persuasion, :seduction)
  end
  
end
