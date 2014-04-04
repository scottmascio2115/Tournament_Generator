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

ActiveRecord::Schema.define(version: 20140404132503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comment_posts", force: true do |t|
    t.integer  "post_id"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comment_posts", ["comment_id", "post_id"], name: "index_comment_posts_on_comment_id_and_post_id", using: :btree
  add_index "comment_posts", ["comment_id"], name: "index_comment_posts_on_comment_id", using: :btree
  add_index "comment_posts", ["post_id"], name: "index_comment_posts_on_post_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "replier"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "winner"
    t.integer  "score"
    t.integer  "home_team_id",  null: false
    t.integer  "away_team_id",  null: false
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["away_team_id"], name: "index_games_on_away_team_id", using: :btree
  add_index "games", ["home_team_id"], name: "index_games_on_home_team_id", using: :btree
  add_index "games", ["tournament_id"], name: "index_games_on_tournament_id", using: :btree

  create_table "player_teams", force: true do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_teams", ["player_id", "team_id"], name: "index_player_teams_on_player_id_and_team_id", using: :btree
  add_index "player_teams", ["player_id"], name: "index_player_teams_on_player_id", using: :btree
  add_index "player_teams", ["team_id"], name: "index_player_teams_on_team_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "twitter_handle"
    t.string   "personal_url"
    t.string   "phone"
    t.text     "bio"
    t.boolean  "tournament_creator", default: false
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "games_won"
    t.integer  "games_lost"
    t.integer  "games_played"
    t.integer  "tournaments_won"
    t.integer  "tournaments_lost"
    t.integer  "tournaments_played"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "jersey_name"
    t.integer  "captain_id"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["captain_id"], name: "index_teams_on_captain_id", using: :btree
  add_index "teams", ["tournament_id"], name: "index_teams_on_tournament_id", using: :btree

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "style"
    t.string   "champion"
    t.date     "sign_up_start"
    t.date     "sign_up_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.integer  "player_id"
    t.integer  "post_id"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "twitter_id"
    t.string   "twitter_screen_name"
    t.string   "twitter_display_name"
    t.string   "twitter_location"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["player_id"], name: "index_users_on_player_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
