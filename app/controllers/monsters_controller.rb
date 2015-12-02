class MonstersController < ApplicationController
  
  def show
    @monster = Monster.find(params[:id])
    acc_check
    com_check
    con_check
    dex_check
    fig_check
    int_check
    per_check
    str_check
    wil_check
  end
  
  def new
    @monster = Monster.new
    @ability_options = ["-5","-4","-3","-2","-1","0","1","2","3","4","5","6","7","8","9","10"]
    @attack_options = ["-5","-4","-3","-2","-1","0","+1","+2","+3","+4","+5","+6","+7","+8","+9","+10","+11","+12",
      "+13","+14","+15","+16","+17","+18","+19","+20"]
    @reload_options = ["No Reload","Free Action","Minor Action","Major Action"]
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
      :lances, :polearms, :spears, :intelligence, :arcane_lore, :brewing, :cartography, :cryptography, :cultural_lore,
      :engineering, :evaluation, :healing, :heraldry, :historical_lore, :military_lore, :musical_lore, :natural_lore,
      :navigation, :religious_lore, :research, :writing, :perception, :empathy, :hearing, :searching, :seeing,
      :smelling, :tracking, :strength, :climbing, :driving, :intimidation, :jumping, :might, :smithing, :willpower,
      :courage, :faith, :morale, :self_discipline, :speed, :health, :defense, :armor, :s_ability_confirmation,
      :spellpower, :mana, :weapon_1, :weapon_2, :weapon_3, :weapon_4, :weapon_5, :attack_1, :attack_2, :attack_3,
      :attack_4, :attack_5, :damage_1, :damage_2, :damage_3, :damage_4, :damage_5, :accuracy_other_check, :accuracy_other,
      :communication_other_check, :communication_other, :constitution_other_check, :constitution_other,
      :dexterity_other_check, :dexterity_other, :fighting_other_check, :fighting_other, :intelligence_other_check,
      :intelligence_other, :perception_other_check, :perception_other, :strength_other_check, :strength_other,
      :willpower_other_check, :willpower_other, :range_1, :range_2, :range_3, :range_4, :range_5, :target_1, :target_2,
      :target_3, :target_4, :target_5, :distance_1, :distance_2, :distance_3, :distance_4, :distance_5, :reload_1,
      :reload_2, :reload_3, :reload_4, :reload_5)
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
    acc_true << @monster.accuracy_other if @monster.accuracy_other_check == true
    
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
    com_true << @monster.communication_other if @monster.communication_other_check == true
    
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
    con_true << @monster.constitution_other if @monster.constitution_other_check == true
    
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
    dex_true << "Sailing" if @monster.sailing == true
    dex_true << "Stealth" if @monster.stealth == true
    dex_true << "Traps" if @monster.traps == true
    dex_true << @monster.dexterity_other if @monster.dexterity_other_check == true
    
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
    fig_true << @monster.fighting_other if @monster.fighting_other_check == true
    
    @fig_true_list = fig_true.join(", ")
    @fig_total = fig_true.count
  end
  
  def int_check
    int_true = []
    int_true << "Arcane Lore" if @monster.arcane_lore == true
    int_true << "Brewing" if @monster.brewing == true
    int_true << "Cartography" if @monster.cartography == true
    int_true << "Cryptography" if @monster.cryptography == true
    int_true << "Cultural Lore" if @monster.cultural_lore == true
    int_true << "Engineering" if @monster.engineering == true
    int_true << "Evaluation" if @monster.evaluation == true
    int_true << "Healing" if @monster.healing == true
    int_true << "Heraldry" if @monster.heraldry == true
    int_true << "Histroical Lore" if @monster.historical_lore == true
    int_true << "Military Lore" if @monster.military_lore == true
    int_true << "Musical Lore" if @monster.musical_lore == true
    int_true << "Natural Lore" if @monster.natural_lore == true
    int_true << "Navigation" if @monster.navigation == true
    int_true << "Religious Lore" if @monster.religious_lore == true
    int_true << "Research" if @monster.research == true
    int_true << "Writing" if @monster.writing == true
    int_true << @monster.intelligence_other if @monster.intelligence_other_check == true
    
    @int_true_list = int_true.join(", ")
    @int_total = int_true.count
  end
  
  def per_check
    per_true = []
    per_true << "Empathy" if @monster.empathy == true
    per_true << "Hearing" if @monster.hearing == true
    per_true << "Searching" if @monster.searching == true
    per_true << "Seeing" if @monster.seeing == true
    per_true << "Smelling" if @monster.smelling == true
    per_true << "Tracking" if @monster.tracking == true
    per_true << @monster.perception_other if @monster.perception_other_check == true
    
    @per_true_list = per_true.join(", ")
    @per_total = per_true.count
  end
  
  def str_check
    str_true = []
    str_true << "Climbing" if @monster.climbing == true
    str_true << "Driving" if @monster.driving == true
    str_true << "Intimidation" if @monster.intimidation == true
    str_true << "Jumping" if @monster.jumping == true
    str_true << "Might" if @monster.might == true
    str_true << "Smithing" if @monster.smithing == true
    str_true << @monster.strength_other if @monster.strength_other_check == true
    
    @str_true_list = str_true.join(", ")
    @str_total = str_true.count
  end
  
  def wil_check
    wil_true = []
    wil_true << "Courage" if @monster.courage == true
    wil_true << "Faith" if @monster.faith == true
    wil_true << "Morale" if @monster.morale == true
    wil_true << "Self-Discipline" if @monster.self_discipline == true
    wil_true << @monster.willpower_other if @monster.willpower_other_check == true
    
    @wil_true_list = wil_true.join(", ")
    @wil_total = wil_true.count
  end
  
end
