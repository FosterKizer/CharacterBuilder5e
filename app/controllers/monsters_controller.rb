class MonstersController < ApplicationController
  
  def show
    @monster = Monster.find(params[:id])
    com_check
    con_check
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
      :disguise, :etiquette, :gambling, :investigation, :leadership, :performance, :persuasion, :seduction, :constitution,
      :drinking, :rowing, :running, :stamina, :swimming)
  end
  
  def com_check
    com_true = []
    com_true << "Animal Handling" if @monster.animal_handling == true
    com_true << "Bargaining" if @monster.bargaining == true
    com_true << "Deception" if @monster.deception == true
    com_true << "Disguise" if @monster.disguise == true
    com_true << "Etiquette" if @monster.etiquette == true
    com_true << "Gambling" if @monster.gambling == true
    com_true << "Investigation" if @monster.investigation == true
    com_true << "Leadership" if @monster.leadership == true
    com_true << "Performance" if @monster.performance == true
    com_true << "Persuasion" if @monster.persuasion == true
    com_true << "Seduction" if @monster.seduction == true
    
    @com_true_list = com_true.join(", ")
    @com_total = com_true.count
  end
  
  def con_check
    con_true = []
    con_true << "Drinking" if @monster.drinking == true
    con_true << "Rowing" if @monster.rowing == true
    con_true << "Running" if @monster.running == true
    con_true << "Stamina" if @monster.stamina == true
    con_true << "Swimming" if @monster.swimming == true
    
    @con_true_list = con_true.join(", ")
    @con_total = con_true.count
  end
  
end
