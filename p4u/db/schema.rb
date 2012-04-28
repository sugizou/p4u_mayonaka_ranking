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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120426035954) do

  create_table "characters", :force => true do |t|
    t.integer  "top_psr_char",   :null => false
    t.string   "character_name", :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "individual_kos", :force => true do |t|
    t.integer  "player_id",      :null => false
    t.integer  "character_id",   :null => false
    t.integer  "psr"
    t.integer  "battle_count"
    t.integer  "wins_count"
    t.float    "win_percentage"
    t.integer  "max_combo"
    t.integer  "max_damage"
    t.integer  "score"
    t.string   "score_clear"
    t.integer  "arcade_score"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "profile_id",                     :null => false
    t.string   "player_name"
    t.string   "title"
    t.string   "sex"
    t.string   "birthday"
    t.string   "home"
    t.string   "community_comment"
    t.string   "public_comment"
    t.integer  "alive_flg",         :limit => 1
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "profiles", ["profile_id"], :name => "index_profiles_on_profile_id"

  create_table "rankings", :force => true do |t|
    t.integer  "player_id",      :null => false
    t.integer  "character_id",   :null => false
    t.string   "player_name",    :null => false
    t.string   "character_name", :null => false
    t.integer  "psr",            :null => false
    t.integer  "battle_count",   :null => false
    t.integer  "wins_count",     :null => false
    t.float    "win_percentage", :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "rankings", ["character_name"], :name => "index_rankings_on_character_name"
  add_index "rankings", ["player_id"], :name => "index_rankings_on_player_id"
  add_index "rankings", ["player_name"], :name => "index_rankings_on_player_name"
  add_index "rankings", ["psr"], :name => "index_rankings_on_psr"

  create_table "searches", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users_battles", :force => true do |t|
    t.integer  "profile_id",          :null => false
    t.float    "gyakugire_act_avg"
    t.float    "negative_avg"
    t.float    "counter_avg"
    t.float    "slowly_counter_avg"
    t.float    "fatal_counter_avg"
    t.float    "reversal_burst_avg"
    t.float    "max_burst_avg"
    t.float    "one_more_burst_avg"
    t.float    "gurd_cancel_avg"
    t.float    "just_gurd_avg"
    t.float    "one_more_cancel_avg"
    t.float    "skill_bust_avg"
    t.float    "sp_skill_avg"
    t.float    "mortal_blow_avg"
    t.float    "sp_skill_ko"
    t.float    "mortal_blow_ko_avg"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "users_battles", ["profile_id"], :name => "index_users_battles_on_profile_id"

  create_table "users_kos", :force => true do |t|
    t.integer  "profile_id",      :null => false
    t.integer  "battle_count"
    t.integer  "battle_wins"
    t.float    "win_percentage"
    t.integer  "top_psr_char_id"
    t.integer  "top_psr_point"
    t.integer  "level"
    t.integer  "exp"
    t.string   "win_streak"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users_kos", ["profile_id"], :name => "index_users_kos_on_profile_id"
  add_index "users_kos", ["top_psr_point"], :name => "index_users_kos_on_top_psr_point"

end
