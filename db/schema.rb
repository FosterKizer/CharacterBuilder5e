# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151201184903) do

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.string   "mon_type"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "communication"
    t.boolean  "animal_handling"
    t.boolean  "bargaining"
    t.boolean  "deception"
    t.boolean  "disguise"
    t.boolean  "etiquette"
    t.boolean  "gambling"
    t.boolean  "investigation"
    t.boolean  "leadership"
    t.boolean  "performance"
    t.boolean  "persuasion"
    t.boolean  "seduction"
    t.string   "constitution"
    t.boolean  "drinking"
    t.boolean  "rowing"
    t.boolean  "running"
    t.boolean  "stamina"
    t.boolean  "swimming"
    t.string   "accuracy"
    t.boolean  "arcane_blast"
    t.boolean  "bows"
    t.boolean  "black_powder"
    t.boolean  "brawling"
    t.boolean  "dueling"
    t.boolean  "grenades"
    t.boolean  "light_blades"
    t.boolean  "staves"
    t.string   "dexterity"
    t.boolean  "acrobatics"
    t.boolean  "calligraphy"
    t.boolean  "crafting"
    t.boolean  "initiative"
    t.boolean  "legerdemain"
    t.boolean  "lock_picking"
    t.boolean  "riding"
    t.boolean  "piloting"
    t.boolean  "sailing"
    t.boolean  "stealth"
    t.boolean  "traps"
    t.string   "fighting"
    t.boolean  "axes"
    t.boolean  "bludgeons"
    t.boolean  "heavy_blades"
    t.boolean  "lances"
    t.boolean  "polearms"
    t.boolean  "spears"
    t.string   "intelligence"
    t.boolean  "arcane_lore"
    t.boolean  "brewing"
    t.boolean  "cartography"
    t.boolean  "cryptography"
    t.boolean  "cultural_lore"
    t.boolean  "engineering"
    t.boolean  "evaluation"
    t.boolean  "healing"
    t.boolean  "heraldry"
    t.boolean  "historical_lore"
    t.boolean  "military_lore"
    t.boolean  "musical_lore"
    t.boolean  "natural_lore"
    t.boolean  "navigation"
    t.boolean  "religious_lore"
    t.boolean  "research"
    t.boolean  "writing"
    t.string   "perception"
    t.boolean  "empathy"
    t.boolean  "hearing"
    t.boolean  "searching"
    t.boolean  "seeing"
    t.boolean  "smelling"
    t.boolean  "tracking"
    t.string   "strength"
    t.boolean  "climbing"
    t.boolean  "driving"
    t.boolean  "intimidation"
    t.boolean  "jumping"
    t.boolean  "might"
    t.boolean  "smithing"
    t.string   "willpower"
    t.boolean  "courage"
    t.boolean  "faith"
    t.boolean  "morale"
    t.boolean  "self_discipline"
    t.integer  "speed"
    t.integer  "health"
    t.integer  "defense"
    t.integer  "armor"
    t.boolean  "s_ability_confirmation"
    t.integer  "spellpower"
    t.integer  "mana"
    t.string   "weapon_1"
    t.string   "attack_1"
    t.string   "damage_1"
    t.string   "weapon_2"
    t.string   "weapon_3"
    t.string   "weapon_4"
    t.string   "weapon_5"
    t.string   "attack_2"
    t.string   "attack_3"
    t.string   "attack_4"
    t.string   "attack_5"
    t.string   "damage_2"
    t.string   "damage_3"
    t.string   "damage_4"
    t.string   "damage_5"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
