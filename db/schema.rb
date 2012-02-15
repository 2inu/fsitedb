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

ActiveRecord::Schema.define(:version => 20120215045840) do

  create_table "districts", :primary_key => "di_dist_id", :force => true do |t|
    t.string  "di_dist_cd",     :limit => 9,  :null => false
    t.string  "di_name",        :limit => 30
    t.integer "di_countr"
    t.string  "di_create_from", :limit => 30
    t.date    "di_create_date"
    t.string  "di_create_by",   :limit => 30
  end

  add_index "districts", ["di_dist_id"], :name => "di_dist_id_idx", :unique => true

  create_table "login_users", :primary_key => "lo_id", :force => true do |t|
    t.string  "lo_name",         :limit => 16, :null => false
    t.string  "lo_pwd",          :limit => 32, :null => false
    t.integer "lo_flg",          :limit => 2
    t.string  "lo_seq_quest",    :limit => 32, :null => false
    t.string  "lo_seq_ans",      :limit => 32, :null => false
    t.integer "lo_pwd_rstflg",   :limit => 2
    t.string  "lo_account_type", :limit => 18
    t.string  "lo_create_from",  :limit => 30
    t.date    "lo_create_date"
    t.string  "lo_create_by",    :limit => 30
  end

  add_index "login_users", ["lo_id"], :name => "lo_id_idx", :unique => true

  create_table "manufacturers", :primary_key => "pd_manufactr_cd", :force => true do |t|
    t.integer "pd_manufactr_id",                    :null => false
    t.string  "pd_manufactr_name",    :limit => 30
    t.integer "pd_manufactr_ph1"
    t.integer "pd_manufactr_ph2"
    t.integer "pd_manufactr_mob1"
    t.integer "pd_manufactr_mob2"
    t.string  "pd_manufactr_email_1", :limit => 40
    t.string  "pd_manufactr_email_2", :limit => 40
    t.string  "pd_manufactr_fax_no",  :limit => 25
    t.string  "pd_manufactr_add1",    :limit => 30
    t.string  "pd_manufactr_add2",    :limit => 30
    t.string  "pd_manufactr_add3",    :limit => 30
    t.string  "pd_manufactr_add4",    :limit => 30
    t.string  "pd_manufactr_place",   :limit => 30
    t.string  "pd_manufactr_city",    :limit => 30
    t.string  "pd_manufactr_country", :limit => 30
    t.string  "pd_create_from",       :limit => 30
    t.date    "pd_effect_date"
    t.date    "pd_create_date"
    t.date    "pd_modify_date"
    t.date    "pd_del_date"
    t.string  "pd_create_by",         :limit => 25
    t.string  "pd_modify_by",         :limit => 25
    t.string  "pd_del_by",            :limit => 25
    t.string  "pd_del_flg",           :limit => 1
  end

  create_table "panchayats", :primary_key => "pa_panchayat_id", :force => true do |t|
    t.string  "pa_panchayat_cd",   :limit => 9,  :null => false
    t.string  "pa_name",           :limit => 30
    t.integer "pa_dist_id"
    t.string  "pa_panchayat_type", :limit => 16
    t.string  "pa_create_from",    :limit => 30
    t.date    "pa_create_date"
    t.string  "pa_create_by",      :limit => 30
  end

  add_index "panchayats", ["pa_panchayat_cd"], :name => "pa_panchayat_cd_idx", :unique => true
  add_index "panchayats", ["pa_panchayat_id"], :name => "pa_panchayat_id_idx", :unique => true

  create_table "places", :primary_key => "pl_place_id", :force => true do |t|
    t.string  "pl_place_cd",     :limit => 9,  :null => false
    t.string  "pl_name",         :limit => 30
    t.integer "pl_panchayat_id"
    t.integer "pl_dist_id"
    t.string  "pl_create_from",  :limit => 30
    t.date    "pl_create_date"
    t.string  "pl_create_by",    :limit => 30
  end

  add_index "places", ["pl_place_cd"], :name => "pl_place_cd_idx", :unique => true
  add_index "places", ["pl_place_id"], :name => "pl_place_id_idx", :unique => true

  create_table "pr_searches", :force => true do |t|
    t.string   "manufacturer"
    t.string   "group"
    t.string   "category"
    t.string   "model"
    t.string   "os1"
    t.string   "os2"
    t.string   "os3"
    t.integer  "district"
    t.integer  "panchayat"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_groups", :primary_key => "pg_group_cd", :force => true do |t|
    t.string "pg_group_name",  :limit => 60
    t.string "pg_create_from", :limit => 30
    t.date   "pg_create_date"
    t.string "pg_create_by",   :limit => 30
    t.date   "pg_modify_date"
    t.string "pg_modify_by",   :limit => 30
    t.string "pg_del_by",      :limit => 30
    t.date   "pg_del_date"
    t.string "pg_del_flg",     :limit => 1
  end

  create_table "product_shops", :primary_key => "ps_id", :force => true do |t|
    t.string  "ps_pr_cd",               :limit => 9,  :null => false
    t.string  "ps_shop_cd",             :limit => 9,  :null => false
    t.string  "ps_pr_manufactr_cd",     :limit => 6,  :null => false
    t.string  "ps_pr_model_specs",      :limit => 90, :null => false
    t.string  "ps_pr_group_cd",         :limit => 3,  :null => false
    t.string  "ps_pr_product_stat_flg", :limit => 1,  :null => false
    t.integer "ps_sh_panchayat_id",                   :null => false
    t.integer "ps_sh_place_id",                       :null => false
    t.integer "ps_sh_dist_id",                        :null => false
    t.string  "ps_create_from",         :limit => 30
    t.date    "ps_create_date"
    t.string  "ps_create_by",           :limit => 30
    t.date    "ps_modify_date"
    t.string  "ps_modify_by",           :limit => 30
    t.string  "ps_del_by",              :limit => 30
    t.date    "ps_del_date"
    t.string  "ps_del_flg",             :limit => 1
  end

  add_index "product_shops", ["ps_pr_cd"], :name => "ps_pr_cd_idx"
  add_index "product_shops", ["ps_shop_cd"], :name => "ps_shop_cd_idx"

  create_table "products", :primary_key => "pr_id", :force => true do |t|
    t.string  "pr_cd",               :limit => 9,   :null => false
    t.integer "pr_number"
    t.string  "pr_brand_cd",         :limit => 12,  :null => false
    t.string  "pr_brand_name",       :limit => 80
    t.string  "pr_os",               :limit => 30
    t.integer "pr_os_version"
    t.date    "pr_os_ver_date"
    t.string  "pr_os_ver_name",      :limit => 30
    t.string  "pr_model_specs",      :limit => 90,  :null => false
    t.string  "pr_base_model_flg",   :limit => 1
    t.string  "pr_manufactr_cd",     :limit => 6,   :null => false
    t.decimal "pr_height"
    t.string  "pr_height_type",      :limit => 16
    t.decimal "pr_width"
    t.string  "pr_width_type",       :limit => 16
    t.decimal "pr_thick"
    t.string  "pr_thick_type",       :limit => 16
    t.decimal "pr_weight"
    t.string  "pr_weight_type",      :limit => 16
    t.decimal "pr_ram"
    t.string  "pr_ram_type",         :limit => 30
    t.string  "pr_cpu_model",        :limit => 50
    t.boolean "pr_camera_flg"
    t.text    "pr_camera_desc"
    t.string  "pr_battery_pow",      :limit => 120
    t.boolean "pr_gps_flg"
    t.string  "pr_wifi_type",        :limit => 20
    t.boolean "pr_bluetooth_flg"
    t.string  "pr_short_desc",       :limit => 120
    t.text    "pr_long_desc"
    t.string  "pr_group_cd",         :limit => 3,   :null => false
    t.string  "pr_applicability_cd", :limit => 3
    t.integer "pr_distributor_cd"
    t.string  "pr_product_stat_flg", :limit => 1,   :null => false
    t.string  "pr_record_stat_flg",  :limit => 1
    t.string  "pr_del_flg",          :limit => 1
    t.string  "pr_create_from",      :limit => 30
    t.date    "pr_effect_date"
    t.date    "pr_create_date"
    t.date    "pr_modify_date"
    t.date    "pr_del_date"
    t.string  "pr_create_by",        :limit => 30
    t.string  "pr_modify_by",        :limit => 30
    t.string  "pr_del_by",           :limit => 30
  end

  create_table "pros", :primary_key => "pr_pro_id", :force => true do |t|
    t.string  "pr_pro_cd",      :limit => 9,  :null => false
    t.integer "pr_sole_id",                   :null => false
    t.integer "pr_shop_id",                   :null => false
    t.integer "shop_id"
    t.string  "pr_type",        :limit => 18
    t.string  "pr_nick_name",   :limit => 45
    t.string  "pr_name_in_id",  :limit => 45
    t.string  "pr_first_name",  :limit => 45
    t.string  "pr_father_name", :limit => 45
    t.string  "pr_family_name", :limit => 45
    t.integer "pr_mobile"
    t.string  "pr_email_id",    :limit => 40
    t.string  "pr_id_type",     :limit => 30
    t.integer "pr_photo_id"
    t.string  "pr_photo_name",  :limit => 80
    t.string  "pr_create_from", :limit => 30
    t.date    "pr_create_date"
    t.string  "pr_create_by",   :limit => 30
    t.date    "pr_modify_date"
    t.string  "pr_modify_by",   :limit => 30
    t.string  "pr_del_by",      :limit => 30
    t.date    "pr_del_date"
    t.string  "pr_del_flg",     :limit => 1
  end

  add_index "pros", ["pr_pro_cd"], :name => " pr_pro_cd_idx"
  add_index "pros", ["pr_pro_id"], :name => " pr_pro_id_idx"

  create_table "prphoto", :primary_key => "prphoto_id", :force => true do |t|
    t.string  "prphoto_file_name",    :limit => 200
    t.string  "prphoto_content_type", :limit => 30
    t.integer "prphoto_file_size"
    t.integer "product_id"
    t.string  " prphoto_del_flg",     :limit => 1
  end

  create_table "ps_searches", :force => true do |t|
    t.string   "manufacturer"
    t.string   "group"
    t.string   "category"
    t.string   "model"
    t.string   "os1"
    t.string   "os2"
    t.string   "os3"
    t.integer  "district"
    t.integer  "panchayat"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :primary_key => "se_service_id", :force => true do |t|
    t.string  "se_service_cd",  :limit => 9
    t.integer "se_number"
    t.string  "se_name",        :limit => 40
    t.text    "se_desc"
    t.string  "se_create_from", :limit => 30
    t.date    "se_create_date"
    t.string  "se_create_by",   :limit => 30
  end

  add_index "services", ["se_service_id"], :name => "se_service_id_idx", :unique => true

  create_table "shop_activities", :primary_key => "av_shop_id", :force => true do |t|
    t.integer "av_actvty_id"
    t.integer "av_os_id"
    t.integer "av_service_id"
    t.text    "av_remarks"
    t.string  "av_create_from", :limit => 30
    t.date    "av_create_date"
    t.string  "av_create_by",   :limit => 30
  end

  add_index "shop_activities", ["av_shop_id"], :name => "av_shop_id_idx"

  create_table "shop_activity_codes", :primary_key => "ac_actvty_id", :force => true do |t|
    t.string "ac_actvty_cd",   :limit => 9
    t.string "ac_desc",        :limit => 30
    t.string "ac_create_from", :limit => 30
    t.date   "ac_create_date"
    t.string "ac_create_by",   :limit => 30
  end

  add_index "shop_activity_codes", ["ac_actvty_id"], :name => "ac_actvty_id_idx", :unique => true

  create_table "shop_oses", :primary_key => "os_id", :force => true do |t|
    t.string "os_cd",          :limit => 9
    t.string "os_name",        :limit => 30
    t.string "os_create_from", :limit => 30
    t.date   "os_create_date"
    t.string "os_create_by",   :limit => 30
  end

  add_index "shop_oses", ["os_id"], :name => " os_id_idx", :unique => true

  create_table "shop_photos", :primary_key => "ph_id", :force => true do |t|
    t.integer "ph_shop_id",                   :null => false
    t.string  "ph_name",        :limit => 80
    t.string  "ph_create_from", :limit => 30
    t.date    "ph_create_date"
    t.string  "ph_create_by",   :limit => 30
  end

  add_index "shop_photos", ["ph_id"], :name => "ph_id_idx"
  add_index "shop_photos", ["ph_shop_id"], :name => "ph_shop_id_idx"

  create_table "shops", :primary_key => "sh_shop_cd", :force => true do |t|
    t.integer "sh_shop_id",                                                    :null => false
    t.string  "sh_name",          :limit => 45
    t.integer "sh_panchayat_id",                                               :null => false
    t.integer "sh_place_id",                                                   :null => false
    t.integer "sh_dist_id",                                                    :null => false
    t.string  "sh_addr_1",        :limit => 30
    t.string  "sh_addr_2",        :limit => 30
    t.string  "sh_addr_3",        :limit => 30
    t.string  "sh_addr_4",        :limit => 30
    t.integer "sh_phone_1"
    t.integer "sh_phone_2"
    t.integer "sh_mobile"
    t.string  "sh_email_1",       :limit => 40
    t.string  "sh_email_2",       :limit => 40
    t.string  "sh_fax_no",        :limit => 25
    t.string  "sh_branded_flg",   :limit => 1
    t.string  "sh_touch_ph_sale", :limit => 1
    t.string  "sh_reg_no",        :limit => 20
    t.date    "sh_establish_yr"
    t.text    "sh_remarks"
    t.decimal "sh_long",                        :precision => 12, :scale => 6
    t.decimal "sh_lat",                         :precision => 12, :scale => 6
    t.string  "sh_create_from",   :limit => 30
    t.date    "sh_create_date"
    t.string  "sh_create_by",     :limit => 30
    t.date    "sh_modify_date"
    t.string  "sh_modify_by",     :limit => 30
    t.date    "sh_del_date"
    t.string  "sh_del_by",        :limit => 30
    t.string  "sh_del_flg",       :limit => 1
  end

  add_index "shops", ["sh_shop_cd"], :name => "sh_shop_cd_idx", :unique => true
  add_index "shops", ["sh_shop_id"], :name => "sh_shop_id_idx", :unique => true

  create_table "sole_banks", :primary_key => "ba_bank_cd", :force => true do |t|
    t.string "ba_bank_name",   :limit => 45
    t.string "ba_create_from", :limit => 30
    t.date   "ba_create_date"
    t.string "ba_create_by",   :limit => 30
  end

  add_index "sole_banks", ["ba_bank_cd"], :name => "ba_bank_cd_idx"

  create_table "sole_contacts", :primary_key => "so_sole_cd", :force => true do |t|
    t.integer "so_sole_id",                       :null => false
    t.integer "so_shop_id",                       :null => false
    t.string  "so_type",            :limit => 12
    t.string  "so_first_name",      :limit => 45
    t.string  "so_nick_name",       :limit => 45
    t.string  "so_name_in_id",      :limit => 45
    t.string  "so_name_in_bank_ac", :limit => 45
    t.string  "so_father_name",     :limit => 45
    t.string  "so_family_name",     :limit => 45
    t.integer "so_mobile"
    t.string  "so_email_id",        :limit => 40
    t.integer "so_photo_id"
    t.string  "so_photo_name",      :limit => 80
    t.string  "so_pro_flg",         :limit => 1
    t.string  "so_bank_name_cd",    :limit => 6
    t.string  "so_id_type",         :limit => 30
    t.string  "so_create_from",     :limit => 30
    t.date    "so_create_date"
    t.string  "so_create_by",       :limit => 30
    t.date    "so_modify_date"
    t.string  "so_modify_by",       :limit => 30
    t.date    "so_del_date"
    t.string  "so_del_by",          :limit => 30
    t.string  "so_del_flg",         :limit => 1
  end

  add_index "sole_contacts", ["so_sole_cd"], :name => "so_sole_cd_idx"
  add_index "sole_contacts", ["so_sole_id"], :name => "so_sole_id_idx"

end
