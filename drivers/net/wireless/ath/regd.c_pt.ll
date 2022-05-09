; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/regd.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/regd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath_is_world_regd\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_is_world_regd\09\09\09\09"
module asm "\09.long\09__crc_ath_is_world_regd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_is_world_regd:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_is_world_regd\22\09\09\09\09\09"
module asm "__kstrtabns_ath_is_world_regd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_is_49ghz_allowed\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_is_49ghz_allowed\09\09\09\09"
module asm "\09.long\09__crc_ath_is_49ghz_allowed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_is_49ghz_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_is_49ghz_allowed\22\09\09\09\09\09"
module asm "__kstrtabns_ath_is_49ghz_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_regd_find_country_by_name\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_regd_find_country_by_name\09\09\09\09"
module asm "\09.long\09__crc_ath_regd_find_country_by_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_regd_find_country_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_regd_find_country_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_ath_regd_find_country_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_reg_notifier_apply\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_reg_notifier_apply\09\09\09\09"
module asm "\09.long\09__crc_ath_reg_notifier_apply\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_reg_notifier_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_reg_notifier_apply\22\09\09\09\09\09"
module asm "__kstrtabns_ath_reg_notifier_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_regd_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_regd_init\09\09\09\09"
module asm "\09.long\09__crc_ath_regd_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_regd_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_regd_init\22\09\09\09\09\09"
module asm "__kstrtabns_ath_regd_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_regd_get_band_ctl\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_regd_get_band_ctl\09\09\09\09"
module asm "\09.long\09__crc_ath_regd_get_band_ctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_regd_get_band_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_regd_get_band_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_ath_regd_get_band_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.country_code_to_enum_rd = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_dmn_pair_mapping = type { i16, i16, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }

@__kstrtab_ath_is_world_regd = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_is_world_regd = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_is_world_regd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_is_world_regd to i32), ptr @__kstrtab_ath_is_world_regd, ptr @__kstrtabns_ath_is_world_regd }, section "___ksymtab+ath_is_world_regd", align 4
@__kstrtab_ath_is_49ghz_allowed = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_is_49ghz_allowed = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_is_49ghz_allowed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_is_49ghz_allowed to i32), ptr @__kstrtab_ath_is_49ghz_allowed, ptr @__kstrtabns_ath_is_49ghz_allowed }, section "___ksymtab+ath_is_49ghz_allowed", align 4
@allCountries = internal constant { [194 x %struct.country_code_to_enum_rd], [400 x i8] } { [194 x %struct.country_code_to_enum_rd] [%struct.country_code_to_enum_rd { i16 511, i16 0, ptr @.str }, %struct.country_code_to_enum_rd { i16 0, i16 16, ptr @.str.1 }, %struct.country_code_to_enum_rd { i16 8, i16 55, ptr @.str.2 }, %struct.country_code_to_enum_rd { i16 12, i16 90, ptr @.str.3 }, %struct.country_code_to_enum_rd { i16 32, i16 59, ptr @.str.4 }, %struct.country_code_to_enum_rd { i16 51, i16 48, ptr @.str.5 }, %struct.country_code_to_enum_rd { i16 533, i16 55, ptr @.str.6 }, %struct.country_code_to_enum_rd { i16 36, i16 59, ptr @.str.7 }, %struct.country_code_to_enum_rd { i16 5000, i16 35, ptr @.str.7 }, %struct.country_code_to_enum_rd { i16 40, i16 55, ptr @.str.8 }, %struct.country_code_to_enum_rd { i16 31, i16 48, ptr @.str.9 }, %struct.country_code_to_enum_rd { i16 44, i16 59, ptr @.str.10 }, %struct.country_code_to_enum_rd { i16 48, i16 91, ptr @.str.11 }, %struct.country_code_to_enum_rd { i16 50, i16 82, ptr @.str.12 }, %struct.country_code_to_enum_rd { i16 52, i16 33, ptr @.str.13 }, %struct.country_code_to_enum_rd { i16 112, i16 55, ptr @.str.14 }, %struct.country_code_to_enum_rd { i16 56, i16 55, ptr @.str.15 }, %struct.country_code_to_enum_rd { i16 5002, i16 48, ptr @.str.16 }, %struct.country_code_to_enum_rd { i16 84, i16 85, ptr @.str.17 }, %struct.country_code_to_enum_rd { i16 60, i16 58, ptr @.str.18 }, %struct.country_code_to_enum_rd { i16 68, i16 85, ptr @.str.19 }, %struct.country_code_to_enum_rd { i16 70, i16 55, ptr @.str.20 }, %struct.country_code_to_enum_rd { i16 76, i16 59, ptr @.str.21 }, %struct.country_code_to_enum_rd { i16 96, i16 91, ptr @.str.22 }, %struct.country_code_to_enum_rd { i16 100, i16 55, ptr @.str.23 }, %struct.country_code_to_enum_rd { i16 116, i16 55, ptr @.str.24 }, %struct.country_code_to_enum_rd { i16 124, i16 58, ptr @.str.25 }, %struct.country_code_to_enum_rd { i16 5001, i16 20, ptr @.str.25 }, %struct.country_code_to_enum_rd { i16 152, i16 91, ptr @.str.26 }, %struct.country_code_to_enum_rd { i16 156, i16 82, ptr @.str.27 }, %struct.country_code_to_enum_rd { i16 170, i16 59, ptr @.str.1 }, %struct.country_code_to_enum_rd { i16 188, i16 17, ptr @.str.28 }, %struct.country_code_to_enum_rd { i16 191, i16 55, ptr @.str.29 }, %struct.country_code_to_enum_rd { i16 196, i16 55, ptr @.str.30 }, %struct.country_code_to_enum_rd { i16 203, i16 55, ptr @.str.31 }, %struct.country_code_to_enum_rd { i16 208, i16 55, ptr @.str.32 }, %struct.country_code_to_enum_rd { i16 214, i16 16, ptr @.str.33 }, %struct.country_code_to_enum_rd { i16 218, i16 17, ptr @.str.34 }, %struct.country_code_to_enum_rd { i16 818, i16 54, ptr @.str.35 }, %struct.country_code_to_enum_rd { i16 222, i16 17, ptr @.str.36 }, %struct.country_code_to_enum_rd { i16 233, i16 55, ptr @.str.37 }, %struct.country_code_to_enum_rd { i16 246, i16 55, ptr @.str.38 }, %struct.country_code_to_enum_rd { i16 250, i16 55, ptr @.str.39 }, %struct.country_code_to_enum_rd { i16 268, i16 48, ptr @.str.40 }, %struct.country_code_to_enum_rd { i16 276, i16 55, ptr @.str.41 }, %struct.country_code_to_enum_rd { i16 300, i16 55, ptr @.str.42 }, %struct.country_code_to_enum_rd { i16 304, i16 55, ptr @.str.43 }, %struct.country_code_to_enum_rd { i16 308, i16 58, ptr @.str.44 }, %struct.country_code_to_enum_rd { i16 316, i16 16, ptr @.str.45 }, %struct.country_code_to_enum_rd { i16 320, i16 16, ptr @.str.46 }, %struct.country_code_to_enum_rd { i16 332, i16 55, ptr @.str.47 }, %struct.country_code_to_enum_rd { i16 340, i16 59, ptr @.str.48 }, %struct.country_code_to_enum_rd { i16 344, i16 59, ptr @.str.49 }, %struct.country_code_to_enum_rd { i16 348, i16 55, ptr @.str.50 }, %struct.country_code_to_enum_rd { i16 352, i16 55, ptr @.str.51 }, %struct.country_code_to_enum_rd { i16 356, i16 91, ptr @.str.52 }, %struct.country_code_to_enum_rd { i16 360, i16 3, ptr @.str.53 }, %struct.country_code_to_enum_rd { i16 364, i16 82, ptr @.str.54 }, %struct.country_code_to_enum_rd { i16 372, i16 55, ptr @.str.55 }, %struct.country_code_to_enum_rd { i16 376, i16 54, ptr @.str.56 }, %struct.country_code_to_enum_rd { i16 380, i16 55, ptr @.str.57 }, %struct.country_code_to_enum_rd { i16 388, i16 59, ptr @.str.58 }, %struct.country_code_to_enum_rd { i16 392, i16 64, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 393, i16 65, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 394, i16 72, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 395, i16 67, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 396, i16 74, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 397, i16 75, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4006, i16 76, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4007, i16 128, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4008, i16 129, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4009, i16 130, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4010, i16 131, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4011, i16 132, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4012, i16 133, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4013, i16 134, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4014, i16 135, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4015, i16 136, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4016, i16 137, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4017, i16 138, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4018, i16 139, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4019, i16 140, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4020, i16 141, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4021, i16 142, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4022, i16 143, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4023, i16 144, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4024, i16 145, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4025, i16 240, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4026, i16 241, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4027, i16 242, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4028, i16 244, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4029, i16 245, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4030, i16 248, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4031, i16 249, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4032, i16 250, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4033, i16 251, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4034, i16 246, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4035, i16 247, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4036, i16 243, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4037, i16 252, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4038, i16 253, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4039, i16 254, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4040, i16 255, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4041, i16 208, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4042, i16 209, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4043, i16 210, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4044, i16 211, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4045, i16 212, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4046, i16 213, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4047, i16 214, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4048, i16 215, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4049, i16 216, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4050, i16 217, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4051, i16 218, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4052, i16 219, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4053, i16 220, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4054, i16 221, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4057, i16 222, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4058, i16 146, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 4059, i16 147, ptr @.str.59 }, %struct.country_code_to_enum_rd { i16 400, i16 53, ptr @.str.60 }, %struct.country_code_to_enum_rd { i16 398, i16 3, ptr @.str.61 }, %struct.country_code_to_enum_rd { i16 404, i16 82, ptr @.str.62 }, %struct.country_code_to_enum_rd { i16 408, i16 94, ptr @.str.63 }, %struct.country_code_to_enum_rd { i16 410, i16 94, ptr @.str.64 }, %struct.country_code_to_enum_rd { i16 411, i16 69, ptr @.str.65 }, %struct.country_code_to_enum_rd { i16 412, i16 94, ptr @.str.66 }, %struct.country_code_to_enum_rd { i16 413, i16 95, ptr @.str.67 }, %struct.country_code_to_enum_rd { i16 414, i16 54, ptr @.str.68 }, %struct.country_code_to_enum_rd { i16 428, i16 55, ptr @.str.69 }, %struct.country_code_to_enum_rd { i16 422, i16 3, ptr @.str.70 }, %struct.country_code_to_enum_rd { i16 438, i16 55, ptr @.str.71 }, %struct.country_code_to_enum_rd { i16 440, i16 55, ptr @.str.72 }, %struct.country_code_to_enum_rd { i16 442, i16 55, ptr @.str.73 }, %struct.country_code_to_enum_rd { i16 446, i16 33, ptr @.str.74 }, %struct.country_code_to_enum_rd { i16 807, i16 55, ptr @.str.75 }, %struct.country_code_to_enum_rd { i16 458, i16 17, ptr @.str.76 }, %struct.country_code_to_enum_rd { i16 470, i16 55, ptr @.str.77 }, %struct.country_code_to_enum_rd { i16 480, i16 55, ptr @.str.78 }, %struct.country_code_to_enum_rd { i16 484, i16 16, ptr @.str.79 }, %struct.country_code_to_enum_rd { i16 492, i16 48, ptr @.str.80 }, %struct.country_code_to_enum_rd { i16 499, i16 55, ptr @.str.81 }, %struct.country_code_to_enum_rd { i16 504, i16 66, ptr @.str.82 }, %struct.country_code_to_enum_rd { i16 524, i16 82, ptr @.str.83 }, %struct.country_code_to_enum_rd { i16 528, i16 55, ptr @.str.84 }, %struct.country_code_to_enum_rd { i16 530, i16 55, ptr @.str.85 }, %struct.country_code_to_enum_rd { i16 554, i16 63, ptr @.str.86 }, %struct.country_code_to_enum_rd { i16 558, i16 58, ptr @.str.87 }, %struct.country_code_to_enum_rd { i16 578, i16 55, ptr @.str.88 }, %struct.country_code_to_enum_rd { i16 512, i16 59, ptr @.str.89 }, %struct.country_code_to_enum_rd { i16 586, i16 3, ptr @.str.90 }, %struct.country_code_to_enum_rd { i16 591, i16 16, ptr @.str.91 }, %struct.country_code_to_enum_rd { i16 598, i16 17, ptr @.str.92 }, %struct.country_code_to_enum_rd { i16 600, i16 59, ptr @.str.93 }, %struct.country_code_to_enum_rd { i16 604, i16 59, ptr @.str.94 }, %struct.country_code_to_enum_rd { i16 608, i16 59, ptr @.str.95 }, %struct.country_code_to_enum_rd { i16 616, i16 55, ptr @.str.96 }, %struct.country_code_to_enum_rd { i16 620, i16 55, ptr @.str.97 }, %struct.country_code_to_enum_rd { i16 630, i16 16, ptr @.str.98 }, %struct.country_code_to_enum_rd { i16 634, i16 82, ptr @.str.99 }, %struct.country_code_to_enum_rd { i16 642, i16 55, ptr @.str.100 }, %struct.country_code_to_enum_rd { i16 643, i16 61, ptr @.str.101 }, %struct.country_code_to_enum_rd { i16 682, i16 3, ptr @.str.102 }, %struct.country_code_to_enum_rd { i16 688, i16 55, ptr @.str.103 }, %struct.country_code_to_enum_rd { i16 891, i16 55, ptr @.str.104 }, %struct.country_code_to_enum_rd { i16 702, i16 59, ptr @.str.105 }, %struct.country_code_to_enum_rd { i16 703, i16 55, ptr @.str.106 }, %struct.country_code_to_enum_rd { i16 705, i16 55, ptr @.str.107 }, %struct.country_code_to_enum_rd { i16 710, i16 59, ptr @.str.108 }, %struct.country_code_to_enum_rd { i16 724, i16 55, ptr @.str.109 }, %struct.country_code_to_enum_rd { i16 144, i16 59, ptr @.str.110 }, %struct.country_code_to_enum_rd { i16 752, i16 55, ptr @.str.111 }, %struct.country_code_to_enum_rd { i16 756, i16 55, ptr @.str.112 }, %struct.country_code_to_enum_rd { i16 760, i16 3, ptr @.str.113 }, %struct.country_code_to_enum_rd { i16 158, i16 80, ptr @.str.114 }, %struct.country_code_to_enum_rd { i16 834, i16 82, ptr @.str.115 }, %struct.country_code_to_enum_rd { i16 764, i16 59, ptr @.str.116 }, %struct.country_code_to_enum_rd { i16 780, i16 59, ptr @.str.117 }, %struct.country_code_to_enum_rd { i16 788, i16 54, ptr @.str.118 }, %struct.country_code_to_enum_rd { i16 792, i16 54, ptr @.str.119 }, %struct.country_code_to_enum_rd { i16 800, i16 59, ptr @.str.120 }, %struct.country_code_to_enum_rd { i16 804, i16 62, ptr @.str.121 }, %struct.country_code_to_enum_rd { i16 784, i16 3, ptr @.str.122 }, %struct.country_code_to_enum_rd { i16 826, i16 55, ptr @.str.123 }, %struct.country_code_to_enum_rd { i16 840, i16 58, ptr @.str.124 }, %struct.country_code_to_enum_rd { i16 841, i16 58, ptr @.str.124 }, %struct.country_code_to_enum_rd { i16 843, i16 58, ptr @.str.124 }, %struct.country_code_to_enum_rd { i16 842, i16 18, ptr @.str.125 }, %struct.country_code_to_enum_rd { i16 858, i16 59, ptr @.str.126 }, %struct.country_code_to_enum_rd { i16 860, i16 58, ptr @.str.127 }, %struct.country_code_to_enum_rd { i16 862, i16 86, ptr @.str.128 }, %struct.country_code_to_enum_rd { i16 704, i16 3, ptr @.str.129 }, %struct.country_code_to_enum_rd { i16 887, i16 3, ptr @.str.130 }, %struct.country_code_to_enum_rd { i16 716, i16 55, ptr @.str.131 }], [400 x i8] zeroinitializer }, align 32
@__kstrtab_ath_regd_find_country_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_regd_find_country_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_regd_find_country_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_regd_find_country_by_name to i32), ptr @__kstrtab_ath_regd_find_country_by_name, ptr @__kstrtabns_ath_regd_find_country_by_name }, section "___ksymtab+ath_regd_find_country_by_name", align 4
@__kstrtab_ath_reg_notifier_apply = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_reg_notifier_apply = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_reg_notifier_apply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_reg_notifier_apply to i32), ptr @__kstrtab_ath_reg_notifier_apply, ptr @__kstrtabns_ath_reg_notifier_apply }, section "___ksymtab+ath_reg_notifier_apply", align 4
@__kstrtab_ath_regd_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_regd_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_regd_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_regd_init to i32), ptr @__kstrtab_ath_regd_init, ptr @__kstrtabns_ath_regd_init }, section "___ksymtab+ath_regd_init", align 4
@__kstrtab_ath_regd_get_band_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_regd_get_band_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_regd_get_band_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_regd_get_band_ctl to i32), ptr @__kstrtab_ath_regd_get_band_ctl, ptr @__kstrtabns_ath_regd_get_band_ctl }, section "___ksymtab+ath_regd_get_band_ctl", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DB\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CO\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AL\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DZ\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AR\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AM\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AW\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AU\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AT\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AZ\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BS\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BH\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BD\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BB\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BY\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BE\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BL\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BZ\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BM\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BO\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BA\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BR\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BN\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BG\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KH\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CA\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CL\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CN\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CR\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HR\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CY\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CZ\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DK\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DO\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EC\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EG\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SV\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EE\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FI\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FR\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GE\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DE\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GR\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GL\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GD\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GU\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GT\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HN\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HK\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HU\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IS\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ID\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IR\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IE\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IL\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IT\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JM\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JP\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JO\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KZ\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KE\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KP\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KR\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"K2\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"K3\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"K4\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"KW\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LV\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LB\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LI\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LT\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LU\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MO\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MK\00", [29 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MY\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MT\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MU\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MX\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ME\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MA\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NP\00", [29 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NL\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AN\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NZ\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NI\00", [29 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OM\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PK\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PA\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PG\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PY\00", [29 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PE\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PH\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PL\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PT\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"QA\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RO\00", [29 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RU\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SA\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RS\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CS\00", [29 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SG\00", [29 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SK\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SI\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ZA\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ES\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LK\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SE\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CH\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SY\00", [29 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TW\00", [29 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TZ\00", [29 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TH\00", [29 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TT\00", [29 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TN\00", [29 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TR\00", [29 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UG\00", [29 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UA\00", [29 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AE\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GB\00", [29 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"US\00", [29 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PS\00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UY\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UZ\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VE\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VN\00", [29 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"YE\00", [29 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ZW\00", [29 x i8] zeroinitializer }, align 32
@ath_reg_dyn_country._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.134, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017ath: regdomain 0x%0x dynamically updated by %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ath_reg_dyn_country\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/wireless/ath/regd.c\00", [32 x i8] zeroinitializer }, align 32
@ath_reg_dyn_country._entry_ptr = internal global ptr @ath_reg_dyn_country._entry, section ".printk_index", align 4
@__ath_regd_init._entry = internal constant %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.134, i32 693, ptr null, ptr null }, align 1
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017ath: EEPROM regdomain: 0x%0x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__ath_regd_init\00", [16 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr = internal global ptr @__ath_regd_init._entry, section ".printk_index", align 4
@__ath_regd_init._entry.137 = internal constant %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.134, i32 696, ptr null, ptr null }, align 1
@.str.138 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ath: Invalid EEPROM contents\0A\00", [32 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.139 = internal global ptr @__ath_regd_init._entry.137, section ".printk_index", align 4
@__ath_regd_init._entry.140 = internal constant %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.134, i32 706, ptr null, ptr null }, align 1
@.str.141 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017ath: EEPROM indicates default country code should be used\0A\00", [35 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.142 = internal global ptr @__ath_regd_init._entry.140, section ".printk_index", align 4
@__ath_regd_init._entry.143 = internal constant %struct.pi_entry { ptr @.str.144, ptr @.str.136, ptr @.str.134, i32 714, ptr null, ptr null }, align 1
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017ath: doing EEPROM country->regdmn map search\0A\00", [48 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.145 = internal global ptr @__ath_regd_init._entry.143, section ".printk_index", align 4
@__ath_regd_init._entry.146 = internal constant %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.134, i32 720, ptr null, ptr null }, align 1
@.str.147 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017ath: no valid country maps found for country code: 0x%0x\0A\00", [36 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.148 = internal global ptr @__ath_regd_init._entry.146, section ".printk_index", align 4
@__ath_regd_init._entry.149 = internal constant %struct.pi_entry { ptr @.str.150, ptr @.str.136, ptr @.str.134, i32 726, ptr null, ptr null }, align 1
@.str.150 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017ath: country maps to regdmn code: 0x%0x\0A\00", [53 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.151 = internal global ptr @__ath_regd_init._entry.149, section ".printk_index", align 4
@__ath_regd_init._entry.152 = internal constant %struct.pi_entry { ptr @.str.153, ptr @.str.136, ptr @.str.134, i32 734, ptr null, ptr null }, align 1
@.str.153 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017ath: No regulatory domain pair found, cannot continue\0A\00", [39 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.154 = internal global ptr @__ath_regd_init._entry.152, section ".printk_index", align 4
@__ath_regd_init._entry.155 = internal constant %struct.pi_entry { ptr @.str.156, ptr @.str.136, ptr @.str.134, i32 750, ptr null, ptr null }, align 1
@.str.156 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017ath: Country alpha2 being used: %c%c\0A\00", [56 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.157 = internal global ptr @__ath_regd_init._entry.155, section ".printk_index", align 4
@__ath_regd_init._entry.158 = internal constant %struct.pi_entry { ptr @.str.159, ptr @.str.136, ptr @.str.134, i32 752, ptr null, ptr null }, align 1
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017ath: Regpair used: 0x%0x\0A\00", [36 x i8] zeroinitializer }, align 32
@__ath_regd_init._entry_ptr.160 = internal global ptr @__ath_regd_init._entry.158, section ".printk_index", align 4
@ath_regd_sanitize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.134, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017ath: EEPROM regdomain sanitized\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ath_regd_sanitize\00", [46 x i8] zeroinitializer }, align 32
@ath_regd_sanitize._entry_ptr = internal global ptr @ath_regd_sanitize._entry, section ".printk_index", align 4
@ath_regd_is_eeprom_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.134, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017ath: EEPROM indicates we should expect a country code\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ath_regd_is_eeprom_valid\00", [39 x i8] zeroinitializer }, align 32
@ath_regd_is_eeprom_valid._entry_ptr = internal global ptr @ath_regd_is_eeprom_valid._entry, section ".printk_index", align 4
@ath_regd_is_eeprom_valid._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.134, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017ath: EEPROM indicates we should expect a direct regpair map\0A\00", [33 x i8] zeroinitializer }, align 32
@ath_regd_is_eeprom_valid._entry_ptr.167 = internal global ptr @ath_regd_is_eeprom_valid._entry.165, section ".printk_index", align 4
@regDomainPairs = internal global { [113 x %struct.reg_dmn_pair_mapping], [186 x i8] } { [113 x %struct.reg_dmn_pair_mapping] [%struct.reg_dmn_pair_mapping { i16 0, i16 511, i16 511 }, %struct.reg_dmn_pair_mapping { i16 3, i16 255, i16 48 }, %struct.reg_dmn_pair_mapping { i16 7, i16 255, i16 48 }, %struct.reg_dmn_pair_mapping { i16 8, i16 255, i16 48 }, %struct.reg_dmn_pair_mapping { i16 32, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 33, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 34, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 58, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 59, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 63, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 18, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 19, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 20, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 35, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 55, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 53, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 54, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 48, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 57, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 52, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 61, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 62, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 50, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 49, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 17, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 16, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 82, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 69, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 77, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 71, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 66, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 88, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 90, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 91, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 93, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 94, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 95, i16 48, i16 48 }, %struct.reg_dmn_pair_mapping { i16 80, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 92, i16 16, i16 16 }, %struct.reg_dmn_pair_mapping { i16 85, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 86, i16 16, i16 48 }, %struct.reg_dmn_pair_mapping { i16 73, i16 16, i16 255 }, %struct.reg_dmn_pair_mapping { i16 64, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 65, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 72, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 74, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 75, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 76, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 67, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 240, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 128, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 241, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 129, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 130, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 242, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 243, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 131, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 244, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 132, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 133, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 245, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 134, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 135, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 136, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 137, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 248, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 138, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 139, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 249, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 140, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 250, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 141, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 142, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 251, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 143, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 144, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 145, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 246, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 252, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 253, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 255, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 254, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 247, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 208, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 209, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 211, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 210, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 212, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 213, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 214, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 216, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 215, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 217, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 218, i16 64, i16 16 }, %struct.reg_dmn_pair_mapping { i16 219, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 221, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 220, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 222, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 146, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 147, i16 64, i16 64 }, %struct.reg_dmn_pair_mapping { i16 96, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 97, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 98, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 99, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 100, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 101, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 102, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 103, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 104, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 105, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 106, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 107, i16 255, i16 255 }, %struct.reg_dmn_pair_mapping { i16 108, i16 255, i16 255 }], [186 x i8] zeroinitializer }, align 32
@ath_regd_is_eeprom_valid._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.164, ptr @.str.134, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017ath: invalid regulatory domain/country code 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ath_regd_is_eeprom_valid._entry_ptr.170 = internal global ptr @ath_regd_is_eeprom_valid._entry.168, section ".printk_index", align 4
@ath_world_regdom_60_61_62 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [5 x %struct.ieee80211_reg_rule] }, [108 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [5 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 5, [3 x i8] c"99\00", i32 0, [5 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2474000, i32 2494000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 129, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5460000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [108 x i8] zeroinitializer }, align 32
@ath_world_regdom_63_65 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] }, [108 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 4, [3 x i8] c"99\00", i32 0, [4 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5715000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [108 x i8] zeroinitializer }, align 32
@ath_world_regdom_64 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] }, [76 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 3, [3 x i8] c"99\00", i32 0, [3 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5715000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [76 x i8] zeroinitializer }, align 32
@ath_world_regdom_66_69 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] }, [76 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 3, [3 x i8] c"99\00", i32 0, [3 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5460000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [76 x i8] zeroinitializer }, align 32
@ath_world_regdom_67_68_6A_6C = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] }, [108 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 4, [3 x i8] c"99\00", i32 0, [4 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5460000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [108 x i8] zeroinitializer }, align 32
@switch.table.ath_regd_init = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @ath_world_regdom_60_61_62, ptr @ath_world_regdom_60_61_62, ptr @ath_world_regdom_60_61_62, ptr @ath_world_regdom_63_65, ptr @ath_world_regdom_64, ptr @ath_world_regdom_63_65, ptr @ath_world_regdom_66_69, ptr @ath_world_regdom_67_68_6A_6C, ptr @ath_world_regdom_67_68_6A_6C, ptr @ath_world_regdom_66_69, ptr @ath_world_regdom_67_68_6A_6C, ptr @ath_world_regdom_60_61_62, ptr @ath_world_regdom_67_68_6A_6C], [44 x i8] zeroinitializer }, align 32
@switch.table.ath_regd_get_band_ctl = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 16, i16 48, i16 64], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32768]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.178 = internal global [8 x i64] [i64 6, i64 16, i64 96, i64 99, i64 102, i64 103, i64 104, i64 108]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.181 = private unnamed_addr constant [13 x i8] c"allCountries\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 301, i32 39 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 302, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 303, i32 28 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 304, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 305, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 306, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 307, i32 30 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 308, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 309, i32 31 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 311, i32 30 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 312, i32 33 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 313, i32 29 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 314, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 315, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 316, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 317, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 318, i32 30 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 319, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 320, i32 28 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 321, i32 28 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 322, i32 29 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 323, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 324, i32 28 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 325, i32 39 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 326, i32 31 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 327, i32 31 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 328, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 330, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 331, i32 27 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 333, i32 32 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 334, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 335, i32 29 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 336, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 337, i32 30 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 338, i32 39 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 339, i32 29 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 340, i32 28 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 341, i32 33 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 342, i32 30 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 343, i32 30 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 344, i32 29 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 345, i32 30 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 346, i32 30 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 347, i32 29 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 348, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 349, i32 28 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 350, i32 25 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 351, i32 30 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 352, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 353, i32 30 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 354, i32 31 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 355, i32 30 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 356, i32 30 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 357, i32 27 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 358, i32 32 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 359, i32 26 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 360, i32 30 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 361, i32 29 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 362, i32 28 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 363, i32 29 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 365, i32 26 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 424, i32 29 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 425, i32 33 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 426, i32 27 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 427, i32 33 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 428, i32 31 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 429, i32 32 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 430, i32 32 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 431, i32 33 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 432, i32 29 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 433, i32 29 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 434, i32 30 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 435, i32 36 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 436, i32 32 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 437, i32 33 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 438, i32 27 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 439, i32 32 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 440, i32 30 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 441, i32 28 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 442, i32 32 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 443, i32 27 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 444, i32 29 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 445, i32 33 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 446, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 447, i32 27 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 448, i32 34 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 449, i32 43 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 450, i32 33 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 451, i32 30 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 452, i32 29 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 453, i32 26 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 454, i32 31 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 455, i32 27 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 456, i32 38 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 457, i32 30 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 458, i32 26 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 459, i32 33 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 460, i32 29 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 461, i32 31 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 462, i32 32 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 463, i32 27 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 464, i32 30 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 465, i32 29 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 466, i32 35 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 467, i32 29 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 468, i32 40 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 469, i32 31 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 470, i32 31 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 471, i32 31 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 472, i32 34 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 473, i32 28 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 474, i32 31 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 475, i32 29 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 476, i32 34 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 477, i32 28 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 478, i32 27 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 479, i32 30 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 480, i32 30 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 481, i32 39 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 482, i32 30 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 483, i32 29 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 484, i32 28 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 485, i32 30 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 486, i32 26 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 487, i32 37 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 488, i32 34 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 494, i32 40 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 495, i32 29 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 496, i32 31 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 497, i32 31 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 498, i32 31 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 499, i32 28 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 500, i32 31 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 502, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 693, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 696, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 705, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 713, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 717, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 724, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 733, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 749, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 751, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 679, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 559, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 568, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant [15 x i8] c"regDomainPairs\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [42 x i8] c"../drivers/net/wireless/ath/regd_common.h\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.647, i32 165, i32 36 }
@___asan_gen_.649 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.652 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 574, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [26 x i8] c"ath_world_regdom_60_61_62\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 66, i32 41 }
@___asan_gen_.658 = private unnamed_addr constant [23 x i8] c"ath_world_regdom_63_65\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 76, i32 41 }
@___asan_gen_.661 = private unnamed_addr constant [20 x i8] c"ath_world_regdom_64\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 87, i32 41 }
@___asan_gen_.664 = private unnamed_addr constant [23 x i8] c"ath_world_regdom_66_69\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 97, i32 41 }
@___asan_gen_.667 = private unnamed_addr constant [29 x i8] c"ath_world_regdom_67_68_6A_6C\00", align 1
@___asan_gen_.668 = private constant [35 x i8] c"../drivers/net/wireless/ath/regd.c\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 107, i32 41 }
@___asan_gen_.670 = private unnamed_addr constant [27 x i8] c"switch.table.ath_regd_init\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [35 x i8] c"switch.table.ath_regd_get_band_ctl\00", align 1
@llvm.compiler.used = appending global [194 x ptr] [ptr @__ath_regd_init._entry, ptr @__ath_regd_init._entry.137, ptr @__ath_regd_init._entry.140, ptr @__ath_regd_init._entry.143, ptr @__ath_regd_init._entry.146, ptr @__ath_regd_init._entry.149, ptr @__ath_regd_init._entry.152, ptr @__ath_regd_init._entry.155, ptr @__ath_regd_init._entry.158, ptr @__ath_regd_init._entry_ptr, ptr @__ath_regd_init._entry_ptr.139, ptr @__ath_regd_init._entry_ptr.142, ptr @__ath_regd_init._entry_ptr.145, ptr @__ath_regd_init._entry_ptr.148, ptr @__ath_regd_init._entry_ptr.151, ptr @__ath_regd_init._entry_ptr.154, ptr @__ath_regd_init._entry_ptr.157, ptr @__ath_regd_init._entry_ptr.160, ptr @__ksymtab_ath_is_49ghz_allowed, ptr @__ksymtab_ath_is_world_regd, ptr @__ksymtab_ath_reg_notifier_apply, ptr @__ksymtab_ath_regd_find_country_by_name, ptr @__ksymtab_ath_regd_get_band_ctl, ptr @__ksymtab_ath_regd_init, ptr @ath_reg_dyn_country._entry, ptr @ath_reg_dyn_country._entry_ptr, ptr @ath_regd_is_eeprom_valid._entry, ptr @ath_regd_is_eeprom_valid._entry.165, ptr @ath_regd_is_eeprom_valid._entry.168, ptr @ath_regd_is_eeprom_valid._entry_ptr, ptr @ath_regd_is_eeprom_valid._entry_ptr.167, ptr @ath_regd_is_eeprom_valid._entry_ptr.170, ptr @ath_regd_sanitize._entry, ptr @ath_regd_sanitize._entry_ptr, ptr @allCountries, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @regDomainPairs, ptr @.str.169, ptr @ath_world_regdom_60_61_62, ptr @ath_world_regdom_63_65, ptr @ath_world_regdom_64, ptr @ath_world_regdom_66_69, ptr @ath_world_regdom_67_68_6A_6C, ptr @switch.table.ath_regd_init, ptr @switch.table.ath_regd_get_band_ctl], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allCountries to i32), i32 1552, i32 1952, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_reg_dyn_country._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_regd_sanitize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_regd_is_eeprom_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_regd_is_eeprom_valid._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regDomainPairs to i32), i32 678, i32 864, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_regd_is_eeprom_valid._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_world_regdom_60_61_62 to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_world_regdom_63_65 to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_world_regdom_64 to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_world_regdom_66_69 to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_world_regdom_67_68_6A_6C to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath_regd_init to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath_regd_get_band_ctl to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ath_is_world_regd(ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %current_rd.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 4
  %0 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %current_rd.i, align 4
  %2 = and i16 %1, -16385
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.not.i, label %land.rhs.i, label %entry.is_wwr_sku.exit_crit_edge

entry.is_wwr_sku.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_wwr_sku.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and3.i = and i32 %conv.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %2)
  %cmp7.i = icmp eq i16 %2, 409
  %spec.select.i = or i1 %cmp7.i, %cmp4.i
  br label %is_wwr_sku.exit

is_wwr_sku.exit:                                  ; preds = %land.rhs.i, %entry.is_wwr_sku.exit_crit_edge
  %3 = phi i1 [ false, %entry.is_wwr_sku.exit_crit_edge ], [ %spec.select.i, %land.rhs.i ]
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ath_is_49ghz_allowed(i16 noundef zeroext %regdomain) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %regdomain)
  %cmp = icmp eq i16 %regdomain, 254
  ret i1 %cmp
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ath_regd_find_country_by_name(ptr nocapture noundef readonly %alpha2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %isoName = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.06, i32 2
  %0 = ptrtoint ptr %isoName to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isoName, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %1, ptr noundef dereferenceable(2) %alpha2, i32 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.06
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 194
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i16 [ %3, %if.then ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_reg_notifier_apply(ptr noundef %wiphy, ptr noundef readonly %request, ptr noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ath_reg_apply_radar_flags.exit_crit_edge, label %for.cond.preheader.i

entry.ath_reg_apply_radar_flags.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_reg_apply_radar_flags.exit

for.cond.preheader.i:                             ; preds = %entry
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i = icmp eq i32 %3, 0
  br i1 %cmp18.not.i, label %for.cond.preheader.i.ath_reg_apply_radar_flags.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.ath_reg_apply_radar_flags.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_reg_apply_radar_flags.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %country_code.i.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %center_freq.i = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.019.i, i32 1
  %6 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq.i, align 4
  %conv.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %country_code.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %country_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 356, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 356
  %10 = add i16 %conv.i, -5500
  call void @__sanitizer_cov_trace_const_cmp2(i16 201, i16 %10)
  %11 = icmp ult i16 %10, 201
  %12 = add i16 %conv.i, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %12)
  %13 = icmp ult i16 %12, 441
  %retval.0.i.i = select i1 %cmp.i.i, i1 %11, i1 %13
  br i1 %retval.0.i.i, label %if.end5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.019.i, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %15, 10
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %flags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %if.end5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %17 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ath_reg_apply_radar_flags.exit_crit_edge

for.inc.i.ath_reg_apply_radar_flags.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_reg_apply_radar_flags.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ath_reg_apply_radar_flags.exit:                   ; preds = %for.inc.i.ath_reg_apply_radar_flags.exit_crit_edge, %for.cond.preheader.i.ath_reg_apply_radar_flags.exit_crit_edge, %entry.ath_reg_apply_radar_flags.exit_crit_edge
  %tobool.not = icmp eq ptr %request, null
  br i1 %tobool.not, label %ath_reg_apply_radar_flags.exit.cleanup_crit_edge, label %if.end

ath_reg_apply_radar_flags.exit.cleanup_crit_edge: ; preds = %ath_reg_apply_radar_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ath_reg_apply_radar_flags.exit
  %dfs_region = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %19 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dfs_region, align 4
  %region = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 1
  %21 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %region, align 4
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %22 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %initiator, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb8
    i32 1, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %reg_world_copy = getelementptr i8, ptr %reg, i32 20
  %current_rd.i.i = getelementptr i8, ptr %reg, i32 32
  %25 = ptrtoint ptr %current_rd.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %current_rd.i.i, align 4
  %27 = and i16 %26, -16385
  %conv.i.i = zext i16 %27 to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.not.i.i, label %ath_is_world_regd.exit, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ath_is_world_regd.exit:                           ; preds = %sw.bb
  %and3.i.i = and i32 %conv.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and3.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %27)
  %cmp7.i.i = icmp eq i16 %27, 409
  %spec.select.i.i = or i1 %cmp7.i.i, %cmp4.i.i
  br i1 %spec.select.i.i, label %if.end2, label %ath_is_world_regd.exit.cleanup_crit_edge

ath_is_world_regd.exit.cleanup_crit_edge:         ; preds = %ath_is_world_regd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %ath_is_world_regd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call ptr @memcpy(ptr %reg, ptr %reg_world_copy, i32 20)
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath_reg_dyn_country(ptr noundef %wiphy, ptr noundef %reg, ptr noundef nonnull %request)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath_reg_dyn_country(ptr noundef %wiphy, ptr noundef %reg, ptr noundef nonnull %request)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb4, %if.end2, %ath_is_world_regd.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ath_reg_apply_radar_flags.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_reg_dyn_country(ptr noundef %wiphy, ptr noundef %reg, ptr nocapture noundef readonly %request) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %initiator.i = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %0 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initiator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %current_rd.i.i.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 4
  %2 = ptrtoint ptr %current_rd.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %current_rd.i.i.i, align 4
  %4 = and i16 %3, -16385
  %conv.i.i.i = zext i16 %4 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.not.i.i.i, label %ath_is_world_regd.exit.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

ath_is_world_regd.exit.i:                         ; preds = %land.lhs.true.i
  %and3.i.i.i = and i32 %conv.i.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %and3.i.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %4)
  %cmp7.i.i.i = icmp eq i16 %4, 409
  %spec.select.i.i.i = or i1 %cmp7.i.i.i, %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %ath_is_world_regd.exit.i.if.end.i_crit_edge, label %ath_is_world_regd.exit.i.return_crit_edge

ath_is_world_regd.exit.i.return_crit_edge:        ; preds = %ath_is_world_regd.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

ath_is_world_regd.exit.i.if.end.i_crit_edge:      ; preds = %ath_is_world_regd.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %ath_is_world_regd.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %alpha2.i = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.06.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %isoName.i.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.06.i.i, i32 2
  %5 = ptrtoint ptr %isoName.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isoName.i.i, align 4
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %6, ptr noundef dereferenceable(2) %alpha2.i, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %ath_regd_find_country_by_name.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 194
  br i1 %exitcond.not.i.i, label %for.inc.i.i.return_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.return_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

ath_regd_find_country_by_name.exit.i:             ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.06.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp2.i = icmp eq i16 %8, -1
  br i1 %cmp2.i, label %ath_regd_find_country_by_name.exit.i.return_crit_edge, label %do.end

ath_regd_find_country_by_name.exit.i.return_crit_edge: ; preds = %ath_regd_find_country_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %ath_regd_find_country_by_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %current_rd.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 4
  %9 = or i16 %8, -32768
  %10 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %current_rd.i, align 4
  %call10.i = tail call fastcc i32 @__ath_regd_init(ptr noundef %reg) #8
  %11 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %initiator.i, align 4
  tail call fastcc void @ath_reg_apply_world_flags(ptr noundef %wiphy, i32 noundef %12, ptr noundef %reg) #8
  %13 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %current_rd.i, align 4
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %initiator.i, align 4
  %call1 = tail call ptr @reg_initiator_name(i32 noundef %16) #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %conv, ptr noundef %call1) #13
  br label %return

return:                                           ; preds = %do.end, %ath_regd_find_country_by_name.exit.i.return_crit_edge, %for.inc.i.i.return_crit_edge, %ath_is_world_regd.exit.i.return_crit_edge, %land.lhs.true.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_regd_init(ptr noundef %reg, ptr noundef %wiphy, ptr noundef %reg_notifier) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ath_regd_init(ptr noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_rd.i.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 4
  %0 = ptrtoint ptr %current_rd.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %current_rd.i.i, align 4
  %2 = and i16 %1, -16385
  %conv.i.i = zext i16 %2 to i32
  %and.i.i = and i32 %conv.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.not.i.i, label %ath_is_world_regd.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

ath_is_world_regd.exit:                           ; preds = %if.end
  %and3.i.i = and i32 %conv.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and3.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %2)
  %cmp7.i.i = icmp eq i16 %2, 409
  %spec.select.i.i = or i1 %cmp7.i.i, %cmp4.i.i
  br i1 %spec.select.i.i, label %if.then2, label %ath_is_world_regd.exit.if.end3_crit_edge

ath_is_world_regd.exit.if.end3_crit_edge:         ; preds = %ath_is_world_regd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %ath_is_world_regd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %reg_world_copy = getelementptr i8, ptr %reg, i32 20
  %3 = call ptr @memcpy(ptr %reg_world_copy, ptr %reg, i32 20)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %ath_is_world_regd.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %reg_notifier1.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 54
  %4 = ptrtoint ptr %reg_notifier1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %reg_notifier, ptr %reg_notifier1.i, align 8
  %regulatory_flags.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 12
  %5 = ptrtoint ptr %regulatory_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regulatory_flags.i, align 4
  %or.i = or i32 %6, 3
  store i32 %or.i, ptr %regulatory_flags.i, align 4
  %7 = ptrtoint ptr %current_rd.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %current_rd.i.i, align 4
  %9 = and i16 %8, -16385
  %conv.i.i.i = zext i16 %9 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.not.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.not.i.i.i, label %ath_is_world_regd.exit.i, label %if.end3.if.end.i_crit_edge

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ath_is_world_regd.exit.i:                         ; preds = %if.end3
  %and3.i.i.i = and i32 %conv.i.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %and3.i.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %9)
  %cmp7.i.i.i = icmp eq i16 %9, 409
  %spec.select.i.i.i = or i1 %cmp7.i.i.i, %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %if.then.i, label %ath_is_world_regd.exit.i.if.end.i_crit_edge

ath_is_world_regd.exit.i.if.end.i_crit_edge:      ; preds = %ath_is_world_regd.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %ath_is_world_regd.exit.i
  %regpair.i.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 6
  %10 = ptrtoint ptr %regpair.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regpair.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %switch.tableidx = add i16 %13, -96
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %switch.tableidx)
  %14 = icmp ult i16 %switch.tableidx, 13
  br i1 %14, label %switch.hole_check, label %if.then.i.do.end.i.i_crit_edge

if.then.i.do.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %switch.hole_check.do.end.i.i_crit_edge, %if.then.i.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.134, i32 noundef 244, i32 noundef 9, ptr noundef null) #8
  br label %ath_world_regdomain.exit.i

switch.hole_check:                                ; preds = %if.then.i
  %switch.shifted = lshr i16 6143, %switch.tableidx
  %15 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %switch.lobit.not = icmp eq i16 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %16 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.ath_regd_init, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ath_world_regdomain.exit.i

ath_world_regdomain.exit.i:                       ; preds = %switch.lookup, %do.end.i.i
  %retval.0.i.i = phi ptr [ @ath_world_regdom_64, %do.end.i.i ], [ %switch.load, %switch.lookup ]
  %18 = ptrtoint ptr %regulatory_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regulatory_flags.i, align 4
  %or4.i = or i32 %19, 8
  store i32 %or4.i, ptr %regulatory_flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %ath_world_regdomain.exit.i, %ath_is_world_regd.exit.i.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge
  %regd.0.i = phi ptr [ %retval.0.i.i, %ath_world_regdomain.exit.i ], [ @ath_world_regdom_64, %ath_is_world_regd.exit.i.if.end.i_crit_edge ], [ @ath_world_regdom_64, %if.end3.if.end.i_crit_edge ]
  tail call void @wiphy_apply_custom_regulatory(ptr noundef %wiphy, ptr noundef nonnull %regd.0.i) #8
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.ath_regd_init_wiphy.exit_crit_edge, label %for.cond.preheader.i.i

if.end.i.ath_regd_init_wiphy.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_regd_init_wiphy.exit

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %n_channels.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp18.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp18.not.i.i, label %for.cond.preheader.i.i.ath_regd_init_wiphy.exit_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.ath_regd_init_wiphy.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_regd_init_wiphy.exit

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %country_code.i.i.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %center_freq.i.i = getelementptr %struct.ieee80211_channel, ptr %25, i32 %i.019.i.i, i32 1
  %26 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %center_freq.i.i, align 4
  %conv.i.i11 = trunc i32 %27 to i16
  %28 = ptrtoint ptr %country_code.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %country_code.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 356, i16 %29)
  %cmp.i.i.i = icmp eq i16 %29, 356
  %30 = add i16 %conv.i.i11, -5500
  call void @__sanitizer_cov_trace_const_cmp2(i16 201, i16 %30)
  %31 = icmp ult i16 %30, 201
  %32 = add i16 %conv.i.i11, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %32)
  %33 = icmp ult i16 %32, 441
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i1 %31, i1 %33
  br i1 %retval.0.i.i.i, label %if.end5.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %flags.i.i = getelementptr %struct.ieee80211_channel, ptr %25, i32 %i.019.i.i, i32 4
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i, align 4
  %and.i.i12 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool6.not.i.i = icmp eq i32 %and.i.i12, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %35, 10
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %if.end5.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %37 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_channels.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %38
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ath_regd_init_wiphy.exit_crit_edge

for.inc.i.i.ath_regd_init_wiphy.exit_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_regd_init_wiphy.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ath_regd_init_wiphy.exit:                         ; preds = %for.inc.i.i.ath_regd_init_wiphy.exit_crit_edge, %for.cond.preheader.i.i.ath_regd_init_wiphy.exit_crit_edge, %if.end.i.ath_regd_init_wiphy.exit_crit_edge
  tail call fastcc void @ath_reg_apply_world_flags(ptr noundef %wiphy, i32 noundef 2, ptr noundef %reg) #8
  br label %cleanup

cleanup:                                          ; preds = %ath_regd_init_wiphy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ath_regd_init_wiphy.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ath_regd_init(ptr noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %reg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_rd.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 4
  %0 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %current_rd.i, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %1, label %if.end.ath_regd_sanitize.exit_crit_edge [
    i16 -32768, label %if.end.do.end.i_crit_edge
    i16 0, label %if.end.do.end.i_crit_edge224
  ]

if.end.do.end.i_crit_edge224:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.ath_regd_sanitize.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_regd_sanitize.exit

do.end.i:                                         ; preds = %if.end.do.end.i_crit_edge, %if.end.do.end.i_crit_edge224
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #13
  %3 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 100, ptr %current_rd.i, align 4
  br label %ath_regd_sanitize.exit

ath_regd_sanitize.exit:                           ; preds = %do.end.i, %if.end.ath_regd_sanitize.exit_crit_edge
  %4 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %current_rd.i, align 4
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %conv) #13
  %6 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %current_rd.i, align 4
  %8 = and i16 %7, -16385
  %conv.i = zext i16 %8 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %ath_regd_sanitize.exit
  %and2.i = and i16 %7, 16383
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #13
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 194
  br i1 %exitcond.not.i, label %for.cond.i.do.end5_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.end5_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.i
  %i.055.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.055.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %and2.i)
  %cmp8.i = icmp eq i16 %10, %and2.i
  br i1 %cmp8.i, label %for.body.i.if.end8_crit_edge, label %for.cond.i

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else.i:                                        ; preds = %ath_regd_sanitize.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp12.not.i = icmp eq i16 %8, 0
  br i1 %cmp12.not.i, label %if.else.i.for.body24.i.preheader_crit_edge, label %do.end17.i

if.else.i.for.body24.i.preheader_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i.preheader

do.end17.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #13
  br label %for.body24.i.preheader

for.body24.i.preheader:                           ; preds = %do.end17.i, %if.else.i.for.body24.i.preheader_crit_edge
  br label %for.body24.i

for.cond21.i:                                     ; preds = %for.body24.i
  %inc33.i = add nuw nsw i32 %i.156.i, 1
  %exitcond59.not.i = icmp eq i32 %inc33.i, 113
  br i1 %exitcond59.not.i, label %for.cond21.i.do.end5_crit_edge, label %for.cond21.i.for.body24.i_crit_edge

for.cond21.i.for.body24.i_crit_edge:              ; preds = %for.cond21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i

for.cond21.i.do.end5_crit_edge:                   ; preds = %for.cond21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

for.body24.i:                                     ; preds = %for.cond21.i.for.body24.i_crit_edge, %for.body24.i.preheader
  %i.156.i = phi i32 [ %inc33.i, %for.cond21.i.for.body24.i_crit_edge ], [ 0, %for.body24.i.preheader ]
  %arrayidx25.i = getelementptr [113 x %struct.reg_dmn_pair_mapping], ptr @regDomainPairs, i32 0, i32 %i.156.i
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx25.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %8)
  %cmp28.i = icmp eq i16 %12, %8
  br i1 %cmp28.i, label %for.body24.i.if.end8_crit_edge, label %for.cond21.i

for.body24.i.if.end8_crit_edge:                   ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end5:                                          ; preds = %for.cond21.i.do.end5_crit_edge, %for.cond.i.do.end5_crit_edge
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %conv.i) #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #13
  br label %cleanup

if.end8:                                          ; preds = %for.body24.i.if.end8_crit_edge, %for.body.i.if.end8_crit_edge
  %13 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %current_rd.i, align 4
  %15 = and i16 %14, -16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not.i133 = icmp sgt i16 %15, -1
  br i1 %tobool.not.i133, label %if.end8.ath_regd_get_default_country.exit.thread_crit_edge, label %if.then.i135

if.end8.ath_regd_get_default_country.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_regd_get_default_country.exit.thread

if.then.i135:                                     ; preds = %if.end8
  %and2.i134 = and i16 %14, 16383
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 194
  br i1 %exitcond.not.i.i, label %for.cond.i.i.ath_regd_get_default_country.exit.thread_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.ath_regd_get_default_country.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_regd_get_default_country.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then.i135
  %i.09.i.i = phi i32 [ 0, %if.then.i135 ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.09.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %and2.i134)
  %cmp3.i.i = icmp eq i16 %17, %and2.i134
  br i1 %cmp3.i.i, label %ath_regd_find_country.exit.i, label %for.cond.i.i

ath_regd_find_country.exit.i:                     ; preds = %for.body.i.i
  %cmp.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %cmp.not.i, label %ath_regd_find_country.exit.i.ath_regd_get_default_country.exit.thread_crit_edge, label %ath_regd_get_default_country.exit

ath_regd_find_country.exit.i.ath_regd_get_default_country.exit.thread_crit_edge: ; preds = %ath_regd_find_country.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_regd_get_default_country.exit.thread

ath_regd_get_default_country.exit:                ; preds = %ath_regd_find_country.exit.i
  %country_code = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 2
  %18 = ptrtoint ptr %country_code to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %and2.i134, ptr %country_code, align 4
  %19 = and i16 %14, -16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %ath_regd_get_default_country.exit.if.end24.thread_crit_edge, label %if.end24

ath_regd_get_default_country.exit.if.end24.thread_crit_edge: ; preds = %ath_regd_get_default_country.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.thread

ath_regd_get_default_country.exit.thread:         ; preds = %ath_regd_find_country.exit.i.ath_regd_get_default_country.exit.thread_crit_edge, %for.cond.i.i.ath_regd_get_default_country.exit.thread_crit_edge, %if.end8.ath_regd_get_default_country.exit.thread_crit_edge
  %country_code184 = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 2
  %21 = ptrtoint ptr %country_code184 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %country_code184, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %22 = icmp eq i16 %15, 0
  br i1 %22, label %ath_regd_get_default_country.exit.thread.if.end24.thread_crit_edge, label %ath_regd_get_default_country.exit.thread.for.body.i147.preheader_crit_edge

ath_regd_get_default_country.exit.thread.for.body.i147.preheader_crit_edge: ; preds = %ath_regd_get_default_country.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i147.preheader

ath_regd_get_default_country.exit.thread.if.end24.thread_crit_edge: ; preds = %ath_regd_get_default_country.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.thread

if.end24.thread:                                  ; preds = %ath_regd_get_default_country.exit.thread.if.end24.thread_crit_edge, %ath_regd_get_default_country.exit.if.end24.thread_crit_edge
  %country_code186 = phi ptr [ %country_code184, %ath_regd_get_default_country.exit.thread.if.end24.thread_crit_edge ], [ %country_code, %ath_regd_get_default_country.exit.if.end24.thread_crit_edge ]
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #13
  %23 = ptrtoint ptr %country_code186 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 840, ptr %country_code186, align 4
  br label %do.end32

if.end24:                                         ; preds = %ath_regd_get_default_country.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and2.i134)
  %cmp27 = icmp eq i16 %and2.i134, 0
  br i1 %cmp27, label %if.end24.if.end55_crit_edge, label %if.end24.do.end32_crit_edge

if.end24.do.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

if.end24.if.end55_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end32:                                         ; preds = %if.end24.do.end32_crit_edge, %if.end24.thread
  %country_code187 = phi ptr [ %country_code186, %if.end24.thread ], [ %country_code, %if.end24.do.end32_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #13
  %24 = ptrtoint ptr %country_code187 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %country_code187, align 4
  br label %for.body.i141

for.cond.i139:                                    ; preds = %for.body.i141
  %inc.i137 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i138 = icmp eq i32 %inc.i137, 194
  br i1 %exitcond.not.i138, label %for.cond.i139.do.end42_crit_edge, label %for.cond.i139.for.body.i141_crit_edge

for.cond.i139.for.body.i141_crit_edge:            ; preds = %for.cond.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i141

for.cond.i139.do.end42_crit_edge:                 ; preds = %for.cond.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

for.body.i141:                                    ; preds = %for.cond.i139.for.body.i141_crit_edge, %do.end32
  %i.09.i = phi i32 [ 0, %do.end32 ], [ %inc.i137, %for.cond.i139.for.body.i141_crit_edge ]
  %arrayidx.i140 = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.09.i
  %26 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i140, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %25)
  %cmp3.i = icmp eq i16 %27, %25
  br i1 %cmp3.i, label %ath_regd_find_country.exit, label %for.cond.i139

ath_regd_find_country.exit:                       ; preds = %for.body.i141
  %cmp37 = icmp eq ptr %arrayidx.i140, null
  br i1 %cmp37, label %ath_regd_find_country.exit.do.end42_crit_edge, label %if.else47

ath_regd_find_country.exit.do.end42_crit_edge:    ; preds = %ath_regd_find_country.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

do.end42:                                         ; preds = %ath_regd_find_country.exit.do.end42_crit_edge, %for.cond.i139.do.end42_crit_edge
  %conv45 = zext i16 %25 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %conv45) #13
  br label %cleanup

if.else47:                                        ; preds = %ath_regd_find_country.exit
  call void @__sanitizer_cov_trace_pc() #10
  %regDmnEnum = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.09.i, i32 1
  %28 = ptrtoint ptr %regDmnEnum to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %regDmnEnum, align 2
  %conv52 = zext i16 %29 to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %conv52) #13
  br label %if.end55

if.end55:                                         ; preds = %if.else47, %if.end24.if.end55_crit_edge
  %regdmn.0 = phi i16 [ %29, %if.else47 ], [ %15, %if.end24.if.end55_crit_edge ]
  %country.0 = phi ptr [ %arrayidx.i140, %if.else47 ], [ null, %if.end24.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %regdmn.0)
  %cmp.i = icmp eq i16 %regdmn.0, 0
  br i1 %cmp.i, label %if.end55.ath_get_regpair.exit.thread_crit_edge, label %if.end55.for.body.i147.preheader_crit_edge

if.end55.for.body.i147.preheader_crit_edge:       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i147.preheader

if.end55.ath_get_regpair.exit.thread_crit_edge:   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_get_regpair.exit.thread

for.body.i147.preheader:                          ; preds = %if.end55.for.body.i147.preheader_crit_edge, %ath_regd_get_default_country.exit.thread.for.body.i147.preheader_crit_edge
  %country.0197 = phi ptr [ %country.0, %if.end55.for.body.i147.preheader_crit_edge ], [ null, %ath_regd_get_default_country.exit.thread.for.body.i147.preheader_crit_edge ]
  %regdmn.0196 = phi i16 [ %regdmn.0, %if.end55.for.body.i147.preheader_crit_edge ], [ %15, %ath_regd_get_default_country.exit.thread.for.body.i147.preheader_crit_edge ]
  br label %for.body.i147

for.cond.i144:                                    ; preds = %for.body.i147
  %inc.i142 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i143 = icmp eq i32 %inc.i142, 113
  br i1 %exitcond.not.i143, label %for.cond.i144.ath_get_regpair.exit.thread_crit_edge, label %for.cond.i144.for.body.i147_crit_edge

for.cond.i144.for.body.i147_crit_edge:            ; preds = %for.cond.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i147

for.cond.i144.ath_get_regpair.exit.thread_crit_edge: ; preds = %for.cond.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_get_regpair.exit.thread

for.body.i147:                                    ; preds = %for.cond.i144.for.body.i147_crit_edge, %for.body.i147.preheader
  %i.011.i = phi i32 [ %inc.i142, %for.cond.i144.for.body.i147_crit_edge ], [ 0, %for.body.i147.preheader ]
  %arrayidx.i145 = getelementptr [113 x %struct.reg_dmn_pair_mapping], ptr @regDomainPairs, i32 0, i32 %i.011.i
  %30 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i145, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %regdmn.0196)
  %cmp2.i = icmp eq i16 %31, %regdmn.0196
  br i1 %cmp2.i, label %ath_get_regpair.exit, label %for.cond.i144

ath_get_regpair.exit.thread:                      ; preds = %for.cond.i144.ath_get_regpair.exit.thread_crit_edge, %if.end55.ath_get_regpair.exit.thread_crit_edge
  %regpair161 = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 6
  %32 = ptrtoint ptr %regpair161 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %regpair161, align 4
  br label %do.end63

ath_get_regpair.exit:                             ; preds = %for.body.i147
  %regpair = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 6
  %33 = ptrtoint ptr %regpair to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.i145, ptr %regpair, align 4
  %tobool59.not = icmp eq ptr %arrayidx.i145, null
  br i1 %tobool59.not, label %ath_get_regpair.exit.do.end63_crit_edge, label %if.end66

ath_get_regpair.exit.do.end63_crit_edge:          ; preds = %ath_get_regpair.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

do.end63:                                         ; preds = %ath_get_regpair.exit.do.end63_crit_edge, %ath_get_regpair.exit.thread
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #13
  br label %cleanup

if.end66:                                         ; preds = %ath_get_regpair.exit
  %tobool67.not = icmp eq ptr %country.0197, null
  br i1 %tobool67.not, label %if.end66.for.body.i150_crit_edge, label %if.end66.if.then73_crit_edge

if.end66.if.then73_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.end66.for.body.i150_crit_edge:                 ; preds = %if.end66
  br label %for.body.i150

for.body.i150:                                    ; preds = %for.inc.i.for.body.i150_crit_edge, %if.end66.for.body.i150_crit_edge
  %i.08.i = phi i32 [ %inc.i153, %for.inc.i.for.body.i150_crit_edge ], [ 0, %if.end66.for.body.i150_crit_edge ]
  %regDmnEnum.i = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.08.i, i32 1
  %34 = ptrtoint ptr %regDmnEnum.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %regDmnEnum.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %regdmn.0196)
  %cmp1.i = icmp eq i16 %35, %regdmn.0196
  br i1 %cmp1.i, label %if.end71, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i150
  %inc.i153 = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i154 = icmp eq i32 %inc.i153, 194
  br i1 %exitcond.not.i154, label %for.inc.i.if.else79_crit_edge, label %for.inc.i.for.body.i150_crit_edge

for.inc.i.for.body.i150_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i150

for.inc.i.if.else79_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else79

if.end71:                                         ; preds = %for.body.i150
  %arrayidx.i151 = getelementptr [194 x %struct.country_code_to_enum_rd], ptr @allCountries, i32 0, i32 %i.08.i
  %tobool72.not = icmp eq ptr %arrayidx.i151, null
  br i1 %tobool72.not, label %if.end71.if.else79_crit_edge, label %if.end71.if.then73_crit_edge

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.end71.if.else79_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else79

if.then73:                                        ; preds = %if.end71.if.then73_crit_edge, %if.end66.if.then73_crit_edge
  %country.1168 = phi ptr [ %arrayidx.i151, %if.end71.if.then73_crit_edge ], [ %country.0197, %if.end66.if.then73_crit_edge ]
  %isoName = getelementptr inbounds %struct.country_code_to_enum_rd, ptr %country.1168, i32 0, i32 2
  %36 = ptrtoint ptr %isoName to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %isoName, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %reg, align 4
  %41 = load ptr, ptr %isoName, align 4
  %arrayidx76 = getelementptr i8, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx76, align 1
  br label %do.end87

if.else79:                                        ; preds = %if.end71.if.else79_crit_edge, %for.inc.i.if.else79_crit_edge
  %44 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 48, ptr %reg, align 4
  br label %do.end87

do.end87:                                         ; preds = %if.else79, %if.then73
  %.sink = phi i8 [ %43, %if.then73 ], [ 48, %if.else79 ]
  %arrayidx78 = getelementptr [2 x i8], ptr %reg, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink, ptr %arrayidx78, align 1
  %46 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %reg, align 4
  %conv91 = zext i8 %47 to i32
  %conv94 = zext i8 %.sink to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %conv91, i32 noundef %conv94) #13
  %48 = ptrtoint ptr %regpair to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regpair, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %conv101 = zext i16 %51 to i32
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %conv101) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %do.end63, %do.end42, %do.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end87 ], [ -22, %do.end63 ], [ -22, %do.end42 ], [ -22, %do.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath_regd_get_band_ctl(ptr nocapture noundef readonly %reg, i32 noundef %band) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regpair = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 6
  %0 = ptrtoint ptr %regpair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regpair, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %country_code = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %country_code to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %country_code, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %current_rd.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 4
  %4 = ptrtoint ptr %current_rd.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %current_rd.i, align 4
  %6 = and i16 %5, -16385
  %conv.i = zext i16 %6 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.not.i, label %is_wwr_sku.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

is_wwr_sku.exit:                                  ; preds = %land.lhs.true
  %and3.i = and i32 %conv.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %6)
  %cmp7.i = icmp eq i16 %6, 409
  %spec.select.i = or i1 %cmp7.i, %cmp4.i
  br i1 %spec.select.i, label %is_wwr_sku.exit.return_crit_edge, label %is_wwr_sku.exit.if.end_crit_edge

is_wwr_sku.exit.if.end_crit_edge:                 ; preds = %is_wwr_sku.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

is_wwr_sku.exit.return_crit_edge:                 ; preds = %is_wwr_sku.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %is_wwr_sku.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %current_rd.i25 = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 4
  %7 = ptrtoint ptr %current_rd.i25 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %current_rd.i25, align 4
  %9 = and i16 %8, -16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp6 = icmp eq i16 %9, 0
  br i1 %cmp6, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  %region = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 1
  %10 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %region, align 4
  %switch.tableidx = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 3
  br i1 %12, label %switch.lookup, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %13 = zext i32 %band to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %band, label %if.end11.return_crit_edge [
    i32 0, label %sw.bb12
    i32 1, label %sw.bb15
  ]

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb12:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %reg_2ghz_ctl = getelementptr inbounds %struct.reg_dmn_pair_mapping, ptr %1, i32 0, i32 2
  br label %return.sink.split

sw.bb15:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %reg_5ghz_ctl = getelementptr inbounds %struct.reg_dmn_pair_mapping, ptr %1, i32 0, i32 1
  br label %return.sink.split

switch.lookup:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ath_regd_get_band_ctl, i32 0, i32 %switch.tableidx
  br label %return.sink.split

return.sink.split:                                ; preds = %switch.lookup, %sw.bb15, %sw.bb12
  %switch.gep.sink = phi ptr [ %switch.gep, %switch.lookup ], [ %reg_5ghz_ctl, %sw.bb15 ], [ %reg_2ghz_ctl, %sw.bb12 ]
  %14 = ptrtoint ptr %switch.gep.sink to i32
  call void @__asan_load2_noabort(i32 %14)
  %switch.load = load i16, ptr %switch.gep.sink, align 2
  %phi.cast = zext i16 %switch.load to i32
  br label %return

return:                                           ; preds = %return.sink.split, %if.end11.return_crit_edge, %is_wwr_sku.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0.shrunk = phi i32 [ 224, %is_wwr_sku.exit.return_crit_edge ], [ 224, %entry.return_crit_edge ], [ 255, %if.end11.return_crit_edge ], [ %phi.cast, %return.sink.split ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reg_initiator_name(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_reg_apply_world_flags(ptr noundef %wiphy, i32 noundef %initiator, ptr nocapture noundef readonly %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regpair = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 6
  %0 = ptrtoint ptr %regpair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regpair, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %3, label %sw.default [
    i16 96, label %entry.sw.bb_crit_edge
    i16 99, label %entry.sw.bb_crit_edge13
    i16 102, label %entry.sw.bb_crit_edge14
    i16 103, label %entry.sw.bb_crit_edge15
    i16 108, label %entry.sw.bb_crit_edge16
    i16 104, label %sw.bb1
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16
  tail call fastcc void @ath_reg_apply_beaconing_flags(ptr noundef %wiphy, ptr noundef %reg, i32 noundef %initiator)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  tail call fastcc void @ath_reg_apply_beaconing_flags(ptr noundef %wiphy, ptr noundef %reg, i32 noundef %initiator)
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 53
  %5 = ptrtoint ptr %bands.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bands.i, align 16
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb1
  %7 = zext i32 %initiator to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %initiator, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %call.i.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef 2467000) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.i.ath_force_clear_no_ir_freq.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.ath_force_clear_no_ir_freq.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %center_freq.i.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %center_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq.i.i.i, align 4
  %mul.i3.i.i = mul i32 %9, 1000
  %call.i4.i.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %mul.i3.i.i) #8
  %cmp.i.i.i.i = icmp ugt ptr %call.i4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge, label %if.end.i.i.i

if.end.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %flags.i.i.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i4.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge

if.end.i.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  %flags3.i.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags3.i.i.i, align 4
  %and4.i.i.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then2.i.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge, label %if.then6.i.i.i

if.then2.i.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit.i

if.then6.i.i.i:                                   ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i.i.i = and i32 %13, -3
  %14 = ptrtoint ptr %flags3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and8.i.i.i, ptr %flags3.i.i.i, align 4
  br label %ath_force_clear_no_ir_freq.exit.i

ath_force_clear_no_ir_freq.exit.i:                ; preds = %if.then6.i.i.i, %if.then2.i.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge, %if.end.i.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge, %if.end.i.i.ath_force_clear_no_ir_freq.exit.i_crit_edge, %sw.bb.i.ath_force_clear_no_ir_freq.exit.i_crit_edge
  %call.i.i1.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef 2472000) #8
  %tobool.not.i2.i = icmp eq ptr %call.i.i1.i, null
  br i1 %tobool.not.i2.i, label %ath_force_clear_no_ir_freq.exit.i.sw.epilog_crit_edge, label %if.end.i7.i

ath_force_clear_no_ir_freq.exit.i.sw.epilog_crit_edge: ; preds = %ath_force_clear_no_ir_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i7.i:                                      ; preds = %ath_force_clear_no_ir_freq.exit.i
  %center_freq.i.i3.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i1.i, i32 0, i32 1
  %15 = ptrtoint ptr %center_freq.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %center_freq.i.i3.i, align 4
  %mul.i3.i4.i = mul i32 %16, 1000
  %call.i4.i5.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %mul.i3.i4.i) #8
  %cmp.i.i.i6.i = icmp ugt ptr %call.i4.i5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i6.i, label %if.end.i7.i.sw.epilog_crit_edge, label %if.end.i.i11.i

if.end.i7.i.sw.epilog_crit_edge:                  ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i11.i:                                   ; preds = %if.end.i7.i
  %flags.i.i8.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i4.i5.i, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i8.i, align 4
  %and.i.i9.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9.i)
  %tobool.not.i.i10.i = icmp eq i32 %and.i.i9.i, 0
  br i1 %tobool.not.i.i10.i, label %if.then2.i.i15.i, label %if.end.i.i11.i.sw.epilog_crit_edge

if.end.i.i11.i.sw.epilog_crit_edge:               ; preds = %if.end.i.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then2.i.i15.i:                                 ; preds = %if.end.i.i11.i
  %flags3.i.i12.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i1.i, i32 0, i32 4
  %19 = ptrtoint ptr %flags3.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags3.i.i12.i, align 4
  %and4.i.i13.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i13.i)
  %tobool5.not.i.i14.i = icmp eq i32 %and4.i.i13.i, 0
  br i1 %tobool5.not.i.i14.i, label %if.then2.i.i15.i.sw.epilog_crit_edge, label %if.then6.i.i17.i

if.then2.i.i15.i.sw.epilog_crit_edge:             ; preds = %if.then2.i.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6.i.i17.i:                                 ; preds = %if.then2.i.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i.i16.i = and i32 %20, -3
  %21 = ptrtoint ptr %flags3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and8.i.i16.i, ptr %flags3.i.i12.i, align 4
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %if.end.i
  %call.i.i19.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef 2467000) #8
  %tobool.not.i20.i = icmp eq ptr %call.i.i19.i, null
  br i1 %tobool.not.i20.i, label %sw.bb1.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge, label %if.end.i25.i

sw.bb1.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit36.i

if.end.i25.i:                                     ; preds = %sw.bb1.i
  %center_freq.i.i21.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i19.i, i32 0, i32 1
  %22 = ptrtoint ptr %center_freq.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq.i.i21.i, align 4
  %mul.i3.i22.i = mul i32 %23, 1000
  %call.i4.i23.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %mul.i3.i22.i) #8
  %cmp.i.i.i24.i = icmp ugt ptr %call.i4.i23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i24.i, label %if.end.i25.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge, label %if.end.i.i29.i

if.end.i25.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge: ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit36.i

if.end.i.i29.i:                                   ; preds = %if.end.i25.i
  %flags.i.i26.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i4.i23.i, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i26.i, align 4
  %and.i.i27.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27.i)
  %tobool.not.i.i28.i = icmp eq i32 %and.i.i27.i, 0
  br i1 %tobool.not.i.i28.i, label %if.then2.i.i33.i, label %if.end.i.i29.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge

if.end.i.i29.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge: ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit36.i

if.then2.i.i33.i:                                 ; preds = %if.end.i.i29.i
  %flags3.i.i30.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i19.i, i32 0, i32 4
  %26 = ptrtoint ptr %flags3.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags3.i.i30.i, align 4
  %and4.i.i31.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i31.i)
  %tobool5.not.i.i32.i = icmp eq i32 %and4.i.i31.i, 0
  br i1 %tobool5.not.i.i32.i, label %if.then2.i.i33.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge, label %if.then6.i.i35.i

if.then2.i.i33.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge: ; preds = %if.then2.i.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_clear_no_ir_freq.exit36.i

if.then6.i.i35.i:                                 ; preds = %if.then2.i.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i.i34.i = and i32 %27, -3
  %28 = ptrtoint ptr %flags3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and8.i.i34.i, ptr %flags3.i.i30.i, align 4
  br label %ath_force_clear_no_ir_freq.exit36.i

ath_force_clear_no_ir_freq.exit36.i:              ; preds = %if.then6.i.i35.i, %if.then2.i.i33.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge, %if.end.i.i29.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge, %if.end.i25.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge, %sw.bb1.i.ath_force_clear_no_ir_freq.exit36.i_crit_edge
  %call.i.i37.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef 2472000) #8
  %tobool.not.i38.i = icmp eq ptr %call.i.i37.i, null
  br i1 %tobool.not.i38.i, label %ath_force_clear_no_ir_freq.exit36.i.sw.epilog_crit_edge, label %if.end.i43.i

ath_force_clear_no_ir_freq.exit36.i.sw.epilog_crit_edge: ; preds = %ath_force_clear_no_ir_freq.exit36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i43.i:                                     ; preds = %ath_force_clear_no_ir_freq.exit36.i
  %center_freq.i.i39.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i37.i, i32 0, i32 1
  %29 = ptrtoint ptr %center_freq.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %center_freq.i.i39.i, align 4
  %mul.i3.i40.i = mul i32 %30, 1000
  %call.i4.i41.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %mul.i3.i40.i) #8
  %cmp.i.i.i42.i = icmp ugt ptr %call.i4.i41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i42.i, label %if.end.i43.i.sw.epilog_crit_edge, label %if.end.i.i47.i

if.end.i43.i.sw.epilog_crit_edge:                 ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i47.i:                                   ; preds = %if.end.i43.i
  %flags.i.i44.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i4.i41.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i44.i, align 4
  %and.i.i45.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45.i)
  %tobool.not.i.i46.i = icmp eq i32 %and.i.i45.i, 0
  br i1 %tobool.not.i.i46.i, label %if.then2.i.i51.i, label %if.end.i.i47.i.sw.epilog_crit_edge

if.end.i.i47.i.sw.epilog_crit_edge:               ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then2.i.i51.i:                                 ; preds = %if.end.i.i47.i
  %flags3.i.i48.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i37.i, i32 0, i32 4
  %33 = ptrtoint ptr %flags3.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags3.i.i48.i, align 4
  %and4.i.i49.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i49.i)
  %tobool5.not.i.i50.i = icmp eq i32 %and4.i.i49.i, 0
  br i1 %tobool5.not.i.i50.i, label %if.then2.i.i51.i.sw.epilog_crit_edge, label %if.then6.i.i53.i

if.then2.i.i51.i.sw.epilog_crit_edge:             ; preds = %if.then2.i.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6.i.i53.i:                                 ; preds = %if.then2.i.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i.i52.i = and i32 %34, -3
  %35 = ptrtoint ptr %flags3.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and8.i.i52.i, ptr %flags3.i.i48.i, align 4
  br label %sw.epilog

sw.default.i:                                     ; preds = %if.end.i
  %call.i.i55.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef 2467000) #8
  %tobool.not.i56.i = icmp eq ptr %call.i.i55.i, null
  br i1 %tobool.not.i56.i, label %sw.default.i.ath_force_no_ir_freq.exit.i_crit_edge, label %if.end.i58.i

sw.default.i.ath_force_no_ir_freq.exit.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_force_no_ir_freq.exit.i

if.end.i58.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i57.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i55.i, i32 0, i32 4
  %36 = ptrtoint ptr %flags.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i57.i, align 4
  %or.i.i.i = or i32 %37, 2
  store i32 %or.i.i.i, ptr %flags.i.i57.i, align 4
  br label %ath_force_no_ir_freq.exit.i

ath_force_no_ir_freq.exit.i:                      ; preds = %if.end.i58.i, %sw.default.i.ath_force_no_ir_freq.exit.i_crit_edge
  %call.i.i59.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %wiphy, i32 noundef 2472000) #8
  %tobool.not.i60.i = icmp eq ptr %call.i.i59.i, null
  br i1 %tobool.not.i60.i, label %ath_force_no_ir_freq.exit.i.sw.epilog_crit_edge, label %if.end.i63.i

ath_force_no_ir_freq.exit.i.sw.epilog_crit_edge:  ; preds = %ath_force_no_ir_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i63.i:                                     ; preds = %ath_force_no_ir_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i61.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i.i59.i, i32 0, i32 4
  %38 = ptrtoint ptr %flags.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i.i61.i, align 4
  %or.i.i62.i = or i32 %39, 2
  store i32 %or.i.i62.i, ptr %flags.i.i61.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath_reg_apply_beaconing_flags(ptr noundef %wiphy, ptr noundef %reg, i32 noundef %initiator)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.i63.i, %ath_force_no_ir_freq.exit.i.sw.epilog_crit_edge, %if.then6.i.i53.i, %if.then2.i.i51.i.sw.epilog_crit_edge, %if.end.i.i47.i.sw.epilog_crit_edge, %if.end.i43.i.sw.epilog_crit_edge, %ath_force_clear_no_ir_freq.exit36.i.sw.epilog_crit_edge, %if.then6.i.i17.i, %if.then2.i.i15.i.sw.epilog_crit_edge, %if.end.i.i11.i.sw.epilog_crit_edge, %if.end.i7.i.sw.epilog_crit_edge, %ath_force_clear_no_ir_freq.exit.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_reg_apply_beaconing_flags(ptr noundef %wiphy, ptr nocapture noundef readonly %reg, i32 noundef %initiator) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %country_code.i.i = getelementptr inbounds %struct.ath_regulatory, ptr %reg, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc7.for.body_crit_edge, %entry
  %band.022 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 %band.022
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc7_crit_edge, label %for.cond3.preheader

for.body.for.inc7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc7

for.cond3.preheader:                              ; preds = %for.body
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp418.not = icmp eq i32 %3, 0
  br i1 %cmp418.not, label %for.cond3.preheader.for.inc7_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.for.inc7_crit_edge:           ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc7

for.body5:                                        ; preds = %__ath_reg_apply_beaconing_flags.exit.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %i.019 = phi i32 [ %inc, %__ath_reg_apply_beaconing_flags.exit.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %center_freq.i = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.019, i32 1
  %6 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq.i, align 4
  %conv.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %country_code.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %country_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 356, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 356
  %10 = add i16 %conv.i, -5500
  call void @__sanitizer_cov_trace_const_cmp2(i16 201, i16 %10)
  %11 = icmp ult i16 %10, 201
  %12 = add i16 %conv.i, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %12)
  %13 = icmp ult i16 %12, 441
  %retval.0.i.i = select i1 %cmp.i.i, i1 %11, i1 %13
  br i1 %retval.0.i.i, label %for.body5.__ath_reg_apply_beaconing_flags.exit_crit_edge, label %lor.lhs.false.i

for.body5.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

lor.lhs.false.i:                                  ; preds = %for.body5
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.019, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.__ath_reg_apply_beaconing_flags.exit_crit_edge

lor.lhs.false.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %16 = zext i32 %initiator to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %initiator, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %mul.i.i = mul i32 %7, 1000
  %call.i.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %mul.i.i) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sw.bb.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, label %if.end.i.i

sw.bb.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %flags.i.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end.i.i.__ath_reg_apply_beaconing_flags.exit_crit_edge

if.end.i.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and4.i.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then2.i.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, label %if.then2.i.i.sw.epilog.sink.split.i_crit_edge

if.then2.i.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.then2.i.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

sw.bb2.i:                                         ; preds = %if.end.i
  %mul.i19.i = mul i32 %7, 1000
  %call.i20.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %mul.i19.i) #8
  %cmp.i.i21.i = icmp ugt ptr %call.i20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i21.i, label %sw.bb2.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, label %if.end.i25.i

sw.bb2.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

if.end.i25.i:                                     ; preds = %sw.bb2.i
  %flags.i22.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i20.i, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i22.i, align 4
  %and.i23.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %tobool.not.i24.i = icmp eq i32 %and.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.then2.i29.i, label %if.end.i25.i.__ath_reg_apply_beaconing_flags.exit_crit_edge

if.end.i25.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

if.then2.i29.i:                                   ; preds = %if.end.i25.i
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and4.i27.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i27.i)
  %tobool5.not.i28.i = icmp eq i32 %and4.i27.i, 0
  br i1 %tobool5.not.i28.i, label %if.then2.i29.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, label %if.then2.i29.i.sw.epilog.sink.split.i_crit_edge

if.then2.i29.i.sw.epilog.sink.split.i_crit_edge:  ; preds = %if.then2.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.then2.i29.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %if.then2.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

sw.default.i:                                     ; preds = %if.end.i
  %beacon_found.i = getelementptr %struct.ieee80211_channel, ptr %5, i32 %i.019, i32 8
  %25 = ptrtoint ptr %beacon_found.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %beacon_found.i, align 4, !range !360
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool6.not.i = icmp eq i8 %26, 0
  br i1 %tobool6.not.i, label %sw.default.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, label %sw.default.i.sw.epilog.sink.split.i_crit_edge

sw.default.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.default.i.__ath_reg_apply_beaconing_flags.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ath_reg_apply_beaconing_flags.exit

sw.epilog.sink.split.i:                           ; preds = %sw.default.i.sw.epilog.sink.split.i_crit_edge, %if.then2.i29.i.sw.epilog.sink.split.i_crit_edge, %if.then2.i.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %20, %if.then2.i.i.sw.epilog.sink.split.i_crit_edge ], [ %24, %if.then2.i29.i.sw.epilog.sink.split.i_crit_edge ], [ %15, %sw.default.i.sw.epilog.sink.split.i_crit_edge ]
  %and8.i30.i = and i32 %.sink.i, -3
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and8.i30.i, ptr %flags.i, align 4
  br label %__ath_reg_apply_beaconing_flags.exit

__ath_reg_apply_beaconing_flags.exit:             ; preds = %sw.epilog.sink.split.i, %sw.default.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %if.then2.i29.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %if.end.i25.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %sw.bb2.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %if.then2.i.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %if.end.i.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %sw.bb.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %lor.lhs.false.i.__ath_reg_apply_beaconing_flags.exit_crit_edge, %for.body5.__ath_reg_apply_beaconing_flags.exit_crit_edge
  %inc = add nuw i32 %i.019, 1
  %28 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_channels, align 4
  %cmp4 = icmp ult i32 %inc, %29
  br i1 %cmp4, label %__ath_reg_apply_beaconing_flags.exit.for.body5_crit_edge, label %__ath_reg_apply_beaconing_flags.exit.for.inc7_crit_edge

__ath_reg_apply_beaconing_flags.exit.for.inc7_crit_edge: ; preds = %__ath_reg_apply_beaconing_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc7

__ath_reg_apply_beaconing_flags.exit.for.body5_crit_edge: ; preds = %__ath_reg_apply_beaconing_flags.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.inc7:                                         ; preds = %__ath_reg_apply_beaconing_flags.exit.for.inc7_crit_edge, %for.cond3.preheader.for.inc7_crit_edge, %for.body.for.inc7_crit_edge
  %inc8 = add nuw nsw i32 %band.022, 1
  %exitcond.not = icmp eq i32 %inc8, 6
  br i1 %exitcond.not, label %for.end9, label %for.inc7.for.body_crit_edge

for.inc7.for.body_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end9:                                         ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @freq_reg_info(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !343, !345, !347, !349}
!llvm.module.flags = !{!351, !352, !353, !354, !355, !356, !357, !358}
!llvm.ident = !{!359}

!0 = !{ptr @__ksymtab_ath_is_world_regd, !1, !"__ksymtab_ath_is_world_regd", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/regd.c", i32 214, i32 1}
!2 = !{ptr @__ksymtab_ath_is_49ghz_allowed, !3, !"__ksymtab_ath_is_49ghz_allowed", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/regd.c", i32 254, i32 1}
!4 = !{ptr @__ksymtab_ath_regd_find_country_by_name, !5, !"__ksymtab_ath_regd_find_country_by_name", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/regd.c", i32 469, i32 1}
!6 = !{ptr @__ksymtab_ath_reg_notifier_apply, !7, !"__ksymtab_ath_reg_notifier_apply", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/regd.c", i32 549, i32 1}
!8 = !{ptr @__ksymtab_ath_regd_init, !9, !"__ksymtab_ath_regd_init", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/regd.c", i32 779, i32 1}
!10 = !{ptr @__ksymtab_ath_regd_get_band_ctl, !11, !"__ksymtab_ath_regd_get_band_ctl", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/regd.c", i32 812, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 302, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 303, i32 28}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 304, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 305, i32 30}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 306, i32 31}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 307, i32 30}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 308, i32 28}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 309, i32 31}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 311, i32 30}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 312, i32 33}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 313, i32 29}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 314, i32 29}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 315, i32 32}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 316, i32 30}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 317, i32 30}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 318, i32 30}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 319, i32 31}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 320, i32 28}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 321, i32 28}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 322, i32 29}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 323, i32 34}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 324, i32 28}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 325, i32 39}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 326, i32 31}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 327, i32 31}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 328, i32 27}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 330, i32 27}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 331, i32 27}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 333, i32 32}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 334, i32 30}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 335, i32 29}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 336, i32 28}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 337, i32 30}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 338, i32 39}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 339, i32 29}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 340, i32 28}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 341, i32 33}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 342, i32 30}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 343, i32 30}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 344, i32 29}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 345, i32 30}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 346, i32 30}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 347, i32 29}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 348, i32 32}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 349, i32 28}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 350, i32 25}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 351, i32 30}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 352, i32 28}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 353, i32 30}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 354, i32 31}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 355, i32 30}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 356, i32 30}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 357, i32 27}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 358, i32 32}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 359, i32 26}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 360, i32 30}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 361, i32 29}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 362, i32 28}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 363, i32 29}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 365, i32 26}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 424, i32 29}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 425, i32 33}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 426, i32 27}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 427, i32 33}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 428, i32 31}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 429, i32 32}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 430, i32 32}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 431, i32 33}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 432, i32 29}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 433, i32 29}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 434, i32 30}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 435, i32 36}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 436, i32 32}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 437, i32 33}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 438, i32 27}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 439, i32 32}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 440, i32 30}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 441, i32 28}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 442, i32 32}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 443, i32 27}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 444, i32 29}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 445, i32 33}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 446, i32 29}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 447, i32 27}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 448, i32 34}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 449, i32 43}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 450, i32 33}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 451, i32 30}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 452, i32 29}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 453, i32 26}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 454, i32 31}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 455, i32 27}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 456, i32 38}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 457, i32 30}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 458, i32 26}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 459, i32 33}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 460, i32 29}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 461, i32 31}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 462, i32 32}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 463, i32 27}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 464, i32 30}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 465, i32 29}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 466, i32 35}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 467, i32 29}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 468, i32 40}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 469, i32 31}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 470, i32 31}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 471, i32 31}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 472, i32 34}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 473, i32 28}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 474, i32 31}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 475, i32 29}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 476, i32 34}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 477, i32 28}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 478, i32 27}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 479, i32 30}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 480, i32 30}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 481, i32 39}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 482, i32 30}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 483, i32 29}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 484, i32 28}
!254 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 485, i32 30}
!256 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 486, i32 26}
!258 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 487, i32 37}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 488, i32 34}
!262 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 494, i32 40}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 495, i32 29}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 496, i32 31}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 497, i32 31}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 498, i32 31}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 499, i32 28}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 500, i32 31}
!276 = !{ptr @allCountries, !277, !"allCountries", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 301, i32 39}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/regd.c", i32 502, i32 2}
!280 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @ath_reg_dyn_country._entry, !279, !"_entry", i1 false, i1 false}
!283 = !{ptr @ath_reg_dyn_country._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/regd.c", i32 693, i32 2}
!286 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @__ath_regd_init._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @__ath_regd_init._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/regd.c", i32 696, i32 3}
!291 = !{ptr @__ath_regd_init._entry.137, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @__ath_regd_init._entry_ptr.139, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.141, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ath/regd.c", i32 705, i32 3}
!295 = !{ptr @__ath_regd_init._entry.140, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @__ath_regd_init._entry_ptr.142, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ath/regd.c", i32 713, i32 3}
!299 = !{ptr @__ath_regd_init._entry.143, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @__ath_regd_init._entry_ptr.145, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/regd.c", i32 717, i32 4}
!303 = !{ptr @__ath_regd_init._entry.146, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @__ath_regd_init._entry_ptr.148, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ath/regd.c", i32 724, i32 4}
!307 = !{ptr @__ath_regd_init._entry.149, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @__ath_regd_init._entry_ptr.151, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.153, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/regd.c", i32 733, i32 3}
!311 = !{ptr @__ath_regd_init._entry.152, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @__ath_regd_init._entry_ptr.154, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ath/regd.c", i32 749, i32 2}
!315 = !{ptr @__ath_regd_init._entry.155, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @__ath_regd_init._entry_ptr.157, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.159, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ath/regd.c", i32 751, i32 2}
!319 = !{ptr @__ath_regd_init._entry.158, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @__ath_regd_init._entry_ptr.160, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/regd.c", i32 679, i32 2}
!323 = !{ptr @.str.162, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @ath_regd_sanitize._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @ath_regd_sanitize._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.163, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/ath/regd.c", i32 559, i32 3}
!328 = !{ptr @.str.164, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @ath_regd_is_eeprom_valid._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @ath_regd_is_eeprom_valid._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.166, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ath/regd.c", i32 568, i32 4}
!333 = !{ptr @ath_regd_is_eeprom_valid._entry.165, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @ath_regd_is_eeprom_valid._entry_ptr.167, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.169, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/regd.c", i32 574, i32 2}
!337 = !{ptr @ath_regd_is_eeprom_valid._entry.168, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @ath_regd_is_eeprom_valid._entry_ptr.170, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @regDomainPairs, !340, !"regDomainPairs", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ath/regd_common.h", i32 165, i32 36}
!341 = !{ptr @ath_world_regdom_60_61_62, !342, !"ath_world_regdom_60_61_62", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ath/regd.c", i32 66, i32 41}
!343 = !{ptr @ath_world_regdom_63_65, !344, !"ath_world_regdom_63_65", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/regd.c", i32 76, i32 41}
!345 = !{ptr @ath_world_regdom_64, !346, !"ath_world_regdom_64", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ath/regd.c", i32 87, i32 41}
!347 = !{ptr @ath_world_regdom_66_69, !348, !"ath_world_regdom_66_69", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/regd.c", i32 97, i32 41}
!349 = !{ptr @ath_world_regdom_67_68_6A_6C, !350, !"ath_world_regdom_67_68_6A_6C", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ath/regd.c", i32 107, i32 41}
!351 = !{i32 1, !"wchar_size", i32 2}
!352 = !{i32 1, !"min_enum_size", i32 4}
!353 = !{i32 8, !"branch-target-enforcement", i32 0}
!354 = !{i32 8, !"sign-return-address", i32 0}
!355 = !{i32 8, !"sign-return-address-all", i32 0}
!356 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!357 = !{i32 7, !"uwtable", i32 1}
!358 = !{i32 7, !"frame-pointer", i32 2}
!359 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!360 = !{i8 0, i8 2}
