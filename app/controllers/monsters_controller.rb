class MonstersController < ApplicationController
  
  def show
    @monster = Monster.find(params[:id])
    acc_check
    com_check
    con_check
    dex_check
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
    params.require(:monster).permit(:name, :mon_type, :accuracy, :arcane_blast, :bows, :black_powder, :brawling, :dueling,
      :grenades, :light_blades, :staves, :communication, :animal_handling, :bargaining, :deception, :disguise, :etiquette, 
      :gambling, :investigation, :leadership, :performance, :persuasion, :seduction, :constitution, :drinking, :rowing, 
      :running, :stamina, :swimming, :dexterity, :acrobatics, :calligraphy, :crafting, :initiative, :legerdemain,
      :lock_picking, :riding, :piloting, :sailing, :stealth, :traps, :fighting, :axes, :bludgeons, :heavy_blades,
      :lances, :polearms, :spears)
  end
  
  def acc_check
    acc_true = []
    acc_true << "Arcane Blast" if @monster.arcane_blast == true
    acc_true << "Bows" if @monster.bows == true
    acc_true << "Black Powder" if @monster.black_powder == true
    acc_true << "Brawling" if @monster.brawling == true
    acc_true << "Dueling" if @monster.dueling == true
    acc_true << "Grenades" if @monster.grenades == true
    acc_true << "Light Blades" if @monster.light_blades == true
    acc_true << "Staves" if @monster.staves == true
    
    @acc_true_list = acc_true.join(", ")
    @acc_total = acc_true.count
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
  
  def dex_check
    dex_true = []
    dex_true << "Acrobatics" if @monster.acrobatics == true
    dex_true << "Calligraphy" if @monster.calligraphy == true
    dex_true << "Crafting" if @monster.crafting == true
    dex_true << "Initiative" if @monster.initiative == true
    dex_true << "Legerdemain" if @monster.legerdemain == true
    dex_true << "Lock Picking" if @monster.lock_picking == true
    dex_true << "Riding" if @monster.riding == true
    dex_true << "Piloting" if @monster.piloting == true
    dex_true << "Sailing" if @monster.sailing == true
    dex_true << "Stealth" if @monster.stealth == true
    dex_true << "Traps" if @monster.traps == true
    
    @dex_true_list = dex_true.join(", ")
    @dex_total = dex_true.count
  end
  
  def fig_check
    fig_true = []
    fig_true << "Axes" if @monster.axes == true
    fig_true << "Bludgeons" if @monster.bludgeons == true
    fig_true << "Heavy Blades" if @monster.heavy_blades == true
    fig_true << "Lances" if @monster.lances == true
    fig_true << "Polearms" if @monster.polearms == true
    fig_true << "Spears" if @monster.spears == true
    
    @fig_true_list = fig_true.join(", ")
    @fig_total = fig_true.count
  end
  
end
