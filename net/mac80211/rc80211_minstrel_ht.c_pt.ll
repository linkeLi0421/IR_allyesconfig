; ModuleID = '/llk/IR_all_yes/net/mac80211/rc80211_minstrel_ht.c_pt.bc'
source_filename = "../net/mac80211/rc80211_minstrel_ht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.mcs_group = type { i16, i8, i8, i8, [10 x i16] }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.minstrel_ht_sta = type { ptr, i32, i32, i32, [4 x i16], i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, [3 x %struct.minstrel_sample_category], [42 x i16], [42 x %struct.minstrel_mcs_group_data] }
%struct.minstrel_sample_category = type { i8, [5 x i16], [5 x i16] }
%struct.minstrel_mcs_group_data = type { i8, i8, [4 x i16], i16, [10 x %struct.minstrel_rate_stats] }
%struct.minstrel_rate_stats = type { i16, i16, i16, i16, i32, i32, i16, i16, i8, i8, i8 }
%struct.minstrel_priv = type { ptr, i8, i32, i32, i32, i32, i32, [4 x i8], [6 x [8 x i8]], i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.132 }
%union.anon.132 = type { %struct.anon.136, [32 x i8] }
%struct.anon.136 = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.128] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.128 = type { i8, i8, i8, i8, i16 }

@__param_str_minstrel_vht_only = internal constant [27 x i8] c"mac80211.minstrel_vht_only\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@minstrel_vht_only = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_minstrel_vht_only = internal constant %struct.kernel_param { ptr @__param_str_minstrel_vht_only, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @minstrel_vht_only } }, section "__param", align 4
@__UNIQUE_ID_minstrel_vht_onlytype817 = internal constant [41 x i8] c"mac80211.parmtype=minstrel_vht_only:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_minstrel_vht_only818 = internal constant [81 x i8] c"mac80211.parm=minstrel_vht_only:Use only VHT rates when VHT is supported by sta.\00", section ".modinfo", align 1
@minstrel_mcs_groups = dso_local constant { [42 x %struct.mcs_group], [284 x i8] } { [42 x %struct.mcs_group] [%struct.mcs_group { i16 8, i8 1, i8 5, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11539, i16 7695, i16 5773, i16 5132, i16 4617, i16 0, i16 0] }, %struct.mcs_group { i16 8, i8 2, i8 4, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11546, i16 7703, i16 5781, i16 5140, i16 4625, i16 0, i16 0] }, %struct.mcs_group { i16 8, i8 3, i8 3, i8 0, [10 x i16] [i16 -3974, i16 30781, i16 20531, i16 15406, i16 10281, i16 7718, i16 6843, i16 6156, i16 0, i16 0] }, %struct.mcs_group { i16 8, i8 4, i8 3, i8 0, [10 x i16] [i16 -19380, i16 23093, i16 15406, i16 11562, i16 7718, i16 5781, i16 5156, i16 4625, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 1, i8 5, i8 0, [10 x i16] [i16 -23994, i16 20771, i16 13853, i16 10386, i16 6927, i16 5197, i16 4621, i16 4157, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 2, i8 4, i8 0, [10 x i16] [i16 -23993, i16 20773, i16 13854, i16 10395, i16 6935, i16 5206, i16 4629, i16 4165, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 3, i8 3, i8 0, [10 x i16] [i16 -10124, i16 27709, i16 18484, i16 13871, i16 9259, i16 6953, i16 6165, i16 5546, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 4, i8 3, i8 0, [10 x i16] [i16 -23990, i16 20790, i16 13871, i16 10412, i16 6953, i16 5209, i16 4646, i16 4168, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 1, i8 4, i8 1, [10 x i16] [i16 -21083, i16 22234, i16 14828, i16 11125, i16 7421, i16 5562, i16 4953, i16 4453, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 2, i8 3, i8 1, [10 x i16] [i16 -21068, i16 22250, i16 14843, i16 11125, i16 7437, i16 5562, i16 4968, i16 4468, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 3, i8 2, i8 1, [10 x i16] [i16 -6224, i16 29687, i16 19812, i16 14875, i16 9937, i16 7437, i16 6625, i16 5937, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 4, i8 2, i8 1, [10 x i16] [i16 -21036, i16 22250, i16 14875, i16 11125, i16 7437, i16 5562, i16 5000, i16 4500, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 1, i8 4, i8 1, [10 x i16] [i16 -25526, i16 20014, i16 13348, i16 10015, i16 6682, i16 5009, i16 4460, i16 4010, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 2, i8 3, i8 1, [10 x i16] [i16 -25508, i16 20031, i16 13365, i16 10018, i16 6700, i16 5012, i16 4478, i16 4028, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 3, i8 2, i8 1, [10 x i16] [i16 -12143, i16 26731, i16 17843, i16 13400, i16 8956, i16 6706, i16 5975, i16 5356, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 4, i8 2, i8 1, [10 x i16] [i16 -25474, i16 20037, i16 13400, i16 10025, i16 6706, i16 5018, i16 4512, i16 4062, i16 0, i16 0] }, %struct.mcs_group { i16 0, i8 1, i8 8, i8 0, [10 x i16] [i16 -27122, i16 19601, i16 7628, i16 4207, i16 -27497, i16 19226, i16 7253, i16 3832, i16 0, i16 0] }, %struct.mcs_group { i16 0, i8 1, i8 5, i8 0, [10 x i16] [i16 -14286, i16 -31036, i16 26125, i16 17750, i16 13625, i16 9375, i16 7375, i16 6625, i16 0, i16 0] }, %struct.mcs_group { i16 256, i8 1, i8 5, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11539, i16 7695, i16 5773, i16 5132, i16 4617, i16 3851, i16 3468] }, %struct.mcs_group { i16 256, i8 2, i8 4, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11546, i16 7703, i16 5781, i16 5140, i16 4625, i16 3859, i16 3468] }, %struct.mcs_group { i16 256, i8 3, i8 3, i8 0, [10 x i16] [i16 -3974, i16 30781, i16 20531, i16 15406, i16 10281, i16 7718, i16 6843, i16 6156, i16 5156, i16 4625] }, %struct.mcs_group { i16 256, i8 4, i8 3, i8 0, [10 x i16] [i16 -19380, i16 23093, i16 15406, i16 11562, i16 7718, i16 5781, i16 5156, i16 4625, i16 3875, i16 3468] }, %struct.mcs_group { i16 384, i8 1, i8 5, i8 0, [10 x i16] [i16 -23994, i16 20771, i16 13853, i16 10386, i16 6927, i16 5197, i16 4621, i16 4157, i16 3467, i16 3123] }, %struct.mcs_group { i16 384, i8 2, i8 4, i8 0, [10 x i16] [i16 -23993, i16 20773, i16 13854, i16 10395, i16 6935, i16 5206, i16 4629, i16 4165, i16 3476, i16 3125] }, %struct.mcs_group { i16 384, i8 3, i8 3, i8 0, [10 x i16] [i16 -10124, i16 27709, i16 18484, i16 13871, i16 9259, i16 6953, i16 6165, i16 5546, i16 4646, i16 4168] }, %struct.mcs_group { i16 384, i8 4, i8 3, i8 0, [10 x i16] [i16 -23990, i16 20790, i16 13871, i16 10412, i16 6953, i16 5209, i16 4646, i16 4168, i16 3493, i16 3128] }, %struct.mcs_group { i16 288, i8 1, i8 4, i8 1, [10 x i16] [i16 -21083, i16 22234, i16 14828, i16 11125, i16 7421, i16 5562, i16 4953, i16 4453, i16 3718, i16 3343] }, %struct.mcs_group { i16 288, i8 2, i8 3, i8 1, [10 x i16] [i16 -21068, i16 22250, i16 14843, i16 11125, i16 7437, i16 5562, i16 4968, i16 4468, i16 3718, i16 3343] }, %struct.mcs_group { i16 288, i8 3, i8 2, i8 1, [10 x i16] [i16 -6224, i16 29687, i16 19812, i16 14875, i16 9937, i16 7437, i16 6625, i16 5937, i16 5000, i16 4500] }, %struct.mcs_group { i16 288, i8 4, i8 2, i8 1, [10 x i16] [i16 -21036, i16 22250, i16 14875, i16 11125, i16 7437, i16 5562, i16 5000, i16 4500, i16 3750, i16 3375] }, %struct.mcs_group { i16 416, i8 1, i8 4, i8 1, [10 x i16] [i16 -25526, i16 20014, i16 13348, i16 10015, i16 6682, i16 5009, i16 4460, i16 4010, i16 3350, i16 3012] }, %struct.mcs_group { i16 416, i8 2, i8 3, i8 1, [10 x i16] [i16 -25508, i16 20031, i16 13365, i16 10018, i16 6700, i16 5012, i16 4478, i16 4028, i16 3353, i16 3015] }, %struct.mcs_group { i16 416, i8 3, i8 2, i8 1, [10 x i16] [i16 -12143, i16 26731, i16 17843, i16 13400, i16 8956, i16 6706, i16 5975, i16 5356, i16 4512, i16 4062] }, %struct.mcs_group { i16 416, i8 4, i8 2, i8 1, [10 x i16] [i16 -25474, i16 20037, i16 13400, i16 10025, i16 6706, i16 5018, i16 4512, i16 4062, i16 3387, i16 3050] }, %struct.mcs_group { i16 768, i8 1, i8 3, i8 2, [10 x i16] [i16 -24505, i16 20531, i16 13687, i16 10281, i16 6843, i16 5156, i16 4562, i16 4125, i16 3437, i16 3093] }, %struct.mcs_group { i16 768, i8 2, i8 2, i8 2, [10 x i16] [i16 -24474, i16 20562, i16 13687, i16 10312, i16 6875, i16 5187, i16 4562, i16 4125, i16 3437, i16 3125] }, %struct.mcs_group { i16 768, i8 3, i8 1, i8 2, [10 x i16] [i16 -10786, i16 27375, i16 18250, i16 13750, i16 9125, i16 6875, i16 6125, i16 5500, i16 4625, i16 4125] }, %struct.mcs_group { i16 768, i8 4, i8 1, i8 2, [10 x i16] [i16 -24411, i16 20625, i16 13750, i16 10375, i16 6875, i16 5250, i16 4625, i16 4125, i16 3500, i16 3125] }, %struct.mcs_group { i16 896, i8 1, i8 3, i8 2, [10 x i16] [i16 -28602, i16 18484, i16 12325, i16 9259, i16 6165, i16 4646, i16 4112, i16 3718, i16 3100, i16 2790] }, %struct.mcs_group { i16 896, i8 2, i8 2, i8 2, [10 x i16] [i16 -28568, i16 18518, i16 12331, i16 9293, i16 6200, i16 4681, i16 4118, i16 3725, i16 3106, i16 2825] }, %struct.mcs_group { i16 896, i8 3, i8 1, i8 2, [10 x i16] [i16 -16236, i16 24662, i16 16450, i16 12400, i16 8237, i16 6212, i16 5537, i16 4975, i16 4187, i16 3737] }, %struct.mcs_group { i16 896, i8 4, i8 1, i8 2, [10 x i16] [i16 -28499, i16 18587, i16 12400, i16 9362, i16 6212, i16 4750, i16 4187, i16 3737, i16 3175, i16 2837] }], [284 x i8] zeroinitializer }, align 32
@minstrel_cck_bitrates = dso_local constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 10, i16 20, i16 55, i16 110], [24 x i8] zeroinitializer }, align 32
@minstrel_ofdm_bitrates = dso_local constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 60, i16 90, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540], [16 x i8] zeroinitializer }, align 32
@mac80211_minstrel_ht = internal constant { %struct.rate_control_ops, [40 x i8] } { %struct.rate_control_ops { i32 2, ptr @.str, ptr @minstrel_ht_alloc, ptr @minstrel_ht_add_debugfs, ptr @minstrel_ht_free, ptr @minstrel_ht_alloc_sta, ptr @minstrel_ht_rate_init, ptr @minstrel_ht_rate_update, ptr @minstrel_ht_free_sta, ptr @minstrel_ht_tx_status, ptr null, ptr @minstrel_ht_get_rate, ptr @minstrel_ht_add_sta_debugfs, ptr @minstrel_ht_get_expected_throughput }, [40 x i8] zeroinitializer }, align 32
@sample_table = internal unnamed_addr global [10 x [10 x i8]] zeroinitializer, section ".data..read_mostly", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"minstrel_ht\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fixed_rate_idx\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/mac80211/rc80211_minstrel_ht.c\00", [61 x i8] zeroinitializer }, align 32
@rate_lowest_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@minstrel_sample_seq = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\00\01\00\02", [26 x i8] zeroinitializer }, align 32
@switch.table.minstrel_ht_update_caps = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 64, i16 0, i16 0, i16 512, i16 64], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 10, i64 20, i64 55, i64 110]
@__sancov_gen_cov_switch_values.4 = internal global [10 x i64] [i64 8, i64 16, i64 60, i64 90, i64 120, i64 180, i64 240, i64 360, i64 480, i64 540]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"minstrel_vht_only\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 196, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"minstrel_mcs_groups\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 209, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"minstrel_cck_bitrates\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 264, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"minstrel_ofdm_bitrates\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 265, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"mac80211_minstrel_ht\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1883, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1884, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1856, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1675, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 6355, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"minstrel_sample_seq\00", align 1
@___asan_gen_.49 = private constant [38 x i8] c"../net/mac80211/rc80211_minstrel_ht.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 267, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [37 x i8] c"switch.table.minstrel_ht_update_caps\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_minstrel_vht_only818, ptr @__UNIQUE_ID_minstrel_vht_onlytype817, ptr @__param_minstrel_vht_only, ptr @minstrel_vht_only, ptr @minstrel_mcs_groups, ptr @minstrel_cck_bitrates, ptr @minstrel_ofdm_bitrates, ptr @mac80211_minstrel_ht, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @minstrel_sample_seq, ptr @switch.table.minstrel_ht_update_caps], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minstrel_vht_only to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minstrel_mcs_groups to i32), i32 1092, i32 1376, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minstrel_cck_bitrates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minstrel_ofdm_bitrates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac80211_minstrel_ht to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minstrel_sample_seq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.minstrel_ht_update_caps to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @minstrel_ht_get_tp_avg(ptr nocapture noundef readonly %mi, i32 noundef %group, i32 noundef %rate, i32 noundef %prob_avg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %overhead1 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 7
  %0 = ptrtoint ptr %overhead1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overhead1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 409, i32 %prob_avg)
  %cmp = icmp slt i32 %prob_avg, 409
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i32 %group, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %overhead_legacy = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 9
  %4 = ptrtoint ptr %overhead_legacy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overhead_legacy, align 4
  br label %if.end4

if.else:                                          ; preds = %if.end
  %avg_ampdu_len.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 3
  %6 = ptrtoint ptr %avg_ampdu_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avg_ampdu_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end13.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %7, 12
  br label %if.end4

do.end13.i:                                       ; preds = %if.else
  %max_tp_rate.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %8 = ptrtoint ptr %max_tp_rate.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_tp_rate.i, align 4
  %10 = and i16 %9, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %10)
  %11 = icmp eq i16 %10, 256
  br i1 %11, label %do.end13.i.if.end4_crit_edge, label %if.end16.i

do.end13.i.if.end4_crit_edge:                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end16.i:                                       ; preds = %do.end13.i
  %conv19.i = zext i16 %9 to i32
  %and.i.i = lshr i32 %conv19.i, 4
  %and30.i.i = and i32 %conv19.i, 15
  %arrayidx32.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i, i32 4, i32 %and30.i.i
  %12 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx32.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %shift.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i, i32 2
  %14 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift.i.i, align 1
  %conv33.i.i = zext i8 %15 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv33.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i)
  %cmp.i = icmp sgt i32 %shl.i.i, 400000
  br i1 %cmp.i, label %if.end16.i.if.end4_crit_edge, label %if.end23.i

if.end16.i.if.end4_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end23.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i)
  %cmp24.i = icmp sgt i32 %shl.i.i, 250000
  br i1 %cmp24.i, label %if.end23.i.if.end4_crit_edge, label %if.end27.i

if.end23.i.if.end4_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end27.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i)
  %cmp28.i = icmp sgt i32 %shl.i.i, 150000
  %..i = select i1 %cmp28.i, i32 8, i32 16
  br label %if.end4

if.end4:                                          ; preds = %if.end27.i, %if.end23.i.if.end4_crit_edge, %if.end16.i.if.end4_crit_edge, %do.end13.i.if.end4_crit_edge, %if.then.i, %if.then2
  %overhead.0 = phi i32 [ %5, %if.then2 ], [ %1, %if.then.i ], [ %1, %do.end13.i.if.end4_crit_edge ], [ %1, %if.end16.i.if.end4_crit_edge ], [ %1, %if.end23.i.if.end4_crit_edge ], [ %1, %if.end27.i ]
  %ampdu_len.0 = phi i32 [ 1, %if.then2 ], [ %shr.i, %if.then.i ], [ 1, %do.end13.i.if.end4_crit_edge ], [ 2, %if.end16.i.if.end4_crit_edge ], [ 4, %if.end23.i.if.end4_crit_edge ], [ %..i, %if.end27.i ]
  %mul = mul i32 %overhead.0, 1000
  %div = udiv i32 %mul, %ampdu_len.0
  %arrayidx5 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group, i32 4, i32 %rate
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %17 to i32
  %shift = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group, i32 2
  %18 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %shift, align 1
  %conv7 = zext i8 %19 to i32
  %shl = shl i32 %conv, %conv7
  %add = add i32 %shl, %div
  %20 = tail call i32 @llvm.smin.i32(i32 %prob_avg, i32 3686)
  %mul12 = mul nuw i32 %20, 1000000
  %div13 = udiv i32 %mul12, %add
  %mul14 = mul i32 %div13, 100
  %shr = lshr i32 %mul14, 12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rc80211_minstrel_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @init_sample_table() #15
  %call = tail call i32 @ieee80211_rate_control_register(ptr noundef nonnull @mac80211_minstrel_ht) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_sample_table() unnamed_addr #2 section ".init.text" align 64 {
entry:
  %rnd = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rnd) #12
  %0 = call ptr @memset(ptr %rnd, i32 255, i32 10)
  %1 = call ptr @memset(ptr @sample_table, i32 255, i32 100)
  br label %for.body

for.body:                                         ; preds = %for.inc14.for.body_crit_edge, %entry
  %col.027 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14.for.body_crit_edge ]
  call void @prandom_bytes(ptr noundef nonnull %rnd, i32 noundef 10) #12
  br label %for.body3

for.body3:                                        ; preds = %while.end.for.body3_crit_edge, %for.body
  %i.026 = phi i32 [ 0, %for.body ], [ %inc, %while.end.for.body3_crit_edge ]
  %arrayidx = getelementptr [10 x i8], ptr %rnd, i32 0, i32 %i.026
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %i.026, %conv
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body3
  %new_idx.0.in = phi i32 [ %add, %for.body3 ], [ %add9, %while.cond.while.cond_crit_edge ]
  %new_idx.0 = srem i32 %new_idx.0.in, 10
  %arrayidx5 = getelementptr [10 x [10 x i8]], ptr @sample_table, i32 0, i32 %col.027, i32 %new_idx.0
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %cmp7.not = icmp eq i8 %5, -1
  %add9 = add nsw i32 %new_idx.0, 1
  br i1 %cmp7.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv11 = trunc i32 %i.026 to i8
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv11, ptr %arrayidx5, align 1
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc14, label %while.end.for.body3_crit_edge

while.end.for.body3_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.inc14:                                        ; preds = %while.end
  %inc15 = add nuw nsw i32 %col.027, 1
  %exitcond28.not = icmp eq i32 %inc15, 10
  br i1 %exitcond28.not, label %for.end16, label %for.inc14.for.body_crit_edge

for.inc14.for.body_crit_edge:                     ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end16:                                        ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rnd) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rate_control_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rc80211_minstrel_exit() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_rate_control_unregister(ptr noundef nonnull @mac80211_minstrel_ht) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rate_control_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @minstrel_ht_alloc(ptr noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 84) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cw_min = getelementptr inbounds %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %cw_min to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %cw_min, align 8
  %cw_max = getelementptr inbounds %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %cw_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1023, ptr %cw_max, align 4
  %segment_size = getelementptr inbounds %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %segment_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6000, ptr %segment_size, align 4
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 16
  %4 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_rate_tries, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  %narrow = select i1 %cmp.not, i8 7, i8 %5
  %spec.select = zext i8 %narrow to i32
  %6 = getelementptr inbounds %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 8
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 14
  %8 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp8 = icmp ugt i8 %9, 3
  br i1 %cmp8, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %has_mrr = getelementptr inbounds %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %has_mrr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %has_mrr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hw, ptr %call7.i.i, align 8
  %update_interval = getelementptr inbounds %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %update_interval to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %update_interval, align 8
  %width.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %switch.selectcmp.i.i = icmp eq i32 %14, 7
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %switch.selectcmp2.i.i = icmp eq i32 %14, 6
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 32, i32 %switch.select.i.i
  %cck_rates.i = getelementptr inbounds %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %cck_rates.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %cck_rates.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %bands.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bands.i, align 16
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end11.for.body.preheader_crit_edge, label %do.end.i

if.end11.for.body.preheader_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

do.end.i:                                         ; preds = %if.end11
  %n_bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %n_bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_bitrates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp32.i.i = icmp sgt i32 %21, 0
  br i1 %cmp32.i.i, label %for.body.lr.ph.i.i, label %do.end.i.for.body.preheader_crit_edge

do.end.i.for.body.preheader_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.lr.ph.i.i:                               ; preds = %do.end.i
  %bitrates1.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %bitrates1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bitrates1.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc17.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ieee80211_rate, ptr %23, i32 %i.033.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %25, %switch.select3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %switch.select3.i.i)
  %cmp4.not.i.not.i = icmp eq i32 %and.i.i, %switch.select3.i.i
  br i1 %cmp4.not.i.not.i, label %for.body7.lr.ph.i.i, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

for.body7.lr.ph.i.i:                              ; preds = %for.body.i.i
  %bitrate.i.i = getelementptr %struct.ieee80211_rate, ptr %23, i32 %i.033.i.i, i32 1
  %26 = ptrtoint ptr %bitrate.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bitrate.i.i, align 4
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i16 %27, label %for.body7.lr.ph.i.i.cleanup.i.i_crit_edge [
    i16 10, label %for.body7.lr.ph.i.i.if.end13.i.i_crit_edge
    i16 20, label %if.end13.i.fold.split.i
    i16 55, label %if.end13.i.fold.split11.i
    i16 110, label %if.end13.i.fold.split12.i
  ]

for.body7.lr.ph.i.i.if.end13.i.i_crit_edge:       ; preds = %for.body7.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

for.body7.lr.ph.i.i.cleanup.i.i_crit_edge:        ; preds = %for.body7.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end13.i.fold.split.i:                          ; preds = %for.body7.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.end13.i.fold.split11.i:                        ; preds = %for.body7.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.end13.i.fold.split12.i:                        ; preds = %for.body7.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end13.i.fold.split12.i, %if.end13.i.fold.split11.i, %if.end13.i.fold.split.i, %for.body7.lr.ph.i.i.if.end13.i.i_crit_edge
  %j.031.i.lcssa.i = phi i32 [ 0, %for.body7.lr.ph.i.i.if.end13.i.i_crit_edge ], [ 1, %if.end13.i.fold.split.i ], [ 2, %if.end13.i.fold.split11.i ], [ 3, %if.end13.i.fold.split12.i ]
  %conv14.i.i = trunc i32 %i.033.i.i to i8
  %arrayidx15.i.i = getelementptr i8, ptr %cck_rates.i, i32 %j.031.i.lcssa.i
  %29 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv14.i.i, ptr %arrayidx15.i.i, align 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end13.i.i, %for.body7.lr.ph.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %inc17.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not = icmp eq i32 %inc17.i.i, %21
  br i1 %exitcond.not, label %cleanup.i.i.for.body.preheader_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

cleanup.i.i.for.body.preheader_crit_edge:         ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cleanup.i.i.for.body.preheader_crit_edge, %do.end.i.for.body.preheader_crit_edge, %if.end11.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %minstrel_ht_init_ofdm_rates.exit.for.body_crit_edge, %for.body.preheader
  %i.059 = phi i32 [ %inc, %minstrel_ht_init_ofdm_rates.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %width.i.i32 = getelementptr inbounds %struct.ieee80211_conf, ptr %31, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %width.i.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %switch.selectcmp.i.i33 = icmp eq i32 %33, 7
  %switch.select.i.i34 = select i1 %switch.selectcmp.i.i33, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %switch.selectcmp2.i.i35 = icmp eq i32 %33, 6
  %switch.select3.i.i36 = select i1 %switch.selectcmp2.i.i35, i32 32, i32 %switch.select.i.i34
  %arrayidx.i = getelementptr %struct.minstrel_priv, ptr %call7.i.i, i32 0, i32 8, i32 %i.059
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %arrayidx.i, align 8
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  %wiphy.i37 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy.i37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy.i37, align 8
  %arrayidx2.i = getelementptr %struct.wiphy, ptr %38, i32 0, i32 53, i32 %i.059
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i38 = icmp eq ptr %40, null
  br i1 %tobool.not.i38, label %for.body.minstrel_ht_init_ofdm_rates.exit_crit_edge, label %do.end.i41

for.body.minstrel_ht_init_ofdm_rates.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_init_ofdm_rates.exit

do.end.i41:                                       ; preds = %for.body
  %n_bitrates.i.i39 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %n_bitrates.i.i39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_bitrates.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp32.i.i40 = icmp sgt i32 %42, 0
  br i1 %cmp32.i.i40, label %for.body.lr.ph.i.i43, label %do.end.i41.minstrel_ht_init_ofdm_rates.exit_crit_edge

do.end.i41.minstrel_ht_init_ofdm_rates.exit_crit_edge: ; preds = %do.end.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_init_ofdm_rates.exit

for.body.lr.ph.i.i43:                             ; preds = %do.end.i41
  %bitrates1.i.i42 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %bitrates1.i.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bitrates1.i.i42, align 4
  br label %for.body.i.i48

for.body.i.i48:                                   ; preds = %cleanup.i.i58.for.body.i.i48_crit_edge, %for.body.lr.ph.i.i43
  %i.033.i.i44 = phi i32 [ 0, %for.body.lr.ph.i.i43 ], [ %inc17.i.i56, %cleanup.i.i58.for.body.i.i48_crit_edge ]
  %arrayidx.i.i45 = getelementptr %struct.ieee80211_rate, ptr %44, i32 %i.033.i.i44
  %45 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i45, align 4
  %and.i.i46 = and i32 %46, %switch.select3.i.i36
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i46, i32 %switch.select3.i.i36)
  %cmp4.not.i.not.i47 = icmp eq i32 %and.i.i46, %switch.select3.i.i36
  br i1 %cmp4.not.i.not.i47, label %for.body7.lr.ph.i.i50, label %for.body.i.i48.cleanup.i.i58_crit_edge

for.body.i.i48.cleanup.i.i58_crit_edge:           ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i58

for.body7.lr.ph.i.i50:                            ; preds = %for.body.i.i48
  %bitrate.i.i49 = getelementptr %struct.ieee80211_rate, ptr %44, i32 %i.033.i.i44, i32 1
  %47 = ptrtoint ptr %bitrate.i.i49 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %bitrate.i.i49, align 4
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %48, label %for.body7.lr.ph.i.i50.cleanup.i.i58_crit_edge [
    i16 60, label %for.body7.lr.ph.i.i50.if.end13.i.i55_crit_edge
    i16 90, label %if.end13.i.fold.split.i51
    i16 120, label %if.end13.i.fold.split15.i
    i16 180, label %if.end13.i.fold.split16.i
    i16 240, label %if.end13.i.fold.split17.i
    i16 360, label %if.end13.i.fold.split18.i
    i16 480, label %if.end13.i.fold.split19.i
    i16 540, label %if.end13.i.fold.split20.i
  ]

for.body7.lr.ph.i.i50.if.end13.i.i55_crit_edge:   ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

for.body7.lr.ph.i.i50.cleanup.i.i58_crit_edge:    ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i58

if.end13.i.fold.split.i51:                        ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

if.end13.i.fold.split15.i:                        ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

if.end13.i.fold.split16.i:                        ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

if.end13.i.fold.split17.i:                        ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

if.end13.i.fold.split18.i:                        ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

if.end13.i.fold.split19.i:                        ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

if.end13.i.fold.split20.i:                        ; preds = %for.body7.lr.ph.i.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i55

if.end13.i.i55:                                   ; preds = %if.end13.i.fold.split20.i, %if.end13.i.fold.split19.i, %if.end13.i.fold.split18.i, %if.end13.i.fold.split17.i, %if.end13.i.fold.split16.i, %if.end13.i.fold.split15.i, %if.end13.i.fold.split.i51, %for.body7.lr.ph.i.i50.if.end13.i.i55_crit_edge
  %j.031.i.lcssa.i52 = phi i32 [ 0, %for.body7.lr.ph.i.i50.if.end13.i.i55_crit_edge ], [ 1, %if.end13.i.fold.split.i51 ], [ 2, %if.end13.i.fold.split15.i ], [ 3, %if.end13.i.fold.split16.i ], [ 4, %if.end13.i.fold.split17.i ], [ 5, %if.end13.i.fold.split18.i ], [ 6, %if.end13.i.fold.split19.i ], [ 7, %if.end13.i.fold.split20.i ]
  %conv14.i.i53 = trunc i32 %i.033.i.i44 to i8
  %arrayidx15.i.i54 = getelementptr i8, ptr %arrayidx.i, i32 %j.031.i.lcssa.i52
  %50 = ptrtoint ptr %arrayidx15.i.i54 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv14.i.i53, ptr %arrayidx15.i.i54, align 1
  br label %cleanup.i.i58

cleanup.i.i58:                                    ; preds = %if.end13.i.i55, %for.body7.lr.ph.i.i50.cleanup.i.i58_crit_edge, %for.body.i.i48.cleanup.i.i58_crit_edge
  %inc17.i.i56 = add nuw nsw i32 %i.033.i.i44, 1
  %exitcond60.not = icmp eq i32 %inc17.i.i56, %42
  br i1 %exitcond60.not, label %cleanup.i.i58.minstrel_ht_init_ofdm_rates.exit_crit_edge, label %cleanup.i.i58.for.body.i.i48_crit_edge

cleanup.i.i58.for.body.i.i48_crit_edge:           ; preds = %cleanup.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i48

cleanup.i.i58.minstrel_ht_init_ofdm_rates.exit_crit_edge: ; preds = %cleanup.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_init_ofdm_rates.exit

minstrel_ht_init_ofdm_rates.exit:                 ; preds = %cleanup.i.i58.minstrel_ht_init_ofdm_rates.exit_crit_edge, %do.end.i41.minstrel_ht_init_ofdm_rates.exit_crit_edge, %for.body.minstrel_ht_init_ofdm_rates.exit_crit_edge
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond61.not = icmp eq i32 %inc, 6
  br i1 %exitcond61.not, label %minstrel_ht_init_ofdm_rates.exit.cleanup_crit_edge, label %minstrel_ht_init_ofdm_rates.exit.for.body_crit_edge

minstrel_ht_init_ofdm_rates.exit.for.body_crit_edge: ; preds = %minstrel_ht_init_ofdm_rates.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

minstrel_ht_init_ofdm_rates.exit.cleanup_crit_edge: ; preds = %minstrel_ht_init_ofdm_rates.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %minstrel_ht_init_ofdm_rates.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minstrel_ht_add_debugfs(ptr nocapture noundef readnone %hw, ptr noundef %priv, ptr noundef %debugfsdir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_rate_idx = getelementptr inbounds %struct.minstrel_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %fixed_rate_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fixed_rate_idx, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.1, i16 noundef zeroext 438, ptr noundef %debugfsdir, ptr noundef %fixed_rate_idx) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minstrel_ht_free(ptr noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %priv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @minstrel_ht_alloc_sta(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %sta, i32 noundef %gfp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10804, i32 noundef %or.i, i32 noundef 2) #17
  ret ptr %call1.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minstrel_ht_rate_init(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sband, ptr nocapture noundef readonly %chandef, ptr noundef %sta, ptr noundef %priv_sta) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @minstrel_ht_update_caps(ptr noundef %priv, ptr noundef %sband, ptr noundef %chandef, ptr noundef %sta, ptr noundef %priv_sta)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minstrel_ht_rate_update(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sband, ptr nocapture noundef readonly %chandef, ptr noundef %sta, ptr noundef %priv_sta, i32 noundef %changed) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @minstrel_ht_update_caps(ptr noundef %priv, ptr noundef %sband, ptr noundef %chandef, ptr noundef %sta, ptr noundef %priv_sta)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minstrel_ht_free_sta(ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %sta, ptr noundef %priv_sta) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %priv_sta) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minstrel_ht_tx_status(ptr noundef readonly %priv, ptr nocapture noundef readnone %sband, ptr noundef %priv_sta, ptr nocapture noundef readonly %st) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2
  %update_interval2 = getelementptr inbounds %struct.minstrel_priv, ptr %priv, i32 0, i32 6
  %3 = ptrtoint ptr %update_interval2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %update_interval2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %7 = and i32 %6, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %8 = icmp eq i32 %7, 64
  %or.cond = or i1 %tobool.not, %8
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %entry
  %and7 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then14, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %and16 = lshr i32 %6, 9
  %9 = trunc i32 %and16 to i8
  %10 = and i8 %9, 1
  %ampdu_ack_len = getelementptr inbounds %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2, i32 1, i32 8
  %11 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ampdu_ack_len, align 8
  %ampdu_len = getelementptr inbounds %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2, i32 1, i32 9
  %12 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ampdu_len, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  %total_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 11
  %13 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_packets, align 4
  %ampdu_len19 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2, i32 1, i32 9
  %15 = ptrtoint ptr %ampdu_len19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ampdu_len19, align 1
  %conv20 = zext i8 %16 to i32
  %sub = xor i32 %conv20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub)
  %cmp.not = icmp ult i32 %14, %sub
  br i1 %cmp.not, label %if.end18.if.end24_crit_edge, label %if.then22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %total_packets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %total_packets, align 4
  %sample_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 12
  %18 = ptrtoint ptr %sample_packets to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sample_packets, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %19 = ptrtoint ptr %ampdu_len19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ampdu_len19, align 1
  %conv26 = zext i8 %20 to i32
  %21 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_packets, align 4
  %add = add i32 %22, %conv26
  store i32 %add, ptr %total_packets, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 8
  %and29 = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end24.if.end36_crit_edge, label %if.then31

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %ampdu_len19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ampdu_len19, align 1
  %conv33 = zext i8 %26 to i32
  %sample_packets34 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 12
  %27 = ptrtoint ptr %sample_packets34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sample_packets34, align 4
  %add35 = add i32 %28, %conv33
  store i32 %add35, ptr %sample_packets34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end24.if.end36_crit_edge
  %ampdu_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 2
  %29 = ptrtoint ptr %ampdu_packets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ampdu_packets, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %ampdu_packets, align 4
  %31 = ptrtoint ptr %ampdu_len19 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ampdu_len19, align 1
  %conv38 = zext i8 %32 to i32
  %ampdu_len39 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 1
  %33 = ptrtoint ptr %ampdu_len39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ampdu_len39, align 4
  %add40 = add i32 %34, %conv38
  store i32 %add40, ptr %ampdu_len39, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i = icmp slt i8 %36, 0
  br i1 %cmp.i, label %if.end36.for.end_crit_edge, label %if.end.i

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i:                                         ; preds = %if.end36
  %count.i = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 2048
  br i1 %tobool.not.i, label %if.end.i.for.end_crit_edge, label %if.end3.i

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end3.i:                                        ; preds = %if.end.i
  %38 = and i16 %bf.load.i, 264
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %for.cond.preheader.i, label %if.end3.i.for.body.lr.ph_crit_edge

if.end3.i.for.body.lr.ph_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond.preheader.i:                             ; preds = %if.end3.i
  %arrayidx.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 0
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %41)
  %cmp20.i = icmp eq i8 %36, %41
  br i1 %cmp20.i, label %for.cond.preheader.i.for.body.lr.ph_crit_edge, label %for.cond.i

for.cond.preheader.i.for.body.lr.ph_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond.i:                                       ; preds = %for.cond.preheader.i
  %arrayidx.1.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %43)
  %cmp20.1.i = icmp eq i8 %36, %43
  br i1 %cmp20.1.i, label %for.cond.i.for.body.lr.ph_crit_edge, label %for.cond.1.i

for.cond.i.for.body.lr.ph_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %45)
  %cmp20.2.i = icmp eq i8 %36, %45
  br i1 %cmp20.2.i, label %for.cond.1.i.for.body.lr.ph_crit_edge, label %for.cond.2.i

for.cond.1.i.for.body.lr.ph_crit_edge:            ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 3
  %46 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %47)
  %cmp20.3.i = icmp eq i8 %36, %47
  br i1 %cmp20.3.i, label %for.cond.2.i.for.body.lr.ph_crit_edge, label %for.cond.3.i

for.cond.2.i.for.body.lr.ph_crit_edge:            ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %band.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 14
  %48 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %band.i, align 4
  %idxprom.i = zext i8 %49 to i32
  %arrayidx31.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 0
  %50 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx31.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %51)
  %cmp33.i = icmp eq i8 %36, %51
  br i1 %cmp33.i, label %for.cond.3.i.for.body.lr.ph_crit_edge, label %for.cond24.i

for.cond.3.i.for.body.lr.ph_crit_edge:            ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond24.i:                                     ; preds = %for.cond.3.i
  %arrayidx31.1.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 1
  %52 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx31.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %53)
  %cmp33.1.i = icmp eq i8 %36, %53
  br i1 %cmp33.1.i, label %for.cond24.i.for.body.lr.ph_crit_edge, label %for.cond24.1.i

for.cond24.i.for.body.lr.ph_crit_edge:            ; preds = %for.cond24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond24.1.i:                                   ; preds = %for.cond24.i
  %arrayidx31.2.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 2
  %54 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx31.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %55)
  %cmp33.2.i = icmp eq i8 %36, %55
  br i1 %cmp33.2.i, label %for.cond24.1.i.for.body.lr.ph_crit_edge, label %for.cond24.2.i

for.cond24.1.i.for.body.lr.ph_crit_edge:          ; preds = %for.cond24.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond24.2.i:                                   ; preds = %for.cond24.1.i
  %arrayidx31.3.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 3
  %56 = ptrtoint ptr %arrayidx31.3.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx31.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %57)
  %cmp33.3.i = icmp eq i8 %36, %57
  br i1 %cmp33.3.i, label %for.cond24.2.i.for.body.lr.ph_crit_edge, label %for.cond24.3.i

for.cond24.2.i.for.body.lr.ph_crit_edge:          ; preds = %for.cond24.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond24.3.i:                                   ; preds = %for.cond24.2.i
  %arrayidx31.4.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 4
  %58 = ptrtoint ptr %arrayidx31.4.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx31.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %59)
  %cmp33.4.i = icmp eq i8 %36, %59
  br i1 %cmp33.4.i, label %for.cond24.3.i.for.body.lr.ph_crit_edge, label %for.cond24.4.i

for.cond24.3.i.for.body.lr.ph_crit_edge:          ; preds = %for.cond24.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond24.4.i:                                   ; preds = %for.cond24.3.i
  %arrayidx31.5.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 5
  %60 = ptrtoint ptr %arrayidx31.5.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx31.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %61)
  %cmp33.5.i = icmp eq i8 %36, %61
  br i1 %cmp33.5.i, label %for.cond24.4.i.for.body.lr.ph_crit_edge, label %for.cond24.5.i

for.cond24.4.i.for.body.lr.ph_crit_edge:          ; preds = %for.cond24.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.cond24.5.i:                                   ; preds = %for.cond24.4.i
  %arrayidx31.6.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 6
  %62 = ptrtoint ptr %arrayidx31.6.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx31.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %63)
  %cmp33.6.i = icmp eq i8 %36, %63
  br i1 %cmp33.6.i, label %for.cond24.5.i.for.body.lr.ph_crit_edge, label %minstrel_ht_txstat_valid.exit

for.cond24.5.i.for.body.lr.ph_crit_edge:          ; preds = %for.cond24.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

minstrel_ht_txstat_valid.exit:                    ; preds = %for.cond24.5.i
  %arrayidx31.7.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i, i32 7
  %64 = ptrtoint ptr %arrayidx31.7.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx31.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %65)
  %cmp33.7.i = icmp eq i8 %36, %65
  br i1 %cmp33.7.i, label %minstrel_ht_txstat_valid.exit.for.body.lr.ph_crit_edge, label %minstrel_ht_txstat_valid.exit.for.end_crit_edge

minstrel_ht_txstat_valid.exit.for.end_crit_edge:  ; preds = %minstrel_ht_txstat_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

minstrel_ht_txstat_valid.exit.for.body.lr.ph_crit_edge: ; preds = %minstrel_ht_txstat_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %minstrel_ht_txstat_valid.exit.for.body.lr.ph_crit_edge, %for.cond24.5.i.for.body.lr.ph_crit_edge, %for.cond24.4.i.for.body.lr.ph_crit_edge, %for.cond24.3.i.for.body.lr.ph_crit_edge, %for.cond24.2.i.for.body.lr.ph_crit_edge, %for.cond24.1.i.for.body.lr.ph_crit_edge, %for.cond24.i.for.body.lr.ph_crit_edge, %for.cond.3.i.for.body.lr.ph_crit_edge, %for.cond.2.i.for.body.lr.ph_crit_edge, %for.cond.1.i.for.body.lr.ph_crit_edge, %for.cond.i.for.body.lr.ph_crit_edge, %for.cond.preheader.i.for.body.lr.ph_crit_edge, %if.end3.i.for.body.lr.ph_crit_edge
  %arrayidx.i191 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 0
  %arrayidx.1.i194 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 1
  %arrayidx.2.i197 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 2
  %arrayidx.3.i200 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 3
  %band.i203 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 14
  %arrayidx22.i = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 19, i32 16
  %ampdu_ack_len54 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2, i32 1, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end59.for.body_crit_edge, %for.body.lr.ph
  %i.0281 = phi i32 [ 0, %for.body.lr.ph ], [ %inc67, %if.end59.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0281)
  %cmp43 = icmp eq i32 %i.0281, 3
  br i1 %cmp43, label %for.body.lor.end_crit_edge, label %lor.rhs

for.body.lor.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %for.body
  %add45 = add i32 %i.0281, 1
  %arrayidx46 = getelementptr %struct.ieee80211_tx_rate, ptr %2, i32 %add45
  %66 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp.i185 = icmp slt i8 %67, 0
  br i1 %cmp.i185, label %lor.rhs.minstrel_ht_txstat_valid.exit230_crit_edge, label %if.end.i189

lor.rhs.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

if.end.i189:                                      ; preds = %lor.rhs
  %count.i186 = getelementptr %struct.ieee80211_tx_rate, ptr %2, i32 %add45, i32 1
  %68 = ptrtoint ptr %count.i186 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %bf.load.i187 = load i16, ptr %count.i186, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i187)
  %tobool.not.i188 = icmp ult i16 %bf.load.i187, 2048
  br i1 %tobool.not.i188, label %if.end.i189.minstrel_ht_txstat_valid.exit230_crit_edge, label %if.end3.i190

if.end.i189.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

if.end3.i190:                                     ; preds = %if.end.i189
  %69 = and i16 %bf.load.i187, 264
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %for.cond.preheader.i193, label %if.end3.i190.minstrel_ht_txstat_valid.exit230_crit_edge

if.end3.i190.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %if.end3.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond.preheader.i193:                          ; preds = %if.end3.i190
  %71 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i191, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %72)
  %cmp20.i192 = icmp eq i8 %67, %72
  br i1 %cmp20.i192, label %for.cond.preheader.i193.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond.i196

for.cond.preheader.i193.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond.preheader.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond.i196:                                    ; preds = %for.cond.preheader.i193
  %73 = ptrtoint ptr %arrayidx.1.i194 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.1.i194, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %74)
  %cmp20.1.i195 = icmp eq i8 %67, %74
  br i1 %cmp20.1.i195, label %for.cond.i196.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond.1.i199

for.cond.i196.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond.1.i199:                                  ; preds = %for.cond.i196
  %75 = ptrtoint ptr %arrayidx.2.i197 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.2.i197, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %76)
  %cmp20.2.i198 = icmp eq i8 %67, %76
  br i1 %cmp20.2.i198, label %for.cond.1.i199.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond.2.i202

for.cond.1.i199.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond.1.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond.2.i202:                                  ; preds = %for.cond.1.i199
  %77 = ptrtoint ptr %arrayidx.3.i200 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.3.i200, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %78)
  %cmp20.3.i201 = icmp eq i8 %67, %78
  br i1 %cmp20.3.i201, label %for.cond.2.i202.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond.3.i207

for.cond.2.i202.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond.2.i202
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond.3.i207:                                  ; preds = %for.cond.2.i202
  %79 = ptrtoint ptr %band.i203 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %band.i203, align 4
  %idxprom.i204 = zext i8 %80 to i32
  %arrayidx31.i205 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 0
  %81 = ptrtoint ptr %arrayidx31.i205 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx31.i205, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %82)
  %cmp33.i206 = icmp eq i8 %67, %82
  br i1 %cmp33.i206, label %for.cond.3.i207.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond24.i210

for.cond.3.i207.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond.3.i207
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond24.i210:                                  ; preds = %for.cond.3.i207
  %arrayidx31.1.i208 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 1
  %83 = ptrtoint ptr %arrayidx31.1.i208 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx31.1.i208, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %84)
  %cmp33.1.i209 = icmp eq i8 %67, %84
  br i1 %cmp33.1.i209, label %for.cond24.i210.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond24.1.i213

for.cond24.i210.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond24.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond24.1.i213:                                ; preds = %for.cond24.i210
  %arrayidx31.2.i211 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 2
  %85 = ptrtoint ptr %arrayidx31.2.i211 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx31.2.i211, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %86)
  %cmp33.2.i212 = icmp eq i8 %67, %86
  br i1 %cmp33.2.i212, label %for.cond24.1.i213.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond24.2.i216

for.cond24.1.i213.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond24.1.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond24.2.i216:                                ; preds = %for.cond24.1.i213
  %arrayidx31.3.i214 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 3
  %87 = ptrtoint ptr %arrayidx31.3.i214 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx31.3.i214, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %88)
  %cmp33.3.i215 = icmp eq i8 %67, %88
  br i1 %cmp33.3.i215, label %for.cond24.2.i216.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond24.3.i219

for.cond24.2.i216.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond24.2.i216
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond24.3.i219:                                ; preds = %for.cond24.2.i216
  %arrayidx31.4.i217 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 4
  %89 = ptrtoint ptr %arrayidx31.4.i217 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx31.4.i217, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %90)
  %cmp33.4.i218 = icmp eq i8 %67, %90
  br i1 %cmp33.4.i218, label %for.cond24.3.i219.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond24.4.i222

for.cond24.3.i219.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond24.3.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond24.4.i222:                                ; preds = %for.cond24.3.i219
  %arrayidx31.5.i220 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 5
  %91 = ptrtoint ptr %arrayidx31.5.i220 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx31.5.i220, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %92)
  %cmp33.5.i221 = icmp eq i8 %67, %92
  br i1 %cmp33.5.i221, label %for.cond24.4.i222.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond24.5.i225

for.cond24.4.i222.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond24.4.i222
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond24.5.i225:                                ; preds = %for.cond24.4.i222
  %arrayidx31.6.i223 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 6
  %93 = ptrtoint ptr %arrayidx31.6.i223 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx31.6.i223, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %94)
  %cmp33.6.i224 = icmp eq i8 %67, %94
  br i1 %cmp33.6.i224, label %for.cond24.5.i225.minstrel_ht_txstat_valid.exit230_crit_edge, label %for.cond24.6.i228

for.cond24.5.i225.minstrel_ht_txstat_valid.exit230_crit_edge: ; preds = %for.cond24.5.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_txstat_valid.exit230

for.cond24.6.i228:                                ; preds = %for.cond24.5.i225
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx31.7.i226 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i204, i32 7
  %95 = ptrtoint ptr %arrayidx31.7.i226 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx31.7.i226, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %96)
  %cmp33.7.i227 = icmp eq i8 %67, %96
  br label %minstrel_ht_txstat_valid.exit230

minstrel_ht_txstat_valid.exit230:                 ; preds = %for.cond24.6.i228, %for.cond24.5.i225.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond24.4.i222.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond24.3.i219.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond24.2.i216.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond24.1.i213.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond24.i210.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond.3.i207.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond.2.i202.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond.1.i199.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond.i196.minstrel_ht_txstat_valid.exit230_crit_edge, %for.cond.preheader.i193.minstrel_ht_txstat_valid.exit230_crit_edge, %if.end3.i190.minstrel_ht_txstat_valid.exit230_crit_edge, %if.end.i189.minstrel_ht_txstat_valid.exit230_crit_edge, %lor.rhs.minstrel_ht_txstat_valid.exit230_crit_edge
  %retval.0.i229 = phi i1 [ false, %lor.rhs.minstrel_ht_txstat_valid.exit230_crit_edge ], [ false, %if.end.i189.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %if.end3.i190.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond.3.i207.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond24.i210.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond24.1.i213.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond24.2.i216.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond24.3.i219.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond24.4.i222.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond24.5.i225.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond.2.i202.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond.1.i199.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond.i196.minstrel_ht_txstat_valid.exit230_crit_edge ], [ true, %for.cond.preheader.i193.minstrel_ht_txstat_valid.exit230_crit_edge ], [ %cmp33.7.i227, %for.cond24.6.i228 ]
  %lnot48 = xor i1 %retval.0.i229, true
  br label %lor.end

lor.end:                                          ; preds = %minstrel_ht_txstat_valid.exit230, %for.body.lor.end_crit_edge
  %97 = phi i1 [ true, %for.body.lor.end_crit_edge ], [ %lnot48, %minstrel_ht_txstat_valid.exit230 ]
  %arrayidx50 = getelementptr %struct.ieee80211_tx_rate, ptr %2, i32 %i.0281
  %flags.i = getelementptr %struct.ieee80211_tx_rate, ptr %2, i32 %i.0281, i32 1
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %bf.load.i231 = load i16, ptr %flags.i, align 1
  %bf.clear.i = and i16 %bf.load.i231, 2047
  %conv.i = zext i16 %bf.clear.i to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i232 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i232, label %if.end.i233, label %if.then.i

if.then.i:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  %99 = lshr i32 %conv.i, 2
  %mul.i.i = and i32 %99, 8
  %100 = lshr i32 %conv.i, 5
  %mul12.i.i = and i32 %100, 4
  %101 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx50, align 1
  %.frozen = freeze i8 %102
  %103 = sdiv i8 %.frozen, 8
  %div.i.i = sext i8 %103 to i32
  %add13.i.i = or i32 %mul.i.i, %mul12.i.i
  %add15.i.i = add nsw i32 %add13.i.i, %div.i.i
  %104 = mul i8 %103, 8
  %rem80.i.decomposed = sub i8 %.frozen, %104
  %rem.sext.i = sext i8 %rem80.i.decomposed to i32
  br label %minstrel_ht_get_stats.exit

if.end.i233:                                      ; preds = %lor.end
  %and7.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %for.cond.preheader.i235, label %if.then9.i

for.cond.preheader.i235:                          ; preds = %if.end.i233
  %105 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx50, align 1
  %conv16.i = sext i8 %106 to i32
  %107 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i191, align 1
  %conv17.i = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv17.i)
  %cmp18.not.i = icmp eq i32 %conv16.i, %conv17.i
  br i1 %cmp18.not.i, label %for.cond.preheader.i235.if.end21.i_crit_edge, label %for.inc.i

for.cond.preheader.i235.if.end21.i_crit_edge:     ; preds = %for.cond.preheader.i235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then9.i:                                       ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = lshr i32 %conv.i, 5
  %and.lobit.i.i = and i32 %and.i.i, 1
  %109 = lshr i32 %conv.i, 8
  %mul.i77.i = and i32 %109, 2
  %add.i.i = or i32 %and.lobit.i.i, %mul.i77.i
  %mul12.i78.i = shl nuw nsw i32 %add.i.i, 3
  %mul24.i.i = and i32 %and.i.i, 4
  %110 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx50, align 1
  %112 = ashr i8 %111, 4
  %narrow.i.i.i = add nsw i8 %112, 1
  %conv26.i.i = zext i8 %narrow.i.i.i to i32
  %add27.i.i = or i32 %mul24.i.i, 17
  %add13.i79.i = add nuw nsw i32 %add27.i.i, %mul12.i78.i
  %sub.i.i = add nuw nsw i32 %add13.i79.i, %conv26.i.i
  %113 = and i8 %111, 15
  %conv12.i = zext i8 %113 to i32
  br label %minstrel_ht_get_stats.exit

if.end21.i:                                       ; preds = %for.inc.2.i.if.end21.i_crit_edge, %for.inc.1.i.if.end21.i_crit_edge, %for.inc.i.if.end21.i_crit_edge, %for.cond.preheader.i235.if.end21.i_crit_edge
  %idx.082.lcssa.i = phi i32 [ 0, %for.cond.preheader.i235.if.end21.i_crit_edge ], [ 1, %for.inc.i.if.end21.i_crit_edge ], [ 2, %for.inc.1.i.if.end21.i_crit_edge ], [ 3, %for.inc.2.i.if.end21.i_crit_edge ]
  %114 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx22.i, align 2
  %conv23.i = zext i16 %115 to i32
  %shl.i = shl nuw nsw i32 16, %idx.082.lcssa.i
  %and24.i = and i32 %shl.i, %conv23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end21.i.minstrel_ht_get_stats.exit_crit_edge, label %land.lhs.true.i

if.end21.i.minstrel_ht_get_stats.exit_crit_edge:  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

land.lhs.true.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = and i16 %bf.load.i231, 4
  %117 = zext i16 %116 to i32
  %118 = or i32 %idx.082.lcssa.i, %117
  br label %minstrel_ht_get_stats.exit

for.inc.i:                                        ; preds = %for.cond.preheader.i235
  %119 = ptrtoint ptr %arrayidx.1.i194 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.1.i194, align 1
  %conv17.1.i = zext i8 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv17.1.i)
  %cmp18.not.1.i = icmp eq i32 %conv16.i, %conv17.1.i
  br i1 %cmp18.not.1.i, label %for.inc.i.if.end21.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end21.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %121 = ptrtoint ptr %arrayidx.2.i197 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.2.i197, align 1
  %conv17.2.i = zext i8 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv17.2.i)
  %cmp18.not.2.i = icmp eq i32 %conv16.i, %conv17.2.i
  br i1 %cmp18.not.2.i, label %for.inc.1.i.if.end21.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end21.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %123 = ptrtoint ptr %arrayidx.3.i200 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.3.i200, align 1
  %conv17.3.i = zext i8 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv17.3.i)
  %cmp18.not.3.i = icmp eq i32 %conv16.i, %conv17.3.i
  br i1 %cmp18.not.3.i, label %for.inc.2.i.if.end21.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end21.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %125 = ptrtoint ptr %band.i203 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %band.i203, align 4
  %idxprom.i240 = zext i8 %126 to i32
  %arrayidx42.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 0
  %127 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.i)
  %cmp44.i = icmp eq i32 %conv16.i, %conv43.i
  br i1 %cmp44.i, label %for.inc.3.i.minstrel_ht_get_stats.exit_crit_edge, label %for.inc48.i

for.inc.3.i.minstrel_ht_get_stats.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

for.inc48.i:                                      ; preds = %for.inc.3.i
  %arrayidx42.1.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 1
  %129 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx42.1.i, align 1
  %conv43.1.i = zext i8 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.1.i)
  %cmp44.1.i = icmp eq i32 %conv16.i, %conv43.1.i
  br i1 %cmp44.1.i, label %for.inc48.i.minstrel_ht_get_stats.exit_crit_edge, label %for.inc48.1.i

for.inc48.i.minstrel_ht_get_stats.exit_crit_edge: ; preds = %for.inc48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

for.inc48.1.i:                                    ; preds = %for.inc48.i
  %arrayidx42.2.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 2
  %131 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx42.2.i, align 1
  %conv43.2.i = zext i8 %132 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.2.i)
  %cmp44.2.i = icmp eq i32 %conv16.i, %conv43.2.i
  br i1 %cmp44.2.i, label %for.inc48.1.i.minstrel_ht_get_stats.exit_crit_edge, label %for.inc48.2.i

for.inc48.1.i.minstrel_ht_get_stats.exit_crit_edge: ; preds = %for.inc48.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

for.inc48.2.i:                                    ; preds = %for.inc48.1.i
  %arrayidx42.3.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 3
  %133 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx42.3.i, align 1
  %conv43.3.i = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.3.i)
  %cmp44.3.i = icmp eq i32 %conv16.i, %conv43.3.i
  br i1 %cmp44.3.i, label %for.inc48.2.i.minstrel_ht_get_stats.exit_crit_edge, label %for.inc48.3.i

for.inc48.2.i.minstrel_ht_get_stats.exit_crit_edge: ; preds = %for.inc48.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

for.inc48.3.i:                                    ; preds = %for.inc48.2.i
  %arrayidx42.4.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 4
  %135 = ptrtoint ptr %arrayidx42.4.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx42.4.i, align 1
  %conv43.4.i = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.4.i)
  %cmp44.4.i = icmp eq i32 %conv16.i, %conv43.4.i
  br i1 %cmp44.4.i, label %for.inc48.3.i.minstrel_ht_get_stats.exit_crit_edge, label %for.inc48.4.i

for.inc48.3.i.minstrel_ht_get_stats.exit_crit_edge: ; preds = %for.inc48.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

for.inc48.4.i:                                    ; preds = %for.inc48.3.i
  %arrayidx42.5.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 5
  %137 = ptrtoint ptr %arrayidx42.5.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx42.5.i, align 1
  %conv43.5.i = zext i8 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.5.i)
  %cmp44.5.i = icmp eq i32 %conv16.i, %conv43.5.i
  br i1 %cmp44.5.i, label %for.inc48.4.i.minstrel_ht_get_stats.exit_crit_edge, label %for.inc48.5.i

for.inc48.4.i.minstrel_ht_get_stats.exit_crit_edge: ; preds = %for.inc48.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

for.inc48.5.i:                                    ; preds = %for.inc48.4.i
  %arrayidx42.6.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 6
  %139 = ptrtoint ptr %arrayidx42.6.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx42.6.i, align 1
  %conv43.6.i = zext i8 %140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.6.i)
  %cmp44.6.i = icmp eq i32 %conv16.i, %conv43.6.i
  br i1 %cmp44.6.i, label %for.inc48.5.i.minstrel_ht_get_stats.exit_crit_edge, label %for.inc48.6.i

for.inc48.5.i.minstrel_ht_get_stats.exit_crit_edge: ; preds = %for.inc48.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_stats.exit

for.inc48.6.i:                                    ; preds = %for.inc48.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx42.7.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom.i240, i32 7
  %141 = ptrtoint ptr %arrayidx42.7.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx42.7.i, align 1
  %conv43.7.i = zext i8 %142 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv43.7.i)
  %cmp44.7.i = icmp eq i32 %conv16.i, %conv43.7.i
  %spec.select.i = select i1 %cmp44.7.i, i32 7, i32 0
  br label %minstrel_ht_get_stats.exit

minstrel_ht_get_stats.exit:                       ; preds = %for.inc48.6.i, %for.inc48.5.i.minstrel_ht_get_stats.exit_crit_edge, %for.inc48.4.i.minstrel_ht_get_stats.exit_crit_edge, %for.inc48.3.i.minstrel_ht_get_stats.exit_crit_edge, %for.inc48.2.i.minstrel_ht_get_stats.exit_crit_edge, %for.inc48.1.i.minstrel_ht_get_stats.exit_crit_edge, %for.inc48.i.minstrel_ht_get_stats.exit_crit_edge, %for.inc.3.i.minstrel_ht_get_stats.exit_crit_edge, %land.lhs.true.i, %if.end21.i.minstrel_ht_get_stats.exit_crit_edge, %if.then9.i, %if.then.i
  %group.0.i = phi i32 [ %add15.i.i, %if.then.i ], [ %sub.i.i, %if.then9.i ], [ 16, %if.end21.i.minstrel_ht_get_stats.exit_crit_edge ], [ 16, %land.lhs.true.i ], [ 17, %for.inc48.5.i.minstrel_ht_get_stats.exit_crit_edge ], [ 17, %for.inc48.4.i.minstrel_ht_get_stats.exit_crit_edge ], [ 17, %for.inc48.3.i.minstrel_ht_get_stats.exit_crit_edge ], [ 17, %for.inc48.2.i.minstrel_ht_get_stats.exit_crit_edge ], [ 17, %for.inc48.1.i.minstrel_ht_get_stats.exit_crit_edge ], [ 17, %for.inc48.i.minstrel_ht_get_stats.exit_crit_edge ], [ 17, %for.inc.3.i.minstrel_ht_get_stats.exit_crit_edge ], [ 17, %for.inc48.6.i ]
  %idx.2.i = phi i32 [ %rem.sext.i, %if.then.i ], [ %conv12.i, %if.then9.i ], [ %idx.082.lcssa.i, %if.end21.i.minstrel_ht_get_stats.exit_crit_edge ], [ %118, %land.lhs.true.i ], [ 6, %for.inc48.5.i.minstrel_ht_get_stats.exit_crit_edge ], [ 5, %for.inc48.4.i.minstrel_ht_get_stats.exit_crit_edge ], [ 4, %for.inc48.3.i.minstrel_ht_get_stats.exit_crit_edge ], [ 3, %for.inc48.2.i.minstrel_ht_get_stats.exit_crit_edge ], [ 2, %for.inc48.1.i.minstrel_ht_get_stats.exit_crit_edge ], [ 1, %for.inc48.i.minstrel_ht_get_stats.exit_crit_edge ], [ 0, %for.inc.3.i.minstrel_ht_get_stats.exit_crit_edge ], [ %spec.select.i, %for.inc48.6.i ]
  %arrayidx52.i = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %group.0.i, i32 4, i32 %idx.2.i
  br i1 %97, label %if.then53, label %minstrel_ht_get_stats.exit.if.end59_crit_edge

minstrel_ht_get_stats.exit.if.end59_crit_edge:    ; preds = %minstrel_ht_get_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then53:                                        ; preds = %minstrel_ht_get_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %ampdu_ack_len54 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ampdu_ack_len54, align 8
  %conv55 = zext i8 %144 to i16
  %success = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %group.0.i, i32 4, i32 %idx.2.i, i32 2
  %145 = ptrtoint ptr %success to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %success, align 4
  %add57 = add i16 %146, %conv55
  store i16 %add57, ptr %success, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %minstrel_ht_get_stats.exit.if.end59_crit_edge
  %147 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %bf.load = load i16, ptr %flags.i, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %148 = ptrtoint ptr %ampdu_len19 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ampdu_len19, align 1
  %conv63 = zext i8 %149 to i16
  %mul = mul nuw nsw i16 %bf.lshr, %conv63
  %150 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx52.i, align 4
  %add65 = add i16 %mul, %151
  store i16 %add65, ptr %arrayidx52.i, align 4
  %inc67 = add i32 %i.0281, 1
  br i1 %97, label %if.end59.for.end_crit_edge, label %if.end59.for.body_crit_edge

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end59.for.end_crit_edge, %minstrel_ht_txstat_valid.exit.for.end_crit_edge, %if.end.i.for.end_crit_edge, %if.end36.for.end_crit_edge
  %152 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %153, i32 0, i32 14
  %154 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %max_rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp69 = icmp ugt i8 %155, 1
  br i1 %cmp69, label %if.then71, label %if.end110.thread

if.then71:                                        ; preds = %for.end
  %max_tp_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 4
  %156 = ptrtoint ptr %max_tp_rate to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %max_tp_rate, align 4
  %conv73 = zext i16 %157 to i32
  %and.i241 = lshr i32 %conv73, 4
  %and20.i = and i32 %conv73, 15
  %arrayidx22.i242 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %and.i241, i32 4, i32 %and20.i
  %158 = ptrtoint ptr %arrayidx22.i242 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx22.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %159)
  %cmp77 = icmp ugt i16 %159, 30
  br i1 %cmp77, label %land.lhs.true79, label %if.then71.if.end89_crit_edge

if.then71.if.end89_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.true79:                                  ; preds = %if.then71
  %success80 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %and.i241, i32 4, i32 %and20.i, i32 2
  %160 = ptrtoint ptr %success80 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %success80, align 4
  %162 = lshr i16 %159, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %161, i16 %162)
  %cmp84 = icmp ult i16 %161, %162
  br i1 %cmp84, label %if.then86, label %land.lhs.true79.if.end89_crit_edge

land.lhs.true79.if.end89_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then86:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %157)
  %cmp41.not.i = icmp ult i16 %157, 16
  br i1 %cmp41.not.i, label %if.then86.if.end89_crit_edge, label %while.body.lr.ph.i

if.then86.if.end89_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

while.body.lr.ph.i:                               ; preds = %if.then86
  %163 = lshr i16 %157, 4
  %shr.i243 = zext i16 %163 to i32
  %streams17.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr.i243, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %group.042.i = phi i32 [ %shr.i243, %while.body.lr.ph.i ], [ %dec.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %group.042.i, -1
  %arrayidx.i244 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 19, i32 %dec.i
  %164 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx.i244, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool.not.i245 = icmp eq i16 %165, 0
  br i1 %tobool.not.i245, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end.i247

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i247.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %cmp.i246 = icmp ugt i32 %group.042.i, 1
  br i1 %cmp.i246, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.if.end89_crit_edge

while.cond.backedge.i.if.end89_crit_edge:         ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i247:                                      ; preds = %while.body.i
  %streams.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %dec.i, i32 1
  %166 = ptrtoint ptr %streams.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %streams.i, align 2
  %168 = ptrtoint ptr %streams17.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %streams17.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %167, i8 %169)
  %cmp19.i = icmp ugt i8 %167, %169
  br i1 %cmp19.i, label %if.end.i247.while.cond.backedge.i_crit_edge, label %if.end22.i

if.end.i247.while.cond.backedge.i_crit_edge:      ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i

if.end22.i:                                       ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #14
  %max_group_tp_rate.i = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %dec.i, i32 2
  %170 = ptrtoint ptr %max_group_tp_rate.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %max_group_tp_rate.i, align 2
  %172 = ptrtoint ptr %max_tp_rate to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %max_tp_rate, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.end22.i, %while.cond.backedge.i.if.end89_crit_edge, %if.then86.if.end89_crit_edge, %land.lhs.true79.if.end89_crit_edge, %if.then71.if.end89_crit_edge
  %update.0 = phi i1 [ false, %land.lhs.true79.if.end89_crit_edge ], [ false, %if.then71.if.end89_crit_edge ], [ true, %if.then86.if.end89_crit_edge ], [ true, %if.end22.i ], [ true, %while.cond.backedge.i.if.end89_crit_edge ]
  %arrayidx91 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 4, i32 1
  %173 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx91, align 2
  %conv92 = zext i16 %174 to i32
  %and.i248 = lshr i32 %conv92, 4
  %and20.i250 = and i32 %conv92, 15
  %arrayidx22.i251 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %and.i248, i32 4, i32 %and20.i250
  %175 = ptrtoint ptr %arrayidx22.i251 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx22.i251, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %176)
  %cmp96 = icmp ugt i16 %176, 30
  br i1 %cmp96, label %land.lhs.true98, label %if.end89.if.end110_crit_edge

if.end89.if.end110_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true98:                                  ; preds = %if.end89
  %success99 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %and.i248, i32 4, i32 %and20.i250, i32 2
  %177 = ptrtoint ptr %success99 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %success99, align 4
  %179 = lshr i16 %176, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %178, i16 %179)
  %cmp104 = icmp ult i16 %178, %179
  br i1 %cmp104, label %if.then106, label %land.lhs.true98.if.end110_crit_edge

land.lhs.true98.if.end110_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then106:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %174)
  %cmp41.not.i252 = icmp ult i16 %174, 16
  br i1 %cmp41.not.i252, label %if.then106.if.end110_crit_edge, label %while.body.lr.ph.i255

if.then106.if.end110_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

while.body.lr.ph.i255:                            ; preds = %if.then106
  %180 = lshr i16 %174, 4
  %shr.i253 = zext i16 %180 to i32
  %streams17.i254 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr.i253, i32 1
  br label %while.body.i260

while.body.i260:                                  ; preds = %while.cond.backedge.i262.while.body.i260_crit_edge, %while.body.lr.ph.i255
  %group.042.i256 = phi i32 [ %shr.i253, %while.body.lr.ph.i255 ], [ %dec.i257, %while.cond.backedge.i262.while.body.i260_crit_edge ]
  %dec.i257 = add nsw i32 %group.042.i256, -1
  %arrayidx.i258 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 19, i32 %dec.i257
  %181 = ptrtoint ptr %arrayidx.i258 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %arrayidx.i258, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool.not.i259 = icmp eq i16 %182, 0
  br i1 %tobool.not.i259, label %while.body.i260.while.cond.backedge.i262_crit_edge, label %if.end.i265

while.body.i260.while.cond.backedge.i262_crit_edge: ; preds = %while.body.i260
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i262

while.cond.backedge.i262:                         ; preds = %if.end.i265.while.cond.backedge.i262_crit_edge, %while.body.i260.while.cond.backedge.i262_crit_edge
  %cmp.i261 = icmp ugt i32 %group.042.i256, 1
  br i1 %cmp.i261, label %while.cond.backedge.i262.while.body.i260_crit_edge, label %while.cond.backedge.i262.if.end110_crit_edge

while.cond.backedge.i262.if.end110_crit_edge:     ; preds = %while.cond.backedge.i262
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

while.cond.backedge.i262.while.body.i260_crit_edge: ; preds = %while.cond.backedge.i262
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i260

if.end.i265:                                      ; preds = %while.body.i260
  %streams.i263 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %dec.i257, i32 1
  %183 = ptrtoint ptr %streams.i263 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %streams.i263, align 2
  %185 = ptrtoint ptr %streams17.i254 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %streams17.i254, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %184, i8 %186)
  %cmp19.i264 = icmp ugt i8 %184, %186
  br i1 %cmp19.i264, label %if.end.i265.while.cond.backedge.i262_crit_edge, label %if.end22.i268

if.end.i265.while.cond.backedge.i262_crit_edge:   ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.i262

if.end22.i268:                                    ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx30.i267 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %dec.i257, i32 2, i32 1
  %187 = ptrtoint ptr %arrayidx30.i267 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx30.i267, align 2
  %189 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %arrayidx91, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.end22.i268, %while.cond.backedge.i262.if.end110_crit_edge, %if.then106.if.end110_crit_edge, %land.lhs.true98.if.end110_crit_edge, %if.end89.if.end110_crit_edge
  %update.1.off0 = phi i1 [ %update.0, %land.lhs.true98.if.end110_crit_edge ], [ %update.0, %if.end89.if.end110_crit_edge ], [ true, %if.then106.if.end110_crit_edge ], [ true, %if.end22.i268 ], [ true, %while.cond.backedge.i262.if.end110_crit_edge ]
  %last_stats_update = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 6
  %190 = ptrtoint ptr %last_stats_update to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %last_stats_update, align 4
  %add111 = add i32 %191, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %192 = load volatile i32, ptr @jiffies, align 128
  %sub112 = sub i32 %add111, %192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub112)
  %cmp113 = icmp slt i32 %sub112, 0
  br i1 %cmp113, label %if.end110.if.then115_crit_edge, label %if.end116

if.end110.if.then115_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115

if.end110.thread:                                 ; preds = %for.end
  %last_stats_update271 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 6
  %193 = ptrtoint ptr %last_stats_update271 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %last_stats_update271, align 4
  %add111272 = add i32 %194, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %195 = load volatile i32, ptr @jiffies, align 128
  %sub112273 = sub i32 %add111272, %195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub112273)
  %cmp113274 = icmp slt i32 %sub112273, 0
  br i1 %cmp113274, label %if.end110.thread.if.then115_crit_edge, label %if.end110.thread.cleanup_crit_edge

if.end110.thread.cleanup_crit_edge:               ; preds = %if.end110.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end110.thread.if.then115_crit_edge:            ; preds = %if.end110.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115

if.then115:                                       ; preds = %if.end110.thread.if.then115_crit_edge, %if.end110.if.then115_crit_edge
  tail call fastcc void @minstrel_ht_update_stats(ptr noundef %priv, ptr noundef %priv_sta)
  br label %if.then118

if.end116:                                        ; preds = %if.end110
  br i1 %update.1.off0, label %if.end116.if.then118_crit_edge, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end116.if.then118_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118

if.then118:                                       ; preds = %if.end116.if.then118_crit_edge, %if.then115
  tail call fastcc void @minstrel_ht_update_rates(ptr noundef %priv, ptr noundef %priv_sta)
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %if.end116.cleanup_crit_edge, %if.end110.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @minstrel_ht_get_rate(ptr nocapture noundef readonly %priv, ptr nocapture noundef readnone %sta, ptr nocapture noundef %priv_sta, ptr nocapture noundef readonly %txrc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %tx_flags = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 13
  %3 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_flags, align 4
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb.i, align 8
  %or = or i32 %6, %4
  store i32 %or, ptr %cb.i, align 8
  %fixed_rate_idx = getelementptr inbounds %struct.minstrel_priv, ptr %priv, i32 0, i32 9
  %7 = ptrtoint ptr %fixed_rate_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fixed_rate_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not = icmp eq i32 %8, -1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp1 = icmp eq i8 %12, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %flags3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %13 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags3, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sample_time = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 17
  %16 = ptrtoint ptr %sample_time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sample_time, align 4
  %sub = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 2
  %19 = ptrtoint ptr %sample_time to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %sample_time, align 4
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %max_rates.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %max_rates.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_rates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp.i = icmp ugt i8 %23, 1
  br i1 %cmp.i, label %if.then.i, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %sample_seq.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 15
  %24 = ptrtoint ptr %sample_seq.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sample_seq.i, align 1
  %conv2.i = zext i8 %25 to i32
  %26 = zext i8 %25 to i16
  %rem.lhs.trunc.i = add nuw nsw i16 %26, 1
  %rem10.i = urem i16 %rem.lhs.trunc.i, 6
  %conv3.i = trunc i16 %rem10.i to i8
  store i8 %conv3.i, ptr %sample_seq.i, align 1
  %arrayidx.i = getelementptr [6 x i8], ptr @minstrel_sample_seq, i32 0, i32 %conv2.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %phi.cast.i = zext i8 %28 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %seq.0.i = phi i32 [ %phi.cast.i, %if.then.i ], [ 0, %if.end9.if.end.i_crit_edge ]
  %sample_rates.i.i = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 18, i32 %seq.0.i, i32 1
  %29 = ptrtoint ptr %sample_rates.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sample_rates.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.end.i.do.end26_crit_edge

if.end.i.do.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

for.cond.i.i:                                     ; preds = %if.end.i
  %arrayidx1.1.i.i = getelementptr i16, ptr %sample_rates.i.i, i32 1
  %31 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx1.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.1.i.i = icmp eq i16 %32, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.do.end26_crit_edge

for.cond.i.i.do.end26_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx1.2.i.i = getelementptr i16, ptr %sample_rates.i.i, i32 2
  %33 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx1.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.2.i.i = icmp eq i16 %34, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.do.end26_crit_edge

for.cond.1.i.i.do.end26_crit_edge:                ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx1.3.i.i = getelementptr i16, ptr %sample_rates.i.i, i32 3
  %35 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx1.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.3.i.i = icmp eq i16 %36, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.do.end26_crit_edge

for.cond.2.i.i.do.end26_crit_edge:                ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx1.4.i.i = getelementptr i16, ptr %sample_rates.i.i, i32 4
  %37 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx1.4.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.4.i.i = icmp eq i16 %38, 0
  br i1 %tobool.not.4.i.i, label %for.cond.3.i.i.cleanup_crit_edge, label %for.cond.3.i.i.do.end26_crit_edge

for.cond.3.i.i.do.end26_crit_edge:                ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

for.cond.3.i.i.cleanup_crit_edge:                 ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end26:                                         ; preds = %for.cond.3.i.i.do.end26_crit_edge, %for.cond.2.i.i.do.end26_crit_edge, %for.cond.1.i.i.do.end26_crit_edge, %for.cond.i.i.do.end26_crit_edge, %if.end.i.do.end26_crit_edge
  %arrayidx1.lcssa.i.i = phi ptr [ %sample_rates.i.i, %if.end.i.do.end26_crit_edge ], [ %arrayidx1.1.i.i, %for.cond.i.i.do.end26_crit_edge ], [ %arrayidx1.2.i.i, %for.cond.1.i.i.do.end26_crit_edge ], [ %arrayidx1.3.i.i, %for.cond.2.i.i.do.end26_crit_edge ], [ %arrayidx1.4.i.i, %for.cond.3.i.i.do.end26_crit_edge ]
  %.lcssa.i.i = phi i16 [ %30, %if.end.i.do.end26_crit_edge ], [ %32, %for.cond.i.i.do.end26_crit_edge ], [ %34, %for.cond.1.i.i.do.end26_crit_edge ], [ %36, %for.cond.2.i.i.do.end26_crit_edge ], [ %38, %for.cond.3.i.i.do.end26_crit_edge ]
  %39 = ptrtoint ptr %arrayidx1.lcssa.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %arrayidx1.lcssa.i.i, align 2
  %40 = lshr i16 %.lcssa.i.i, 4
  %shr = zext i16 %40 to i32
  %arrayidx29 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr
  %and47 = and i16 %.lcssa.i.i, 15
  %cmp50 = icmp eq ptr %arrayidx29, getelementptr inbounds ([42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 16)
  br i1 %cmp50, label %land.lhs.true52, label %do.end26.if.end61_crit_edge

do.end26.if.end61_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

land.lhs.true52:                                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %and47)
  %cmp54 = icmp ugt i16 %and47, 3
  %short_preamble = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 6
  %41 = ptrtoint ptr %short_preamble to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %short_preamble, align 4, !range !42
  %43 = zext i1 %cmp54 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp58.not = icmp eq i8 %42, %43
  br i1 %cmp58.not, label %land.lhs.true52.if.end61_crit_edge, label %land.lhs.true52.cleanup_crit_edge

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true52.if.end61_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true52.if.end61_crit_edge, %do.end26.if.end61_crit_edge
  %44 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cb.i, align 8
  %or63 = or i32 %45, 4096
  store i32 %or63, ptr %cb.i, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %46 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, 2048
  store i16 %bf.set, ptr %count, align 1
  br i1 %cmp50, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %47 = and i16 %.lcssa.i.i, 3
  %rem = zext i16 %47 to i32
  %arrayidx68 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 %rem
  %48 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx68, align 1
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %2, align 1
  br label %if.end115

if.else:                                          ; preds = %if.end61
  %cmp70 = icmp eq ptr %arrayidx29, getelementptr inbounds ([42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 17)
  br i1 %cmp70, label %if.then72, label %if.else79

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %51 = and i16 %.lcssa.i.i, 7
  %rem75 = zext i16 %51 to i32
  %band = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 14
  %52 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %band, align 4
  %idxprom = zext i8 %53 to i32
  %arrayidx77 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %idxprom, i32 %rem75
  %54 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx77, align 1
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %2, align 1
  br label %if.end115

if.else79:                                        ; preds = %if.else
  %57 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx29, align 2
  %59 = and i16 %58, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool83.not = icmp eq i16 %59, 0
  br i1 %tobool83.not, label %if.else105, label %if.then84

if.then84:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #14
  %60 = trunc i16 %.lcssa.i.i to i8
  %conv104 = and i8 %60, 15
  %streams = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 1
  %61 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %streams, align 2
  tail call fastcc void @ieee80211_rate_set_vht(ptr noundef %2, i8 noundef zeroext %conv104, i8 noundef zeroext %62)
  br label %if.end115

if.else105:                                       ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #14
  %conv106 = trunc i16 %and47 to i8
  %streams107 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 1
  %63 = ptrtoint ptr %streams107 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %streams107, align 2
  %sub109 = shl i8 %64, 3
  %mul = add nsw i8 %conv106, -8
  %add110 = add i8 %mul, %sub109
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %add110, ptr %2, align 1
  br label %if.end115

if.end115:                                        ; preds = %if.else105, %if.then84, %if.then72, %if.then66
  %66 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx29, align 2
  %68 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %bf.load118 = load i16, ptr %count, align 1
  %bf.value = and i16 %67, 2047
  %bf.clear119 = and i16 %bf.load118, -2048
  %bf.set120 = or i16 %bf.clear119, %bf.value
  store i16 %bf.set120, ptr %count, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %land.lhs.true52.cleanup_crit_edge, %for.cond.3.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @minstrel_ht_add_sta_debugfs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @minstrel_ht_get_expected_throughput(ptr nocapture noundef readonly %priv_sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tp_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 4
  %0 = ptrtoint ptr %max_tp_rate to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_tp_rate, align 4
  %conv = zext i16 %1 to i32
  %shr = lshr i32 %conv, 4
  %and32 = and i32 %conv, 15
  %prob_avg = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 20, i32 %shr, i32 4, i32 %and32, i32 6
  %2 = ptrtoint ptr %prob_avg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prob_avg, align 4
  %conv36 = zext i16 %3 to i32
  %overhead1.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 7
  %4 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overhead1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %3)
  %cmp.i = icmp ult i16 %3, 409
  br i1 %cmp.i, label %entry.minstrel_ht_get_tp_avg.exit_crit_edge, label %if.end.i

entry.minstrel_ht_get_tp_avg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit

if.end.i:                                         ; preds = %entry
  %6 = and i32 %conv, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %overhead_legacy.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 9
  %8 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  %avg_ampdu_len.i.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 3
  %10 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %do.end13.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i = lshr i32 %11, 12
  br label %if.end4.i

do.end13.i.i:                                     ; preds = %if.else.i
  %12 = and i16 %1, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %12)
  %13 = icmp eq i16 %12, 256
  br i1 %13, label %do.end13.i.i.if.end4.i_crit_edge, label %if.end16.i.i

do.end13.i.i.if.end4.i_crit_edge:                 ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end16.i.i:                                     ; preds = %do.end13.i.i
  %arrayidx32.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 4, i32 %and32
  %14 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx32.i.i.i, align 2
  %conv.i.i.i = zext i16 %15 to i32
  %shift.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 2
  %16 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift.i.i.i, align 1
  %conv33.i.i.i = zext i8 %17 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i, %conv33.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i)
  %cmp.i.i = icmp sgt i32 %shl.i.i.i, 400000
  br i1 %cmp.i.i, label %if.end16.i.i.if.end4.i_crit_edge, label %if.end23.i.i

if.end16.i.i.if.end4.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end23.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i)
  %cmp24.i.i = icmp sgt i32 %shl.i.i.i, 250000
  br i1 %cmp24.i.i, label %if.end23.i.i.if.end4.i_crit_edge, label %if.end27.i.i

if.end23.i.i.if.end4.i_crit_edge:                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i)
  %cmp28.i.i = icmp sgt i32 %shl.i.i.i, 150000
  %..i.i = select i1 %cmp28.i.i, i32 8, i32 16
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end27.i.i, %if.end23.i.i.if.end4.i_crit_edge, %if.end16.i.i.if.end4.i_crit_edge, %do.end13.i.i.if.end4.i_crit_edge, %if.then.i.i, %if.then2.i
  %overhead.0.i = phi i32 [ %9, %if.then2.i ], [ %5, %if.then.i.i ], [ %5, %do.end13.i.i.if.end4.i_crit_edge ], [ %5, %if.end16.i.i.if.end4.i_crit_edge ], [ %5, %if.end23.i.i.if.end4.i_crit_edge ], [ %5, %if.end27.i.i ]
  %ampdu_len.0.i = phi i32 [ 1, %if.then2.i ], [ %shr.i.i, %if.then.i.i ], [ 1, %do.end13.i.i.if.end4.i_crit_edge ], [ 2, %if.end16.i.i.if.end4.i_crit_edge ], [ 4, %if.end23.i.i.if.end4.i_crit_edge ], [ %..i.i, %if.end27.i.i ]
  %mul.i = mul i32 %overhead.0.i, 1000
  %div.i = udiv i32 %mul.i, %ampdu_len.0.i
  %arrayidx5.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 4, i32 %and32
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5.i, align 2
  %conv.i = zext i16 %19 to i32
  %shift.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 2
  %20 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift.i, align 1
  %conv7.i = zext i8 %21 to i32
  %shl.i = shl i32 %conv.i, %conv7.i
  %add.i = add i32 %shl.i, %div.i
  %22 = tail call i32 @llvm.smin.i32(i32 %conv36, i32 3686) #12
  %mul12.i = mul nuw i32 %22, 1000000
  %div13.i = udiv i32 %mul12.i, %add.i
  %mul14.i = mul i32 %div13.i, 100
  %shr.i = lshr i32 %mul14.i, 12
  %phi.bo = mul i32 %shr.i, 96000
  %phi.bo45 = sdiv i32 %phi.bo, 1024
  br label %minstrel_ht_get_tp_avg.exit

minstrel_ht_get_tp_avg.exit:                      ; preds = %if.end4.i, %entry.minstrel_ht_get_tp_avg.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo45, %if.end4.i ], [ 0, %entry.minstrel_ht_get_tp_avg.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_update_caps(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sband, ptr nocapture noundef readonly %chandef, ptr noundef %sta, ptr noundef %priv_sta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %mcs1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ht_cap, align 4
  %vht_cap4 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %2 = ptrtoint ptr %vht_cap4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vht_cap4, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tx_mcs_map = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2, i32 2
  %4 = ptrtoint ptr %tx_mcs_map to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_mcs_map, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp ne i16 %5, -1
  %conv5 = zext i1 %cmp to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %use_vht.0 = phi i32 [ %conv5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds i8, ptr %priv_sta, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 10800)
  %8 = ptrtoint ptr %priv_sta to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sta, ptr %priv_sta, align 4
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %9 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %band, align 4
  %conv7 = trunc i32 %10 to i8
  %band8 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 14
  %11 = ptrtoint ptr %band8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %band8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_stats_update = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 6
  %13 = ptrtoint ptr %last_stats_update to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_stats_update, align 4
  %14 = load i32, ptr %band, align 4
  %call = tail call i32 @ieee80211_frame_duration(i32 noundef %14, i32 noundef 10, i32 noundef 60, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %15 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %band, align 4
  %call11 = tail call i32 @ieee80211_frame_duration(i32 noundef %16, i32 noundef 0, i32 noundef 60, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %overhead = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 7
  %add = add i32 %call11, %call
  %17 = ptrtoint ptr %overhead to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %overhead, align 4
  %mul = shl i32 %call, 1
  %add14 = add i32 %add, %mul
  %overhead_rtscts = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 8
  %18 = ptrtoint ptr %overhead_rtscts to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add14, ptr %overhead_rtscts, align 4
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 1
  %19 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bitrates, align 4
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 4
  %21 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp46.i = icmp sgt i32 %22, 0
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %if.end.land.end.i_crit_edge

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %cmp.i.i = icmp eq ptr %sta, null
  br i1 %cmp.i.i, label %for.body.lr.ph.i.rate_lowest_index.exit_crit_edge, label %for.body.lr.ph.i.split

for.body.lr.ph.i.rate_lowest_index.exit_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_lowest_index.exit

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i
  %23 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %band, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i.split
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i.split ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %27 = shl nuw i32 1, %i.047.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.rate_lowest_index.exit_crit_edge

for.body.i.rate_lowest_index.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_lowest_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end.land.end.i_crit_edge
  %.b43.i = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.rate_lowest_index.exit_crit_edge, label %if.then7.i, !prof !43

land.end.i.rate_lowest_index.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_lowest_index.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 6355, i32 noundef 9, ptr noundef null) #12
  br label %rate_lowest_index.exit

rate_lowest_index.exit:                           ; preds = %if.then7.i, %land.end.i.rate_lowest_index.exit_crit_edge, %for.body.i.rate_lowest_index.exit_crit_edge, %for.body.lr.ph.i.rate_lowest_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then7.i ], [ 0, %land.end.i.rate_lowest_index.exit_crit_edge ], [ 0, %for.body.lr.ph.i.rate_lowest_index.exit_crit_edge ], [ %i.047.i, %for.body.i.rate_lowest_index.exit_crit_edge ]
  %sext = shl i32 %retval.0.i, 24
  %idxprom = ashr exact i32 %sext, 24
  %arrayidx = getelementptr %struct.ieee80211_rate, ptr %20, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %band, align 4
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %20, i32 %idxprom, i32 1
  %33 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bitrate, align 4
  %conv18 = zext i16 %34 to i32
  %and = lshr i32 %30, 4
  %and.lobit = and i32 %and, 1
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %35 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %switch.selectcmp.i = icmp eq i32 %36, 7
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %switch.selectcmp2.i = icmp eq i32 %36, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 2, i32 %switch.select.i
  %call22 = tail call i32 @ieee80211_frame_duration(i32 noundef %32, i32 noundef 10, i32 noundef %conv18, i32 noundef %and.lobit, i32 noundef 1, i32 noundef %switch.select3.i) #12
  %overhead_legacy = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 9
  %37 = ptrtoint ptr %overhead_legacy to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call22, ptr %overhead_legacy, align 4
  %add25 = mul i32 %call22, 3
  %overhead_legacy_rtscts = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 10
  %38 = ptrtoint ptr %overhead_legacy_rtscts to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add25, ptr %overhead_legacy_rtscts, align 4
  %avg_ampdu_len = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 3
  %39 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4096, ptr %avg_ampdu_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_vht.0)
  %tobool26.not = icmp eq i32 %use_vht.0, 0
  br i1 %tobool26.not, label %if.then27, label %if.else34

if.then27:                                        ; preds = %rate_lowest_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = lshr i16 %1, 8
  %41 = and i16 %40, 3
  %42 = zext i16 %41 to i32
  %43 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %44 = icmp ne i16 %43, 0
  br label %if.end42

if.else34:                                        ; preds = %rate_lowest_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %cap35 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %cap35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cap35, align 4
  %and36 = lshr i32 %46, 8
  %shr37 = and i32 %and36, 7
  %and39 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40 = icmp ne i32 %and39, 0
  br label %if.end42

if.end42:                                         ; preds = %if.else34, %if.then27
  %ldpc.0.off0 = phi i1 [ %tobool40, %if.else34 ], [ %44, %if.then27 ]
  %stbc.0 = phi i32 [ %shr37, %if.else34 ], [ %42, %if.then27 ]
  %shl = shl nuw nsw i32 %stbc.0, 23
  %tx_flags = getelementptr inbounds %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 13
  %47 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_flags, align 4
  %or = or i32 %48, %shl
  %or46 = or i32 %or, 4194304
  %spec.select = select i1 %ldpc.0.off0, i32 %or46, i32 %or
  store i32 %spec.select, ptr %tx_flags, align 4
  %49 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool65.not = icmp eq i16 %49, 0
  %50 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool71.not = icmp eq i16 %50, 0
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %cap186 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 1
  %tx_mcs_map203 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end42
  %i.0336 = phi i32 [ 0, %if.end42 ], [ %inc215, %cleanup.for.body_crit_edge ]
  %arrayidx50 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i.0336
  %51 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx50, align 2
  %conv52 = zext i16 %52 to i32
  %arrayidx53 = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 19, i32 %i.0336
  %53 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %arrayidx53, align 2
  %54 = and i32 %i.0336, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %54)
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %for.body.cleanup_crit_edge, label %if.end56

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end56:                                         ; preds = %for.body
  %and57 = and i32 %conv52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %.pre = and i32 %conv52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool77.not = icmp eq i32 %.pre, 0
  br i1 %tobool58.not, label %if.end75, label %if.then59

if.then59:                                        ; preds = %if.end56
  br i1 %tobool77.not, label %if.else68, label %if.then62

if.then62:                                        ; preds = %if.then59
  br i1 %tobool65.not, label %if.then62.cleanup_crit_edge, label %if.then62.land.lhs.true_crit_edge

if.then62.land.lhs.true_crit_edge:                ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else68:                                        ; preds = %if.then59
  br i1 %tobool71.not, label %if.else68.cleanup_crit_edge, label %if.else68.if.end81_crit_edge

if.else68.if.end81_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end75:                                         ; preds = %if.end56
  br i1 %tobool77.not, label %if.end75.if.end81_crit_edge, label %if.end75.land.lhs.true_crit_edge

if.end75.land.lhs.true_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end75.land.lhs.true_crit_edge, %if.then62.land.lhs.true_crit_edge
  %56 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp78 = icmp eq i32 %57, 0
  br i1 %cmp78, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true.if.end81_crit_edge, %if.end75.if.end81_crit_edge, %if.else68.if.end81_crit_edge
  %tobool77.not341 = phi i1 [ false, %land.lhs.true.if.end81_crit_edge ], [ true, %if.end75.if.end81_crit_edge ], [ true, %if.else68.if.end81_crit_edge ]
  %streams = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i.0336, i32 1
  %58 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %streams, align 2
  %conv83 = zext i8 %59 to i32
  %60 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp84 = icmp eq i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp87 = icmp ugt i8 %59, 1
  %or.cond = select i1 %cmp84, i1 %cmp87, i1 false
  br i1 %or.cond, label %if.end81.cleanup_crit_edge, label %if.end90

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end90:                                         ; preds = %if.end81
  %and91 = and i32 %conv52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end109, label %if.then93

if.then93:                                        ; preds = %if.end90
  br i1 %tobool26.not, label %if.then93.if.end99_crit_edge, label %land.lhs.true95

if.then93.if.end99_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true95:                                  ; preds = %if.then93
  %62 = load i8, ptr @minstrel_vht_only, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool96.not = icmp eq i8 %62, 0
  br i1 %tobool96.not, label %land.lhs.true95.if.end99_crit_edge, label %land.lhs.true95.cleanup_crit_edge

land.lhs.true95.cleanup_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true95.if.end99_crit_edge:               ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end99:                                         ; preds = %land.lhs.true95.if.end99_crit_edge, %if.then93.if.end99_crit_edge
  %sub = add nsw i32 %conv83, -1
  %arrayidx100 = getelementptr [10 x i8], ptr %mcs1, i32 0, i32 %sub
  %63 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv101, ptr %arrayidx53, align 2
  br label %cleanup

if.end109:                                        ; preds = %if.end90
  %66 = ptrtoint ptr %vht_cap4 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vht_cap4, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool111.not = icmp eq i8 %67, 0
  br i1 %tobool111.not, label %if.end109.cleanup_crit_edge, label %lor.lhs.false

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end109
  %and112 = and i32 %conv52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.end126, label %lor.lhs.false140.critedge, !prof !44

do.end126:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1675, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

lor.lhs.false140.critedge:                        ; preds = %lor.lhs.false
  %and142 = and i32 %conv52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end175, label %do.end159, !prof !43

do.end159:                                        ; preds = %lor.lhs.false140.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1676, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end175:                                        ; preds = %lor.lhs.false140.critedge
  %and176 = and i32 %conv52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end175.if.end191_crit_edge, label %if.then178

if.end175.if.end191_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then178:                                       ; preds = %if.end175
  %68 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp180 = icmp ult i32 %69, 2
  br i1 %cmp180, label %if.then178.cleanup_crit_edge, label %lor.lhs.false182

if.then178.cleanup_crit_edge:                     ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false182:                                 ; preds = %if.then178
  br i1 %tobool58.not, label %lor.lhs.false182.if.end191_crit_edge, label %land.lhs.true185

lor.lhs.false182.if.end191_crit_edge:             ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.lhs.true185:                                 ; preds = %lor.lhs.false182
  %70 = ptrtoint ptr %cap186 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cap186, align 4
  %and187 = and i32 %71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %land.lhs.true185.cleanup_crit_edge, label %land.lhs.true185.if.end191_crit_edge

land.lhs.true185.if.end191_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.lhs.true185.cleanup_crit_edge:               ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end191:                                        ; preds = %land.lhs.true185.if.end191_crit_edge, %lor.lhs.false182.if.end191_crit_edge, %if.end175.if.end191_crit_edge
  %72 = lshr exact i32 %and176, 8
  %bw.0 = select i1 %tobool77.not341, i32 %72, i32 1
  %73 = ptrtoint ptr %tx_mcs_map203 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %tx_mcs_map203, align 4
  %75 = zext i32 %bw.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %bw.0, label %if.end191.if.end37.i_crit_edge [
    i32 0, label %if.then.i298
    i32 2, label %if.then5.i
  ]

if.end191.if.end37.i_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then.i298:                                     ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %switch.selectcmp.case1.i = icmp eq i8 %59, 3
  %76 = select i1 %switch.selectcmp.case1.i, i16 0, i16 512
  br label %if.end37.i

if.then5.i:                                       ; preds = %if.end191
  %switch.tableidx = add i8 %59, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %77 = icmp ult i8 %switch.tableidx, 5
  br i1 %77, label %switch.lookup, label %if.then5.i.if.end37.i_crit_edge

if.then5.i.if.end37.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

switch.lookup:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.minstrel_ht_update_caps, i32 0, i32 %78
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %79)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %if.end37.i

if.end37.i:                                       ; preds = %switch.lookup, %if.then5.i.if.end37.i_crit_edge, %if.then.i298, %if.end191.if.end37.i_crit_edge
  %mask.0.i = phi i16 [ 0, %if.end191.if.end37.i_crit_edge ], [ %76, %if.then.i298 ], [ %switch.load, %switch.lookup ], [ 0, %if.then5.i.if.end37.i_crit_edge ]
  %80 = tail call i16 @llvm.bswap.i16(i16 %74) #12
  %conv.i299 = zext i16 %80 to i32
  %sub.i = shl nuw nsw i32 %conv83, 1
  %mul.i = add nsw i32 %sub.i, -2
  %shr.i = lshr i32 %conv.i299, %mul.i
  %and.i = and i32 %shr.i, 3
  %81 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb40.i
    i32 2, label %if.end37.i.minstrel_get_valid_vht_rates.exit_crit_edge
  ]

if.end37.i.minstrel_get_valid_vht_rates.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_get_valid_vht_rates.exit

sw.bb.i:                                          ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = or i16 %mask.0.i, 768
  br label %minstrel_get_valid_vht_rates.exit

sw.bb40.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = or i16 %mask.0.i, 512
  br label %minstrel_get_valid_vht_rates.exit

sw.default.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_get_valid_vht_rates.exit

minstrel_get_valid_vht_rates.exit:                ; preds = %sw.default.i, %sw.bb40.i, %sw.bb.i, %if.end37.i.minstrel_get_valid_vht_rates.exit_crit_edge
  %mask.1.i = phi i16 [ 1023, %sw.default.i ], [ %mask.0.i, %if.end37.i.minstrel_get_valid_vht_rates.exit_crit_edge ], [ %83, %sw.bb40.i ], [ %82, %sw.bb.i ]
  %84 = and i16 %mask.1.i, 1023
  %85 = xor i16 %84, 1023
  %86 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %arrayidx53, align 2
  br label %cleanup

cleanup:                                          ; preds = %minstrel_get_valid_vht_rates.exit, %land.lhs.true185.cleanup_crit_edge, %if.then178.cleanup_crit_edge, %do.end159, %do.end126, %if.end109.cleanup_crit_edge, %if.end99, %land.lhs.true95.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else68.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc215 = add nuw nsw i32 %i.0336, 1
  %exitcond.not = icmp eq i32 %inc215, 42
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup
  %87 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.not.i = icmp eq i32 %88, 0
  br i1 %cmp.not.i, label %if.end.i, label %for.end.minstrel_ht_update_cck.exit_crit_edge

for.end.minstrel_ht_update_cck.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_cck.exit

if.end.i:                                         ; preds = %for.end
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ht_supported.i, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i301 = icmp eq i8 %90, 0
  br i1 %tobool.not.i301, label %if.end.i.if.end2.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags.i.i, align 4
  %95 = and i32 %94, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.i.not.i = icmp eq i32 %95, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.minstrel_ht_update_cck.exit_crit_edge, label %land.lhs.true.i.if.end2.i_crit_edge

land.lhs.true.i.if.end2.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

land.lhs.true.i.minstrel_ht_update_cck.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_cck.exit

if.end2.i:                                        ; preds = %land.lhs.true.i.if.end2.i_crit_edge, %if.end.i.if.end2.i_crit_edge
  %cmp.i.i302 = icmp eq ptr %sta, null
  %arrayidx14.i = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 19, i32 16
  %arrayidx.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 0
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %cmp4.i = icmp eq i8 %97, -1
  br i1 %cmp4.i, label %if.end2.i.for.inc.i307_crit_edge, label %lor.lhs.false.i

if.end2.i.for.inc.i307_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i307

lor.lhs.false.i:                                  ; preds = %if.end2.i
  br i1 %cmp.i.i302, label %lor.lhs.false.i.if.end13.i_crit_edge, label %rate_supported.exit.i305

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

rate_supported.exit.i305:                         ; preds = %lor.lhs.false.i
  %conv.i303 = zext i8 %97 to i32
  %98 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sta, align 4
  %100 = shl nuw i32 1, %conv.i303
  %101 = and i32 %99, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool11.not.i = icmp eq i32 %101, 0
  br i1 %tobool11.not.i, label %for.inc.thread.i, label %rate_supported.exit.i305.if.end13.i_crit_edge

rate_supported.exit.i305.if.end13.i_crit_edge:    ; preds = %rate_supported.exit.i305
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %rate_supported.exit.i305.if.end13.i_crit_edge, %lor.lhs.false.i.if.end13.i_crit_edge
  %102 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx14.i, align 2
  %conv16.i = or i16 %103, 1
  store i16 %conv16.i, ptr %arrayidx14.i, align 2
  %104 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bitrates, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %and.i306 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i306)
  %tobool18.not.i = icmp eq i32 %and.i306, 0
  br i1 %tobool18.not.i, label %if.end13.i.for.inc.i307_crit_edge, label %if.then19.i

if.end13.i.for.inc.i307_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i307

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv25.i = or i16 %103, 17
  %108 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv25.i, ptr %arrayidx14.i, align 2
  br label %for.inc.i307

for.inc.i307:                                     ; preds = %if.then19.i, %if.end13.i.for.inc.i307_crit_edge, %if.end2.i.for.inc.i307_crit_edge
  %arrayidx.1.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 1
  %109 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %110)
  %cmp4.1.i = icmp eq i8 %110, -1
  br i1 %cmp4.1.i, label %for.inc.i307.for.inc.1.i_crit_edge, label %lor.lhs.false.1.i

for.inc.i307.for.inc.1.i_crit_edge:               ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

for.inc.thread.i:                                 ; preds = %rate_supported.exit.i305
  %arrayidx.142.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 1
  %111 = ptrtoint ptr %arrayidx.142.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.142.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %112)
  %cmp4.143.i = icmp eq i8 %112, -1
  br i1 %cmp4.143.i, label %for.inc.thread.i.for.inc.1.i_crit_edge, label %for.inc.thread.i.rate_supported.exit.1.i_crit_edge

for.inc.thread.i.rate_supported.exit.1.i_crit_edge: ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.1.i

for.inc.thread.i.for.inc.1.i_crit_edge:           ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc.i307
  br i1 %cmp.i.i302, label %lor.lhs.false.1.i.if.end13.1.i_crit_edge, label %lor.lhs.false.1.i.rate_supported.exit.1.i_crit_edge

lor.lhs.false.1.i.rate_supported.exit.1.i_crit_edge: ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.1.i

lor.lhs.false.1.i.if.end13.1.i_crit_edge:         ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.1.i

rate_supported.exit.1.i:                          ; preds = %lor.lhs.false.1.i.rate_supported.exit.1.i_crit_edge, %for.inc.thread.i.rate_supported.exit.1.i_crit_edge
  %113 = phi i8 [ %110, %lor.lhs.false.1.i.rate_supported.exit.1.i_crit_edge ], [ %112, %for.inc.thread.i.rate_supported.exit.1.i_crit_edge ]
  %114 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %band, align 4
  %conv.1.i = zext i8 %113 to i32
  %arrayidx.i.1.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i.1.i, align 4
  %118 = shl nuw i32 1, %conv.1.i
  %119 = and i32 %117, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool11.not.1.i = icmp eq i32 %119, 0
  br i1 %tobool11.not.1.i, label %rate_supported.exit.1.i.for.inc.1.i_crit_edge, label %rate_supported.exit.1.i.if.end13.1.i_crit_edge

rate_supported.exit.1.i.if.end13.1.i_crit_edge:   ; preds = %rate_supported.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.1.i

rate_supported.exit.1.i.for.inc.1.i_crit_edge:    ; preds = %rate_supported.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.end13.1.i:                                     ; preds = %rate_supported.exit.1.i.if.end13.1.i_crit_edge, %lor.lhs.false.1.i.if.end13.1.i_crit_edge
  %120 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx14.i, align 2
  %conv16.1.i = or i16 %121, 2
  store i16 %conv16.1.i, ptr %arrayidx14.i, align 2
  %122 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bitrates, align 4
  %arrayidx17.1.i = getelementptr %struct.ieee80211_rate, ptr %123, i32 1
  %124 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx17.1.i, align 4
  %and.1.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool18.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool18.not.1.i, label %if.end13.1.i.for.inc.1.i_crit_edge, label %if.then19.1.i

if.end13.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.then19.1.i:                                    ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv25.1.i = or i16 %121, 34
  %126 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv25.1.i, ptr %arrayidx14.i, align 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then19.1.i, %if.end13.1.i.for.inc.1.i_crit_edge, %rate_supported.exit.1.i.for.inc.1.i_crit_edge, %for.inc.thread.i.for.inc.1.i_crit_edge, %for.inc.i307.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 2
  %127 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %128)
  %cmp4.2.i = icmp eq i8 %128, -1
  br i1 %cmp4.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %lor.lhs.false.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

lor.lhs.false.2.i:                                ; preds = %for.inc.1.i
  br i1 %cmp.i.i302, label %lor.lhs.false.2.i.if.end13.2.i_crit_edge, label %rate_supported.exit.2.i

lor.lhs.false.2.i.if.end13.2.i_crit_edge:         ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.2.i

rate_supported.exit.2.i:                          ; preds = %lor.lhs.false.2.i
  %129 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %band, align 4
  %conv.2.i = zext i8 %128 to i32
  %arrayidx.i.2.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %130
  %131 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.2.i, align 4
  %133 = shl nuw i32 1, %conv.2.i
  %134 = and i32 %132, %133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool11.not.2.i = icmp eq i32 %134, 0
  br i1 %tobool11.not.2.i, label %for.inc.2.thread.i, label %rate_supported.exit.2.i.if.end13.2.i_crit_edge

rate_supported.exit.2.i.if.end13.2.i_crit_edge:   ; preds = %rate_supported.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.2.i

if.end13.2.i:                                     ; preds = %rate_supported.exit.2.i.if.end13.2.i_crit_edge, %lor.lhs.false.2.i.if.end13.2.i_crit_edge
  %135 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx14.i, align 2
  %conv16.2.i = or i16 %136, 4
  store i16 %conv16.2.i, ptr %arrayidx14.i, align 2
  %137 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bitrates, align 4
  %arrayidx17.2.i = getelementptr %struct.ieee80211_rate, ptr %138, i32 2
  %139 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx17.2.i, align 4
  %and.2.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool18.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool18.not.2.i, label %if.end13.2.i.for.inc.2.i_crit_edge, label %if.then19.2.i

if.end13.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.then19.2.i:                                    ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv25.2.i = or i16 %136, 68
  %141 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv25.2.i, ptr %arrayidx14.i, align 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then19.2.i, %if.end13.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 3
  %142 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %143)
  %cmp4.3.i = icmp eq i8 %143, -1
  br i1 %cmp4.3.i, label %for.inc.2.i.minstrel_ht_update_cck.exit_crit_edge, label %lor.lhs.false.3.i

for.inc.2.i.minstrel_ht_update_cck.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_cck.exit

for.inc.2.thread.i:                               ; preds = %rate_supported.exit.2.i
  %arrayidx.344.i = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 7, i32 3
  %144 = ptrtoint ptr %arrayidx.344.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.344.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp4.345.i = icmp eq i8 %145, -1
  br i1 %cmp4.345.i, label %for.inc.2.thread.i.minstrel_ht_update_cck.exit_crit_edge, label %for.inc.2.thread.i.rate_supported.exit.3.i_crit_edge

for.inc.2.thread.i.rate_supported.exit.3.i_crit_edge: ; preds = %for.inc.2.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.3.i

for.inc.2.thread.i.minstrel_ht_update_cck.exit_crit_edge: ; preds = %for.inc.2.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_cck.exit

lor.lhs.false.3.i:                                ; preds = %for.inc.2.i
  br i1 %cmp.i.i302, label %lor.lhs.false.3.i.if.end13.3.i_crit_edge, label %lor.lhs.false.3.i.rate_supported.exit.3.i_crit_edge

lor.lhs.false.3.i.rate_supported.exit.3.i_crit_edge: ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.3.i

lor.lhs.false.3.i.if.end13.3.i_crit_edge:         ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.3.i

rate_supported.exit.3.i:                          ; preds = %lor.lhs.false.3.i.rate_supported.exit.3.i_crit_edge, %for.inc.2.thread.i.rate_supported.exit.3.i_crit_edge
  %146 = phi i8 [ %143, %lor.lhs.false.3.i.rate_supported.exit.3.i_crit_edge ], [ %145, %for.inc.2.thread.i.rate_supported.exit.3.i_crit_edge ]
  %147 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %band, align 4
  %conv.3.i = zext i8 %146 to i32
  %arrayidx.i.3.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i.3.i, align 4
  %151 = shl nuw i32 1, %conv.3.i
  %152 = and i32 %150, %151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool11.not.3.i = icmp eq i32 %152, 0
  br i1 %tobool11.not.3.i, label %rate_supported.exit.3.i.minstrel_ht_update_cck.exit_crit_edge, label %rate_supported.exit.3.i.if.end13.3.i_crit_edge

rate_supported.exit.3.i.if.end13.3.i_crit_edge:   ; preds = %rate_supported.exit.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.3.i

rate_supported.exit.3.i.minstrel_ht_update_cck.exit_crit_edge: ; preds = %rate_supported.exit.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_cck.exit

if.end13.3.i:                                     ; preds = %rate_supported.exit.3.i.if.end13.3.i_crit_edge, %lor.lhs.false.3.i.if.end13.3.i_crit_edge
  %153 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx14.i, align 2
  %conv16.3.i = or i16 %154, 8
  store i16 %conv16.3.i, ptr %arrayidx14.i, align 2
  %155 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bitrates, align 4
  %arrayidx17.3.i = getelementptr %struct.ieee80211_rate, ptr %156, i32 3
  %157 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx17.3.i, align 4
  %and.3.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool18.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool18.not.3.i, label %if.end13.3.i.minstrel_ht_update_cck.exit_crit_edge, label %if.then19.3.i

if.end13.3.i.minstrel_ht_update_cck.exit_crit_edge: ; preds = %if.end13.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_cck.exit

if.then19.3.i:                                    ; preds = %if.end13.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv25.3.i = or i16 %154, 136
  %159 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv25.3.i, ptr %arrayidx14.i, align 2
  br label %minstrel_ht_update_cck.exit

minstrel_ht_update_cck.exit:                      ; preds = %if.then19.3.i, %if.end13.3.i.minstrel_ht_update_cck.exit_crit_edge, %rate_supported.exit.3.i.minstrel_ht_update_cck.exit_crit_edge, %for.inc.2.thread.i.minstrel_ht_update_cck.exit_crit_edge, %for.inc.2.i.minstrel_ht_update_cck.exit_crit_edge, %land.lhs.true.i.minstrel_ht_update_cck.exit_crit_edge, %for.end.minstrel_ht_update_cck.exit_crit_edge
  %ht_supported.i308 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %160 = ptrtoint ptr %ht_supported.i308 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %ht_supported.i308, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i309 = icmp eq i8 %161, 0
  br i1 %tobool.not.i309, label %if.end.i313, label %minstrel_ht_update_cck.exit.minstrel_ht_update_ofdm.exit_crit_edge

minstrel_ht_update_cck.exit.minstrel_ht_update_ofdm.exit_crit_edge: ; preds = %minstrel_ht_update_cck.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_ofdm.exit

if.end.i313:                                      ; preds = %minstrel_ht_update_cck.exit
  %162 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %band, align 4
  %arrayidx.i311 = getelementptr %struct.minstrel_priv, ptr %priv, i32 0, i32 8, i32 %163
  %cmp.i.i312 = icmp eq ptr %sta, null
  %arrayidx10.i = getelementptr %struct.minstrel_ht_sta, ptr %priv_sta, i32 0, i32 19, i32 17
  %164 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i311, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %165)
  %cmp2.i = icmp eq i8 %165, -1
  br i1 %cmp2.i, label %if.end.i313.for.inc.i318_crit_edge, label %lor.lhs.false.i314

if.end.i313.for.inc.i318_crit_edge:               ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i318

lor.lhs.false.i314:                               ; preds = %if.end.i313
  br i1 %cmp.i.i312, label %lor.lhs.false.i314.if.end9.i_crit_edge, label %rate_supported.exit.i317

lor.lhs.false.i314.if.end9.i_crit_edge:           ; preds = %lor.lhs.false.i314
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

rate_supported.exit.i317:                         ; preds = %lor.lhs.false.i314
  %conv.i315 = zext i8 %165 to i32
  %arrayidx.i.i316 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %163
  %166 = ptrtoint ptr %arrayidx.i.i316 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i.i316, align 4
  %168 = shl nuw i32 1, %conv.i315
  %169 = and i32 %167, %168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool7.not.i = icmp eq i32 %169, 0
  br i1 %tobool7.not.i, label %for.inc.thread.i319, label %rate_supported.exit.i317.if.end9.i_crit_edge

rate_supported.exit.i317.if.end9.i_crit_edge:     ; preds = %rate_supported.exit.i317
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %rate_supported.exit.i317.if.end9.i_crit_edge, %lor.lhs.false.i314.if.end9.i_crit_edge
  %170 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx10.i, align 2
  %conv12.i = or i16 %171, 1
  store i16 %conv12.i, ptr %arrayidx10.i, align 2
  br label %for.inc.i318

for.inc.i318:                                     ; preds = %if.end9.i, %if.end.i313.for.inc.i318_crit_edge
  %arrayidx1.1.i = getelementptr i8, ptr %arrayidx.i311, i32 1
  %172 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx1.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %173)
  %cmp2.1.i = icmp eq i8 %173, -1
  br i1 %cmp2.1.i, label %for.inc.i318.for.inc.1.i324_crit_edge, label %lor.lhs.false.1.i320

for.inc.i318.for.inc.1.i324_crit_edge:            ; preds = %for.inc.i318
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i324

for.inc.thread.i319:                              ; preds = %rate_supported.exit.i317
  %arrayidx1.123.i = getelementptr i8, ptr %arrayidx.i311, i32 1
  %174 = ptrtoint ptr %arrayidx1.123.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx1.123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %175)
  %cmp2.124.i = icmp eq i8 %175, -1
  br i1 %cmp2.124.i, label %for.inc.thread.i319.for.inc.1.i324_crit_edge, label %for.inc.thread.i319.rate_supported.exit.1.i323_crit_edge

for.inc.thread.i319.rate_supported.exit.1.i323_crit_edge: ; preds = %for.inc.thread.i319
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.1.i323

for.inc.thread.i319.for.inc.1.i324_crit_edge:     ; preds = %for.inc.thread.i319
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i324

lor.lhs.false.1.i320:                             ; preds = %for.inc.i318
  br i1 %cmp.i.i312, label %lor.lhs.false.1.i320.if.end9.1.i_crit_edge, label %lor.lhs.false.1.i320.rate_supported.exit.1.i323_crit_edge

lor.lhs.false.1.i320.rate_supported.exit.1.i323_crit_edge: ; preds = %lor.lhs.false.1.i320
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.1.i323

lor.lhs.false.1.i320.if.end9.1.i_crit_edge:       ; preds = %lor.lhs.false.1.i320
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.1.i

rate_supported.exit.1.i323:                       ; preds = %lor.lhs.false.1.i320.rate_supported.exit.1.i323_crit_edge, %for.inc.thread.i319.rate_supported.exit.1.i323_crit_edge
  %176 = phi i8 [ %173, %lor.lhs.false.1.i320.rate_supported.exit.1.i323_crit_edge ], [ %175, %for.inc.thread.i319.rate_supported.exit.1.i323_crit_edge ]
  %177 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %band, align 4
  %conv.1.i321 = zext i8 %176 to i32
  %arrayidx.i.1.i322 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %178
  %179 = ptrtoint ptr %arrayidx.i.1.i322 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i.1.i322, align 4
  %181 = shl nuw i32 1, %conv.1.i321
  %182 = and i32 %180, %181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool7.not.1.i = icmp eq i32 %182, 0
  br i1 %tobool7.not.1.i, label %rate_supported.exit.1.i323.for.inc.1.i324_crit_edge, label %rate_supported.exit.1.i323.if.end9.1.i_crit_edge

rate_supported.exit.1.i323.if.end9.1.i_crit_edge: ; preds = %rate_supported.exit.1.i323
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.1.i

rate_supported.exit.1.i323.for.inc.1.i324_crit_edge: ; preds = %rate_supported.exit.1.i323
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i324

if.end9.1.i:                                      ; preds = %rate_supported.exit.1.i323.if.end9.1.i_crit_edge, %lor.lhs.false.1.i320.if.end9.1.i_crit_edge
  %183 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx10.i, align 2
  %conv12.1.i = or i16 %184, 2
  store i16 %conv12.1.i, ptr %arrayidx10.i, align 2
  br label %for.inc.1.i324

for.inc.1.i324:                                   ; preds = %if.end9.1.i, %rate_supported.exit.1.i323.for.inc.1.i324_crit_edge, %for.inc.thread.i319.for.inc.1.i324_crit_edge, %for.inc.i318.for.inc.1.i324_crit_edge
  %arrayidx1.2.i = getelementptr i8, ptr %arrayidx.i311, i32 2
  %185 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx1.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %186)
  %cmp2.2.i = icmp eq i8 %186, -1
  br i1 %cmp2.2.i, label %for.inc.1.i324.for.inc.2.i329_crit_edge, label %lor.lhs.false.2.i325

for.inc.1.i324.for.inc.2.i329_crit_edge:          ; preds = %for.inc.1.i324
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i329

lor.lhs.false.2.i325:                             ; preds = %for.inc.1.i324
  br i1 %cmp.i.i312, label %lor.lhs.false.2.i325.if.end9.2.i_crit_edge, label %rate_supported.exit.2.i328

lor.lhs.false.2.i325.if.end9.2.i_crit_edge:       ; preds = %lor.lhs.false.2.i325
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.2.i

rate_supported.exit.2.i328:                       ; preds = %lor.lhs.false.2.i325
  %187 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %band, align 4
  %conv.2.i326 = zext i8 %186 to i32
  %arrayidx.i.2.i327 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %188
  %189 = ptrtoint ptr %arrayidx.i.2.i327 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i.2.i327, align 4
  %191 = shl nuw i32 1, %conv.2.i326
  %192 = and i32 %190, %191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool7.not.2.i = icmp eq i32 %192, 0
  br i1 %tobool7.not.2.i, label %for.inc.2.thread.i330, label %rate_supported.exit.2.i328.if.end9.2.i_crit_edge

rate_supported.exit.2.i328.if.end9.2.i_crit_edge: ; preds = %rate_supported.exit.2.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.2.i

if.end9.2.i:                                      ; preds = %rate_supported.exit.2.i328.if.end9.2.i_crit_edge, %lor.lhs.false.2.i325.if.end9.2.i_crit_edge
  %193 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %arrayidx10.i, align 2
  %conv12.2.i = or i16 %194, 4
  store i16 %conv12.2.i, ptr %arrayidx10.i, align 2
  br label %for.inc.2.i329

for.inc.2.i329:                                   ; preds = %if.end9.2.i, %for.inc.1.i324.for.inc.2.i329_crit_edge
  %arrayidx1.3.i = getelementptr i8, ptr %arrayidx.i311, i32 3
  %195 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx1.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %196)
  %cmp2.3.i = icmp eq i8 %196, -1
  br i1 %cmp2.3.i, label %for.inc.2.i329.for.inc.3.i_crit_edge, label %lor.lhs.false.3.i331

for.inc.2.i329.for.inc.3.i_crit_edge:             ; preds = %for.inc.2.i329
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

for.inc.2.thread.i330:                            ; preds = %rate_supported.exit.2.i328
  %arrayidx1.325.i = getelementptr i8, ptr %arrayidx.i311, i32 3
  %197 = ptrtoint ptr %arrayidx1.325.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx1.325.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %198)
  %cmp2.326.i = icmp eq i8 %198, -1
  br i1 %cmp2.326.i, label %for.inc.2.thread.i330.for.inc.3.i_crit_edge, label %for.inc.2.thread.i330.rate_supported.exit.3.i334_crit_edge

for.inc.2.thread.i330.rate_supported.exit.3.i334_crit_edge: ; preds = %for.inc.2.thread.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.3.i334

for.inc.2.thread.i330.for.inc.3.i_crit_edge:      ; preds = %for.inc.2.thread.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

lor.lhs.false.3.i331:                             ; preds = %for.inc.2.i329
  br i1 %cmp.i.i312, label %lor.lhs.false.3.i331.if.end9.3.i_crit_edge, label %lor.lhs.false.3.i331.rate_supported.exit.3.i334_crit_edge

lor.lhs.false.3.i331.rate_supported.exit.3.i334_crit_edge: ; preds = %lor.lhs.false.3.i331
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.3.i334

lor.lhs.false.3.i331.if.end9.3.i_crit_edge:       ; preds = %lor.lhs.false.3.i331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.3.i

rate_supported.exit.3.i334:                       ; preds = %lor.lhs.false.3.i331.rate_supported.exit.3.i334_crit_edge, %for.inc.2.thread.i330.rate_supported.exit.3.i334_crit_edge
  %199 = phi i8 [ %196, %lor.lhs.false.3.i331.rate_supported.exit.3.i334_crit_edge ], [ %198, %for.inc.2.thread.i330.rate_supported.exit.3.i334_crit_edge ]
  %200 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %band, align 4
  %conv.3.i332 = zext i8 %199 to i32
  %arrayidx.i.3.i333 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %201
  %202 = ptrtoint ptr %arrayidx.i.3.i333 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx.i.3.i333, align 4
  %204 = shl nuw i32 1, %conv.3.i332
  %205 = and i32 %203, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool7.not.3.i = icmp eq i32 %205, 0
  br i1 %tobool7.not.3.i, label %rate_supported.exit.3.i334.for.inc.3.i_crit_edge, label %rate_supported.exit.3.i334.if.end9.3.i_crit_edge

rate_supported.exit.3.i334.if.end9.3.i_crit_edge: ; preds = %rate_supported.exit.3.i334
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.3.i

rate_supported.exit.3.i334.for.inc.3.i_crit_edge: ; preds = %rate_supported.exit.3.i334
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.end9.3.i:                                      ; preds = %rate_supported.exit.3.i334.if.end9.3.i_crit_edge, %lor.lhs.false.3.i331.if.end9.3.i_crit_edge
  %206 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %arrayidx10.i, align 2
  %conv12.3.i = or i16 %207, 8
  store i16 %conv12.3.i, ptr %arrayidx10.i, align 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end9.3.i, %rate_supported.exit.3.i334.for.inc.3.i_crit_edge, %for.inc.2.thread.i330.for.inc.3.i_crit_edge, %for.inc.2.i329.for.inc.3.i_crit_edge
  %arrayidx1.4.i = getelementptr i8, ptr %arrayidx.i311, i32 4
  %208 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx1.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %209)
  %cmp2.4.i = icmp eq i8 %209, -1
  br i1 %cmp2.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %lor.lhs.false.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

lor.lhs.false.4.i:                                ; preds = %for.inc.3.i
  br i1 %cmp.i.i312, label %lor.lhs.false.4.i.if.end9.4.i_crit_edge, label %rate_supported.exit.4.i

lor.lhs.false.4.i.if.end9.4.i_crit_edge:          ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.4.i

rate_supported.exit.4.i:                          ; preds = %lor.lhs.false.4.i
  %210 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %band, align 4
  %conv.4.i = zext i8 %209 to i32
  %arrayidx.i.4.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %211
  %212 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i.4.i, align 4
  %214 = shl nuw i32 1, %conv.4.i
  %215 = and i32 %213, %214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool7.not.4.i = icmp eq i32 %215, 0
  br i1 %tobool7.not.4.i, label %for.inc.4.thread.i, label %rate_supported.exit.4.i.if.end9.4.i_crit_edge

rate_supported.exit.4.i.if.end9.4.i_crit_edge:    ; preds = %rate_supported.exit.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.4.i

if.end9.4.i:                                      ; preds = %rate_supported.exit.4.i.if.end9.4.i_crit_edge, %lor.lhs.false.4.i.if.end9.4.i_crit_edge
  %216 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx10.i, align 2
  %conv12.4.i = or i16 %217, 16
  store i16 %conv12.4.i, ptr %arrayidx10.i, align 2
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end9.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx1.5.i = getelementptr i8, ptr %arrayidx.i311, i32 5
  %218 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx1.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %219)
  %cmp2.5.i = icmp eq i8 %219, -1
  br i1 %cmp2.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %lor.lhs.false.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

for.inc.4.thread.i:                               ; preds = %rate_supported.exit.4.i
  %arrayidx1.527.i = getelementptr i8, ptr %arrayidx.i311, i32 5
  %220 = ptrtoint ptr %arrayidx1.527.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx1.527.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %221)
  %cmp2.528.i = icmp eq i8 %221, -1
  br i1 %cmp2.528.i, label %for.inc.4.thread.i.for.inc.5.i_crit_edge, label %for.inc.4.thread.i.rate_supported.exit.5.i_crit_edge

for.inc.4.thread.i.rate_supported.exit.5.i_crit_edge: ; preds = %for.inc.4.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.5.i

for.inc.4.thread.i.for.inc.5.i_crit_edge:         ; preds = %for.inc.4.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

lor.lhs.false.5.i:                                ; preds = %for.inc.4.i
  br i1 %cmp.i.i312, label %lor.lhs.false.5.i.if.end9.5.i_crit_edge, label %lor.lhs.false.5.i.rate_supported.exit.5.i_crit_edge

lor.lhs.false.5.i.rate_supported.exit.5.i_crit_edge: ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.5.i

lor.lhs.false.5.i.if.end9.5.i_crit_edge:          ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.5.i

rate_supported.exit.5.i:                          ; preds = %lor.lhs.false.5.i.rate_supported.exit.5.i_crit_edge, %for.inc.4.thread.i.rate_supported.exit.5.i_crit_edge
  %222 = phi i8 [ %219, %lor.lhs.false.5.i.rate_supported.exit.5.i_crit_edge ], [ %221, %for.inc.4.thread.i.rate_supported.exit.5.i_crit_edge ]
  %223 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %band, align 4
  %conv.5.i = zext i8 %222 to i32
  %arrayidx.i.5.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %224
  %225 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx.i.5.i, align 4
  %227 = shl nuw i32 1, %conv.5.i
  %228 = and i32 %226, %227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool7.not.5.i = icmp eq i32 %228, 0
  br i1 %tobool7.not.5.i, label %rate_supported.exit.5.i.for.inc.5.i_crit_edge, label %rate_supported.exit.5.i.if.end9.5.i_crit_edge

rate_supported.exit.5.i.if.end9.5.i_crit_edge:    ; preds = %rate_supported.exit.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.5.i

rate_supported.exit.5.i.for.inc.5.i_crit_edge:    ; preds = %rate_supported.exit.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

if.end9.5.i:                                      ; preds = %rate_supported.exit.5.i.if.end9.5.i_crit_edge, %lor.lhs.false.5.i.if.end9.5.i_crit_edge
  %229 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %arrayidx10.i, align 2
  %conv12.5.i = or i16 %230, 32
  store i16 %conv12.5.i, ptr %arrayidx10.i, align 2
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.end9.5.i, %rate_supported.exit.5.i.for.inc.5.i_crit_edge, %for.inc.4.thread.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx1.6.i = getelementptr i8, ptr %arrayidx.i311, i32 6
  %231 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx1.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %232)
  %cmp2.6.i = icmp eq i8 %232, -1
  br i1 %cmp2.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %lor.lhs.false.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6.i

lor.lhs.false.6.i:                                ; preds = %for.inc.5.i
  br i1 %cmp.i.i312, label %lor.lhs.false.6.i.if.end9.6.i_crit_edge, label %rate_supported.exit.6.i

lor.lhs.false.6.i.if.end9.6.i_crit_edge:          ; preds = %lor.lhs.false.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.6.i

rate_supported.exit.6.i:                          ; preds = %lor.lhs.false.6.i
  %233 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %band, align 4
  %conv.6.i = zext i8 %232 to i32
  %arrayidx.i.6.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %234
  %235 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i.6.i, align 4
  %237 = shl nuw i32 1, %conv.6.i
  %238 = and i32 %236, %237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool7.not.6.i = icmp eq i32 %238, 0
  br i1 %tobool7.not.6.i, label %for.inc.6.thread.i, label %rate_supported.exit.6.i.if.end9.6.i_crit_edge

rate_supported.exit.6.i.if.end9.6.i_crit_edge:    ; preds = %rate_supported.exit.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.6.i

if.end9.6.i:                                      ; preds = %rate_supported.exit.6.i.if.end9.6.i_crit_edge, %lor.lhs.false.6.i.if.end9.6.i_crit_edge
  %239 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %arrayidx10.i, align 2
  %conv12.6.i = or i16 %240, 64
  store i16 %conv12.6.i, ptr %arrayidx10.i, align 2
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.end9.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %arrayidx1.7.i = getelementptr i8, ptr %arrayidx.i311, i32 7
  %241 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx1.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %242)
  %cmp2.7.i = icmp eq i8 %242, -1
  br i1 %cmp2.7.i, label %for.inc.6.i.minstrel_ht_update_ofdm.exit_crit_edge, label %lor.lhs.false.7.i

for.inc.6.i.minstrel_ht_update_ofdm.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_ofdm.exit

for.inc.6.thread.i:                               ; preds = %rate_supported.exit.6.i
  %arrayidx1.729.i = getelementptr i8, ptr %arrayidx.i311, i32 7
  %243 = ptrtoint ptr %arrayidx1.729.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx1.729.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %244)
  %cmp2.730.i = icmp eq i8 %244, -1
  br i1 %cmp2.730.i, label %for.inc.6.thread.i.minstrel_ht_update_ofdm.exit_crit_edge, label %for.inc.6.thread.i.rate_supported.exit.7.i_crit_edge

for.inc.6.thread.i.rate_supported.exit.7.i_crit_edge: ; preds = %for.inc.6.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.7.i

for.inc.6.thread.i.minstrel_ht_update_ofdm.exit_crit_edge: ; preds = %for.inc.6.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_ofdm.exit

lor.lhs.false.7.i:                                ; preds = %for.inc.6.i
  br i1 %cmp.i.i312, label %lor.lhs.false.7.i.if.end9.7.i_crit_edge, label %lor.lhs.false.7.i.rate_supported.exit.7.i_crit_edge

lor.lhs.false.7.i.rate_supported.exit.7.i_crit_edge: ; preds = %lor.lhs.false.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_supported.exit.7.i

lor.lhs.false.7.i.if.end9.7.i_crit_edge:          ; preds = %lor.lhs.false.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.7.i

rate_supported.exit.7.i:                          ; preds = %lor.lhs.false.7.i.rate_supported.exit.7.i_crit_edge, %for.inc.6.thread.i.rate_supported.exit.7.i_crit_edge
  %245 = phi i8 [ %242, %lor.lhs.false.7.i.rate_supported.exit.7.i_crit_edge ], [ %244, %for.inc.6.thread.i.rate_supported.exit.7.i_crit_edge ]
  %246 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %band, align 4
  %conv.7.i = zext i8 %245 to i32
  %arrayidx.i.7.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %247
  %248 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx.i.7.i, align 4
  %250 = shl nuw i32 1, %conv.7.i
  %251 = and i32 %249, %250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool7.not.7.i = icmp eq i32 %251, 0
  br i1 %tobool7.not.7.i, label %rate_supported.exit.7.i.minstrel_ht_update_ofdm.exit_crit_edge, label %rate_supported.exit.7.i.if.end9.7.i_crit_edge

rate_supported.exit.7.i.if.end9.7.i_crit_edge:    ; preds = %rate_supported.exit.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.7.i

rate_supported.exit.7.i.minstrel_ht_update_ofdm.exit_crit_edge: ; preds = %rate_supported.exit.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_update_ofdm.exit

if.end9.7.i:                                      ; preds = %rate_supported.exit.7.i.if.end9.7.i_crit_edge, %lor.lhs.false.7.i.if.end9.7.i_crit_edge
  %252 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %arrayidx10.i, align 2
  %conv12.7.i = or i16 %253, 128
  store i16 %conv12.7.i, ptr %arrayidx10.i, align 2
  br label %minstrel_ht_update_ofdm.exit

minstrel_ht_update_ofdm.exit:                     ; preds = %if.end9.7.i, %rate_supported.exit.7.i.minstrel_ht_update_ofdm.exit_crit_edge, %for.inc.6.thread.i.minstrel_ht_update_ofdm.exit_crit_edge, %for.inc.6.i.minstrel_ht_update_ofdm.exit_crit_edge, %minstrel_ht_update_cck.exit.minstrel_ht_update_ofdm.exit_crit_edge
  tail call fastcc void @minstrel_ht_update_stats(ptr noundef %priv, ptr noundef %priv_sta)
  tail call fastcc void @minstrel_ht_update_rates(ptr noundef %priv, ptr noundef %priv_sta)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_frame_duration(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_update_stats(ptr nocapture noundef readonly %mp, ptr noundef %mi) unnamed_addr #4 align 64 {
entry:
  %tmp_mcs_tp_rate = alloca [4 x i16], align 8
  %tmp_group_tp_rate = alloca [4 x i16], align 8
  %tmp_legacy_tp_rate = alloca [4 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_mcs_tp_rate) #12
  %0 = getelementptr inbounds [4 x i16], ptr %tmp_mcs_tp_rate, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i16], ptr %tmp_mcs_tp_rate, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i16], ptr %tmp_mcs_tp_rate, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_group_tp_rate) #12
  %3 = getelementptr inbounds [4 x i16], ptr %tmp_group_tp_rate, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i16], ptr %tmp_group_tp_rate, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i16], ptr %tmp_group_tp_rate, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_legacy_tp_rate) #12
  %6 = getelementptr inbounds [4 x i16], ptr %tmp_legacy_tp_rate, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i16], ptr %tmp_legacy_tp_rate, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i16], ptr %tmp_legacy_tp_rate, i32 0, i32 3
  %9 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mi, align 4
  %ht_supported1 = getelementptr inbounds %struct.ieee80211_sta, ptr %10, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %ht_supported1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ht_supported1, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %ampdu_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 2
  %13 = ptrtoint ptr %ampdu_packets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ampdu_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mp, align 4
  %arrayidx.i.i = getelementptr %struct.ieee80211_hw, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  %avg_ampdu_len = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 3
  br i1 %tobool.i.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %avg_ampdu_len, align 4
  %ampdu_len = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 1
  %22 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ampdu_len, align 4
  %shl = shl i32 %23, 12
  %div = udiv i32 %shl, %14
  %sub.i = sub i32 %div, %21
  %mul.i = shl i32 %sub.i, 5
  %div.i = sdiv i32 %mul.i, 128
  %add.i = add i32 %div.i, %21
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %.sink = phi i32 [ %add.i, %if.then2 ], [ 0, %if.then.if.end_crit_edge ]
  %24 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %avg_ampdu_len, align 4
  %ampdu_len7 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 1
  %25 = ptrtoint ptr %ampdu_len7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ampdu_len7, align 4
  %26 = ptrtoint ptr %ampdu_packets to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ampdu_packets, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %arrayidx = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 16
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool10.not = icmp eq i16 %28, 0
  br i1 %tobool10.not, label %if.else12, label %if.end9.do.body23_crit_edge

if.end9.do.body23_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body23

if.else12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx14 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 17
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool15.not = icmp eq i16 %30, 0
  %. = select i1 %tobool15.not, i16 0, i16 272
  br label %do.body23

do.body23:                                        ; preds = %if.else12, %if.end9.do.body23_crit_edge
  %.546 = phi i16 [ 272, %if.else12 ], [ 256, %if.end9.do.body23_crit_edge ]
  %group.0 = phi i16 [ %., %if.else12 ], [ 256, %if.end9.do.body23_crit_edge ]
  %31 = ptrtoint ptr %tmp_legacy_tp_rate to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %group.0, ptr %tmp_legacy_tp_rate, align 2
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %group.0, ptr %6, align 2
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %group.0, ptr %7, align 2
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %group.0, ptr %8, align 2
  %arrayidx57 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 18
  %35 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool58.not = icmp ne i16 %36, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool58.not, i1 true, i1 %tobool.not.not
  %.mux = select i1 %tobool58.not, i16 288, i16 0
  %spec.select709 = select i1 %brmerge, i16 %.mux, i16 %.546
  %37 = ptrtoint ptr %tmp_mcs_tp_rate to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %spec.select709, ptr %tmp_mcs_tp_rate, align 8
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %spec.select709, ptr %0, align 2
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %spec.select709, ptr %1, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %spec.select709, ptr %2, align 2
  %spec.select = select i1 %tobool.not, ptr %tmp_mcs_tp_rate, ptr %tmp_legacy_tp_rate
  %overhead1.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 7
  %avg_ampdu_len.i.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 3
  %max_tp_rate.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %overhead_legacy.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 9
  br label %for.body125

for.body125:                                      ; preds = %cleanup.for.body125_crit_edge, %do.body23
  %group.2733 = phi i32 [ 0, %do.body23 ], [ %inc294, %cleanup.for.body125_crit_edge ]
  %arrayidx128 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 %group.2733
  %41 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx128, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool129.not = icmp eq i16 %42, 0
  br i1 %tobool129.not, label %for.body125.cleanup_crit_edge, label %do.end156.3

for.body125.cleanup_crit_edge:                    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end156.3:                                      ; preds = %for.body125
  %group.2.tr = trunc i32 %group.2733 to i16
  %conv177 = shl i16 %group.2.tr, 4
  %43 = ptrtoint ptr %tmp_group_tp_rate to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv177, ptr %tmp_group_tp_rate, align 8
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv177, ptr %3, align 2
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv177, ptr %4, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv177, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %group.2733)
  %cmp182 = icmp eq i32 %group.2733, 16
  %tp_rate.0 = select i1 %cmp182, ptr %spec.select, ptr %tmp_mcs_tp_rate
  %shl223 = shl i32 %group.2733, 4
  %47 = and i32 %group.2733, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %47)
  %48 = icmp eq i32 %47, 16
  %shift.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.2733, i32 2
  br label %for.body192

for.body192:                                      ; preds = %for.inc288.for.body192_crit_edge, %do.end156.3
  %i.0731 = phi i32 [ 9, %do.end156.3 ], [ %dec, %for.inc288.for.body192_crit_edge ]
  %last_prob.0730 = phi i16 [ 0, %do.end156.3 ], [ %last_prob.2, %for.inc288.for.body192_crit_edge ]
  %49 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx128, align 2
  %conv195 = zext i16 %50 to i32
  %shl196 = shl nuw i32 1, %i.0731
  %and197 = and i32 %shl196, %conv195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %for.body192.for.inc288_crit_edge, label %do.end245

for.body192.for.inc288_crit_edge:                 ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc288

do.end245:                                        ; preds = %for.body192
  %or249 = or i32 %i.0731, %shl223
  %conv250 = trunc i32 %or249 to i16
  %arrayidx251 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731
  %retry_updated = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 10
  %51 = ptrtoint ptr %retry_updated to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %retry_updated, align 2
  %52 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx251, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp.not.i = icmp eq i16 %53, 0
  br i1 %cmp.not.i, label %do.end245.minstrel_ht_calc_rate_stats.exit_crit_edge, label %if.then.i, !prof !43

do.end245.minstrel_ht_calc_rate_stats.exit_crit_edge: ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_calc_rate_stats.exit

if.then.i:                                        ; preds = %do.end245
  %conv.i = zext i16 %53 to i32
  %success.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 2
  %54 = ptrtoint ptr %success.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %success.i, align 4
  %conv3.i = zext i16 %55 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 12
  %div.i558 = udiv i32 %shl.i, %conv.i
  %prob_avg.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 6
  %prob_avg_1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 7
  %56 = ptrtoint ptr %prob_avg.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %prob_avg.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv.i)
  %tobool.not.i.i = icmp ult i32 %shl.i, %conv.i
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 %div.i558
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool2.not.i.i = icmp eq i16 %57, 0
  br i1 %tobool2.not.i.i, label %if.then.i.minstrel_filter_avg_add.exit.i_crit_edge, label %if.end4.i.i

if.then.i.minstrel_filter_avg_add.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_filter_avg_add.exit.i

if.end4.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %prob_avg_1.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %prob_avg_1.i, align 2
  %conv1.i.i = zext i16 %59 to i32
  %conv.i.i = zext i16 %57 to i32
  %mul.i.i = mul i32 %spec.select.i.i, 1173
  %mul5.i.i = mul nuw nsw i32 %conv.i.i, 5273
  %add6.i.i = add i32 %mul.i.i, %mul5.i.i
  %mul7.i.i = mul nsw i32 %conv1.i.i, -2350
  %add8.i.i = add i32 %add6.i.i, %mul7.i.i
  %shr.i.i = ashr i32 %add8.i.i, 12
  %60 = tail call i32 @llvm.smin.i32(i32 %shr.i.i, i32 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp12.i.i = icmp slt i32 %60, 0
  %spec.store.select18.i.i = select i1 %cmp12.i.i, i32 1, i32 %60
  br label %minstrel_filter_avg_add.exit.i

minstrel_filter_avg_add.exit.i:                   ; preds = %if.end4.i.i, %if.then.i.minstrel_filter_avg_add.exit.i_crit_edge
  %out_1.0.i.i = phi i32 [ %conv.i.i, %if.end4.i.i ], [ %spec.select.i.i, %if.then.i.minstrel_filter_avg_add.exit.i_crit_edge ]
  %val.0.i.i = phi i32 [ %spec.store.select18.i.i, %if.end4.i.i ], [ %spec.select.i.i, %if.then.i.minstrel_filter_avg_add.exit.i_crit_edge ]
  %conv16.i.i = trunc i32 %out_1.0.i.i to i16
  %61 = ptrtoint ptr %prob_avg_1.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv16.i.i, ptr %prob_avg_1.i, align 2
  %conv17.i.i = trunc i32 %val.0.i.i to i16
  %62 = ptrtoint ptr %prob_avg.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv17.i.i, ptr %prob_avg.i, align 2
  %att_hist.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 4
  %63 = ptrtoint ptr %att_hist.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %att_hist.i, align 4
  %add.i559 = add i32 %64, %conv.i
  store i32 %add.i559, ptr %att_hist.i, align 4
  %succ_hist.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 5
  %65 = ptrtoint ptr %succ_hist.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %succ_hist.i, align 4
  %add10.i = add i32 %66, %conv3.i
  store i32 %add10.i, ptr %succ_hist.i, align 4
  br label %minstrel_ht_calc_rate_stats.exit

minstrel_ht_calc_rate_stats.exit:                 ; preds = %minstrel_filter_avg_add.exit.i, %do.end245.minstrel_ht_calc_rate_stats.exit_crit_edge
  %success11.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 2
  %67 = ptrtoint ptr %success11.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %success11.i, align 4
  %last_success.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 3
  %69 = ptrtoint ptr %last_success.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %last_success.i, align 2
  %last_attempts.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 1
  %70 = ptrtoint ptr %last_attempts.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %53, ptr %last_attempts.i, align 2
  store i16 0, ptr %success11.i, align 4
  %71 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %arrayidx251, align 4
  %att_hist = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 4
  %72 = ptrtoint ptr %att_hist to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %att_hist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool252.not = icmp eq i32 %73, 0
  %prob_avg265 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 6
  %74 = ptrtoint ptr %prob_avg265 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %prob_avg265, align 4
  %76 = tail call i16 @llvm.umax.i16(i16 %last_prob.0730, i16 %75)
  br i1 %tobool252.not, label %if.else264, label %minstrel_ht_calc_rate_stats.exit.if.end279_crit_edge

minstrel_ht_calc_rate_stats.exit.if.end279_crit_edge: ; preds = %minstrel_ht_calc_rate_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

if.else264:                                       ; preds = %minstrel_ht_calc_rate_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %prob_avg265 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %prob_avg265, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.else264, %minstrel_ht_calc_rate_stats.exit.if.end279_crit_edge
  %last_prob.1 = phi i16 [ %last_prob.0730, %if.else264 ], [ %76, %minstrel_ht_calc_rate_stats.exit.if.end279_crit_edge ]
  %prob_avg280 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 4, i32 %i.0731, i32 6
  %78 = ptrtoint ptr %prob_avg280 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %prob_avg280, align 4
  %conv281 = zext i16 %79 to i32
  %80 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %overhead1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %79)
  %cmp.i = icmp ult i16 %79, 409
  br i1 %cmp.i, label %if.end279.for.inc288_crit_edge, label %if.end.i

if.end279.for.inc288_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc288

if.end.i:                                         ; preds = %if.end279
  br i1 %48, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %overhead_legacy.i, align 4
  br label %minstrel_ht_get_tp_avg.exit

if.else.i:                                        ; preds = %if.end.i
  %84 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i560 = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i560, label %do.end13.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i561 = lshr i32 %85, 12
  br label %minstrel_ht_get_tp_avg.exit

do.end13.i.i:                                     ; preds = %if.else.i
  %86 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %max_tp_rate.i.i, align 4
  %88 = and i16 %87, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %88)
  %89 = icmp eq i16 %88, 256
  br i1 %89, label %do.end13.i.i.minstrel_ht_get_tp_avg.exit_crit_edge, label %if.end16.i.i

do.end13.i.i.minstrel_ht_get_tp_avg.exit_crit_edge: ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit

if.end16.i.i:                                     ; preds = %do.end13.i.i
  %conv19.i.i = zext i16 %87 to i32
  %and.i.i.i = lshr i32 %conv19.i.i, 4
  %and30.i.i.i = and i32 %conv19.i.i, 15
  %arrayidx32.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i, i32 4, i32 %and30.i.i.i
  %90 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx32.i.i.i, align 2
  %conv.i.i.i = zext i16 %91 to i32
  %shift.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i, i32 2
  %92 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %shift.i.i.i, align 1
  %conv33.i.i.i = zext i8 %93 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i, %conv33.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i)
  %cmp.i.i = icmp sgt i32 %shl.i.i.i, 400000
  br i1 %cmp.i.i, label %if.end16.i.i.minstrel_ht_get_tp_avg.exit_crit_edge, label %if.end23.i.i

if.end16.i.i.minstrel_ht_get_tp_avg.exit_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit

if.end23.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i)
  %cmp24.i.i = icmp sgt i32 %shl.i.i.i, 250000
  br i1 %cmp24.i.i, label %if.end23.i.i.minstrel_ht_get_tp_avg.exit_crit_edge, label %if.end27.i.i

if.end23.i.i.minstrel_ht_get_tp_avg.exit_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit

if.end27.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i)
  %cmp28.i.i = icmp sgt i32 %shl.i.i.i, 150000
  %..i.i = select i1 %cmp28.i.i, i32 8, i32 16
  br label %minstrel_ht_get_tp_avg.exit

minstrel_ht_get_tp_avg.exit:                      ; preds = %if.end27.i.i, %if.end23.i.i.minstrel_ht_get_tp_avg.exit_crit_edge, %if.end16.i.i.minstrel_ht_get_tp_avg.exit_crit_edge, %do.end13.i.i.minstrel_ht_get_tp_avg.exit_crit_edge, %if.then.i.i, %if.then2.i
  %overhead.0.i = phi i32 [ %83, %if.then2.i ], [ %81, %if.then.i.i ], [ %81, %do.end13.i.i.minstrel_ht_get_tp_avg.exit_crit_edge ], [ %81, %if.end16.i.i.minstrel_ht_get_tp_avg.exit_crit_edge ], [ %81, %if.end23.i.i.minstrel_ht_get_tp_avg.exit_crit_edge ], [ %81, %if.end27.i.i ]
  %ampdu_len.0.i = phi i32 [ 1, %if.then2.i ], [ %shr.i.i561, %if.then.i.i ], [ 1, %do.end13.i.i.minstrel_ht_get_tp_avg.exit_crit_edge ], [ 2, %if.end16.i.i.minstrel_ht_get_tp_avg.exit_crit_edge ], [ 4, %if.end23.i.i.minstrel_ht_get_tp_avg.exit_crit_edge ], [ %..i.i, %if.end27.i.i ]
  %mul.i562 = mul i32 %overhead.0.i, 1000
  %div.i563 = udiv i32 %mul.i562, %ampdu_len.0.i
  %arrayidx5.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.2733, i32 4, i32 %i.0731
  %94 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx5.i, align 2
  %conv.i564 = zext i16 %95 to i32
  %96 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %shift.i, align 1
  %conv7.i = zext i8 %97 to i32
  %shl.i565 = shl i32 %conv.i564, %conv7.i
  %add.i566 = add i32 %shl.i565, %div.i563
  %98 = tail call i32 @llvm.smin.i32(i32 %conv281, i32 3686) #12
  %mul12.i = mul nuw i32 %98, 1000000
  %div13.i = udiv i32 %mul12.i, %add.i566
  %mul14.i = mul i32 %div13.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul14.i)
  %cmp283 = icmp ult i32 %mul14.i, 4096
  br i1 %cmp283, label %minstrel_ht_get_tp_avg.exit.for.inc288_crit_edge, label %if.end286

minstrel_ht_get_tp_avg.exit.for.inc288_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc288

if.end286:                                        ; preds = %minstrel_ht_get_tp_avg.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %mi, i16 noundef zeroext %conv250, ptr noundef nonnull %tp_rate.0)
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %mi, i16 noundef zeroext %conv250, ptr noundef nonnull %tmp_group_tp_rate)
  br label %for.inc288

for.inc288:                                       ; preds = %if.end286, %minstrel_ht_get_tp_avg.exit.for.inc288_crit_edge, %if.end279.for.inc288_crit_edge, %for.body192.for.inc288_crit_edge
  %last_prob.2 = phi i16 [ %last_prob.1, %minstrel_ht_get_tp_avg.exit.for.inc288_crit_edge ], [ %last_prob.1, %if.end286 ], [ %last_prob.0730, %for.body192.for.inc288_crit_edge ], [ %last_prob.1, %if.end279.for.inc288_crit_edge ]
  %dec = add nsw i32 %i.0731, -1
  %cmp190.not = icmp eq i32 %i.0731, 0
  br i1 %cmp190.not, label %for.end289, label %for.inc288.for.body192_crit_edge

for.inc288.for.body192_crit_edge:                 ; preds = %for.inc288
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body192

for.end289:                                       ; preds = %for.inc288
  call void @__sanitizer_cov_trace_pc() #14
  %max_group_tp_rate = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.2733, i32 2
  %99 = ptrtoint ptr %tmp_group_tp_rate to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %tmp_group_tp_rate, align 8
  %101 = ptrtoint ptr %max_group_tp_rate to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %100, ptr %max_group_tp_rate, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end289, %for.body125.cleanup_crit_edge
  %inc294 = add nuw nsw i32 %group.2733, 1
  %exitcond.not = icmp eq i32 %inc294, 42
  br i1 %exitcond.not, label %for.end295, label %cleanup.for.body125_crit_edge

cleanup.for.body125_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body125

for.end295:                                       ; preds = %cleanup
  %102 = ptrtoint ptr %tmp_legacy_tp_rate to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %tmp_legacy_tp_rate, align 2
  %conv.i567 = zext i16 %103 to i32
  %shr.i568 = lshr i32 %conv.i567, 4
  %and31.i = and i32 %conv.i567, 15
  %prob_avg.i569 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr.i568, i32 4, i32 %and31.i, i32 6
  %104 = ptrtoint ptr %prob_avg.i569 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %prob_avg.i569, align 4
  %conv35.i = zext i16 %105 to i32
  %106 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %overhead1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %105)
  %cmp.i.i570 = icmp ult i16 %105, 409
  br i1 %cmp.i.i570, label %for.end295.minstrel_ht_get_tp_avg.exit.i_crit_edge, label %if.end.i.i

for.end295.minstrel_ht_get_tp_avg.exit.i_crit_edge: ; preds = %for.end295
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit.i

if.end.i.i:                                       ; preds = %for.end295
  %108 = and i32 %conv.i567, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %108)
  %109 = icmp eq i32 %108, 256
  br i1 %109, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i.i574

if.else.i.i:                                      ; preds = %if.end.i.i
  %112 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i.i.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i.i.i, label %do.end13.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i.i = lshr i32 %113, 12
  br label %if.end4.i.i574

do.end13.i.i.i:                                   ; preds = %if.else.i.i
  %114 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %max_tp_rate.i.i, align 4
  %116 = and i16 %115, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %116)
  %117 = icmp eq i16 %116, 256
  br i1 %117, label %do.end13.i.i.i.if.end4.i.i574_crit_edge, label %if.end16.i.i.i

do.end13.i.i.i.if.end4.i.i574_crit_edge:          ; preds = %do.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i574

if.end16.i.i.i:                                   ; preds = %do.end13.i.i.i
  %conv19.i.i.i = zext i16 %115 to i32
  %and.i.i.i.i = lshr i32 %conv19.i.i.i, 4
  %and30.i.i.i.i = and i32 %conv19.i.i.i, 15
  %arrayidx32.i.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i.i, i32 4, i32 %and30.i.i.i.i
  %118 = ptrtoint ptr %arrayidx32.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx32.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %119 to i32
  %shift.i.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i.i, i32 2
  %120 = ptrtoint ptr %shift.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %shift.i.i.i.i, align 1
  %conv33.i.i.i.i = zext i8 %121 to i32
  %shl.i.i.i.i = shl i32 %conv.i.i.i.i, %conv33.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %shl.i.i.i.i, 400000
  br i1 %cmp.i.i.i, label %if.end16.i.i.i.if.end4.i.i574_crit_edge, label %if.end23.i.i.i

if.end16.i.i.i.if.end4.i.i574_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i574

if.end23.i.i.i:                                   ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i.i)
  %cmp24.i.i.i = icmp sgt i32 %shl.i.i.i.i, 250000
  br i1 %cmp24.i.i.i, label %if.end23.i.i.i.if.end4.i.i574_crit_edge, label %if.end27.i.i.i

if.end23.i.i.i.if.end4.i.i574_crit_edge:          ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i574

if.end27.i.i.i:                                   ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i.i)
  %cmp28.i.i.i = icmp sgt i32 %shl.i.i.i.i, 150000
  %..i.i.i = select i1 %cmp28.i.i.i, i32 8, i32 16
  br label %if.end4.i.i574

if.end4.i.i574:                                   ; preds = %if.end27.i.i.i, %if.end23.i.i.i.if.end4.i.i574_crit_edge, %if.end16.i.i.i.if.end4.i.i574_crit_edge, %do.end13.i.i.i.if.end4.i.i574_crit_edge, %if.then.i.i.i, %if.then2.i.i
  %overhead.0.i.i = phi i32 [ %111, %if.then2.i.i ], [ %107, %if.then.i.i.i ], [ %107, %do.end13.i.i.i.if.end4.i.i574_crit_edge ], [ %107, %if.end16.i.i.i.if.end4.i.i574_crit_edge ], [ %107, %if.end23.i.i.i.if.end4.i.i574_crit_edge ], [ %107, %if.end27.i.i.i ]
  %ampdu_len.0.i.i = phi i32 [ 1, %if.then2.i.i ], [ %shr.i.i.i, %if.then.i.i.i ], [ 1, %do.end13.i.i.i.if.end4.i.i574_crit_edge ], [ 2, %if.end16.i.i.i.if.end4.i.i574_crit_edge ], [ 4, %if.end23.i.i.i.if.end4.i.i574_crit_edge ], [ %..i.i.i, %if.end27.i.i.i ]
  %mul.i.i571 = mul i32 %overhead.0.i.i, 1000
  %div.i.i = udiv i32 %mul.i.i571, %ampdu_len.0.i.i
  %arrayidx5.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr.i568, i32 4, i32 %and31.i
  %122 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx5.i.i, align 2
  %conv.i.i572 = zext i16 %123 to i32
  %shift.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr.i568, i32 2
  %124 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %shift.i.i, align 1
  %conv7.i.i = zext i8 %125 to i32
  %shl.i.i = shl i32 %conv.i.i572, %conv7.i.i
  %add.i.i = add i32 %shl.i.i, %div.i.i
  %126 = tail call i32 @llvm.smin.i32(i32 %conv35.i, i32 3686) #12
  %mul12.i.i = mul nuw i32 %126, 1000000
  %div13.i.i = udiv i32 %mul12.i.i, %add.i.i
  %mul14.i.i = mul i32 %div13.i.i, 100
  %shr.i.i573 = lshr i32 %mul14.i.i, 12
  br label %minstrel_ht_get_tp_avg.exit.i

minstrel_ht_get_tp_avg.exit.i:                    ; preds = %if.end4.i.i574, %for.end295.minstrel_ht_get_tp_avg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shr.i.i573, %if.end4.i.i574 ], [ 0, %for.end295.minstrel_ht_get_tp_avg.exit.i_crit_edge ]
  %127 = ptrtoint ptr %tmp_mcs_tp_rate to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %tmp_mcs_tp_rate, align 8
  %conv53.i = zext i16 %128 to i32
  %shr55.i = lshr i32 %conv53.i, 4
  %and74.i = and i32 %conv53.i, 15
  %prob_avg80.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr55.i, i32 4, i32 %and74.i, i32 6
  %129 = ptrtoint ptr %prob_avg80.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %prob_avg80.i, align 4
  %conv81.i = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %130)
  %cmp.i105.i = icmp ult i16 %130, 409
  br i1 %cmp.i105.i, label %minstrel_ht_get_tp_avg.exit.i.minstrel_ht_get_tp_avg.exit147.i_crit_edge, label %if.end.i106.i

minstrel_ht_get_tp_avg.exit.i.minstrel_ht_get_tp_avg.exit147.i_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit147.i

if.end.i106.i:                                    ; preds = %minstrel_ht_get_tp_avg.exit.i
  %131 = and i32 %conv53.i, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %131)
  %132 = icmp eq i32 %131, 256
  br i1 %132, label %if.then2.i108.i, label %if.else.i111.i

if.then2.i108.i:                                  ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i145.i

if.else.i111.i:                                   ; preds = %if.end.i106.i
  %135 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i.i110.i = icmp eq i32 %136, 0
  br i1 %tobool.not.i.i110.i, label %do.end13.i.i115.i, label %if.then.i.i113.i

if.then.i.i113.i:                                 ; preds = %if.else.i111.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i112.i = lshr i32 %136, 12
  br label %if.end4.i145.i

do.end13.i.i115.i:                                ; preds = %if.else.i111.i
  %137 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %max_tp_rate.i.i, align 4
  %139 = and i16 %138, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %139)
  %140 = icmp eq i16 %139, 256
  br i1 %140, label %do.end13.i.i115.i.if.end4.i145.i_crit_edge, label %if.end16.i.i125.i

do.end13.i.i115.i.if.end4.i145.i_crit_edge:       ; preds = %do.end13.i.i115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i145.i

if.end16.i.i125.i:                                ; preds = %do.end13.i.i115.i
  %conv19.i.i116.i = zext i16 %138 to i32
  %and.i.i.i117.i = lshr i32 %conv19.i.i116.i, 4
  %and30.i.i.i118.i = and i32 %conv19.i.i116.i, 15
  %arrayidx32.i.i.i119.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i117.i, i32 4, i32 %and30.i.i.i118.i
  %141 = ptrtoint ptr %arrayidx32.i.i.i119.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx32.i.i.i119.i, align 2
  %conv.i.i.i120.i = zext i16 %142 to i32
  %shift.i.i.i121.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i117.i, i32 2
  %143 = ptrtoint ptr %shift.i.i.i121.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %shift.i.i.i121.i, align 1
  %conv33.i.i.i122.i = zext i8 %144 to i32
  %shl.i.i.i123.i = shl i32 %conv.i.i.i120.i, %conv33.i.i.i122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i123.i)
  %cmp.i.i124.i = icmp sgt i32 %shl.i.i.i123.i, 400000
  br i1 %cmp.i.i124.i, label %if.end16.i.i125.i.if.end4.i145.i_crit_edge, label %if.end23.i.i127.i

if.end16.i.i125.i.if.end4.i145.i_crit_edge:       ; preds = %if.end16.i.i125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i145.i

if.end23.i.i127.i:                                ; preds = %if.end16.i.i125.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i123.i)
  %cmp24.i.i126.i = icmp sgt i32 %shl.i.i.i123.i, 250000
  br i1 %cmp24.i.i126.i, label %if.end23.i.i127.i.if.end4.i145.i_crit_edge, label %if.end27.i.i130.i

if.end23.i.i127.i.if.end4.i145.i_crit_edge:       ; preds = %if.end23.i.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i145.i

if.end27.i.i130.i:                                ; preds = %if.end23.i.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i123.i)
  %cmp28.i.i128.i = icmp sgt i32 %shl.i.i.i123.i, 150000
  %..i.i129.i = select i1 %cmp28.i.i128.i, i32 8, i32 16
  br label %if.end4.i145.i

if.end4.i145.i:                                   ; preds = %if.end27.i.i130.i, %if.end23.i.i127.i.if.end4.i145.i_crit_edge, %if.end16.i.i125.i.if.end4.i145.i_crit_edge, %do.end13.i.i115.i.if.end4.i145.i_crit_edge, %if.then.i.i113.i, %if.then2.i108.i
  %overhead.0.i131.i = phi i32 [ %134, %if.then2.i108.i ], [ %107, %if.then.i.i113.i ], [ %107, %do.end13.i.i115.i.if.end4.i145.i_crit_edge ], [ %107, %if.end16.i.i125.i.if.end4.i145.i_crit_edge ], [ %107, %if.end23.i.i127.i.if.end4.i145.i_crit_edge ], [ %107, %if.end27.i.i130.i ]
  %ampdu_len.0.i132.i = phi i32 [ 1, %if.then2.i108.i ], [ %shr.i.i112.i, %if.then.i.i113.i ], [ 1, %do.end13.i.i115.i.if.end4.i145.i_crit_edge ], [ 2, %if.end16.i.i125.i.if.end4.i145.i_crit_edge ], [ 4, %if.end23.i.i127.i.if.end4.i145.i_crit_edge ], [ %..i.i129.i, %if.end27.i.i130.i ]
  %mul.i133.i = mul i32 %overhead.0.i131.i, 1000
  %div.i134.i = udiv i32 %mul.i133.i, %ampdu_len.0.i132.i
  %arrayidx5.i135.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr55.i, i32 4, i32 %and74.i
  %145 = ptrtoint ptr %arrayidx5.i135.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx5.i135.i, align 2
  %conv.i136.i = zext i16 %146 to i32
  %shift.i137.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr55.i, i32 2
  %147 = ptrtoint ptr %shift.i137.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %shift.i137.i, align 1
  %conv7.i138.i = zext i8 %148 to i32
  %shl.i139.i = shl i32 %conv.i136.i, %conv7.i138.i
  %add.i140.i = add i32 %shl.i139.i, %div.i134.i
  %149 = tail call i32 @llvm.smin.i32(i32 %conv81.i, i32 3686) #12
  %mul12.i141.i = mul nuw i32 %149, 1000000
  %div13.i142.i = udiv i32 %mul12.i141.i, %add.i140.i
  %mul14.i143.i = mul i32 %div13.i142.i, 100
  %shr.i144.i = lshr i32 %mul14.i143.i, 12
  br label %minstrel_ht_get_tp_avg.exit147.i

minstrel_ht_get_tp_avg.exit147.i:                 ; preds = %if.end4.i145.i, %minstrel_ht_get_tp_avg.exit.i.minstrel_ht_get_tp_avg.exit147.i_crit_edge
  %retval.0.i146.i = phi i32 [ %shr.i144.i, %if.end4.i145.i ], [ 0, %minstrel_ht_get_tp_avg.exit.i.minstrel_ht_get_tp_avg.exit147.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %retval.0.i146.i)
  %cmp.i575 = icmp ugt i32 %retval.0.i.i, %retval.0.i146.i
  br i1 %cmp.i575, label %for.body.preheader.i, label %minstrel_ht_get_tp_avg.exit147.i.minstrel_ht_assign_best_tp_rates.exit_crit_edge

minstrel_ht_get_tp_avg.exit147.i.minstrel_ht_assign_best_tp_rates.exit_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_assign_best_tp_rates.exit

for.body.preheader.i:                             ; preds = %minstrel_ht_get_tp_avg.exit147.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %mi, i16 noundef zeroext %103, ptr noundef nonnull %tmp_mcs_tp_rate) #12
  %150 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %6, align 2
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %mi, i16 noundef zeroext %151, ptr noundef nonnull %tmp_mcs_tp_rate) #12
  %152 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %7, align 2
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %mi, i16 noundef zeroext %153, ptr noundef nonnull %tmp_mcs_tp_rate) #12
  %154 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %8, align 2
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %mi, i16 noundef zeroext %155, ptr noundef nonnull %tmp_mcs_tp_rate) #12
  br label %minstrel_ht_assign_best_tp_rates.exit

minstrel_ht_assign_best_tp_rates.exit:            ; preds = %for.body.preheader.i, %minstrel_ht_get_tp_avg.exit147.i.minstrel_ht_assign_best_tp_rates.exit_crit_edge
  %156 = ptrtoint ptr %tmp_mcs_tp_rate to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %tmp_mcs_tp_rate, align 8
  %158 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 8)
  store i64 %157, ptr %max_tp_rate.i.i, align 4
  br label %for.body303

for.body303:                                      ; preds = %for.inc418.for.body303_crit_edge, %minstrel_ht_assign_best_tp_rates.exit
  %group.3739 = phi i32 [ 0, %minstrel_ht_assign_best_tp_rates.exit ], [ %inc419, %for.inc418.for.body303_crit_edge ]
  %tmp_max_prob_rate.0738 = phi i16 [ %spec.select709, %minstrel_ht_assign_best_tp_rates.exit ], [ %tmp_max_prob_rate.7, %for.inc418.for.body303_crit_edge ]
  %arrayidx305 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 %group.3739
  %159 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %arrayidx305, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool306.not = icmp eq i16 %160, 0
  br i1 %tobool306.not, label %for.body303.for.inc418_crit_edge, label %do.end331

for.body303.for.inc418_crit_edge:                 ; preds = %for.body303
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc418

do.end331:                                        ; preds = %for.body303
  %shl333 = shl nuw nsw i32 %group.3739, 4
  %conv352 = trunc i32 %shl333 to i16
  %max_group_prob_rate = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.3739, i32 3
  %161 = ptrtoint ptr %max_group_prob_rate to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv352, ptr %max_group_prob_rate, align 2
  %162 = and i32 %group.3739, 4094
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %162)
  %163 = icmp eq i32 %162, 16
  %.not.i = xor i1 %163, true
  %shift.i297.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.3739, i32 2
  br label %for.body356

for.body356:                                      ; preds = %for.inc415.for.body356_crit_edge, %do.end331
  %i.1736 = phi i32 [ 0, %do.end331 ], [ %inc416, %for.inc415.for.body356_crit_edge ]
  %tmp_max_prob_rate.1735 = phi i16 [ %tmp_max_prob_rate.0738, %do.end331 ], [ %tmp_max_prob_rate.6, %for.inc415.for.body356_crit_edge ]
  %164 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx305, align 2
  %conv359 = zext i16 %165 to i32
  %shl360 = shl nuw nsw i32 1, %i.1736
  %and361 = and i32 %shl360, %conv359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %for.body356.for.inc415_crit_edge, label %do.end409

for.body356.for.inc415_crit_edge:                 ; preds = %for.body356
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc415

do.end409:                                        ; preds = %for.body356
  %or413 = or i32 %i.1736, %shl333
  %conv414 = trunc i32 %or413 to i16
  %conv49.i = zext i16 %tmp_max_prob_rate.1735 to i32
  %shr51.i = lshr i32 %conv49.i, 4
  %and69.i = and i32 %conv49.i, 15
  %prob_avg.i579 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr51.i, i32 4, i32 %and69.i, i32 6
  %166 = ptrtoint ptr %prob_avg.i579 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %prob_avg.i579, align 4
  %conv75.i = zext i16 %167 to i32
  %168 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %overhead1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %167)
  %cmp.i.i581 = icmp ult i16 %167, 409
  br i1 %cmp.i.i581, label %do.end409.minstrel_ht_get_tp_avg.exit.i623_crit_edge, label %if.end.i.i582

do.end409.minstrel_ht_get_tp_avg.exit.i623_crit_edge: ; preds = %do.end409
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit.i623

if.end.i.i582:                                    ; preds = %do.end409
  %170 = and i32 %conv49.i, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %170)
  %171 = icmp eq i32 %170, 256
  br i1 %171, label %if.then2.i.i584, label %if.else.i.i587

if.then2.i.i584:                                  ; preds = %if.end.i.i582
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i.i621

if.else.i.i587:                                   ; preds = %if.end.i.i582
  %174 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i.i.i586 = icmp eq i32 %175, 0
  br i1 %tobool.not.i.i.i586, label %do.end13.i.i.i591, label %if.then.i.i.i589

if.then.i.i.i589:                                 ; preds = %if.else.i.i587
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i.i588 = lshr i32 %175, 12
  br label %if.end4.i.i621

do.end13.i.i.i591:                                ; preds = %if.else.i.i587
  %176 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %max_tp_rate.i.i, align 4
  %178 = and i16 %177, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %178)
  %179 = icmp eq i16 %178, 256
  br i1 %179, label %do.end13.i.i.i591.if.end4.i.i621_crit_edge, label %if.end16.i.i.i601

do.end13.i.i.i591.if.end4.i.i621_crit_edge:       ; preds = %do.end13.i.i.i591
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i621

if.end16.i.i.i601:                                ; preds = %do.end13.i.i.i591
  %conv19.i.i.i592 = zext i16 %177 to i32
  %and.i.i.i.i593 = lshr i32 %conv19.i.i.i592, 4
  %and30.i.i.i.i594 = and i32 %conv19.i.i.i592, 15
  %arrayidx32.i.i.i.i595 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i.i593, i32 4, i32 %and30.i.i.i.i594
  %180 = ptrtoint ptr %arrayidx32.i.i.i.i595 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx32.i.i.i.i595, align 2
  %conv.i.i.i.i596 = zext i16 %181 to i32
  %shift.i.i.i.i597 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i.i593, i32 2
  %182 = ptrtoint ptr %shift.i.i.i.i597 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %shift.i.i.i.i597, align 1
  %conv33.i.i.i.i598 = zext i8 %183 to i32
  %shl.i.i.i.i599 = shl i32 %conv.i.i.i.i596, %conv33.i.i.i.i598
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i.i599)
  %cmp.i.i.i600 = icmp sgt i32 %shl.i.i.i.i599, 400000
  br i1 %cmp.i.i.i600, label %if.end16.i.i.i601.if.end4.i.i621_crit_edge, label %if.end23.i.i.i603

if.end16.i.i.i601.if.end4.i.i621_crit_edge:       ; preds = %if.end16.i.i.i601
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i621

if.end23.i.i.i603:                                ; preds = %if.end16.i.i.i601
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i.i599)
  %cmp24.i.i.i602 = icmp sgt i32 %shl.i.i.i.i599, 250000
  br i1 %cmp24.i.i.i602, label %if.end23.i.i.i603.if.end4.i.i621_crit_edge, label %if.end27.i.i.i606

if.end23.i.i.i603.if.end4.i.i621_crit_edge:       ; preds = %if.end23.i.i.i603
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i621

if.end27.i.i.i606:                                ; preds = %if.end23.i.i.i603
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i.i599)
  %cmp28.i.i.i604 = icmp sgt i32 %shl.i.i.i.i599, 150000
  %..i.i.i605 = select i1 %cmp28.i.i.i604, i32 8, i32 16
  br label %if.end4.i.i621

if.end4.i.i621:                                   ; preds = %if.end27.i.i.i606, %if.end23.i.i.i603.if.end4.i.i621_crit_edge, %if.end16.i.i.i601.if.end4.i.i621_crit_edge, %do.end13.i.i.i591.if.end4.i.i621_crit_edge, %if.then.i.i.i589, %if.then2.i.i584
  %overhead.0.i.i607 = phi i32 [ %173, %if.then2.i.i584 ], [ %169, %if.then.i.i.i589 ], [ %169, %do.end13.i.i.i591.if.end4.i.i621_crit_edge ], [ %169, %if.end16.i.i.i601.if.end4.i.i621_crit_edge ], [ %169, %if.end23.i.i.i603.if.end4.i.i621_crit_edge ], [ %169, %if.end27.i.i.i606 ]
  %ampdu_len.0.i.i608 = phi i32 [ 1, %if.then2.i.i584 ], [ %shr.i.i.i588, %if.then.i.i.i589 ], [ 1, %do.end13.i.i.i591.if.end4.i.i621_crit_edge ], [ 2, %if.end16.i.i.i601.if.end4.i.i621_crit_edge ], [ 4, %if.end23.i.i.i603.if.end4.i.i621_crit_edge ], [ %..i.i.i605, %if.end27.i.i.i606 ]
  %mul.i.i609 = mul i32 %overhead.0.i.i607, 1000
  %div.i.i610 = udiv i32 %mul.i.i609, %ampdu_len.0.i.i608
  %arrayidx5.i.i611 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr51.i, i32 4, i32 %and69.i
  %184 = ptrtoint ptr %arrayidx5.i.i611 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %arrayidx5.i.i611, align 2
  %conv.i.i612 = zext i16 %185 to i32
  %shift.i.i613 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr51.i, i32 2
  %186 = ptrtoint ptr %shift.i.i613 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %shift.i.i613, align 1
  %conv7.i.i614 = zext i8 %187 to i32
  %shl.i.i615 = shl i32 %conv.i.i612, %conv7.i.i614
  %add.i.i616 = add i32 %shl.i.i615, %div.i.i610
  %188 = tail call i32 @llvm.smin.i32(i32 %conv75.i, i32 3686) #12
  %mul12.i.i617 = mul nuw i32 %188, 1000000
  %div13.i.i618 = udiv i32 %mul12.i.i617, %add.i.i616
  %mul14.i.i619 = mul i32 %div13.i.i618, 100
  %shr.i.i620 = lshr i32 %mul14.i.i619, 12
  br label %minstrel_ht_get_tp_avg.exit.i623

minstrel_ht_get_tp_avg.exit.i623:                 ; preds = %if.end4.i.i621, %do.end409.minstrel_ht_get_tp_avg.exit.i623_crit_edge
  %retval.0.i.i622 = phi i32 [ %shr.i.i620, %if.end4.i.i621 ], [ 0, %do.end409.minstrel_ht_get_tp_avg.exit.i623_crit_edge ]
  %189 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %max_tp_rate.i.i, align 4
  %conv93.i = zext i16 %190 to i32
  %shr95.i = lshr i32 %conv93.i, 4
  %and115.i = and i32 %conv93.i, 15
  %prob_avg121.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr95.i, i32 4, i32 %and115.i, i32 6
  %191 = ptrtoint ptr %prob_avg121.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %prob_avg121.i, align 4
  %193 = and i32 %conv93.i, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %193)
  %194 = icmp eq i32 %193, 256
  %or.cond.i = select i1 %.not.i, i1 true, i1 %194
  br i1 %or.cond.i, label %if.end.i625, label %minstrel_ht_get_tp_avg.exit.i623.for.inc415_crit_edge

minstrel_ht_get_tp_avg.exit.i623.for.inc415_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit.i623
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc415

if.end.i625:                                      ; preds = %minstrel_ht_get_tp_avg.exit.i623
  %arrayidx32.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr95.i, i32 4, i32 %and115.i
  %195 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %arrayidx32.i.i, align 2
  %conv.i289.i = zext i16 %196 to i32
  %shift.i290.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr95.i, i32 2
  %197 = ptrtoint ptr %shift.i290.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %shift.i290.i, align 1
  %conv33.i.i = zext i8 %198 to i32
  %shl.i291.i = shl i32 %conv.i289.i, %conv33.i.i
  %arrayidx32.i295.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.3739, i32 4, i32 %i.1736
  %199 = ptrtoint ptr %arrayidx32.i295.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %arrayidx32.i295.i, align 2
  %conv.i296.i = zext i16 %200 to i32
  %201 = ptrtoint ptr %shift.i297.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %shift.i297.i, align 1
  %conv33.i298.i = zext i8 %202 to i32
  %shl.i299.i = shl i32 %conv.i296.i, %conv33.i298.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i291.i, i32 %shl.i299.i)
  %cmp.i624 = icmp sgt i32 %shl.i291.i, %shl.i299.i
  br i1 %cmp.i624, label %land.lhs.true152.i, label %if.end.i625.do.end173.i_crit_edge

if.end.i625.do.end173.i_crit_edge:                ; preds = %if.end.i625
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end173.i

land.lhs.true152.i:                               ; preds = %if.end.i625
  %prob_avg153.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.3739, i32 4, i32 %i.1736, i32 6
  %203 = ptrtoint ptr %prob_avg153.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %prob_avg153.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %204, i16 %192)
  %cmp155.i = icmp ult i16 %204, %192
  br i1 %cmp155.i, label %land.lhs.true152.i.for.inc415_crit_edge, label %land.lhs.true152.i.do.end173.i_crit_edge

land.lhs.true152.i.do.end173.i_crit_edge:         ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end173.i

land.lhs.true152.i.for.inc415_crit_edge:          ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc415

do.end173.i:                                      ; preds = %land.lhs.true152.i.do.end173.i_crit_edge, %if.end.i625.do.end173.i_crit_edge
  %205 = ptrtoint ptr %max_group_prob_rate to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %max_group_prob_rate, align 2
  %conv175.i = zext i16 %206 to i32
  %shr177.i = lshr i32 %conv175.i, 4
  %and196.i = and i32 %conv175.i, 15
  %prob_avg202.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr177.i, i32 4, i32 %and196.i, i32 6
  %207 = ptrtoint ptr %prob_avg202.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %prob_avg202.i, align 4
  %conv203.i = zext i16 %208 to i32
  %prob_avg204.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.3739, i32 4, i32 %i.1736, i32 6
  %209 = ptrtoint ptr %prob_avg204.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %prob_avg204.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %210)
  %cmp206.i = icmp ugt i16 %210, 3072
  br i1 %cmp206.i, label %if.then208.i, label %if.else.i626

if.then208.i:                                     ; preds = %do.end173.i
  %conv205.i = zext i16 %210 to i32
  br i1 %163, label %if.then2.i304.i, label %if.else.i307.i

if.then2.i304.i:                                  ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #14
  %211 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %overhead_legacy.i, align 4
  br label %minstrel_ht_get_tp_avg.exit343.i

if.else.i307.i:                                   ; preds = %if.then208.i
  %213 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool.not.i.i306.i = icmp eq i32 %214, 0
  br i1 %tobool.not.i.i306.i, label %do.end13.i.i311.i, label %if.then.i.i309.i

if.then.i.i309.i:                                 ; preds = %if.else.i307.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i308.i = lshr i32 %214, 12
  br label %minstrel_ht_get_tp_avg.exit343.i

do.end13.i.i311.i:                                ; preds = %if.else.i307.i
  %215 = and i16 %190, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %215)
  %216 = icmp eq i16 %215, 256
  br i1 %216, label %do.end13.i.i311.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge, label %if.end16.i.i321.i

do.end13.i.i311.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge: ; preds = %do.end13.i.i311.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit343.i

if.end16.i.i321.i:                                ; preds = %do.end13.i.i311.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i291.i)
  %cmp.i.i320.i = icmp sgt i32 %shl.i291.i, 400000
  br i1 %cmp.i.i320.i, label %if.end16.i.i321.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge, label %if.end23.i.i323.i

if.end16.i.i321.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge: ; preds = %if.end16.i.i321.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit343.i

if.end23.i.i323.i:                                ; preds = %if.end16.i.i321.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i291.i)
  %cmp24.i.i322.i = icmp sgt i32 %shl.i291.i, 250000
  br i1 %cmp24.i.i322.i, label %if.end23.i.i323.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge, label %if.end27.i.i326.i

if.end23.i.i323.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge: ; preds = %if.end23.i.i323.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit343.i

if.end27.i.i326.i:                                ; preds = %if.end23.i.i323.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i291.i)
  %cmp28.i.i324.i = icmp sgt i32 %shl.i291.i, 150000
  %..i.i325.i = select i1 %cmp28.i.i324.i, i32 8, i32 16
  br label %minstrel_ht_get_tp_avg.exit343.i

minstrel_ht_get_tp_avg.exit343.i:                 ; preds = %if.end27.i.i326.i, %if.end23.i.i323.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge, %if.end16.i.i321.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge, %do.end13.i.i311.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge, %if.then.i.i309.i, %if.then2.i304.i
  %overhead.0.i327.i = phi i32 [ %212, %if.then2.i304.i ], [ %169, %if.then.i.i309.i ], [ %169, %do.end13.i.i311.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge ], [ %169, %if.end16.i.i321.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge ], [ %169, %if.end23.i.i323.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge ], [ %169, %if.end27.i.i326.i ]
  %ampdu_len.0.i328.i = phi i32 [ 1, %if.then2.i304.i ], [ %shr.i.i308.i, %if.then.i.i309.i ], [ 1, %do.end13.i.i311.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge ], [ 2, %if.end16.i.i321.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge ], [ 4, %if.end23.i.i323.i.minstrel_ht_get_tp_avg.exit343.i_crit_edge ], [ %..i.i325.i, %if.end27.i.i326.i ]
  %mul.i329.i = mul i32 %overhead.0.i327.i, 1000
  %div.i330.i = udiv i32 %mul.i329.i, %ampdu_len.0.i328.i
  %add.i336.i = add i32 %div.i330.i, %shl.i299.i
  %217 = tail call i32 @llvm.smin.i32(i32 %conv205.i, i32 3686) #12
  %mul12.i337.i = mul nuw i32 %217, 1000000
  %div13.i338.i = udiv i32 %mul12.i337.i, %add.i336.i
  %mul14.i339.i = mul i32 %div13.i338.i, 100
  %shr.i340.i = lshr i32 %mul14.i339.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i340.i, i32 %retval.0.i.i622)
  %cmp212.i = icmp ugt i32 %shr.i340.i, %retval.0.i.i622
  %spec.select710 = select i1 %cmp212.i, i16 %conv414, i16 %tmp_max_prob_rate.1735
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %208)
  %cmp.i345.i = icmp ult i16 %208, 409
  br i1 %cmp.i345.i, label %minstrel_ht_get_tp_avg.exit343.i.minstrel_ht_get_tp_avg.exit387.i_crit_edge, label %if.end.i346.i

minstrel_ht_get_tp_avg.exit343.i.minstrel_ht_get_tp_avg.exit387.i_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit343.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit387.i

if.end.i346.i:                                    ; preds = %minstrel_ht_get_tp_avg.exit343.i
  %218 = and i32 %conv175.i, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %218)
  %219 = icmp eq i32 %218, 256
  br i1 %219, label %if.then2.i348.i, label %if.else.i351.i

if.then2.i348.i:                                  ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #14
  %220 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i385.i

if.else.i351.i:                                   ; preds = %if.end.i346.i
  %222 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool.not.i.i350.i = icmp eq i32 %223, 0
  br i1 %tobool.not.i.i350.i, label %do.end13.i.i355.i, label %if.then.i.i353.i

if.then.i.i353.i:                                 ; preds = %if.else.i351.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i352.i = lshr i32 %223, 12
  br label %if.end4.i385.i

do.end13.i.i355.i:                                ; preds = %if.else.i351.i
  %224 = and i16 %190, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %224)
  %225 = icmp eq i16 %224, 256
  br i1 %225, label %do.end13.i.i355.i.if.end4.i385.i_crit_edge, label %if.end16.i.i365.i

do.end13.i.i355.i.if.end4.i385.i_crit_edge:       ; preds = %do.end13.i.i355.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i385.i

if.end16.i.i365.i:                                ; preds = %do.end13.i.i355.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i291.i)
  %cmp.i.i364.i = icmp sgt i32 %shl.i291.i, 400000
  br i1 %cmp.i.i364.i, label %if.end16.i.i365.i.if.end4.i385.i_crit_edge, label %if.end23.i.i367.i

if.end16.i.i365.i.if.end4.i385.i_crit_edge:       ; preds = %if.end16.i.i365.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i385.i

if.end23.i.i367.i:                                ; preds = %if.end16.i.i365.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i291.i)
  %cmp24.i.i366.i = icmp sgt i32 %shl.i291.i, 250000
  br i1 %cmp24.i.i366.i, label %if.end23.i.i367.i.if.end4.i385.i_crit_edge, label %if.end27.i.i370.i

if.end23.i.i367.i.if.end4.i385.i_crit_edge:       ; preds = %if.end23.i.i367.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i385.i

if.end27.i.i370.i:                                ; preds = %if.end23.i.i367.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i291.i)
  %cmp28.i.i368.i = icmp sgt i32 %shl.i291.i, 150000
  %..i.i369.i = select i1 %cmp28.i.i368.i, i32 8, i32 16
  br label %if.end4.i385.i

if.end4.i385.i:                                   ; preds = %if.end27.i.i370.i, %if.end23.i.i367.i.if.end4.i385.i_crit_edge, %if.end16.i.i365.i.if.end4.i385.i_crit_edge, %do.end13.i.i355.i.if.end4.i385.i_crit_edge, %if.then.i.i353.i, %if.then2.i348.i
  %overhead.0.i371.i = phi i32 [ %221, %if.then2.i348.i ], [ %169, %if.then.i.i353.i ], [ %169, %do.end13.i.i355.i.if.end4.i385.i_crit_edge ], [ %169, %if.end16.i.i365.i.if.end4.i385.i_crit_edge ], [ %169, %if.end23.i.i367.i.if.end4.i385.i_crit_edge ], [ %169, %if.end27.i.i370.i ]
  %ampdu_len.0.i372.i = phi i32 [ 1, %if.then2.i348.i ], [ %shr.i.i352.i, %if.then.i.i353.i ], [ 1, %do.end13.i.i355.i.if.end4.i385.i_crit_edge ], [ 2, %if.end16.i.i365.i.if.end4.i385.i_crit_edge ], [ 4, %if.end23.i.i367.i.if.end4.i385.i_crit_edge ], [ %..i.i369.i, %if.end27.i.i370.i ]
  %mul.i373.i = mul i32 %overhead.0.i371.i, 1000
  %div.i374.i = udiv i32 %mul.i373.i, %ampdu_len.0.i372.i
  %arrayidx5.i375.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr177.i, i32 4, i32 %and196.i
  %226 = ptrtoint ptr %arrayidx5.i375.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %arrayidx5.i375.i, align 2
  %conv.i376.i = zext i16 %227 to i32
  %shift.i377.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr177.i, i32 2
  %228 = ptrtoint ptr %shift.i377.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %shift.i377.i, align 1
  %conv7.i378.i = zext i8 %229 to i32
  %shl.i379.i = shl i32 %conv.i376.i, %conv7.i378.i
  %add.i380.i = add i32 %shl.i379.i, %div.i374.i
  %230 = tail call i32 @llvm.smin.i32(i32 %conv203.i, i32 3686) #12
  %mul12.i381.i = mul nuw i32 %230, 1000000
  %div13.i382.i = udiv i32 %mul12.i381.i, %add.i380.i
  %mul14.i383.i = mul i32 %div13.i382.i, 100
  %shr.i384.i = lshr i32 %mul14.i383.i, 12
  br label %minstrel_ht_get_tp_avg.exit387.i

minstrel_ht_get_tp_avg.exit387.i:                 ; preds = %if.end4.i385.i, %minstrel_ht_get_tp_avg.exit343.i.minstrel_ht_get_tp_avg.exit387.i_crit_edge
  %retval.0.i386.i = phi i32 [ %shr.i384.i, %if.end4.i385.i ], [ 0, %minstrel_ht_get_tp_avg.exit343.i.minstrel_ht_get_tp_avg.exit387.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i340.i, i32 %retval.0.i386.i)
  %cmp217.i = icmp ugt i32 %shr.i340.i, %retval.0.i386.i
  br i1 %cmp217.i, label %minstrel_ht_get_tp_avg.exit387.i.cleanup.sink.split.i_crit_edge, label %minstrel_ht_get_tp_avg.exit387.i.for.inc415_crit_edge

minstrel_ht_get_tp_avg.exit387.i.for.inc415_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit387.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc415

minstrel_ht_get_tp_avg.exit387.i.cleanup.sink.split.i_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit387.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else.i626:                                     ; preds = %do.end173.i
  call void @__sanitizer_cov_trace_cmp2(i16 %210, i16 %167)
  %cmp224.i = icmp ugt i16 %210, %167
  %spec.select711 = select i1 %cmp224.i, i16 %conv414, i16 %tmp_max_prob_rate.1735
  call void @__sanitizer_cov_trace_cmp2(i16 %210, i16 %208)
  %cmp230.i = icmp ugt i16 %210, %208
  br i1 %cmp230.i, label %if.else.i626.cleanup.sink.split.i_crit_edge, label %if.else.i626.for.inc415_crit_edge

if.else.i626.for.inc415_crit_edge:                ; preds = %if.else.i626
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc415

if.else.i626.cleanup.sink.split.i_crit_edge:      ; preds = %if.else.i626
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i626.cleanup.sink.split.i_crit_edge, %minstrel_ht_get_tp_avg.exit387.i.cleanup.sink.split.i_crit_edge
  %tmp_max_prob_rate.4 = phi i16 [ %spec.select710, %minstrel_ht_get_tp_avg.exit387.i.cleanup.sink.split.i_crit_edge ], [ %spec.select711, %if.else.i626.cleanup.sink.split.i_crit_edge ]
  %231 = ptrtoint ptr %max_group_prob_rate to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv414, ptr %max_group_prob_rate, align 2
  br label %for.inc415

for.inc415:                                       ; preds = %cleanup.sink.split.i, %if.else.i626.for.inc415_crit_edge, %minstrel_ht_get_tp_avg.exit387.i.for.inc415_crit_edge, %land.lhs.true152.i.for.inc415_crit_edge, %minstrel_ht_get_tp_avg.exit.i623.for.inc415_crit_edge, %for.body356.for.inc415_crit_edge
  %tmp_max_prob_rate.6 = phi i16 [ %tmp_max_prob_rate.1735, %for.body356.for.inc415_crit_edge ], [ %tmp_max_prob_rate.1735, %land.lhs.true152.i.for.inc415_crit_edge ], [ %tmp_max_prob_rate.4, %cleanup.sink.split.i ], [ %spec.select710, %minstrel_ht_get_tp_avg.exit387.i.for.inc415_crit_edge ], [ %spec.select711, %if.else.i626.for.inc415_crit_edge ], [ %tmp_max_prob_rate.1735, %minstrel_ht_get_tp_avg.exit.i623.for.inc415_crit_edge ]
  %inc416 = add nuw nsw i32 %i.1736, 1
  %exitcond761.not = icmp eq i32 %inc416, 10
  br i1 %exitcond761.not, label %for.inc415.for.inc418_crit_edge, label %for.inc415.for.body356_crit_edge

for.inc415.for.body356_crit_edge:                 ; preds = %for.inc415
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body356

for.inc415.for.inc418_crit_edge:                  ; preds = %for.inc415
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc418

for.inc418:                                       ; preds = %for.inc415.for.inc418_crit_edge, %for.body303.for.inc418_crit_edge
  %tmp_max_prob_rate.7 = phi i16 [ %tmp_max_prob_rate.0738, %for.body303.for.inc418_crit_edge ], [ %tmp_max_prob_rate.6, %for.inc415.for.inc418_crit_edge ]
  %inc419 = add nuw nsw i32 %group.3739, 1
  %exitcond762.not = icmp eq i32 %inc419, 42
  br i1 %exitcond762.not, label %for.end420, label %for.inc418.for.body303_crit_edge

for.inc418.for.body303_crit_edge:                 ; preds = %for.inc418
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body303

for.end420:                                       ; preds = %for.inc418
  %max_prob_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 5
  %232 = ptrtoint ptr %max_prob_rate to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %tmp_max_prob_rate.7, ptr %max_prob_rate, align 4
  %233 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %mi, align 4
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %234, i32 0, i32 3, i32 1
  %235 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %ht_supported.i, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool.not.i = icmp eq i8 %236, 0
  br i1 %tobool.not.i, label %for.end420.minstrel_ht_prob_rate_reduce_streams.exit_crit_edge, label %do.end12.i

for.end420.minstrel_ht_prob_rate_reduce_streams.exit_crit_edge: ; preds = %for.end420
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_prob_rate_reduce_streams.exit

do.end12.i:                                       ; preds = %for.end420
  %237 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %max_tp_rate.i.i, align 4
  %239 = lshr i16 %238, 4
  %shr.i628 = zext i16 %239 to i32
  %streams.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr.i628, i32 1
  %240 = ptrtoint ptr %streams.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %streams.i, align 2
  %242 = and i16 %238, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %242)
  %243 = icmp eq i16 %242, 256
  %conv19.i.i.i631 = zext i16 %238 to i32
  %and.i.i.i.i632 = lshr i32 %conv19.i.i.i631, 4
  %and30.i.i.i.i633 = and i32 %conv19.i.i.i631, 15
  %arrayidx32.i.i.i.i634 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i.i632, i32 4, i32 %and30.i.i.i.i633
  %shift.i.i.i.i635 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i.i632, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end12.i
  %tmp_tp.0128.i = phi i32 [ 0, %do.end12.i ], [ %tmp_tp.1.i, %for.inc.i.for.body.i_crit_edge ]
  %group.0126.i = phi i32 [ 0, %do.end12.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx17.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 %group.0126.i
  %244 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %arrayidx17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %245)
  %tobool18.not.i = icmp eq i16 %245, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %group.0126.i)
  %cmp19.i = icmp eq i32 %group.0126.i, 16
  %or.cond.i637 = select i1 %tobool18.not.i, i1 true, i1 %cmp19.i
  br i1 %or.cond.i637, label %for.body.i.for.inc.i_crit_edge, label %do.end37.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end37.i:                                       ; preds = %for.body.i
  %max_group_prob_rate.i638 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.0126.i, i32 3
  %246 = ptrtoint ptr %max_group_prob_rate.i638 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %max_group_prob_rate.i638, align 2
  %248 = and i16 %247, 15
  %and40.i = zext i16 %248 to i32
  %prob_avg.i639 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %group.0126.i, i32 4, i32 %and40.i, i32 6
  %249 = ptrtoint ptr %prob_avg.i639 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %prob_avg.i639, align 4
  %conv45.i = zext i16 %250 to i32
  %251 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %overhead1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %250)
  %cmp.i.i640 = icmp ult i16 %250, 409
  br i1 %cmp.i.i640, label %do.end37.i.minstrel_ht_get_tp_avg.exit.i674_crit_edge, label %if.end.i.i641

do.end37.i.minstrel_ht_get_tp_avg.exit.i674_crit_edge: ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit.i674

if.end.i.i641:                                    ; preds = %do.end37.i
  %253 = and i32 %group.0126.i, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %253)
  %254 = icmp eq i32 %253, 16
  br i1 %254, label %if.then2.i.i642, label %if.else.i.i644

if.then2.i.i642:                                  ; preds = %if.end.i.i641
  call void @__sanitizer_cov_trace_pc() #14
  %255 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i.i672

if.else.i.i644:                                   ; preds = %if.end.i.i641
  %257 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool.not.i.i.i643 = icmp eq i32 %258, 0
  br i1 %tobool.not.i.i.i643, label %do.end13.i.i.i647, label %if.then.i.i.i646

if.then.i.i.i646:                                 ; preds = %if.else.i.i644
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i.i645 = lshr i32 %258, 12
  br label %if.end4.i.i672

do.end13.i.i.i647:                                ; preds = %if.else.i.i644
  br i1 %243, label %do.end13.i.i.i647.if.end4.i.i672_crit_edge, label %if.end16.i.i.i652

do.end13.i.i.i647.if.end4.i.i672_crit_edge:       ; preds = %do.end13.i.i.i647
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i672

if.end16.i.i.i652:                                ; preds = %do.end13.i.i.i647
  %259 = ptrtoint ptr %arrayidx32.i.i.i.i634 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %arrayidx32.i.i.i.i634, align 2
  %conv.i.i.i.i648 = zext i16 %260 to i32
  %261 = ptrtoint ptr %shift.i.i.i.i635 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %shift.i.i.i.i635, align 1
  %conv33.i.i.i.i649 = zext i8 %262 to i32
  %shl.i.i.i.i650 = shl i32 %conv.i.i.i.i648, %conv33.i.i.i.i649
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i.i650)
  %cmp.i.i.i651 = icmp sgt i32 %shl.i.i.i.i650, 400000
  br i1 %cmp.i.i.i651, label %if.end16.i.i.i652.if.end4.i.i672_crit_edge, label %if.end23.i.i.i654

if.end16.i.i.i652.if.end4.i.i672_crit_edge:       ; preds = %if.end16.i.i.i652
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i672

if.end23.i.i.i654:                                ; preds = %if.end16.i.i.i652
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i.i650)
  %cmp24.i.i.i653 = icmp sgt i32 %shl.i.i.i.i650, 250000
  br i1 %cmp24.i.i.i653, label %if.end23.i.i.i654.if.end4.i.i672_crit_edge, label %if.end27.i.i.i657

if.end23.i.i.i654.if.end4.i.i672_crit_edge:       ; preds = %if.end23.i.i.i654
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i672

if.end27.i.i.i657:                                ; preds = %if.end23.i.i.i654
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i.i650)
  %cmp28.i.i.i655 = icmp sgt i32 %shl.i.i.i.i650, 150000
  %..i.i.i656 = select i1 %cmp28.i.i.i655, i32 8, i32 16
  br label %if.end4.i.i672

if.end4.i.i672:                                   ; preds = %if.end27.i.i.i657, %if.end23.i.i.i654.if.end4.i.i672_crit_edge, %if.end16.i.i.i652.if.end4.i.i672_crit_edge, %do.end13.i.i.i647.if.end4.i.i672_crit_edge, %if.then.i.i.i646, %if.then2.i.i642
  %overhead.0.i.i658 = phi i32 [ %256, %if.then2.i.i642 ], [ %252, %if.then.i.i.i646 ], [ %252, %do.end13.i.i.i647.if.end4.i.i672_crit_edge ], [ %252, %if.end16.i.i.i652.if.end4.i.i672_crit_edge ], [ %252, %if.end23.i.i.i654.if.end4.i.i672_crit_edge ], [ %252, %if.end27.i.i.i657 ]
  %ampdu_len.0.i.i659 = phi i32 [ 1, %if.then2.i.i642 ], [ %shr.i.i.i645, %if.then.i.i.i646 ], [ 1, %do.end13.i.i.i647.if.end4.i.i672_crit_edge ], [ 2, %if.end16.i.i.i652.if.end4.i.i672_crit_edge ], [ 4, %if.end23.i.i.i654.if.end4.i.i672_crit_edge ], [ %..i.i.i656, %if.end27.i.i.i657 ]
  %mul.i.i660 = mul i32 %overhead.0.i.i658, 1000
  %div.i.i661 = udiv i32 %mul.i.i660, %ampdu_len.0.i.i659
  %arrayidx5.i.i662 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.0126.i, i32 4, i32 %and40.i
  %263 = ptrtoint ptr %arrayidx5.i.i662 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %arrayidx5.i.i662, align 2
  %conv.i.i663 = zext i16 %264 to i32
  %shift.i.i664 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.0126.i, i32 2
  %265 = ptrtoint ptr %shift.i.i664 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %shift.i.i664, align 1
  %conv7.i.i665 = zext i8 %266 to i32
  %shl.i.i666 = shl i32 %conv.i.i663, %conv7.i.i665
  %add.i.i667 = add i32 %shl.i.i666, %div.i.i661
  %267 = tail call i32 @llvm.smin.i32(i32 %conv45.i, i32 3686) #12
  %mul12.i.i668 = mul nuw i32 %267, 1000000
  %div13.i.i669 = udiv i32 %mul12.i.i668, %add.i.i667
  %mul14.i.i670 = mul i32 %div13.i.i669, 100
  %shr.i.i671 = lshr i32 %mul14.i.i670, 12
  br label %minstrel_ht_get_tp_avg.exit.i674

minstrel_ht_get_tp_avg.exit.i674:                 ; preds = %if.end4.i.i672, %do.end37.i.minstrel_ht_get_tp_avg.exit.i674_crit_edge
  %retval.0.i.i673 = phi i32 [ %shr.i.i671, %if.end4.i.i672 ], [ 0, %do.end37.i.minstrel_ht_get_tp_avg.exit.i674_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_tp.0128.i, i32 %retval.0.i.i673)
  %cmp46.i = icmp slt i32 %tmp_tp.0128.i, %retval.0.i.i673
  br i1 %cmp46.i, label %land.lhs.true.i, label %minstrel_ht_get_tp_avg.exit.i674.for.inc.i_crit_edge

minstrel_ht_get_tp_avg.exit.i674.for.inc.i_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit.i674
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %minstrel_ht_get_tp_avg.exit.i674
  %streams49.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.0126.i, i32 1
  %268 = ptrtoint ptr %streams49.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %streams49.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %269, i8 %241)
  %cmp51.i = icmp ult i8 %269, %241
  br i1 %cmp51.i, label %if.then53.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then53.i:                                      ; preds = %land.lhs.true.i
  %270 = ptrtoint ptr %max_prob_rate to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %247, ptr %max_prob_rate, align 4
  br i1 %cmp.i.i640, label %if.then53.i.for.inc.i_crit_edge, label %if.end.i84.i

if.then53.i.for.inc.i_crit_edge:                  ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i84.i:                                     ; preds = %if.then53.i
  %271 = and i32 %group.0126.i, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %271)
  %272 = icmp eq i32 %271, 16
  br i1 %272, label %if.then2.i86.i, label %if.else.i89.i

if.then2.i86.i:                                   ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  %273 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i123.i

if.else.i89.i:                                    ; preds = %if.end.i84.i
  %275 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool.not.i.i88.i = icmp eq i32 %276, 0
  br i1 %tobool.not.i.i88.i, label %do.end13.i.i93.i, label %if.then.i.i91.i

if.then.i.i91.i:                                  ; preds = %if.else.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i90.i = lshr i32 %276, 12
  br label %if.end4.i123.i

do.end13.i.i93.i:                                 ; preds = %if.else.i89.i
  br i1 %243, label %do.end13.i.i93.i.if.end4.i123.i_crit_edge, label %if.end16.i.i103.i

do.end13.i.i93.i.if.end4.i123.i_crit_edge:        ; preds = %do.end13.i.i93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i123.i

if.end16.i.i103.i:                                ; preds = %do.end13.i.i93.i
  %277 = ptrtoint ptr %arrayidx32.i.i.i.i634 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx32.i.i.i.i634, align 2
  %conv.i.i.i98.i = zext i16 %278 to i32
  %279 = ptrtoint ptr %shift.i.i.i.i635 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %shift.i.i.i.i635, align 1
  %conv33.i.i.i100.i = zext i8 %280 to i32
  %shl.i.i.i101.i = shl i32 %conv.i.i.i98.i, %conv33.i.i.i100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i101.i)
  %cmp.i.i102.i = icmp sgt i32 %shl.i.i.i101.i, 400000
  br i1 %cmp.i.i102.i, label %if.end16.i.i103.i.if.end4.i123.i_crit_edge, label %if.end23.i.i105.i

if.end16.i.i103.i.if.end4.i123.i_crit_edge:       ; preds = %if.end16.i.i103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i123.i

if.end23.i.i105.i:                                ; preds = %if.end16.i.i103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i101.i)
  %cmp24.i.i104.i = icmp sgt i32 %shl.i.i.i101.i, 250000
  br i1 %cmp24.i.i104.i, label %if.end23.i.i105.i.if.end4.i123.i_crit_edge, label %if.end27.i.i108.i

if.end23.i.i105.i.if.end4.i123.i_crit_edge:       ; preds = %if.end23.i.i105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i123.i

if.end27.i.i108.i:                                ; preds = %if.end23.i.i105.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i101.i)
  %cmp28.i.i106.i = icmp sgt i32 %shl.i.i.i101.i, 150000
  %..i.i107.i = select i1 %cmp28.i.i106.i, i32 8, i32 16
  br label %if.end4.i123.i

if.end4.i123.i:                                   ; preds = %if.end27.i.i108.i, %if.end23.i.i105.i.if.end4.i123.i_crit_edge, %if.end16.i.i103.i.if.end4.i123.i_crit_edge, %do.end13.i.i93.i.if.end4.i123.i_crit_edge, %if.then.i.i91.i, %if.then2.i86.i
  %overhead.0.i109.i = phi i32 [ %274, %if.then2.i86.i ], [ %252, %if.then.i.i91.i ], [ %252, %do.end13.i.i93.i.if.end4.i123.i_crit_edge ], [ %252, %if.end16.i.i103.i.if.end4.i123.i_crit_edge ], [ %252, %if.end23.i.i105.i.if.end4.i123.i_crit_edge ], [ %252, %if.end27.i.i108.i ]
  %ampdu_len.0.i110.i = phi i32 [ 1, %if.then2.i86.i ], [ %shr.i.i90.i, %if.then.i.i91.i ], [ 1, %do.end13.i.i93.i.if.end4.i123.i_crit_edge ], [ 2, %if.end16.i.i103.i.if.end4.i123.i_crit_edge ], [ 4, %if.end23.i.i105.i.if.end4.i123.i_crit_edge ], [ %..i.i107.i, %if.end27.i.i108.i ]
  %mul.i111.i = mul i32 %overhead.0.i109.i, 1000
  %div.i112.i = udiv i32 %mul.i111.i, %ampdu_len.0.i110.i
  %arrayidx5.i113.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.0126.i, i32 4, i32 %and40.i
  %281 = ptrtoint ptr %arrayidx5.i113.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx5.i113.i, align 2
  %conv.i114.i = zext i16 %282 to i32
  %shift.i115.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %group.0126.i, i32 2
  %283 = ptrtoint ptr %shift.i115.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %shift.i115.i, align 1
  %conv7.i116.i = zext i8 %284 to i32
  %shl.i117.i = shl i32 %conv.i114.i, %conv7.i116.i
  %add.i118.i = add i32 %shl.i117.i, %div.i112.i
  %285 = tail call i32 @llvm.smin.i32(i32 %conv45.i, i32 3686) #12
  %mul12.i119.i = mul nuw i32 %285, 1000000
  %div13.i120.i = udiv i32 %mul12.i119.i, %add.i118.i
  %mul14.i121.i = mul i32 %div13.i120.i, 100
  %shr.i122.i = lshr i32 %mul14.i121.i, 12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i123.i, %if.then53.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %minstrel_ht_get_tp_avg.exit.i674.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %tmp_tp.1.i = phi i32 [ %tmp_tp.0128.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %tmp_tp.0128.i, %minstrel_ht_get_tp_avg.exit.i674.for.inc.i_crit_edge ], [ %tmp_tp.0128.i, %for.body.i.for.inc.i_crit_edge ], [ %shr.i122.i, %if.end4.i123.i ], [ 0, %if.then53.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %group.0126.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 42
  br i1 %exitcond.not.i, label %for.inc.i.minstrel_ht_prob_rate_reduce_streams.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.minstrel_ht_prob_rate_reduce_streams.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_prob_rate_reduce_streams.exit

minstrel_ht_prob_rate_reduce_streams.exit:        ; preds = %for.inc.i.minstrel_ht_prob_rate_reduce_streams.exit_crit_edge, %for.end420.minstrel_ht_prob_rate_reduce_streams.exit_crit_edge
  %286 = ptrtoint ptr %max_prob_rate to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %max_prob_rate, align 4
  %conv.i676 = zext i16 %287 to i32
  %and.i.i = lshr i32 %conv.i676, 4
  %and30.i.i = and i32 %conv.i676, 15
  %arrayidx32.i.i677 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i, i32 4, i32 %and30.i.i
  %288 = ptrtoint ptr %arrayidx32.i.i677 to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %arrayidx32.i.i677, align 2
  %conv.i.i678 = zext i16 %289 to i32
  %shift.i.i679 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i, i32 2
  %290 = ptrtoint ptr %shift.i.i679 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %shift.i.i679, align 1
  %conv33.i.i680 = zext i8 %291 to i32
  %shl.i.i681 = shl i32 %conv.i.i678, %conv33.i.i680
  %292 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %max_tp_rate.i.i, align 4
  %conv1.i = zext i16 %293 to i32
  %and.i107.i = lshr i32 %conv1.i, 4
  %and30.i109.i = and i32 %conv1.i, 15
  %arrayidx32.i110.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i107.i, i32 4, i32 %and30.i109.i
  %294 = ptrtoint ptr %arrayidx32.i110.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %arrayidx32.i110.i, align 2
  %conv.i111.i = zext i16 %295 to i32
  %shift.i112.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i107.i, i32 2
  %296 = ptrtoint ptr %shift.i112.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %shift.i112.i, align 1
  %conv33.i113.i = zext i8 %297 to i32
  %shl.i114.i = shl i32 %conv.i111.i, %conv33.i113.i
  %arrayidx4.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 1
  %298 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %arrayidx4.i, align 2
  %conv5.i = zext i16 %299 to i32
  %and.i115.i = lshr i32 %conv5.i, 4
  %and30.i117.i = and i32 %conv5.i, 15
  %arrayidx32.i118.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i115.i, i32 4, i32 %and30.i117.i
  %300 = ptrtoint ptr %arrayidx32.i118.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %arrayidx32.i118.i, align 2
  %conv.i119.i = zext i16 %301 to i32
  %shift.i120.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i115.i, i32 2
  %302 = ptrtoint ptr %shift.i120.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %shift.i120.i, align 1
  %conv33.i121.i = zext i8 %303 to i32
  %shl.i122.i = shl i32 %conv.i119.i, %conv33.i121.i
  %304 = tail call i32 @llvm.umin.i32(i32 %shl.i114.i, i32 %shl.i122.i) #12
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 %shl.i.i681) #12
  %306 = tail call i32 @llvm.umax.i32(i32 %shl.i114.i, i32 %shl.i122.i) #12
  %307 = tail call i32 @llvm.umax.i32(i32 %306, i32 %shl.i.i681) #12
  %sample_rates.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 1
  %call30.i = tail call fastcc i32 @minstrel_ht_move_sample_rates(ptr noundef %mi, i32 noundef 0, i32 noundef %305, i32 noundef %307) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call30.i)
  %cmp31205.i = icmp slt i32 %call30.i, 5
  br i1 %cmp31205.i, label %while.body.lr.ph.i, label %minstrel_ht_prob_rate_reduce_streams.exit.while.end.i_crit_edge

minstrel_ht_prob_rate_reduce_streams.exit.while.end.i_crit_edge: ; preds = %minstrel_ht_prob_rate_reduce_streams.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %minstrel_ht_prob_rate_reduce_streams.exit
  %sample.i.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18
  %arrayidx1.4.i.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 1, i32 4
  %arrayidx1.1.i.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 1, i32 1
  %arrayidx1.2.i.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 1, i32 2
  %arrayidx1.3.i.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 1, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %minstrel_ht_next_inc_rate.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.0206.i = phi i32 [ %call30.i, %while.body.lr.ph.i ], [ %inc.i695, %minstrel_ht_next_inc_rate.exit.i.while.body.i_crit_edge ]
  %308 = ptrtoint ptr %sample.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %sample.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.body.i
  %i.0106.i.i = phi i32 [ 0, %while.body.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %group.0105.i.i = phi i8 [ %309, %while.body.i ], [ %conv1.i.i684, %for.inc.i.i.for.body.i.i_crit_edge ]
  %conv.i123.i = zext i8 %group.0105.i.i to i16
  %add.i.i683 = add nuw nsw i16 %conv.i123.i, 1
  %rem.i.i = urem i16 %add.i.i683, 42
  %conv1.i.i684 = trunc i16 %rem.i.i to i8
  %conv2.i.i = zext i16 %rem.i.i to i32
  %arrayidx.i.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 %conv2.i.i
  %310 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %311)
  %tobool.not65.i.i.i = icmp eq i16 %311, 0
  br i1 %tobool.not65.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %for.body.lr.ph.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body.i.i
  %shift.i.i.i.i685 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %conv2.i.i, i32 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %supported.068.i.i.i = phi i16 [ %311, %for.body.lr.ph.i.i.i ], [ %317, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %i.066.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %312 = and i16 %supported.068.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %312)
  %tobool3.not.i.i.i = icmp eq i16 %312, 0
  br i1 %tobool3.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %do.body7.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

do.body7.i.i.i:                                   ; preds = %for.body.i.i.i
  %arrayidx32.i.i.i.i686 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %conv2.i.i, i32 4, i32 %i.066.i.i.i
  %313 = ptrtoint ptr %arrayidx32.i.i.i.i686 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %arrayidx32.i.i.i.i686, align 2
  %conv.i.i.i.i687 = zext i16 %314 to i32
  %315 = ptrtoint ptr %shift.i.i.i.i685 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %shift.i.i.i.i685, align 1
  %conv33.i.i.i.i688 = zext i8 %316 to i32
  %shl.i.i.i.i689 = shl i32 %conv.i.i.i.i687, %conv33.i.i.i.i688
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i.i689, i32 %shl.i114.i)
  %cmp45.not.i.i.i = icmp ult i32 %shl.i.i.i.i689, %shl.i114.i
  br i1 %cmp45.not.i.i.i, label %do.body8.i.i, label %do.body7.i.i.i.for.inc.i.i.i_crit_edge

do.body7.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.body7.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.066.i.i.i, 1
  %317 = lshr i16 %supported.068.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.066.i.i.i)
  %cmp.i.i.i690 = icmp ugt i32 %i.066.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %supported.068.i.i.i)
  %tobool.not.i.i.i691 = icmp ult i16 %supported.068.i.i.i, 2
  %or.cond.i.i.i = select i1 %cmp.i.i.i690, i1 true, i1 %tobool.not.i.i.i691
  br i1 %or.cond.i.i.i, label %for.inc.i.i.i.for.inc.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

do.body8.i.i:                                     ; preds = %do.body7.i.i.i
  %shl.i124.i = shl nuw nsw i32 %conv2.i.i, 4
  %or.i.i = or i32 %i.066.i.i.i, %shl.i124.i
  %318 = ptrtoint ptr %sample_rates.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %sample_rates.i, align 2
  %conv.i.i.i692 = zext i16 %319 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv.i.i.i692)
  %cmp2.i.i.i = icmp eq i32 %or.i.i, %conv.i.i.i692
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %319)
  %tobool.not.i74.i.i = icmp eq i16 %319, 0
  %..i.i.i693 = select i1 %tobool.not.i74.i.i, i32 2, i32 0
  %cleanup.dest.slot.0.i.i.i = select i1 %cmp2.i.i.i, i32 1, i32 %..i.i.i693
  %320 = zext i32 %cleanup.dest.slot.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %320, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %cleanup.dest.slot.0.i.i.i, label %do.body8.i.i.for.inc.i.i_crit_edge [
    i32 0, label %for.inc.i75.i.i
    i32 2, label %do.body8.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge
  ]

do.body8.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge: ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_next_inc_rate.exit.i

do.body8.i.i.for.inc.i.i_crit_edge:               ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i75.i.i:                                  ; preds = %do.body8.i.i
  %321 = ptrtoint ptr %arrayidx1.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %arrayidx1.1.i.i.i, align 2
  %conv.1.i.i.i = zext i16 %322 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %or.i.i, %conv.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %322)
  %tobool.not.1.i.i.i = icmp eq i16 %322, 0
  %..1.i.i.i = select i1 %tobool.not.1.i.i.i, i32 2, i32 0
  %cleanup.dest.slot.0.1.i.i.i = select i1 %cmp2.1.i.i.i, i32 1, i32 %..1.i.i.i
  %323 = zext i32 %cleanup.dest.slot.0.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %323, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %cleanup.dest.slot.0.1.i.i.i, label %for.inc.i75.i.i.for.inc.i.i_crit_edge [
    i32 0, label %for.inc.1.i.i.i
    i32 2, label %for.inc.i75.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge
  ]

for.inc.i75.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge: ; preds = %for.inc.i75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_next_inc_rate.exit.i

for.inc.i75.i.i.for.inc.i.i_crit_edge:            ; preds = %for.inc.i75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i75.i.i
  %324 = ptrtoint ptr %arrayidx1.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %arrayidx1.2.i.i.i, align 2
  %conv.2.i.i.i = zext i16 %325 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %or.i.i, %conv.2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %325)
  %tobool.not.2.i.i.i = icmp eq i16 %325, 0
  %..2.i.i.i = select i1 %tobool.not.2.i.i.i, i32 2, i32 0
  %cleanup.dest.slot.0.2.i.i.i = select i1 %cmp2.2.i.i.i, i32 1, i32 %..2.i.i.i
  %326 = zext i32 %cleanup.dest.slot.0.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %326, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %cleanup.dest.slot.0.2.i.i.i, label %for.inc.1.i.i.i.for.inc.i.i_crit_edge [
    i32 0, label %for.inc.2.i.i.i
    i32 2, label %for.inc.1.i.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge
  ]

for.inc.1.i.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_next_inc_rate.exit.i

for.inc.1.i.i.i.for.inc.i.i_crit_edge:            ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %327 = ptrtoint ptr %arrayidx1.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %arrayidx1.3.i.i.i, align 2
  %conv.3.i.i.i = zext i16 %328 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv.3.i.i.i)
  %cmp2.3.i.i.i = icmp eq i32 %or.i.i, %conv.3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %328)
  %tobool.not.3.i.i.i = icmp eq i16 %328, 0
  %..3.i.i.i = select i1 %tobool.not.3.i.i.i, i32 2, i32 0
  %cleanup.dest.slot.0.3.i.i.i = select i1 %cmp2.3.i.i.i, i32 1, i32 %..3.i.i.i
  %329 = zext i32 %cleanup.dest.slot.0.3.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %329, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cleanup.dest.slot.0.3.i.i.i, label %for.inc.2.i.i.i.for.inc.i.i_crit_edge [
    i32 0, label %minstrel_ht_find_sample_rate.exit.i.i
    i32 2, label %for.inc.2.i.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge
  ]

for.inc.2.i.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge: ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_next_inc_rate.exit.i

for.inc.2.i.i.i.for.inc.i.i_crit_edge:            ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

minstrel_ht_find_sample_rate.exit.i.i:            ; preds = %for.inc.2.i.i.i
  %330 = ptrtoint ptr %arrayidx1.4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %arrayidx1.4.i.i.i, align 2
  %conv.4.i.i.i = zext i16 %331 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %conv.4.i.i.i)
  %cmp2.4.not.i.i.i = icmp eq i32 %or.i.i, %conv.4.i.i.i
  br i1 %cmp2.4.not.i.i.i, label %minstrel_ht_find_sample_rate.exit.i.i.for.inc.i.i_crit_edge, label %minstrel_ht_find_sample_rate.exit.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge

minstrel_ht_find_sample_rate.exit.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge: ; preds = %minstrel_ht_find_sample_rate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_next_inc_rate.exit.i

minstrel_ht_find_sample_rate.exit.i.i.for.inc.i.i_crit_edge: ; preds = %minstrel_ht_find_sample_rate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %minstrel_ht_find_sample_rate.exit.i.i.for.inc.i.i_crit_edge, %for.inc.2.i.i.i.for.inc.i.i_crit_edge, %for.inc.1.i.i.i.for.inc.i.i_crit_edge, %for.inc.i75.i.i.for.inc.i.i_crit_edge, %do.body8.i.i.for.inc.i.i_crit_edge, %for.inc.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0106.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 42
  br i1 %exitcond.not.i.i, label %minstrel_ht_next_inc_rate.exit.thread.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

minstrel_ht_next_inc_rate.exit.thread.i:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i.i684.le = trunc i16 %rem.i.i to i8
  %332 = ptrtoint ptr %sample.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %conv1.i.i684.le, ptr %sample.i.i, align 2
  %arrayidx34182.i = getelementptr i16, ptr %sample_rates.i, i32 %i.0206.i
  %333 = ptrtoint ptr %arrayidx34182.i to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 0, ptr %arrayidx34182.i, align 2
  br label %while.end.i

minstrel_ht_next_inc_rate.exit.i:                 ; preds = %minstrel_ht_find_sample_rate.exit.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge, %for.inc.2.i.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge, %for.inc.1.i.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge, %for.inc.i75.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge, %do.body8.i.i.minstrel_ht_next_inc_rate.exit.i_crit_edge
  %conv1.i.i684.le777 = trunc i16 %rem.i.i to i8
  %334 = ptrtoint ptr %sample.i.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %conv1.i.i684.le777, ptr %sample.i.i, align 2
  %conv57.i.i = trunc i32 %or.i.i to i16
  %arrayidx34.i = getelementptr i16, ptr %sample_rates.i, i32 %i.0206.i
  %335 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %conv57.i.i, ptr %arrayidx34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv57.i.i)
  %tobool.not.i694 = icmp ne i16 %conv57.i.i, 0
  %inc.i695 = add nsw i32 %i.0206.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0206.i)
  %cmp31.i = icmp slt i32 %i.0206.i, 4
  %or.cond.i696 = select i1 %tobool.not.i694, i1 %cmp31.i, i1 false
  br i1 %or.cond.i696, label %minstrel_ht_next_inc_rate.exit.i.while.body.i_crit_edge, label %minstrel_ht_next_inc_rate.exit.i.while.end.i_crit_edge

minstrel_ht_next_inc_rate.exit.i.while.end.i_crit_edge: ; preds = %minstrel_ht_next_inc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

minstrel_ht_next_inc_rate.exit.i.while.body.i_crit_edge: ; preds = %minstrel_ht_next_inc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %minstrel_ht_next_inc_rate.exit.i.while.end.i_crit_edge, %minstrel_ht_next_inc_rate.exit.thread.i, %minstrel_ht_prob_rate_reduce_streams.exit.while.end.i_crit_edge
  %sample_rates38.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 1
  %call40.i = tail call fastcc i32 @minstrel_ht_move_sample_rates(ptr noundef %mi, i32 noundef 1, i32 noundef %305, i32 noundef %307) #12
  %call41.i = tail call fastcc i32 @minstrel_ht_move_sample_rates(ptr noundef %mi, i32 noundef 2, i32 noundef %305, i32 noundef %307) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call40.i)
  %cmp43212.i = icmp slt i32 %call40.i, 5
  br i1 %cmp43212.i, label %while.body45.lr.ph.i, label %while.end.i.minstrel_ht_refill_sample_rates.exit_crit_edge

while.end.i.minstrel_ht_refill_sample_rates.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_refill_sample_rates.exit

while.body45.lr.ph.i:                             ; preds = %while.end.i
  %sample_rates.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 1
  %arrayidx2.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1
  br label %while.body45.i

while.body45.i:                                   ; preds = %minstrel_ht_next_jump_rate.exit.i.while.body45.i_crit_edge, %while.body45.lr.ph.i
  %i.1214.i = phi i32 [ %call40.i, %while.body45.lr.ph.i ], [ %inc52.i, %minstrel_ht_next_jump_rate.exit.i.while.body45.i_crit_edge ]
  %j.0213.i = phi i32 [ %call41.i, %while.body45.lr.ph.i ], [ %j.1.i, %minstrel_ht_next_jump_rate.exit.i.while.body45.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.0213.i)
  %cmp.i.i697 = icmp sgt i32 %j.0213.i, 4
  %spec.select.i.i698 = select i1 %cmp.i.i697, i32 %305, i32 %307
  %336 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx2.i.i, align 2
  br label %for.body.i128.i

for.body.i128.i:                                  ; preds = %for.inc.i177.i.for.body.i128.i_crit_edge, %while.body45.i
  %j.1.i = phi i32 [ %j.0213.i, %while.body45.i ], [ %j.2.i, %for.inc.i177.i.for.body.i128.i_crit_edge ]
  %group.0145.i.i = phi i8 [ %337, %while.body45.i ], [ %conv4.i.i, %for.inc.i177.i.for.body.i128.i_crit_edge ]
  %i.0143.i.i = phi i32 [ 0, %while.body45.i ], [ %inc54.i.i, %for.inc.i177.i.for.body.i128.i_crit_edge ]
  %max_duration.1140.i.i = phi i32 [ %spec.select.i.i698, %while.body45.i ], [ %max_duration.3.ph.i.i, %for.inc.i177.i.for.body.i128.i_crit_edge ]
  %conv.i125.i = zext i8 %group.0145.i.i to i16
  %add.i126.i = add nuw nsw i16 %conv.i125.i, 1
  %rem.i127.i = urem i16 %add.i126.i, 42
  %conv4.i.i = trunc i16 %rem.i127.i to i8
  %idxprom.i.i = zext i16 %rem.i127.i to i32
  %arrayidx6.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 %idxprom.i.i
  %338 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %arrayidx6.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %339)
  %tobool.not.i.i699 = icmp eq i16 %339, 0
  br i1 %tobool.not.i.i699, label %for.body.i128.i.for.inc.i177.i_crit_edge, label %for.body.lr.ph.i.i130.i

for.body.i128.i.for.inc.i177.i_crit_edge:         ; preds = %for.body.i128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

for.body.lr.ph.i.i130.i:                          ; preds = %for.body.i128.i
  %shift.i.i.i129.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %idxprom.i.i, i32 2
  br label %for.body.i.i134.i

for.body.i.i134.i:                                ; preds = %for.inc.i.i145.i.for.body.i.i134.i_crit_edge, %for.body.lr.ph.i.i130.i
  %supported.068.i.i131.i = phi i16 [ %339, %for.body.lr.ph.i.i130.i ], [ %345, %for.inc.i.i145.i.for.body.i.i134.i_crit_edge ]
  %i.066.i.i132.i = phi i32 [ 0, %for.body.lr.ph.i.i130.i ], [ %inc.i.i141.i, %for.inc.i.i145.i.for.body.i.i134.i_crit_edge ]
  %340 = and i16 %supported.068.i.i131.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %340)
  %tobool3.not.i.i133.i = icmp eq i16 %340, 0
  br i1 %tobool3.not.i.i133.i, label %for.body.i.i134.i.for.inc.i.i145.i_crit_edge, label %do.body7.i.i140.i

for.body.i.i134.i.for.inc.i.i145.i_crit_edge:     ; preds = %for.body.i.i134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i145.i

do.body7.i.i140.i:                                ; preds = %for.body.i.i134.i
  %arrayidx32.i.i.i135.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %idxprom.i.i, i32 4, i32 %i.066.i.i132.i
  %341 = ptrtoint ptr %arrayidx32.i.i.i135.i to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %arrayidx32.i.i.i135.i, align 2
  %conv.i.i.i136.i = zext i16 %342 to i32
  %343 = ptrtoint ptr %shift.i.i.i129.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %shift.i.i.i129.i, align 1
  %conv33.i.i.i137.i = zext i8 %344 to i32
  %shl.i.i.i138.i = shl i32 %conv.i.i.i136.i, %conv33.i.i.i137.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i138.i, i32 %max_duration.1140.i.i)
  %cmp45.not.i.i139.i = icmp ult i32 %shl.i.i.i138.i, %max_duration.1140.i.i
  br i1 %cmp45.not.i.i139.i, label %if.end13.i.i, label %do.body7.i.i140.i.for.inc.i.i145.i_crit_edge

do.body7.i.i140.i.for.inc.i.i145.i_crit_edge:     ; preds = %do.body7.i.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i145.i

for.inc.i.i145.i:                                 ; preds = %do.body7.i.i140.i.for.inc.i.i145.i_crit_edge, %for.body.i.i134.i.for.inc.i.i145.i_crit_edge
  %inc.i.i141.i = add nuw nsw i32 %i.066.i.i132.i, 1
  %345 = lshr i16 %supported.068.i.i131.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.066.i.i132.i)
  %cmp.i.i142.i = icmp ugt i32 %i.066.i.i132.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %supported.068.i.i131.i)
  %tobool.not.i.i143.i = icmp ult i16 %supported.068.i.i131.i, 2
  %or.cond.i.i144.i = select i1 %cmp.i.i142.i, i1 true, i1 %tobool.not.i.i143.i
  br i1 %or.cond.i.i144.i, label %for.inc.i.i145.i.for.inc.i177.i_crit_edge, label %for.inc.i.i145.i.for.body.i.i134.i_crit_edge

for.inc.i.i145.i.for.body.i.i134.i_crit_edge:     ; preds = %for.inc.i.i145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i134.i

for.inc.i.i145.i.for.inc.i177.i_crit_edge:        ; preds = %for.inc.i.i145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

if.end13.i.i:                                     ; preds = %do.body7.i.i140.i
  %conv33.i.i.i137.i.le = zext i8 %344 to i32
  %arrayidx.i96.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %idxprom.i.i
  %column.i.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %idxprom.i.i, i32 1
  %conv22.i.i.i = zext i16 %339 to i32
  br label %for.body.i98.i.i

for.body.i98.i.i:                                 ; preds = %for.inc.i100.i.i.for.body.i98.i.i_crit_edge, %if.end13.i.i
  %i.089.i.i.i = phi i32 [ 0, %if.end13.i.i ], [ %inc70.i.i.i, %for.inc.i100.i.i.for.body.i98.i.i_crit_edge ]
  %346 = ptrtoint ptr %column.i.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %column.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %347 to i32
  %348 = ptrtoint ptr %arrayidx.i96.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx.i96.i.i, align 4
  %idxprom2.i.i.i = zext i8 %349 to i32
  %arrayidx3.i.i.i = getelementptr [10 x [10 x i8]], ptr @sample_table, i32 0, i32 %idxprom.i.i.i, i32 %idxprom2.i.i.i
  %350 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx3.i.i.i, align 1
  %inc.i97.i.i = add i8 %349, 1
  store i8 %inc.i97.i.i, ptr %arrayidx.i96.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %inc.i97.i.i)
  %cmp6.i.i.i = icmp ugt i8 %inc.i97.i.i, 9
  br i1 %cmp6.i.i.i, label %if.then.i.i.i700, label %for.body.i98.i.i.if.end16.i.i.i701_crit_edge

for.body.i98.i.i.if.end16.i.i.i701_crit_edge:     ; preds = %for.body.i98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i701

if.then.i.i.i700:                                 ; preds = %for.body.i98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %352 = ptrtoint ptr %arrayidx.i96.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 0, ptr %arrayidx.i96.i.i, align 4
  %inc10.i.i.i = add i8 %347, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %inc10.i.i.i)
  %cmp12.i.i.i = icmp ugt i8 %inc10.i.i.i, 9
  %spec.store.select.i.i.i = select i1 %cmp12.i.i.i, i8 0, i8 %inc10.i.i.i
  %353 = ptrtoint ptr %column.i.i.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %spec.store.select.i.i.i, ptr %column.i.i.i, align 1
  br label %if.end16.i.i.i701

if.end16.i.i.i701:                                ; preds = %if.then.i.i.i700, %for.body.i98.i.i.if.end16.i.i.i701_crit_edge
  %conv17.i.i.i = zext i8 %351 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.066.i.i132.i, i32 %conv17.i.i.i)
  %cmp18.i.i.i = icmp ugt i32 %i.066.i.i132.i, %conv17.i.i.i
  br i1 %cmp18.i.i.i, label %if.end16.i.i.i701.for.inc.i100.i.i_crit_edge, label %if.end21.i.i.i

if.end16.i.i.i701.for.inc.i100.i.i_crit_edge:     ; preds = %if.end16.i.i.i701
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i100.i.i

if.end21.i.i.i:                                   ; preds = %if.end16.i.i.i701
  %shl.i.i.i702 = shl nuw i32 1, %conv17.i.i.i
  %and.i.i.i703 = and i32 %shl.i.i.i702, %conv22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i703)
  %tobool.not.i99.i.i = icmp eq i32 %and.i.i.i703, 0
  br i1 %tobool.not.i99.i.i, label %if.end21.i.i.i.for.inc.i100.i.i_crit_edge, label %minstrel_ht_next_group_sample_rate.exit.i.i

if.end21.i.i.i.for.inc.i100.i.i_crit_edge:        ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i100.i.i

for.inc.i100.i.i:                                 ; preds = %if.end21.i.i.i.for.inc.i100.i.i_crit_edge, %if.end16.i.i.i701.for.inc.i100.i.i_crit_edge
  %inc70.i.i.i = add nuw nsw i32 %i.089.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc70.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %for.inc.i100.i.i.for.inc.i177.i_crit_edge, label %for.inc.i100.i.i.for.body.i98.i.i_crit_edge

for.inc.i100.i.i.for.body.i98.i.i_crit_edge:      ; preds = %for.inc.i100.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i98.i.i

for.inc.i100.i.i.for.inc.i177.i_crit_edge:        ; preds = %for.inc.i100.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

minstrel_ht_next_group_sample_rate.exit.i.i:      ; preds = %if.end21.i.i.i
  %shl42.i.i.i = shl nuw nsw i32 %idxprom.i.i, 4
  %354 = and i8 %351, 15
  %and69.i.i.i = zext i8 %354 to i32
  %or.i.i.i = or i32 %shl42.i.i.i, %and69.i.i.i
  %arrayidx32.i.i.i704 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %idxprom.i.i, i32 4, i32 %and69.i.i.i
  %355 = ptrtoint ptr %arrayidx32.i.i.i704 to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %arrayidx32.i.i.i704, align 2
  %conv.i.i146.i = zext i16 %356 to i32
  %shl.i103.i.i = shl i32 %conv.i.i146.i, %conv33.i.i.i137.i.le
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i103.i.i, i32 %305)
  %cmp21.i.i = icmp ult i32 %shl.i103.i.i, %305
  %..i.i705 = select i1 %cmp21.i.i, i32 1, i32 2
  %arrayidx1.i.i147.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 %..i.i705, i32 1, i32 0
  %357 = ptrtoint ptr %arrayidx1.i.i147.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %arrayidx1.i.i147.i, align 2
  %conv.i104.i.i = zext i16 %358 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %conv.i104.i.i)
  %cmp2.i.i148.i = icmp eq i32 %or.i.i.i, %conv.i104.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %358)
  %tobool.not.i105.i.i = icmp eq i16 %358, 0
  %..i.i149.i = select i1 %tobool.not.i105.i.i, i32 2, i32 0
  %cleanup.dest.slot.0.i.i150.i = select i1 %cmp2.i.i148.i, i32 1, i32 %..i.i149.i
  %359 = zext i32 %cleanup.dest.slot.0.i.i150.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cleanup.dest.slot.0.i.i150.i, label %minstrel_ht_next_group_sample_rate.exit.i.i.for.inc.i177.i_crit_edge [
    i32 0, label %for.inc.i106.i.i
    i32 2, label %minstrel_ht_next_group_sample_rate.exit.i.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge
  ]

minstrel_ht_next_group_sample_rate.exit.i.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge: ; preds = %minstrel_ht_next_group_sample_rate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_find_sample_rate.exit.thread118.i.i

minstrel_ht_next_group_sample_rate.exit.i.i.for.inc.i177.i_crit_edge: ; preds = %minstrel_ht_next_group_sample_rate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

for.inc.i106.i.i:                                 ; preds = %minstrel_ht_next_group_sample_rate.exit.i.i
  %arrayidx1.1.i.i151.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 %..i.i705, i32 1, i32 1
  %360 = ptrtoint ptr %arrayidx1.1.i.i151.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %arrayidx1.1.i.i151.i, align 2
  %conv.1.i.i152.i = zext i16 %361 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %conv.1.i.i152.i)
  %cmp2.1.i.i153.i = icmp eq i32 %or.i.i.i, %conv.1.i.i152.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %361)
  %tobool.not.1.i.i154.i = icmp eq i16 %361, 0
  %..1.i.i155.i = select i1 %tobool.not.1.i.i154.i, i32 2, i32 0
  %cleanup.dest.slot.0.1.i.i156.i = select i1 %cmp2.1.i.i153.i, i32 1, i32 %..1.i.i155.i
  %362 = zext i32 %cleanup.dest.slot.0.1.i.i156.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %362, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %cleanup.dest.slot.0.1.i.i156.i, label %for.inc.i106.i.i.for.inc.i177.i_crit_edge [
    i32 0, label %for.inc.1.i.i163.i
    i32 2, label %for.inc.i106.i.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge
  ]

for.inc.i106.i.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge: ; preds = %for.inc.i106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_find_sample_rate.exit.thread118.i.i

for.inc.i106.i.i.for.inc.i177.i_crit_edge:        ; preds = %for.inc.i106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

for.inc.1.i.i163.i:                               ; preds = %for.inc.i106.i.i
  %arrayidx1.2.i.i157.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 %..i.i705, i32 1, i32 2
  %363 = ptrtoint ptr %arrayidx1.2.i.i157.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %arrayidx1.2.i.i157.i, align 2
  %conv.2.i.i158.i = zext i16 %364 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %conv.2.i.i158.i)
  %cmp2.2.i.i159.i = icmp eq i32 %or.i.i.i, %conv.2.i.i158.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %364)
  %tobool.not.2.i.i160.i = icmp eq i16 %364, 0
  %..2.i.i161.i = select i1 %tobool.not.2.i.i160.i, i32 2, i32 0
  %cleanup.dest.slot.0.2.i.i162.i = select i1 %cmp2.2.i.i159.i, i32 1, i32 %..2.i.i161.i
  %365 = zext i32 %cleanup.dest.slot.0.2.i.i162.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %365, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cleanup.dest.slot.0.2.i.i162.i, label %for.inc.1.i.i163.i.for.inc.i177.i_crit_edge [
    i32 0, label %for.inc.2.i.i170.i
    i32 2, label %for.inc.1.i.i163.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge
  ]

for.inc.1.i.i163.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge: ; preds = %for.inc.1.i.i163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_find_sample_rate.exit.thread118.i.i

for.inc.1.i.i163.i.for.inc.i177.i_crit_edge:      ; preds = %for.inc.1.i.i163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

for.inc.2.i.i170.i:                               ; preds = %for.inc.1.i.i163.i
  %arrayidx1.3.i.i164.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 %..i.i705, i32 1, i32 3
  %366 = ptrtoint ptr %arrayidx1.3.i.i164.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %arrayidx1.3.i.i164.i, align 2
  %conv.3.i.i165.i = zext i16 %367 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %conv.3.i.i165.i)
  %cmp2.3.i.i166.i = icmp eq i32 %or.i.i.i, %conv.3.i.i165.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %367)
  %tobool.not.3.i.i167.i = icmp eq i16 %367, 0
  %..3.i.i168.i = select i1 %tobool.not.3.i.i167.i, i32 2, i32 0
  %cleanup.dest.slot.0.3.i.i169.i = select i1 %cmp2.3.i.i166.i, i32 1, i32 %..3.i.i168.i
  %368 = zext i32 %cleanup.dest.slot.0.3.i.i169.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %368, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %cleanup.dest.slot.0.3.i.i169.i, label %for.inc.2.i.i170.i.for.inc.i177.i_crit_edge [
    i32 0, label %minstrel_ht_find_sample_rate.exit.i174.i
    i32 2, label %for.inc.2.i.i170.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge
  ]

for.inc.2.i.i170.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge: ; preds = %for.inc.2.i.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_find_sample_rate.exit.thread118.i.i

for.inc.2.i.i170.i.for.inc.i177.i_crit_edge:      ; preds = %for.inc.2.i.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

minstrel_ht_find_sample_rate.exit.thread118.i.i:  ; preds = %for.inc.2.i.i170.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge, %for.inc.1.i.i163.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge, %for.inc.i106.i.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge, %minstrel_ht_next_group_sample_rate.exit.i.i.minstrel_ht_find_sample_rate.exit.thread118.i.i_crit_edge
  br i1 %cmp21.i.i, label %minstrel_ht_find_sample_rate.exit.thread118.i.i.minstrel_ht_next_jump_rate.exit.i_crit_edge, label %minstrel_ht_find_sample_rate.exit.thread118.i.i.if.end33.i.i_crit_edge

minstrel_ht_find_sample_rate.exit.thread118.i.i.if.end33.i.i_crit_edge: ; preds = %minstrel_ht_find_sample_rate.exit.thread118.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

minstrel_ht_find_sample_rate.exit.thread118.i.i.minstrel_ht_next_jump_rate.exit.i_crit_edge: ; preds = %minstrel_ht_find_sample_rate.exit.thread118.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_next_jump_rate.exit.i

minstrel_ht_find_sample_rate.exit.i174.i:         ; preds = %for.inc.2.i.i170.i
  %arrayidx1.4.i.i171.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 %..i.i705, i32 1, i32 4
  %369 = ptrtoint ptr %arrayidx1.4.i.i171.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %arrayidx1.4.i.i171.i, align 2
  %conv.4.i.i172.i = zext i16 %370 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %conv.4.i.i172.i)
  %cmp2.4.not.i.i173.i = icmp eq i32 %or.i.i.i, %conv.4.i.i172.i
  br i1 %cmp2.4.not.i.i173.i, label %minstrel_ht_find_sample_rate.exit.i174.i.for.inc.i177.i_crit_edge, label %371

minstrel_ht_find_sample_rate.exit.i174.i.for.inc.i177.i_crit_edge: ; preds = %minstrel_ht_find_sample_rate.exit.i174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

371:                                              ; preds = %minstrel_ht_find_sample_rate.exit.i174.i
  br i1 %cmp21.i.i, label %.minstrel_ht_next_jump_rate.exit.i_crit_edge, label %.if.end33.i.i_crit_edge

.if.end33.i.i_crit_edge:                          ; preds = %371
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

.minstrel_ht_next_jump_rate.exit.i_crit_edge:     ; preds = %371
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_next_jump_rate.exit.i

if.end33.i.i:                                     ; preds = %.if.end33.i.i_crit_edge, %minstrel_ht_find_sample_rate.exit.thread118.i.i.if.end33.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %j.1.i)
  %cmp34.i.i = icmp slt i32 %j.1.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i103.i.i, i32 %307)
  %cmp38.not.i.i = icmp ult i32 %shl.i103.i.i, %307
  %or.cond.i.i = select i1 %cmp34.i.i, i1 %cmp38.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end41.i.i, label %if.end33.i.i.for.inc.i177.i_crit_edge

if.end33.i.i.for.inc.i177.i_crit_edge:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

if.end41.i.i:                                     ; preds = %if.end33.i.i
  %prob_avg.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %idxprom.i.i, i32 4, i32 %and69.i.i.i, i32 6
  %372 = ptrtoint ptr %prob_avg.i.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %prob_avg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3891, i16 %373)
  %cmp44.i.i = icmp ugt i16 %373, 3891
  br i1 %cmp44.i.i, label %if.end41.i.i.for.inc.i177.i_crit_edge, label %if.end47.i.i

if.end41.i.i.for.inc.i177.i_crit_edge:            ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i177.i

if.end47.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv48.i.i = trunc i32 %or.i.i.i to i16
  %inc.i175.i = add nsw i32 %j.1.i, 1
  %arrayidx49.i.i = getelementptr i16, ptr %sample_rates.i.i, i32 %j.1.i
  %374 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 %conv48.i.i, ptr %arrayidx49.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.1.i)
  %cmp50.i.i = icmp sgt i32 %j.1.i, 3
  %spec.select95.i.i = select i1 %cmp50.i.i, i32 %305, i32 %max_duration.1140.i.i
  br label %for.inc.i177.i

for.inc.i177.i:                                   ; preds = %if.end47.i.i, %if.end41.i.i.for.inc.i177.i_crit_edge, %if.end33.i.i.for.inc.i177.i_crit_edge, %minstrel_ht_find_sample_rate.exit.i174.i.for.inc.i177.i_crit_edge, %for.inc.2.i.i170.i.for.inc.i177.i_crit_edge, %for.inc.1.i.i163.i.for.inc.i177.i_crit_edge, %for.inc.i106.i.i.for.inc.i177.i_crit_edge, %minstrel_ht_next_group_sample_rate.exit.i.i.for.inc.i177.i_crit_edge, %for.inc.i100.i.i.for.inc.i177.i_crit_edge, %for.inc.i.i145.i.for.inc.i177.i_crit_edge, %for.body.i128.i.for.inc.i177.i_crit_edge
  %j.2.i = phi i32 [ %j.1.i, %for.body.i128.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %minstrel_ht_next_group_sample_rate.exit.i.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %if.end41.i.i.for.inc.i177.i_crit_edge ], [ %inc.i175.i, %if.end47.i.i ], [ %j.1.i, %if.end33.i.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %for.inc.i106.i.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %for.inc.1.i.i163.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %for.inc.2.i.i170.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %minstrel_ht_find_sample_rate.exit.i174.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %for.inc.i100.i.i.for.inc.i177.i_crit_edge ], [ %j.1.i, %for.inc.i.i145.i.for.inc.i177.i_crit_edge ]
  %max_duration.3.ph.i.i = phi i32 [ %max_duration.1140.i.i, %for.body.i128.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %minstrel_ht_next_group_sample_rate.exit.i.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %if.end41.i.i.for.inc.i177.i_crit_edge ], [ %spec.select95.i.i, %if.end47.i.i ], [ %max_duration.1140.i.i, %if.end33.i.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %for.inc.i106.i.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %for.inc.1.i.i163.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %for.inc.2.i.i170.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %minstrel_ht_find_sample_rate.exit.i174.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %for.inc.i100.i.i.for.inc.i177.i_crit_edge ], [ %max_duration.1140.i.i, %for.inc.i.i145.i.for.inc.i177.i_crit_edge ]
  %inc54.i.i = add nuw nsw i32 %i.0143.i.i, 1
  %exitcond.not.i176.i = icmp eq i32 %inc54.i.i, 42
  br i1 %exitcond.not.i176.i, label %minstrel_ht_next_jump_rate.exit.thread.i, label %for.inc.i177.i.for.body.i128.i_crit_edge

for.inc.i177.i.for.body.i128.i_crit_edge:         ; preds = %for.inc.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i128.i

minstrel_ht_next_jump_rate.exit.thread.i:         ; preds = %for.inc.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv4.i.i.le = trunc i16 %rem.i127.i to i8
  %375 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %conv4.i.i.le, ptr %arrayidx2.i.i, align 2
  %arrayidx47187.i = getelementptr i16, ptr %sample_rates38.i, i32 %i.1214.i
  %376 = ptrtoint ptr %arrayidx47187.i to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 0, ptr %arrayidx47187.i, align 2
  br label %minstrel_ht_refill_sample_rates.exit

minstrel_ht_next_jump_rate.exit.i:                ; preds = %.minstrel_ht_next_jump_rate.exit.i_crit_edge, %minstrel_ht_find_sample_rate.exit.thread118.i.i.minstrel_ht_next_jump_rate.exit.i_crit_edge
  %conv4.i.i.le781 = trunc i16 %rem.i127.i to i8
  %377 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %conv4.i.i.le781, ptr %arrayidx2.i.i, align 2
  %conv58.i.i = trunc i32 %or.i.i.i to i16
  %arrayidx47.i = getelementptr i16, ptr %sample_rates38.i, i32 %i.1214.i
  %378 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %conv58.i.i, ptr %arrayidx47.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv58.i.i)
  %tobool49.not.i = icmp ne i16 %conv58.i.i, 0
  %inc52.i = add nsw i32 %i.1214.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1214.i)
  %cmp43.i = icmp slt i32 %i.1214.i, 4
  %or.cond217.i = select i1 %tobool49.not.i, i1 %cmp43.i, i1 false
  br i1 %or.cond217.i, label %minstrel_ht_next_jump_rate.exit.i.while.body45.i_crit_edge, label %minstrel_ht_next_jump_rate.exit.i.minstrel_ht_refill_sample_rates.exit_crit_edge

minstrel_ht_next_jump_rate.exit.i.minstrel_ht_refill_sample_rates.exit_crit_edge: ; preds = %minstrel_ht_next_jump_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_refill_sample_rates.exit

minstrel_ht_next_jump_rate.exit.i.while.body45.i_crit_edge: ; preds = %minstrel_ht_next_jump_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body45.i

minstrel_ht_refill_sample_rates.exit:             ; preds = %minstrel_ht_next_jump_rate.exit.i.minstrel_ht_refill_sample_rates.exit_crit_edge, %minstrel_ht_next_jump_rate.exit.thread.i, %while.end.i.minstrel_ht_refill_sample_rates.exit_crit_edge
  %cur_sample_rates.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2
  %379 = call ptr @memcpy(ptr %cur_sample_rates.i, ptr %sample_rates.i, i32 10)
  %cur_sample_rates.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2
  %380 = call ptr @memcpy(ptr %cur_sample_rates.1.i, ptr %sample_rates38.i, i32 10)
  %cur_sample_rates.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2
  %sample_rates61.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 1
  %381 = call ptr @memcpy(ptr %cur_sample_rates.2.i, ptr %sample_rates61.2.i, i32 10)
  %fixed_rate_idx = getelementptr inbounds %struct.minstrel_priv, ptr %mp, i32 0, i32 9
  %382 = ptrtoint ptr %fixed_rate_idx to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %fixed_rate_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %383)
  %cmp421.not = icmp eq i32 %383, -1
  br i1 %cmp421.not, label %minstrel_ht_refill_sample_rates.exit.if.end438_crit_edge, label %for.body427.preheader

minstrel_ht_refill_sample_rates.exit.if.end438_crit_edge: ; preds = %minstrel_ht_refill_sample_rates.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end438

for.body427.preheader:                            ; preds = %minstrel_ht_refill_sample_rates.exit
  call void @__sanitizer_cov_trace_pc() #14
  %384 = ptrtoint ptr %fixed_rate_idx to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %fixed_rate_idx, align 4
  %conv429 = trunc i32 %385 to i16
  %386 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %conv429, ptr %max_tp_rate.i.i, align 2
  %387 = load i32, ptr %fixed_rate_idx, align 4
  %conv429.1 = trunc i32 %387 to i16
  %388 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 %conv429.1, ptr %arrayidx4.i, align 2
  %389 = load i32, ptr %fixed_rate_idx, align 4
  %conv429.2 = trunc i32 %389 to i16
  %arrayidx431.2 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 2
  %390 = ptrtoint ptr %arrayidx431.2 to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %conv429.2, ptr %arrayidx431.2, align 2
  %391 = load i32, ptr %fixed_rate_idx, align 4
  %conv429.3 = trunc i32 %391 to i16
  %arrayidx431.3 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 3
  %392 = ptrtoint ptr %arrayidx431.3 to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 %conv429.3, ptr %arrayidx431.3, align 2
  %393 = load i32, ptr %fixed_rate_idx, align 4
  %conv436 = trunc i32 %393 to i16
  %394 = ptrtoint ptr %max_prob_rate to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 %conv436, ptr %max_prob_rate, align 4
  br label %if.end438

if.end438:                                        ; preds = %for.body427.preheader, %minstrel_ht_refill_sample_rates.exit.if.end438_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %395 = load volatile i32, ptr @jiffies, align 128
  %last_stats_update = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 6
  %396 = ptrtoint ptr %last_stats_update to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %last_stats_update, align 4
  %397 = load volatile i32, ptr @jiffies, align 128
  %sample_time = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 17
  %398 = ptrtoint ptr %sample_time to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %397, ptr %sample_time, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_legacy_tp_rate) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_group_tp_rate) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_mcs_tp_rate) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_update_rates(ptr nocapture noundef readonly %mp, ptr nocapture noundef %mi) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 32) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_tp_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %1 = ptrtoint ptr %max_tp_rate to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %max_tp_rate, align 4
  %conv = zext i16 %2 to i32
  tail call fastcc void @minstrel_ht_set_rate(ptr noundef %mp, ptr noundef %mi, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef %conv)
  %3 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mp, align 4
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp ugt i8 %6, 2
  br i1 %cmp, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx6 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %8 to i32
  tail call fastcc void @minstrel_ht_set_rate(ptr noundef %mp, ptr noundef %mi, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef %conv7)
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %i.0 = phi i32 [ 2, %if.then3 ], [ 1, %if.end.if.end8_crit_edge ]
  %9 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mp, align 4
  %max_rates10 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %max_rates10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_rates10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp12 = icmp ugt i8 %12, 1
  br i1 %cmp12, label %if.then14, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %inc15 = add nuw nsw i32 %i.0, 1
  %max_prob_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 5
  %13 = ptrtoint ptr %max_prob_rate to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_prob_rate, align 4
  %conv16 = zext i16 %14 to i32
  tail call fastcc void @minstrel_ht_set_rate(ptr noundef %mp, ptr noundef %mi, ptr noundef nonnull %call7.i.i, i32 noundef %i.0, i32 noundef %conv16)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end8.if.end17_crit_edge
  %i.1 = phi i32 [ %inc15, %if.then14 ], [ %i.0, %if.end8.if.end17_crit_edge ]
  %max_prob_rate.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 5
  %15 = ptrtoint ptr %max_prob_rate.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_prob_rate.i, align 4
  %conv.i = zext i16 %16 to i32
  %shr.i = lshr i32 %conv.i, 4
  %and31.i = and i32 %conv.i, 15
  %prob_avg.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr.i, i32 4, i32 %and31.i, i32 6
  %17 = ptrtoint ptr %prob_avg.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %prob_avg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp.i = icmp ult i16 %18, 2048
  br i1 %cmp.i, label %if.end17.minstrel_ht_get_max_amsdu_len.exit_crit_edge, label %if.end.i

if.end17.minstrel_ht_get_max_amsdu_len.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_max_amsdu_len.exit

if.end.i:                                         ; preds = %if.end17
  %arrayidx38.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr.i, i32 4, i32 %and31.i
  %19 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx38.i, align 2
  %conv39.i = zext i16 %20 to i32
  %shift.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr.i, i32 2
  %21 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift.i, align 1
  %conv40.i = zext i8 %22 to i32
  %shl.i = shl i32 %conv39.i, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 738500, i32 %shl.i)
  %cmp41.i = icmp ugt i32 %shl.i, 738500
  br i1 %cmp41.i, label %if.end.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, label %if.end44.i

if.end.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_max_amsdu_len.exit

if.end44.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 369250, i32 %shl.i)
  %cmp45.i = icmp ugt i32 %shl.i, 369250
  br i1 %cmp45.i, label %if.end44.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, label %if.end48.i

if.end44.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_max_amsdu_len.exit

if.end48.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 147750, i32 %shl.i)
  %cmp49.i = icmp ugt i32 %shl.i, 147750
  br i1 %cmp49.i, label %if.end48.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, label %lor.lhs.false.i

if.end48.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_max_amsdu_len.exit

lor.lhs.false.i:                                  ; preds = %if.end48.i
  %23 = ptrtoint ptr %max_tp_rate to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_tp_rate, align 4
  %conv52.i = zext i16 %24 to i32
  %and.i.i = lshr i32 %conv52.i, 4
  %and29.i.i = and i32 %conv52.i, 15
  %prob_avg.i.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %and.i.i, i32 4, i32 %and29.i.i, i32 6
  %25 = ptrtoint ptr %prob_avg.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %prob_avg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %26)
  %cmp53.i = icmp ult i16 %26, 3072
  br i1 %cmp53.i, label %lor.lhs.false.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, label %if.end56.i

lor.lhs.false.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_max_amsdu_len.exit

if.end56.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mi, align 4
  %vht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vht_cap.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  %phi.cast = select i1 %tobool.not.i, i16 4095, i16 0
  br label %minstrel_ht_get_max_amsdu_len.exit

minstrel_ht_get_max_amsdu_len.exit:               ; preds = %if.end56.i, %lor.lhs.false.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, %if.end48.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, %if.end44.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, %if.end.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge, %if.end17.minstrel_ht_get_max_amsdu_len.exit_crit_edge
  %retval.0.i = phi i16 [ 1, %if.end17.minstrel_ht_get_max_amsdu_len.exit_crit_edge ], [ 500, %if.end.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge ], [ 1600, %if.end44.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge ], [ 3200, %lor.lhs.false.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge ], [ 3200, %if.end48.i.minstrel_ht_get_max_amsdu_len.exit_crit_edge ], [ %phi.cast, %if.end56.i ]
  %31 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mi, align 4
  %max_rc_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %max_rc_amsdu_len to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %retval.0.i, ptr %max_rc_amsdu_len, align 4
  %arrayidx20 = getelementptr %struct.ieee80211_sta_rates, ptr %call7.i.i, i32 0, i32 1, i32 %i.1
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %arrayidx20, align 2
  %35 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mp, align 4
  %37 = load ptr, ptr %mi, align 4
  %call23 = tail call i32 @rate_control_set_rates(ptr noundef %36, ptr noundef %37, ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %minstrel_ht_get_max_amsdu_len.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_sort_best_tp_rates(ptr nocapture noundef readonly %mi, i16 noundef zeroext %index, ptr nocapture noundef %tp_list) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %index to i32
  %shr = lshr i32 %conv, 4
  %and30 = and i32 %conv, 15
  %prob_avg = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and30, i32 6
  %0 = ptrtoint ptr %prob_avg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prob_avg, align 4
  %conv33 = zext i16 %1 to i32
  %overhead1.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 7
  %2 = ptrtoint ptr %overhead1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %overhead1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %1)
  %cmp.i = icmp ult i16 %1, 409
  br i1 %cmp.i, label %entry.minstrel_ht_get_tp_avg.exit_crit_edge, label %if.end.i

entry.minstrel_ht_get_tp_avg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit

if.end.i:                                         ; preds = %entry
  %4 = and i32 %conv, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %overhead_legacy.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 9
  %6 = ptrtoint ptr %overhead_legacy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %overhead_legacy.i, align 4
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  %avg_ampdu_len.i.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 3
  %8 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.end13.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i = lshr i32 %9, 12
  br label %if.end4.i

do.end13.i.i:                                     ; preds = %if.else.i
  %max_tp_rate.i.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %10 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_tp_rate.i.i, align 4
  %12 = and i16 %11, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %12)
  %13 = icmp eq i16 %12, 256
  br i1 %13, label %do.end13.i.i.if.end4.i_crit_edge, label %if.end16.i.i

do.end13.i.i.if.end4.i_crit_edge:                 ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end16.i.i:                                     ; preds = %do.end13.i.i
  %conv19.i.i = zext i16 %11 to i32
  %and.i.i.i = lshr i32 %conv19.i.i, 4
  %and30.i.i.i = and i32 %conv19.i.i, 15
  %arrayidx32.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i, i32 4, i32 %and30.i.i.i
  %14 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx32.i.i.i, align 2
  %conv.i.i.i = zext i16 %15 to i32
  %shift.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i, i32 2
  %16 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift.i.i.i, align 1
  %conv33.i.i.i = zext i8 %17 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i, %conv33.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i)
  %cmp.i.i = icmp sgt i32 %shl.i.i.i, 400000
  br i1 %cmp.i.i, label %if.end16.i.i.if.end4.i_crit_edge, label %if.end23.i.i

if.end16.i.i.if.end4.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end23.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i)
  %cmp24.i.i = icmp sgt i32 %shl.i.i.i, 250000
  br i1 %cmp24.i.i, label %if.end23.i.i.if.end4.i_crit_edge, label %if.end27.i.i

if.end23.i.i.if.end4.i_crit_edge:                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i)
  %cmp28.i.i = icmp sgt i32 %shl.i.i.i, 150000
  %..i.i = select i1 %cmp28.i.i, i32 8, i32 16
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end27.i.i, %if.end23.i.i.if.end4.i_crit_edge, %if.end16.i.i.if.end4.i_crit_edge, %do.end13.i.i.if.end4.i_crit_edge, %if.then.i.i, %if.then2.i
  %overhead.0.i = phi i32 [ %7, %if.then2.i ], [ %3, %if.then.i.i ], [ %3, %do.end13.i.i.if.end4.i_crit_edge ], [ %3, %if.end16.i.i.if.end4.i_crit_edge ], [ %3, %if.end23.i.i.if.end4.i_crit_edge ], [ %3, %if.end27.i.i ]
  %ampdu_len.0.i = phi i32 [ 1, %if.then2.i ], [ %shr.i.i, %if.then.i.i ], [ 1, %do.end13.i.i.if.end4.i_crit_edge ], [ 2, %if.end16.i.i.if.end4.i_crit_edge ], [ 4, %if.end23.i.i.if.end4.i_crit_edge ], [ %..i.i, %if.end27.i.i ]
  %mul.i = mul i32 %overhead.0.i, 1000
  %div.i = udiv i32 %mul.i, %ampdu_len.0.i
  %arrayidx5.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 4, i32 %and30
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5.i, align 2
  %conv.i = zext i16 %19 to i32
  %shift.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 2
  %20 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift.i, align 1
  %conv7.i = zext i8 %21 to i32
  %shl.i = shl i32 %conv.i, %conv7.i
  %add.i = add i32 %shl.i, %div.i
  %22 = tail call i32 @llvm.smin.i32(i32 %conv33, i32 3686) #12
  %mul12.i = mul nuw i32 %22, 1000000
  %div13.i = udiv i32 %mul12.i, %add.i
  %mul14.i = mul i32 %div13.i, 100
  %shr.i = lshr i32 %mul14.i, 12
  br label %minstrel_ht_get_tp_avg.exit

minstrel_ht_get_tp_avg.exit:                      ; preds = %if.end4.i, %entry.minstrel_ht_get_tp_avg.exit_crit_edge
  %retval.0.i = phi i32 [ %shr.i, %if.end4.i ], [ 0, %entry.minstrel_ht_get_tp_avg.exit_crit_edge ]
  %avg_ampdu_len.i.i136 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 3
  %max_tp_rate.i.i141 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %overhead_legacy.i134 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 9
  %arrayidx51 = getelementptr i16, ptr %tp_list, i32 3
  %23 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx51, align 2
  %conv52 = zext i16 %24 to i32
  %shr54 = lshr i32 %conv52, 4
  %and74 = and i32 %conv52, 15
  %prob_avg80 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr54, i32 4, i32 %and74, i32 6
  %25 = ptrtoint ptr %prob_avg80 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %prob_avg80, align 4
  %conv81 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %26)
  %cmp.i132 = icmp ult i16 %26, 409
  br i1 %cmp.i132, label %minstrel_ht_get_tp_avg.exit.minstrel_ht_get_tp_avg.exit174_crit_edge, label %if.end.i133

minstrel_ht_get_tp_avg.exit.minstrel_ht_get_tp_avg.exit174_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit174

if.end.i133:                                      ; preds = %minstrel_ht_get_tp_avg.exit
  %27 = and i32 %conv52, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %27)
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %if.then2.i135, label %if.else.i138

if.then2.i135:                                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %overhead_legacy.i134 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %overhead_legacy.i134, align 4
  br label %if.end4.i172

if.else.i138:                                     ; preds = %if.end.i133
  %31 = ptrtoint ptr %avg_ampdu_len.i.i136 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %avg_ampdu_len.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i137 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i137, label %do.end13.i.i142, label %if.then.i.i140

if.then.i.i140:                                   ; preds = %if.else.i138
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i139 = lshr i32 %32, 12
  br label %if.end4.i172

do.end13.i.i142:                                  ; preds = %if.else.i138
  %33 = ptrtoint ptr %max_tp_rate.i.i141 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_tp_rate.i.i141, align 4
  %35 = and i16 %34, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %35)
  %36 = icmp eq i16 %35, 256
  br i1 %36, label %do.end13.i.i142.if.end4.i172_crit_edge, label %if.end16.i.i152

do.end13.i.i142.if.end4.i172_crit_edge:           ; preds = %do.end13.i.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172

if.end16.i.i152:                                  ; preds = %do.end13.i.i142
  %conv19.i.i143 = zext i16 %34 to i32
  %and.i.i.i144 = lshr i32 %conv19.i.i143, 4
  %and30.i.i.i145 = and i32 %conv19.i.i143, 15
  %arrayidx32.i.i.i146 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144, i32 4, i32 %and30.i.i.i145
  %37 = ptrtoint ptr %arrayidx32.i.i.i146 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx32.i.i.i146, align 2
  %conv.i.i.i147 = zext i16 %38 to i32
  %shift.i.i.i148 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144, i32 2
  %39 = ptrtoint ptr %shift.i.i.i148 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %shift.i.i.i148, align 1
  %conv33.i.i.i149 = zext i8 %40 to i32
  %shl.i.i.i150 = shl i32 %conv.i.i.i147, %conv33.i.i.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i150)
  %cmp.i.i151 = icmp sgt i32 %shl.i.i.i150, 400000
  br i1 %cmp.i.i151, label %if.end16.i.i152.if.end4.i172_crit_edge, label %if.end23.i.i154

if.end16.i.i152.if.end4.i172_crit_edge:           ; preds = %if.end16.i.i152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172

if.end23.i.i154:                                  ; preds = %if.end16.i.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i150)
  %cmp24.i.i153 = icmp sgt i32 %shl.i.i.i150, 250000
  br i1 %cmp24.i.i153, label %if.end23.i.i154.if.end4.i172_crit_edge, label %if.end27.i.i157

if.end23.i.i154.if.end4.i172_crit_edge:           ; preds = %if.end23.i.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172

if.end27.i.i157:                                  ; preds = %if.end23.i.i154
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i150)
  %cmp28.i.i155 = icmp sgt i32 %shl.i.i.i150, 150000
  %..i.i156 = select i1 %cmp28.i.i155, i32 8, i32 16
  br label %if.end4.i172

if.end4.i172:                                     ; preds = %if.end27.i.i157, %if.end23.i.i154.if.end4.i172_crit_edge, %if.end16.i.i152.if.end4.i172_crit_edge, %do.end13.i.i142.if.end4.i172_crit_edge, %if.then.i.i140, %if.then2.i135
  %overhead.0.i158 = phi i32 [ %30, %if.then2.i135 ], [ %3, %if.then.i.i140 ], [ %3, %do.end13.i.i142.if.end4.i172_crit_edge ], [ %3, %if.end16.i.i152.if.end4.i172_crit_edge ], [ %3, %if.end23.i.i154.if.end4.i172_crit_edge ], [ %3, %if.end27.i.i157 ]
  %ampdu_len.0.i159 = phi i32 [ 1, %if.then2.i135 ], [ %shr.i.i139, %if.then.i.i140 ], [ 1, %do.end13.i.i142.if.end4.i172_crit_edge ], [ 2, %if.end16.i.i152.if.end4.i172_crit_edge ], [ 4, %if.end23.i.i154.if.end4.i172_crit_edge ], [ %..i.i156, %if.end27.i.i157 ]
  %mul.i160 = mul i32 %overhead.0.i158, 1000
  %div.i161 = udiv i32 %mul.i160, %ampdu_len.0.i159
  %arrayidx5.i162 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54, i32 4, i32 %and74
  %41 = ptrtoint ptr %arrayidx5.i162 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx5.i162, align 2
  %conv.i163 = zext i16 %42 to i32
  %shift.i164 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54, i32 2
  %43 = ptrtoint ptr %shift.i164 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %shift.i164, align 1
  %conv7.i165 = zext i8 %44 to i32
  %shl.i166 = shl i32 %conv.i163, %conv7.i165
  %add.i167 = add i32 %shl.i166, %div.i161
  %45 = tail call i32 @llvm.smin.i32(i32 %conv81, i32 3686) #12
  %mul12.i168 = mul nuw i32 %45, 1000000
  %div13.i169 = udiv i32 %mul12.i168, %add.i167
  %mul14.i170 = mul i32 %div13.i169, 100
  %shr.i171 = lshr i32 %mul14.i170, 12
  br label %minstrel_ht_get_tp_avg.exit174

minstrel_ht_get_tp_avg.exit174:                   ; preds = %if.end4.i172, %minstrel_ht_get_tp_avg.exit.minstrel_ht_get_tp_avg.exit174_crit_edge
  %retval.0.i173 = phi i32 [ %shr.i171, %if.end4.i172 ], [ 0, %minstrel_ht_get_tp_avg.exit.minstrel_ht_get_tp_avg.exit174_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173)
  %cmp = icmp ult i32 %retval.0.i, %retval.0.i173
  br i1 %cmp, label %minstrel_ht_get_tp_avg.exit174.if.end104_crit_edge, label %lor.lhs.false

minstrel_ht_get_tp_avg.exit174.if.end104_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

lor.lhs.false:                                    ; preds = %minstrel_ht_get_tp_avg.exit174
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173)
  %cmp84 = icmp ne i32 %retval.0.i, %retval.0.i173
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %26)
  %cmp86.not = icmp ugt i16 %1, %26
  %or.cond = select i1 %cmp84, i1 true, i1 %cmp86.not
  br i1 %or.cond, label %if.end, label %lor.lhs.false.if.end104_crit_edge

lor.lhs.false.if.end104_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx51.1 = getelementptr i16, ptr %tp_list, i32 2
  %46 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx51.1, align 2
  %conv52.1 = zext i16 %47 to i32
  %shr54.1 = lshr i32 %conv52.1, 4
  %and74.1 = and i32 %conv52.1, 15
  %prob_avg80.1 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr54.1, i32 4, i32 %and74.1, i32 6
  %48 = ptrtoint ptr %prob_avg80.1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %prob_avg80.1, align 4
  %conv81.1 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %49)
  %cmp.i132.1 = icmp ult i16 %49, 409
  br i1 %cmp.i132.1, label %if.end.minstrel_ht_get_tp_avg.exit174.1_crit_edge, label %if.end.i133.1

if.end.minstrel_ht_get_tp_avg.exit174.1_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit174.1

if.end.i133.1:                                    ; preds = %if.end
  %50 = and i32 %conv52.1, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %50)
  %51 = icmp eq i32 %50, 256
  br i1 %51, label %if.then2.i135.1, label %if.else.i138.1

if.else.i138.1:                                   ; preds = %if.end.i133.1
  %52 = ptrtoint ptr %avg_ampdu_len.i.i136 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %avg_ampdu_len.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i137.1 = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i137.1, label %do.end13.i.i142.1, label %if.then.i.i140.1

if.then.i.i140.1:                                 ; preds = %if.else.i138.1
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i139.1 = lshr i32 %53, 12
  br label %if.end4.i172.1

do.end13.i.i142.1:                                ; preds = %if.else.i138.1
  %54 = ptrtoint ptr %max_tp_rate.i.i141 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %max_tp_rate.i.i141, align 4
  %56 = and i16 %55, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %56)
  %57 = icmp eq i16 %56, 256
  br i1 %57, label %do.end13.i.i142.1.if.end4.i172.1_crit_edge, label %if.end16.i.i152.1

do.end13.i.i142.1.if.end4.i172.1_crit_edge:       ; preds = %do.end13.i.i142.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.1

if.end16.i.i152.1:                                ; preds = %do.end13.i.i142.1
  %conv19.i.i143.1 = zext i16 %55 to i32
  %and.i.i.i144.1 = lshr i32 %conv19.i.i143.1, 4
  %and30.i.i.i145.1 = and i32 %conv19.i.i143.1, 15
  %arrayidx32.i.i.i146.1 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144.1, i32 4, i32 %and30.i.i.i145.1
  %58 = ptrtoint ptr %arrayidx32.i.i.i146.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx32.i.i.i146.1, align 2
  %conv.i.i.i147.1 = zext i16 %59 to i32
  %shift.i.i.i148.1 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144.1, i32 2
  %60 = ptrtoint ptr %shift.i.i.i148.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %shift.i.i.i148.1, align 1
  %conv33.i.i.i149.1 = zext i8 %61 to i32
  %shl.i.i.i150.1 = shl i32 %conv.i.i.i147.1, %conv33.i.i.i149.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i150.1)
  %cmp.i.i151.1 = icmp sgt i32 %shl.i.i.i150.1, 400000
  br i1 %cmp.i.i151.1, label %if.end16.i.i152.1.if.end4.i172.1_crit_edge, label %if.end23.i.i154.1

if.end16.i.i152.1.if.end4.i172.1_crit_edge:       ; preds = %if.end16.i.i152.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.1

if.end23.i.i154.1:                                ; preds = %if.end16.i.i152.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i150.1)
  %cmp24.i.i153.1 = icmp sgt i32 %shl.i.i.i150.1, 250000
  br i1 %cmp24.i.i153.1, label %if.end23.i.i154.1.if.end4.i172.1_crit_edge, label %if.end27.i.i157.1

if.end23.i.i154.1.if.end4.i172.1_crit_edge:       ; preds = %if.end23.i.i154.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.1

if.end27.i.i157.1:                                ; preds = %if.end23.i.i154.1
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i150.1)
  %cmp28.i.i155.1 = icmp sgt i32 %shl.i.i.i150.1, 150000
  %..i.i156.1 = select i1 %cmp28.i.i155.1, i32 8, i32 16
  br label %if.end4.i172.1

if.then2.i135.1:                                  ; preds = %if.end.i133.1
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %overhead_legacy.i134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %overhead_legacy.i134, align 4
  br label %if.end4.i172.1

if.end4.i172.1:                                   ; preds = %if.then2.i135.1, %if.end27.i.i157.1, %if.end23.i.i154.1.if.end4.i172.1_crit_edge, %if.end16.i.i152.1.if.end4.i172.1_crit_edge, %do.end13.i.i142.1.if.end4.i172.1_crit_edge, %if.then.i.i140.1
  %overhead.0.i158.1 = phi i32 [ %63, %if.then2.i135.1 ], [ %3, %if.then.i.i140.1 ], [ %3, %do.end13.i.i142.1.if.end4.i172.1_crit_edge ], [ %3, %if.end16.i.i152.1.if.end4.i172.1_crit_edge ], [ %3, %if.end23.i.i154.1.if.end4.i172.1_crit_edge ], [ %3, %if.end27.i.i157.1 ]
  %ampdu_len.0.i159.1 = phi i32 [ 1, %if.then2.i135.1 ], [ %shr.i.i139.1, %if.then.i.i140.1 ], [ 1, %do.end13.i.i142.1.if.end4.i172.1_crit_edge ], [ 2, %if.end16.i.i152.1.if.end4.i172.1_crit_edge ], [ 4, %if.end23.i.i154.1.if.end4.i172.1_crit_edge ], [ %..i.i156.1, %if.end27.i.i157.1 ]
  %mul.i160.1 = mul i32 %overhead.0.i158.1, 1000
  %div.i161.1 = udiv i32 %mul.i160.1, %ampdu_len.0.i159.1
  %arrayidx5.i162.1 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54.1, i32 4, i32 %and74.1
  %64 = ptrtoint ptr %arrayidx5.i162.1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx5.i162.1, align 2
  %conv.i163.1 = zext i16 %65 to i32
  %shift.i164.1 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54.1, i32 2
  %66 = ptrtoint ptr %shift.i164.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %shift.i164.1, align 1
  %conv7.i165.1 = zext i8 %67 to i32
  %shl.i166.1 = shl i32 %conv.i163.1, %conv7.i165.1
  %add.i167.1 = add i32 %shl.i166.1, %div.i161.1
  %68 = tail call i32 @llvm.smin.i32(i32 %conv81.1, i32 3686) #12
  %mul12.i168.1 = mul nuw i32 %68, 1000000
  %div13.i169.1 = udiv i32 %mul12.i168.1, %add.i167.1
  %mul14.i170.1 = mul i32 %div13.i169.1, 100
  %shr.i171.1 = lshr i32 %mul14.i170.1, 12
  br label %minstrel_ht_get_tp_avg.exit174.1

minstrel_ht_get_tp_avg.exit174.1:                 ; preds = %if.end4.i172.1, %if.end.minstrel_ht_get_tp_avg.exit174.1_crit_edge
  %retval.0.i173.1 = phi i32 [ %shr.i171.1, %if.end4.i172.1 ], [ 0, %if.end.minstrel_ht_get_tp_avg.exit174.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173.1)
  %cmp.1 = icmp ult i32 %retval.0.i, %retval.0.i173.1
  br i1 %cmp.1, label %minstrel_ht_get_tp_avg.exit174.1.if.then102_crit_edge, label %lor.lhs.false.1

minstrel_ht_get_tp_avg.exit174.1.if.then102_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit174.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

lor.lhs.false.1:                                  ; preds = %minstrel_ht_get_tp_avg.exit174.1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173.1)
  %cmp84.1 = icmp ne i32 %retval.0.i, %retval.0.i173.1
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %49)
  %cmp86.not.1 = icmp ugt i16 %1, %49
  %or.cond.1 = select i1 %cmp84.1, i1 true, i1 %cmp86.not.1
  br i1 %or.cond.1, label %if.end.1, label %lor.lhs.false.1.if.then102_crit_edge

lor.lhs.false.1.if.then102_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

if.end.1:                                         ; preds = %lor.lhs.false.1
  %arrayidx51.2 = getelementptr i16, ptr %tp_list, i32 1
  %69 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx51.2, align 2
  %conv52.2 = zext i16 %70 to i32
  %shr54.2 = lshr i32 %conv52.2, 4
  %and74.2 = and i32 %conv52.2, 15
  %prob_avg80.2 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr54.2, i32 4, i32 %and74.2, i32 6
  %71 = ptrtoint ptr %prob_avg80.2 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %prob_avg80.2, align 4
  %conv81.2 = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %72)
  %cmp.i132.2 = icmp ult i16 %72, 409
  br i1 %cmp.i132.2, label %if.end.1.minstrel_ht_get_tp_avg.exit174.2_crit_edge, label %if.end.i133.2

if.end.1.minstrel_ht_get_tp_avg.exit174.2_crit_edge: ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit174.2

if.end.i133.2:                                    ; preds = %if.end.1
  %73 = and i32 %conv52.2, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %73)
  %74 = icmp eq i32 %73, 256
  br i1 %74, label %if.then2.i135.2, label %if.else.i138.2

if.else.i138.2:                                   ; preds = %if.end.i133.2
  %75 = ptrtoint ptr %avg_ampdu_len.i.i136 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %avg_ampdu_len.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i137.2 = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i137.2, label %do.end13.i.i142.2, label %if.then.i.i140.2

if.then.i.i140.2:                                 ; preds = %if.else.i138.2
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i139.2 = lshr i32 %76, 12
  br label %if.end4.i172.2

do.end13.i.i142.2:                                ; preds = %if.else.i138.2
  %77 = ptrtoint ptr %max_tp_rate.i.i141 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %max_tp_rate.i.i141, align 4
  %79 = and i16 %78, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %79)
  %80 = icmp eq i16 %79, 256
  br i1 %80, label %do.end13.i.i142.2.if.end4.i172.2_crit_edge, label %if.end16.i.i152.2

do.end13.i.i142.2.if.end4.i172.2_crit_edge:       ; preds = %do.end13.i.i142.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.2

if.end16.i.i152.2:                                ; preds = %do.end13.i.i142.2
  %conv19.i.i143.2 = zext i16 %78 to i32
  %and.i.i.i144.2 = lshr i32 %conv19.i.i143.2, 4
  %and30.i.i.i145.2 = and i32 %conv19.i.i143.2, 15
  %arrayidx32.i.i.i146.2 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144.2, i32 4, i32 %and30.i.i.i145.2
  %81 = ptrtoint ptr %arrayidx32.i.i.i146.2 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx32.i.i.i146.2, align 2
  %conv.i.i.i147.2 = zext i16 %82 to i32
  %shift.i.i.i148.2 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144.2, i32 2
  %83 = ptrtoint ptr %shift.i.i.i148.2 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %shift.i.i.i148.2, align 1
  %conv33.i.i.i149.2 = zext i8 %84 to i32
  %shl.i.i.i150.2 = shl i32 %conv.i.i.i147.2, %conv33.i.i.i149.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i150.2)
  %cmp.i.i151.2 = icmp sgt i32 %shl.i.i.i150.2, 400000
  br i1 %cmp.i.i151.2, label %if.end16.i.i152.2.if.end4.i172.2_crit_edge, label %if.end23.i.i154.2

if.end16.i.i152.2.if.end4.i172.2_crit_edge:       ; preds = %if.end16.i.i152.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.2

if.end23.i.i154.2:                                ; preds = %if.end16.i.i152.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i150.2)
  %cmp24.i.i153.2 = icmp sgt i32 %shl.i.i.i150.2, 250000
  br i1 %cmp24.i.i153.2, label %if.end23.i.i154.2.if.end4.i172.2_crit_edge, label %if.end27.i.i157.2

if.end23.i.i154.2.if.end4.i172.2_crit_edge:       ; preds = %if.end23.i.i154.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.2

if.end27.i.i157.2:                                ; preds = %if.end23.i.i154.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i150.2)
  %cmp28.i.i155.2 = icmp sgt i32 %shl.i.i.i150.2, 150000
  %..i.i156.2 = select i1 %cmp28.i.i155.2, i32 8, i32 16
  br label %if.end4.i172.2

if.then2.i135.2:                                  ; preds = %if.end.i133.2
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %overhead_legacy.i134 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %overhead_legacy.i134, align 4
  br label %if.end4.i172.2

if.end4.i172.2:                                   ; preds = %if.then2.i135.2, %if.end27.i.i157.2, %if.end23.i.i154.2.if.end4.i172.2_crit_edge, %if.end16.i.i152.2.if.end4.i172.2_crit_edge, %do.end13.i.i142.2.if.end4.i172.2_crit_edge, %if.then.i.i140.2
  %overhead.0.i158.2 = phi i32 [ %86, %if.then2.i135.2 ], [ %3, %if.then.i.i140.2 ], [ %3, %do.end13.i.i142.2.if.end4.i172.2_crit_edge ], [ %3, %if.end16.i.i152.2.if.end4.i172.2_crit_edge ], [ %3, %if.end23.i.i154.2.if.end4.i172.2_crit_edge ], [ %3, %if.end27.i.i157.2 ]
  %ampdu_len.0.i159.2 = phi i32 [ 1, %if.then2.i135.2 ], [ %shr.i.i139.2, %if.then.i.i140.2 ], [ 1, %do.end13.i.i142.2.if.end4.i172.2_crit_edge ], [ 2, %if.end16.i.i152.2.if.end4.i172.2_crit_edge ], [ 4, %if.end23.i.i154.2.if.end4.i172.2_crit_edge ], [ %..i.i156.2, %if.end27.i.i157.2 ]
  %mul.i160.2 = mul i32 %overhead.0.i158.2, 1000
  %div.i161.2 = udiv i32 %mul.i160.2, %ampdu_len.0.i159.2
  %arrayidx5.i162.2 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54.2, i32 4, i32 %and74.2
  %87 = ptrtoint ptr %arrayidx5.i162.2 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx5.i162.2, align 2
  %conv.i163.2 = zext i16 %88 to i32
  %shift.i164.2 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54.2, i32 2
  %89 = ptrtoint ptr %shift.i164.2 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %shift.i164.2, align 1
  %conv7.i165.2 = zext i8 %90 to i32
  %shl.i166.2 = shl i32 %conv.i163.2, %conv7.i165.2
  %add.i167.2 = add i32 %shl.i166.2, %div.i161.2
  %91 = tail call i32 @llvm.smin.i32(i32 %conv81.2, i32 3686) #12
  %mul12.i168.2 = mul nuw i32 %91, 1000000
  %div13.i169.2 = udiv i32 %mul12.i168.2, %add.i167.2
  %mul14.i170.2 = mul i32 %div13.i169.2, 100
  %shr.i171.2 = lshr i32 %mul14.i170.2, 12
  br label %minstrel_ht_get_tp_avg.exit174.2

minstrel_ht_get_tp_avg.exit174.2:                 ; preds = %if.end4.i172.2, %if.end.1.minstrel_ht_get_tp_avg.exit174.2_crit_edge
  %retval.0.i173.2 = phi i32 [ %shr.i171.2, %if.end4.i172.2 ], [ 0, %if.end.1.minstrel_ht_get_tp_avg.exit174.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173.2)
  %cmp.2 = icmp ult i32 %retval.0.i, %retval.0.i173.2
  br i1 %cmp.2, label %minstrel_ht_get_tp_avg.exit174.2.do.end91.thread_crit_edge, label %lor.lhs.false.2

minstrel_ht_get_tp_avg.exit174.2.do.end91.thread_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit174.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91.thread

lor.lhs.false.2:                                  ; preds = %minstrel_ht_get_tp_avg.exit174.2
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173.2)
  %cmp84.2 = icmp ne i32 %retval.0.i, %retval.0.i173.2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %72)
  %cmp86.not.2 = icmp ugt i16 %1, %72
  %or.cond.2 = select i1 %cmp84.2, i1 true, i1 %cmp86.not.2
  br i1 %or.cond.2, label %if.end.2, label %lor.lhs.false.2.do.end91.thread_crit_edge

lor.lhs.false.2.do.end91.thread_crit_edge:        ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91.thread

if.end.2:                                         ; preds = %lor.lhs.false.2
  %92 = ptrtoint ptr %tp_list to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tp_list, align 2
  %conv52.3 = zext i16 %93 to i32
  %shr54.3 = lshr i32 %conv52.3, 4
  %and74.3 = and i32 %conv52.3, 15
  %prob_avg80.3 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr54.3, i32 4, i32 %and74.3, i32 6
  %94 = ptrtoint ptr %prob_avg80.3 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %prob_avg80.3, align 4
  %conv81.3 = zext i16 %95 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %95)
  %cmp.i132.3 = icmp ult i16 %95, 409
  br i1 %cmp.i132.3, label %if.end.2.minstrel_ht_get_tp_avg.exit174.3_crit_edge, label %if.end.i133.3

if.end.2.minstrel_ht_get_tp_avg.exit174.3_crit_edge: ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_get_tp_avg.exit174.3

if.end.i133.3:                                    ; preds = %if.end.2
  %96 = and i32 %conv52.3, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %96)
  %97 = icmp eq i32 %96, 256
  br i1 %97, label %if.then2.i135.3, label %if.else.i138.3

if.else.i138.3:                                   ; preds = %if.end.i133.3
  %98 = ptrtoint ptr %avg_ampdu_len.i.i136 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %avg_ampdu_len.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i.i137.3 = icmp eq i32 %99, 0
  br i1 %tobool.not.i.i137.3, label %do.end13.i.i142.3, label %if.then.i.i140.3

if.then.i.i140.3:                                 ; preds = %if.else.i138.3
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i139.3 = lshr i32 %99, 12
  br label %if.end4.i172.3

do.end13.i.i142.3:                                ; preds = %if.else.i138.3
  %100 = ptrtoint ptr %max_tp_rate.i.i141 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %max_tp_rate.i.i141, align 4
  %102 = and i16 %101, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %102)
  %103 = icmp eq i16 %102, 256
  br i1 %103, label %do.end13.i.i142.3.if.end4.i172.3_crit_edge, label %if.end16.i.i152.3

do.end13.i.i142.3.if.end4.i172.3_crit_edge:       ; preds = %do.end13.i.i142.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.3

if.end16.i.i152.3:                                ; preds = %do.end13.i.i142.3
  %conv19.i.i143.3 = zext i16 %101 to i32
  %and.i.i.i144.3 = lshr i32 %conv19.i.i143.3, 4
  %and30.i.i.i145.3 = and i32 %conv19.i.i143.3, 15
  %arrayidx32.i.i.i146.3 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144.3, i32 4, i32 %and30.i.i.i145.3
  %104 = ptrtoint ptr %arrayidx32.i.i.i146.3 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx32.i.i.i146.3, align 2
  %conv.i.i.i147.3 = zext i16 %105 to i32
  %shift.i.i.i148.3 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i144.3, i32 2
  %106 = ptrtoint ptr %shift.i.i.i148.3 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %shift.i.i.i148.3, align 1
  %conv33.i.i.i149.3 = zext i8 %107 to i32
  %shl.i.i.i150.3 = shl i32 %conv.i.i.i147.3, %conv33.i.i.i149.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i150.3)
  %cmp.i.i151.3 = icmp sgt i32 %shl.i.i.i150.3, 400000
  br i1 %cmp.i.i151.3, label %if.end16.i.i152.3.if.end4.i172.3_crit_edge, label %if.end23.i.i154.3

if.end16.i.i152.3.if.end4.i172.3_crit_edge:       ; preds = %if.end16.i.i152.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.3

if.end23.i.i154.3:                                ; preds = %if.end16.i.i152.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i150.3)
  %cmp24.i.i153.3 = icmp sgt i32 %shl.i.i.i150.3, 250000
  br i1 %cmp24.i.i153.3, label %if.end23.i.i154.3.if.end4.i172.3_crit_edge, label %if.end27.i.i157.3

if.end23.i.i154.3.if.end4.i172.3_crit_edge:       ; preds = %if.end23.i.i154.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i172.3

if.end27.i.i157.3:                                ; preds = %if.end23.i.i154.3
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i150.3)
  %cmp28.i.i155.3 = icmp sgt i32 %shl.i.i.i150.3, 150000
  %..i.i156.3 = select i1 %cmp28.i.i155.3, i32 8, i32 16
  br label %if.end4.i172.3

if.then2.i135.3:                                  ; preds = %if.end.i133.3
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %overhead_legacy.i134 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %overhead_legacy.i134, align 4
  br label %if.end4.i172.3

if.end4.i172.3:                                   ; preds = %if.then2.i135.3, %if.end27.i.i157.3, %if.end23.i.i154.3.if.end4.i172.3_crit_edge, %if.end16.i.i152.3.if.end4.i172.3_crit_edge, %do.end13.i.i142.3.if.end4.i172.3_crit_edge, %if.then.i.i140.3
  %overhead.0.i158.3 = phi i32 [ %109, %if.then2.i135.3 ], [ %3, %if.then.i.i140.3 ], [ %3, %do.end13.i.i142.3.if.end4.i172.3_crit_edge ], [ %3, %if.end16.i.i152.3.if.end4.i172.3_crit_edge ], [ %3, %if.end23.i.i154.3.if.end4.i172.3_crit_edge ], [ %3, %if.end27.i.i157.3 ]
  %ampdu_len.0.i159.3 = phi i32 [ 1, %if.then2.i135.3 ], [ %shr.i.i139.3, %if.then.i.i140.3 ], [ 1, %do.end13.i.i142.3.if.end4.i172.3_crit_edge ], [ 2, %if.end16.i.i152.3.if.end4.i172.3_crit_edge ], [ 4, %if.end23.i.i154.3.if.end4.i172.3_crit_edge ], [ %..i.i156.3, %if.end27.i.i157.3 ]
  %mul.i160.3 = mul i32 %overhead.0.i158.3, 1000
  %div.i161.3 = udiv i32 %mul.i160.3, %ampdu_len.0.i159.3
  %arrayidx5.i162.3 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54.3, i32 4, i32 %and74.3
  %110 = ptrtoint ptr %arrayidx5.i162.3 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx5.i162.3, align 2
  %conv.i163.3 = zext i16 %111 to i32
  %shift.i164.3 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr54.3, i32 2
  %112 = ptrtoint ptr %shift.i164.3 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %shift.i164.3, align 1
  %conv7.i165.3 = zext i8 %113 to i32
  %shl.i166.3 = shl i32 %conv.i163.3, %conv7.i165.3
  %add.i167.3 = add i32 %shl.i166.3, %div.i161.3
  %114 = tail call i32 @llvm.smin.i32(i32 %conv81.3, i32 3686) #12
  %mul12.i168.3 = mul nuw i32 %114, 1000000
  %div13.i169.3 = udiv i32 %mul12.i168.3, %add.i167.3
  %mul14.i170.3 = mul i32 %div13.i169.3, 100
  %shr.i171.3 = lshr i32 %mul14.i170.3, 12
  br label %minstrel_ht_get_tp_avg.exit174.3

minstrel_ht_get_tp_avg.exit174.3:                 ; preds = %if.end4.i172.3, %if.end.2.minstrel_ht_get_tp_avg.exit174.3_crit_edge
  %retval.0.i173.3 = phi i32 [ %shr.i171.3, %if.end4.i172.3 ], [ 0, %if.end.2.minstrel_ht_get_tp_avg.exit174.3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173.3)
  %cmp.3 = icmp ult i32 %retval.0.i, %retval.0.i173.3
  br i1 %cmp.3, label %minstrel_ht_get_tp_avg.exit174.3.do.end91.thread_crit_edge, label %lor.lhs.false.3

minstrel_ht_get_tp_avg.exit174.3.do.end91.thread_crit_edge: ; preds = %minstrel_ht_get_tp_avg.exit174.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91.thread

lor.lhs.false.3:                                  ; preds = %minstrel_ht_get_tp_avg.exit174.3
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i173.3)
  %cmp84.3 = icmp ne i32 %retval.0.i, %retval.0.i173.3
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %95)
  %cmp86.not.3 = icmp ugt i16 %1, %95
  %or.cond.3 = select i1 %cmp84.3, i1 true, i1 %cmp86.not.3
  br i1 %or.cond.3, label %lor.lhs.false.3.if.end99.thread_crit_edge, label %lor.lhs.false.3.do.end91.thread_crit_edge

lor.lhs.false.3.do.end91.thread_crit_edge:        ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91.thread

lor.lhs.false.3.if.end99.thread_crit_edge:        ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.thread

do.end91.thread:                                  ; preds = %lor.lhs.false.3.do.end91.thread_crit_edge, %minstrel_ht_get_tp_avg.exit174.3.do.end91.thread_crit_edge, %lor.lhs.false.2.do.end91.thread_crit_edge, %minstrel_ht_get_tp_avg.exit174.2.do.end91.thread_crit_edge
  %j.0.lcssa.ph = phi i32 [ 2, %minstrel_ht_get_tp_avg.exit174.2.do.end91.thread_crit_edge ], [ 2, %lor.lhs.false.2.do.end91.thread_crit_edge ], [ 1, %minstrel_ht_get_tp_avg.exit174.3.do.end91.thread_crit_edge ], [ 1, %lor.lhs.false.3.do.end91.thread_crit_edge ]
  br label %if.end99.thread

if.end99.thread:                                  ; preds = %do.end91.thread, %lor.lhs.false.3.if.end99.thread_crit_edge
  %j.1178 = phi i32 [ 0, %lor.lhs.false.3.if.end99.thread_crit_edge ], [ %j.0.lcssa.ph, %do.end91.thread ]
  %add = add nuw nsw i32 %j.1178, 1
  %arrayidx95 = getelementptr i16, ptr %tp_list, i32 %add
  %arrayidx96 = getelementptr i16, ptr %tp_list, i32 %j.1178
  %.neg = mul nsw i32 %j.1178, -2
  %mul = add nsw i32 %.neg, 6
  %115 = call ptr @memmove(ptr %arrayidx95, ptr %arrayidx96, i32 %mul)
  br label %if.then102

if.then102:                                       ; preds = %if.end99.thread, %lor.lhs.false.1.if.then102_crit_edge, %minstrel_ht_get_tp_avg.exit174.1.if.then102_crit_edge
  %j.1177181 = phi i32 [ %j.1178, %if.end99.thread ], [ 3, %lor.lhs.false.1.if.then102_crit_edge ], [ 3, %minstrel_ht_get_tp_avg.exit174.1.if.then102_crit_edge ]
  %arrayidx103 = getelementptr i16, ptr %tp_list, i32 %j.1177181
  %116 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %index, ptr %arrayidx103, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %lor.lhs.false.if.end104_crit_edge, %minstrel_ht_get_tp_avg.exit174.if.end104_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @minstrel_ht_move_sample_rates(ptr nocapture noundef %mi, i32 noundef %type, i32 noundef %fast_rate_dur, i32 noundef %slow_rate_dur) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_rates = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 %type, i32 1
  %0 = ptrtoint ptr %sample_rates to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sample_rates, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %1 to i32
  %and.i = lshr i32 %conv, 4
  %and30.i = and i32 %conv, 15
  %arrayidx32.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i, i32 4, i32 %and30.i
  %2 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx32.i, align 2
  %conv.i = zext i16 %3 to i32
  %shift.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i, i32 2
  %4 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift.i, align 1
  %conv33.i = zext i8 %5 to i32
  %shl.i = shl i32 %conv.i, %conv33.i
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %type, label %if.end.if.then11_crit_edge [
    i32 2, label %sw.epilog
    i32 0, label %if.end.sw.bb6_crit_edge
    i32 1, label %if.end.sw.bb6_crit_edge47
  ]

if.end.sw.bb6_crit_edge47:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge47
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %fast_rate_dur)
  %cmp7 = icmp ult i32 %shl.i, %fast_rate_dur
  br i1 %cmp7, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.if.then11_crit_edge

sw.bb6.if.then11_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %fast_rate_dur)
  %cmp2 = icmp ugt i32 %shl.i, %fast_rate_dur
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %slow_rate_dur)
  %cmp4 = icmp ult i32 %shl.i, %slow_rate_dur
  %spec.select = and i1 %cmp2, %cmp4
  br i1 %spec.select, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.then11_crit_edge

sw.epilog.if.then11_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %sw.epilog.if.then11_crit_edge, %sw.bb6.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %7 = ptrtoint ptr %sample_rates to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %sample_rates, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %sw.epilog.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %arrayidx1.1 = getelementptr i16, ptr %sample_rates, i32 1
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx1.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.1 = icmp eq i16 %9, 0
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %conv.1 = zext i16 %9 to i32
  %and.i.1 = lshr i32 %conv.1, 4
  %and30.i.1 = and i32 %conv.1, 15
  %arrayidx32.i.1 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.1, i32 4, i32 %and30.i.1
  %10 = ptrtoint ptr %arrayidx32.i.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx32.i.1, align 2
  %conv.i.1 = zext i16 %11 to i32
  %shift.i.1 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.1, i32 2
  %12 = ptrtoint ptr %shift.i.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift.i.1, align 1
  %conv33.i.1 = zext i8 %13 to i32
  %shl.i.1 = shl i32 %conv.i.1, %conv33.i.1
  %14 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %type, label %if.end.1.cleanup.1.sink.split_crit_edge [
    i32 2, label %sw.epilog.1
    i32 0, label %if.end.1.sw.bb6.1_crit_edge
    i32 1, label %if.end.1.sw.bb6.1_crit_edge48
  ]

if.end.1.sw.bb6.1_crit_edge48:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.1

if.end.1.sw.bb6.1_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.1

if.end.1.cleanup.1.sink.split_crit_edge:          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.sink.split

sw.bb6.1:                                         ; preds = %if.end.1.sw.bb6.1_crit_edge, %if.end.1.sw.bb6.1_crit_edge48
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.1, i32 %fast_rate_dur)
  %cmp7.1 = icmp ult i32 %shl.i.1, %fast_rate_dur
  br i1 %cmp7.1, label %sw.bb6.1.if.end17.1_crit_edge, label %sw.bb6.1.cleanup.1.sink.split_crit_edge

sw.bb6.1.cleanup.1.sink.split_crit_edge:          ; preds = %sw.bb6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.sink.split

sw.bb6.1.if.end17.1_crit_edge:                    ; preds = %sw.bb6.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.1

sw.epilog.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.1, i32 %fast_rate_dur)
  %cmp2.1 = icmp ugt i32 %shl.i.1, %fast_rate_dur
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.1, i32 %slow_rate_dur)
  %cmp4.1 = icmp ult i32 %shl.i.1, %slow_rate_dur
  %spec.select.1 = and i1 %cmp2.1, %cmp4.1
  br i1 %spec.select.1, label %sw.epilog.1.if.end17.1_crit_edge, label %sw.epilog.1.cleanup.1.sink.split_crit_edge

sw.epilog.1.cleanup.1.sink.split_crit_edge:       ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.sink.split

sw.epilog.1.if.end17.1_crit_edge:                 ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.1

if.end17.1:                                       ; preds = %sw.epilog.1.if.end17.1_crit_edge, %sw.bb6.1.if.end17.1_crit_edge
  %15 = ptrtoint ptr %sample_rates to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %9, ptr %sample_rates, align 2
  br label %cleanup.1.sink.split

cleanup.1.sink.split:                             ; preds = %if.end17.1, %sw.epilog.1.cleanup.1.sink.split_crit_edge, %sw.bb6.1.cleanup.1.sink.split_crit_edge, %if.end.1.cleanup.1.sink.split_crit_edge
  %j.1.1.ph = phi i32 [ 1, %if.end17.1 ], [ 0, %sw.epilog.1.cleanup.1.sink.split_crit_edge ], [ 0, %sw.bb6.1.cleanup.1.sink.split_crit_edge ], [ 0, %if.end.1.cleanup.1.sink.split_crit_edge ]
  %16 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx1.1, align 2
  br label %cleanup.1

cleanup.1:                                        ; preds = %cleanup.1.sink.split, %cleanup.cleanup.1_crit_edge
  %j.1.1 = phi i32 [ 0, %cleanup.cleanup.1_crit_edge ], [ %j.1.1.ph, %cleanup.1.sink.split ]
  %arrayidx1.2 = getelementptr i16, ptr %sample_rates, i32 2
  %17 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx1.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.2 = icmp eq i16 %18, 0
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  %conv.2 = zext i16 %18 to i32
  %and.i.2 = lshr i32 %conv.2, 4
  %and30.i.2 = and i32 %conv.2, 15
  %arrayidx32.i.2 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.2, i32 4, i32 %and30.i.2
  %19 = ptrtoint ptr %arrayidx32.i.2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx32.i.2, align 2
  %conv.i.2 = zext i16 %20 to i32
  %shift.i.2 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.2, i32 2
  %21 = ptrtoint ptr %shift.i.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift.i.2, align 1
  %conv33.i.2 = zext i8 %22 to i32
  %shl.i.2 = shl i32 %conv.i.2, %conv33.i.2
  %23 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %if.end.2.cleanup.2.sink.split_crit_edge [
    i32 2, label %sw.epilog.2
    i32 0, label %if.end.2.sw.bb6.2_crit_edge
    i32 1, label %if.end.2.sw.bb6.2_crit_edge49
  ]

if.end.2.sw.bb6.2_crit_edge49:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.2

if.end.2.sw.bb6.2_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.2

if.end.2.cleanup.2.sink.split_crit_edge:          ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.sink.split

sw.bb6.2:                                         ; preds = %if.end.2.sw.bb6.2_crit_edge, %if.end.2.sw.bb6.2_crit_edge49
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.2, i32 %fast_rate_dur)
  %cmp7.2 = icmp ult i32 %shl.i.2, %fast_rate_dur
  br i1 %cmp7.2, label %sw.bb6.2.if.end17.2_crit_edge, label %sw.bb6.2.cleanup.2.sink.split_crit_edge

sw.bb6.2.cleanup.2.sink.split_crit_edge:          ; preds = %sw.bb6.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.sink.split

sw.bb6.2.if.end17.2_crit_edge:                    ; preds = %sw.bb6.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.2

sw.epilog.2:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.2, i32 %fast_rate_dur)
  %cmp2.2 = icmp ugt i32 %shl.i.2, %fast_rate_dur
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.2, i32 %slow_rate_dur)
  %cmp4.2 = icmp ult i32 %shl.i.2, %slow_rate_dur
  %spec.select.2 = and i1 %cmp2.2, %cmp4.2
  br i1 %spec.select.2, label %sw.epilog.2.if.end17.2_crit_edge, label %sw.epilog.2.cleanup.2.sink.split_crit_edge

sw.epilog.2.cleanup.2.sink.split_crit_edge:       ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.sink.split

sw.epilog.2.if.end17.2_crit_edge:                 ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.2

if.end17.2:                                       ; preds = %sw.epilog.2.if.end17.2_crit_edge, %sw.bb6.2.if.end17.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.1.1, 1
  %arrayidx18.2 = getelementptr i16, ptr %sample_rates, i32 %j.1.1
  %24 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %18, ptr %arrayidx18.2, align 2
  br label %cleanup.2.sink.split

cleanup.2.sink.split:                             ; preds = %if.end17.2, %sw.epilog.2.cleanup.2.sink.split_crit_edge, %sw.bb6.2.cleanup.2.sink.split_crit_edge, %if.end.2.cleanup.2.sink.split_crit_edge
  %j.1.2.ph = phi i32 [ %inc.2, %if.end17.2 ], [ %j.1.1, %sw.epilog.2.cleanup.2.sink.split_crit_edge ], [ %j.1.1, %sw.bb6.2.cleanup.2.sink.split_crit_edge ], [ %j.1.1, %if.end.2.cleanup.2.sink.split_crit_edge ]
  %25 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayidx1.2, align 2
  br label %cleanup.2

cleanup.2:                                        ; preds = %cleanup.2.sink.split, %cleanup.1.cleanup.2_crit_edge
  %j.1.2 = phi i32 [ %j.1.1, %cleanup.1.cleanup.2_crit_edge ], [ %j.1.2.ph, %cleanup.2.sink.split ]
  %arrayidx1.3 = getelementptr i16, ptr %sample_rates, i32 3
  %26 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx1.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.3 = icmp eq i16 %27, 0
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  %conv.3 = zext i16 %27 to i32
  %and.i.3 = lshr i32 %conv.3, 4
  %and30.i.3 = and i32 %conv.3, 15
  %arrayidx32.i.3 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.3, i32 4, i32 %and30.i.3
  %28 = ptrtoint ptr %arrayidx32.i.3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx32.i.3, align 2
  %conv.i.3 = zext i16 %29 to i32
  %shift.i.3 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.3, i32 2
  %30 = ptrtoint ptr %shift.i.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shift.i.3, align 1
  %conv33.i.3 = zext i8 %31 to i32
  %shl.i.3 = shl i32 %conv.i.3, %conv33.i.3
  %32 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %type, label %if.end.3.cleanup.3.sink.split_crit_edge [
    i32 2, label %sw.epilog.3
    i32 0, label %if.end.3.sw.bb6.3_crit_edge
    i32 1, label %if.end.3.sw.bb6.3_crit_edge50
  ]

if.end.3.sw.bb6.3_crit_edge50:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.3

if.end.3.sw.bb6.3_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.3

if.end.3.cleanup.3.sink.split_crit_edge:          ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.3.sink.split

sw.bb6.3:                                         ; preds = %if.end.3.sw.bb6.3_crit_edge, %if.end.3.sw.bb6.3_crit_edge50
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.3, i32 %fast_rate_dur)
  %cmp7.3 = icmp ult i32 %shl.i.3, %fast_rate_dur
  br i1 %cmp7.3, label %sw.bb6.3.if.end17.3_crit_edge, label %sw.bb6.3.cleanup.3.sink.split_crit_edge

sw.bb6.3.cleanup.3.sink.split_crit_edge:          ; preds = %sw.bb6.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.3.sink.split

sw.bb6.3.if.end17.3_crit_edge:                    ; preds = %sw.bb6.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.3

sw.epilog.3:                                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.3, i32 %fast_rate_dur)
  %cmp2.3 = icmp ugt i32 %shl.i.3, %fast_rate_dur
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.3, i32 %slow_rate_dur)
  %cmp4.3 = icmp ult i32 %shl.i.3, %slow_rate_dur
  %spec.select.3 = and i1 %cmp2.3, %cmp4.3
  br i1 %spec.select.3, label %sw.epilog.3.if.end17.3_crit_edge, label %sw.epilog.3.cleanup.3.sink.split_crit_edge

sw.epilog.3.cleanup.3.sink.split_crit_edge:       ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.3.sink.split

sw.epilog.3.if.end17.3_crit_edge:                 ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.3

if.end17.3:                                       ; preds = %sw.epilog.3.if.end17.3_crit_edge, %sw.bb6.3.if.end17.3_crit_edge
  %inc.3 = add nuw nsw i32 %j.1.2, 1
  %arrayidx18.3 = getelementptr i16, ptr %sample_rates, i32 %j.1.2
  %33 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %27, ptr %arrayidx18.3, align 2
  br label %cleanup.3.sink.split

cleanup.3.sink.split:                             ; preds = %if.end17.3, %sw.epilog.3.cleanup.3.sink.split_crit_edge, %sw.bb6.3.cleanup.3.sink.split_crit_edge, %if.end.3.cleanup.3.sink.split_crit_edge
  %j.1.3.ph = phi i32 [ %inc.3, %if.end17.3 ], [ %j.1.2, %sw.epilog.3.cleanup.3.sink.split_crit_edge ], [ %j.1.2, %sw.bb6.3.cleanup.3.sink.split_crit_edge ], [ %j.1.2, %if.end.3.cleanup.3.sink.split_crit_edge ]
  %34 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %arrayidx1.3, align 2
  br label %cleanup.3

cleanup.3:                                        ; preds = %cleanup.3.sink.split, %cleanup.2.cleanup.3_crit_edge
  %j.1.3 = phi i32 [ %j.1.2, %cleanup.2.cleanup.3_crit_edge ], [ %j.1.3.ph, %cleanup.3.sink.split ]
  %arrayidx1.4 = getelementptr i16, ptr %sample_rates, i32 4
  %35 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx1.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.4 = icmp eq i16 %36, 0
  br i1 %tobool.not.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  %conv.4 = zext i16 %36 to i32
  %and.i.4 = lshr i32 %conv.4, 4
  %and30.i.4 = and i32 %conv.4, 15
  %arrayidx32.i.4 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.4, i32 4, i32 %and30.i.4
  %37 = ptrtoint ptr %arrayidx32.i.4 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx32.i.4, align 2
  %conv.i.4 = zext i16 %38 to i32
  %shift.i.4 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.4, i32 2
  %39 = ptrtoint ptr %shift.i.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %shift.i.4, align 1
  %conv33.i.4 = zext i8 %40 to i32
  %shl.i.4 = shl i32 %conv.i.4, %conv33.i.4
  %41 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %type, label %if.end.4.cleanup.4.sink.split_crit_edge [
    i32 2, label %sw.epilog.4
    i32 0, label %if.end.4.sw.bb6.4_crit_edge
    i32 1, label %if.end.4.sw.bb6.4_crit_edge51
  ]

if.end.4.sw.bb6.4_crit_edge51:                    ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.4

if.end.4.sw.bb6.4_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.4

if.end.4.cleanup.4.sink.split_crit_edge:          ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.4.sink.split

sw.bb6.4:                                         ; preds = %if.end.4.sw.bb6.4_crit_edge, %if.end.4.sw.bb6.4_crit_edge51
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.4, i32 %fast_rate_dur)
  %cmp7.4 = icmp ult i32 %shl.i.4, %fast_rate_dur
  br i1 %cmp7.4, label %sw.bb6.4.if.end17.4_crit_edge, label %sw.bb6.4.cleanup.4.sink.split_crit_edge

sw.bb6.4.cleanup.4.sink.split_crit_edge:          ; preds = %sw.bb6.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.4.sink.split

sw.bb6.4.if.end17.4_crit_edge:                    ; preds = %sw.bb6.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.4

sw.epilog.4:                                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.4, i32 %fast_rate_dur)
  %cmp2.4 = icmp ugt i32 %shl.i.4, %fast_rate_dur
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.4, i32 %slow_rate_dur)
  %cmp4.4 = icmp ult i32 %shl.i.4, %slow_rate_dur
  %spec.select.4 = and i1 %cmp2.4, %cmp4.4
  br i1 %spec.select.4, label %sw.epilog.4.if.end17.4_crit_edge, label %sw.epilog.4.cleanup.4.sink.split_crit_edge

sw.epilog.4.cleanup.4.sink.split_crit_edge:       ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.4.sink.split

sw.epilog.4.if.end17.4_crit_edge:                 ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.4

if.end17.4:                                       ; preds = %sw.epilog.4.if.end17.4_crit_edge, %sw.bb6.4.if.end17.4_crit_edge
  %inc.4 = add nuw nsw i32 %j.1.3, 1
  %arrayidx18.4 = getelementptr i16, ptr %sample_rates, i32 %j.1.3
  %42 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %36, ptr %arrayidx18.4, align 2
  br label %cleanup.4.sink.split

cleanup.4.sink.split:                             ; preds = %if.end17.4, %sw.epilog.4.cleanup.4.sink.split_crit_edge, %sw.bb6.4.cleanup.4.sink.split_crit_edge, %if.end.4.cleanup.4.sink.split_crit_edge
  %j.1.4.ph = phi i32 [ %inc.4, %if.end17.4 ], [ %j.1.3, %sw.epilog.4.cleanup.4.sink.split_crit_edge ], [ %j.1.3, %sw.bb6.4.cleanup.4.sink.split_crit_edge ], [ %j.1.3, %if.end.4.cleanup.4.sink.split_crit_edge ]
  %43 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %arrayidx1.4, align 2
  br label %cleanup.4

cleanup.4:                                        ; preds = %cleanup.4.sink.split, %cleanup.3.cleanup.4_crit_edge
  %j.1.4 = phi i32 [ %j.1.3, %cleanup.3.cleanup.4_crit_edge ], [ %j.1.4.ph, %cleanup.4.sink.split ]
  ret i32 %j.1.4
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_set_rate(ptr nocapture noundef readonly %mp, ptr nocapture noundef %mi, ptr nocapture noundef %ratetbl, i32 noundef %offset, i32 noundef %index) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %index, 4
  %shr = and i32 %and, 4095
  %arrayidx = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %and20.i = and i32 %index, 15
  %retry_updated = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 10
  %2 = ptrtoint ptr %retry_updated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %retry_updated, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %cw_min.i = getelementptr inbounds %struct.minstrel_priv, ptr %mp, i32 0, i32 2
  %4 = ptrtoint ptr %cw_min.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cw_min.i, align 4
  %avg_ampdu_len.i.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 3
  %6 = ptrtoint ptr %avg_ampdu_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avg_ampdu_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %do.end13.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i.i = lshr i32 %7, 12
  br label %minstrel_ht_avg_ampdu_len.exit.i

do.end13.i.i:                                     ; preds = %if.then
  %max_tp_rate.i.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %8 = ptrtoint ptr %max_tp_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_tp_rate.i.i, align 4
  %10 = and i16 %9, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %10)
  %11 = icmp eq i16 %10, 256
  br i1 %11, label %do.end13.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge, label %if.end16.i.i

do.end13.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge: ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_avg_ampdu_len.exit.i

if.end16.i.i:                                     ; preds = %do.end13.i.i
  %conv19.i.i = zext i16 %9 to i32
  %and.i.i.i = lshr i32 %conv19.i.i, 4
  %and30.i.i.i = and i32 %conv19.i.i, 15
  %arrayidx32.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i, i32 4, i32 %and30.i.i.i
  %12 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx32.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %shift.i.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %and.i.i.i, i32 2
  %14 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift.i.i.i, align 1
  %conv33.i.i.i = zext i8 %15 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i, %conv33.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %shl.i.i.i)
  %cmp.i.i = icmp sgt i32 %shl.i.i.i, 400000
  br i1 %cmp.i.i, label %if.end16.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge, label %if.end23.i.i

if.end16.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_avg_ampdu_len.exit.i

if.end23.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %shl.i.i.i)
  %cmp24.i.i = icmp sgt i32 %shl.i.i.i, 250000
  br i1 %cmp24.i.i, label %if.end23.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge, label %if.end27.i.i

if.end23.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %minstrel_ht_avg_ampdu_len.exit.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %shl.i.i.i)
  %cmp28.i.i = icmp sgt i32 %shl.i.i.i, 150000
  %..i.i = select i1 %cmp28.i.i, i32 8, i32 16
  br label %minstrel_ht_avg_ampdu_len.exit.i

minstrel_ht_avg_ampdu_len.exit.i:                 ; preds = %if.end27.i.i, %if.end23.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge, %if.end16.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge, %do.end13.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %shr.i.i, %if.then.i.i ], [ 1, %do.end13.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge ], [ 2, %if.end16.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge ], [ 4, %if.end23.i.i.minstrel_ht_avg_ampdu_len.exit.i_crit_edge ], [ %..i.i, %if.end27.i.i ]
  %prob_avg.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 6
  %16 = ptrtoint ptr %prob_avg.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %prob_avg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 409, i16 %17)
  %cmp.i = icmp ult i16 %17, 409
  %retry_count.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %minstrel_ht_avg_ampdu_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %retry_count.i, align 4
  %retry_count_rtscts.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 9
  %19 = ptrtoint ptr %retry_count_rtscts.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %retry_count_rtscts.i, align 1
  br label %if.end

if.end.i:                                         ; preds = %minstrel_ht_avg_ampdu_len.exit.i
  %20 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %retry_count.i, align 4
  %retry_count_rtscts4.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 9
  %21 = ptrtoint ptr %retry_count_rtscts4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %retry_count_rtscts4.i, align 1
  %22 = ptrtoint ptr %retry_updated to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %retry_updated, align 2
  %arrayidx32.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 4, i32 %and20.i
  %23 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx32.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %shift.i.i = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 2
  %25 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shift.i.i, align 1
  %conv33.i.i = zext i8 %26 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv33.i.i
  %mul.i = mul i32 %shl.i.i, %retval.0.i.i
  %div.i = udiv i32 %mul.i, 1000
  %mul6.i = mul i32 %5, 9
  %shr.i148 = lshr i32 %mul6.i, 1
  %shl.i = shl i32 %5, 1
  %or.i = or i32 %shl.i, 1
  %cw_max.i = getelementptr inbounds %struct.minstrel_priv, ptr %mp, i32 0, i32 3
  %27 = ptrtoint ptr %cw_max.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cw_max.i, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %or.i, i32 %28) #12
  %mul9.i = mul i32 %29, 9
  %shr10.i = lshr i32 %mul9.i, 1
  %add.i = add nuw i32 %shr10.i, %shr.i148
  %shl11.i = shl i32 %29, 1
  %or12.i = or i32 %shl11.i, 1
  %30 = tail call i32 @llvm.umin.i32(i32 %or12.i, i32 %28) #12
  %31 = and i32 %index, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %31)
  %32 = icmp eq i32 %31, 256
  %overhead_legacy.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 9
  %overhead_legacy_rtscts.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 10
  %overhead37.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 7
  %overhead_rtscts38.i = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 8
  %overhead.0.in.i = select i1 %32, ptr %overhead_legacy.i, ptr %overhead37.i
  %overhead_rtscts.0.in.i = select i1 %32, ptr %overhead_legacy_rtscts.i, ptr %overhead_rtscts38.i
  %33 = ptrtoint ptr %overhead_rtscts.0.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %overhead_rtscts.0.i = load i32, ptr %overhead_rtscts.0.in.i, align 4
  %34 = ptrtoint ptr %overhead.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %overhead.0.i = load i32, ptr %overhead.0.in.i, align 4
  %add40.i = add i32 %div.i, %overhead.0.i
  %mul41.i = shl i32 %add40.i, 1
  %add42.i = add i32 %mul41.i, %add.i
  %add43.i = add i32 %div.i, %overhead_rtscts.0.i
  %mul44.i = shl i32 %add43.i, 1
  %add45.i = add i32 %mul44.i, %add.i
  %segment_size.i = getelementptr inbounds %struct.minstrel_priv, ptr %mp, i32 0, i32 5
  %max_retry.i = getelementptr inbounds %struct.minstrel_priv, ptr %mp, i32 0, i32 4
  br label %do.body46.i

do.body46.i:                                      ; preds = %land.rhs.i.do.body46.i_crit_edge, %if.end.i
  %cw.0.i = phi i32 [ %30, %if.end.i ], [ %37, %land.rhs.i.do.body46.i_crit_edge ]
  %tx_time_rtscts.0.i = phi i32 [ %add45.i, %if.end.i ], [ %add64.i, %land.rhs.i.do.body46.i_crit_edge ]
  %tx_time.0.i = phi i32 [ %add42.i, %if.end.i ], [ %add61.i, %land.rhs.i.do.body46.i_crit_edge ]
  %mul47.i = mul i32 %cw.0.i, 9
  %shr48.i = lshr i32 %mul47.i, 1
  %shl49.i = shl i32 %cw.0.i, 1
  %or50.i = or i32 %shl49.i, 1
  %35 = ptrtoint ptr %cw_max.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cw_max.i, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %or50.i, i32 %36) #12
  %add60.i = add i32 %shr48.i, %add40.i
  %add61.i = add i32 %add60.i, %tx_time.0.i
  %add63.i = add i32 %tx_time_rtscts.0.i, %add43.i
  %add64.i = add i32 %add63.i, %shr48.i
  %38 = ptrtoint ptr %segment_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %segment_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add64.i, i32 %39)
  %cmp65.i = icmp ult i32 %add64.i, %39
  br i1 %cmp65.i, label %if.then67.i, label %do.body46.i.do.cond70.i_crit_edge

do.body46.i.do.cond70.i_crit_edge:                ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond70.i

if.then67.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %retry_count_rtscts4.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %retry_count_rtscts4.i, align 1
  %inc.i = add i8 %41, 1
  store i8 %inc.i, ptr %retry_count_rtscts4.i, align 1
  br label %do.cond70.i

do.cond70.i:                                      ; preds = %if.then67.i, %do.body46.i.do.cond70.i_crit_edge
  %42 = ptrtoint ptr %segment_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %segment_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add61.i, i32 %43)
  %cmp72.i = icmp ult i32 %add61.i, %43
  br i1 %cmp72.i, label %land.rhs.i, label %do.cond70.i.if.end_crit_edge

do.cond70.i.if.end_crit_edge:                     ; preds = %do.cond70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %do.cond70.i
  %44 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %retry_count.i, align 4
  %inc75.i = add i8 %45, 1
  store i8 %inc75.i, ptr %retry_count.i, align 4
  %conv76.i = zext i8 %inc75.i to i32
  %46 = ptrtoint ptr %max_retry.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_retry.i, align 4
  %cmp77.i = icmp ugt i32 %47, %conv76.i
  br i1 %cmp77.i, label %land.rhs.i.do.body46.i_crit_edge, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i.do.body46.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46.i

if.end:                                           ; preds = %land.rhs.i.if.end_crit_edge, %do.cond70.i.if.end_crit_edge, %if.then.i, %entry.if.end_crit_edge
  %prob_avg = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 6
  %48 = ptrtoint ptr %prob_avg to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %prob_avg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 819, i16 %49)
  %cmp = icmp ult i16 %49, 819
  br i1 %cmp, label %if.end.if.then16_crit_edge, label %lor.lhs.false

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %retry_count = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 8
  %50 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %retry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool15.not = icmp eq i8 %51, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.then16_crit_edge, label %if.else

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %count = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 1
  %52 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %count, align 1
  %count_rts = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 3
  %53 = ptrtoint ptr %count_rts to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %count_rts, align 1
  %count_cts = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 2
  %54 = ptrtoint ptr %count_cts to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %count_cts, align 2
  br label %do.end48

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %count25 = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 1
  %55 = ptrtoint ptr %count25 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %51, ptr %count25, align 1
  %56 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %retry_count, align 4
  %count_cts29 = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 2
  %58 = ptrtoint ptr %count_cts29 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %count_cts29, align 2
  %retry_count_rtscts = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %shr, i32 4, i32 %and20.i, i32 9
  %59 = ptrtoint ptr %retry_count_rtscts to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %retry_count_rtscts, align 1
  %count_rts32 = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 3
  %61 = ptrtoint ptr %count_rts32 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %count_rts32, align 1
  br label %do.end48

do.end48:                                         ; preds = %if.else, %if.then16
  %62 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr, label %if.else63 [
    i32 16, label %if.then54
    i32 17, label %if.then59
  ]

if.then54:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  %rem = and i32 %index, 3
  %arrayidx55 = getelementptr %struct.minstrel_priv, ptr %mp, i32 0, i32 7, i32 %rem
  %63 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx55, align 1
  br label %if.end78

if.then59:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  %band = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 14
  %65 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %band, align 4
  %idxprom = zext i8 %66 to i32
  %rem61 = and i32 %index, 7
  %arrayidx62 = getelementptr %struct.minstrel_priv, ptr %mp, i32 0, i32 8, i32 %idxprom, i32 %rem61
  %67 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx62, align 1
  br label %if.end78

if.else63:                                        ; preds = %do.end48
  %69 = and i16 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool66.not = icmp eq i16 %69, 0
  %streams72 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 1
  %70 = ptrtoint ptr %streams72 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %streams72, align 2
  %conv73 = zext i8 %71 to i32
  br i1 %tobool66.not, label %if.else71, label %if.then67

if.then67:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #14
  %sub = shl nuw nsw i32 %conv73, 4
  %shl = add nuw nsw i32 %sub, 240
  %or = or i32 %shl, %and20.i
  %conv70 = trunc i32 %or to i8
  br label %if.end78

if.else71:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #14
  %sub74 = shl nuw nsw i32 %conv73, 3
  %mul = add nuw nsw i32 %and20.i, 248
  %add = add nuw nsw i32 %mul, %sub74
  %conv75 = trunc i32 %add to i8
  br label %if.end78

if.end78:                                         ; preds = %if.else71, %if.then67, %if.then59, %if.then54
  %idx.0 = phi i8 [ %64, %if.then54 ], [ %68, %if.then59 ], [ %conv70, %if.then67 ], [ %conv75, %if.else71 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp79 = icmp sgt i32 %offset, 0
  br i1 %cmp79, label %if.end78.if.then88_crit_edge, label %lor.lhs.false81

if.end78.if.then88_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88

lor.lhs.false81:                                  ; preds = %if.end78
  %72 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mi, align 4
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp82 = icmp eq i32 %75, 3
  br i1 %cmp82, label %land.lhs.true, label %lor.lhs.false81.if.end98_crit_edge

lor.lhs.false81.if.end98_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true:                                    ; preds = %lor.lhs.false81
  %streams84 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %shr, i32 1
  %76 = ptrtoint ptr %streams84 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %streams84, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp86 = icmp ugt i8 %77, 1
  br i1 %cmp86, label %land.lhs.true.if.then88_crit_edge, label %land.lhs.true.if.end98_crit_edge

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true.if.then88_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88

if.then88:                                        ; preds = %land.lhs.true.if.then88_crit_edge, %if.end78.if.then88_crit_edge
  %count_rts91 = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 3
  %78 = ptrtoint ptr %count_rts91 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %count_rts91, align 1
  %count94 = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 1
  %80 = ptrtoint ptr %count94 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %count94, align 1
  %81 = or i16 %1, 1
  br label %if.end98

if.end98:                                         ; preds = %if.then88, %land.lhs.true.if.end98_crit_edge, %lor.lhs.false81.if.end98_crit_edge
  %flags.0 = phi i16 [ %81, %if.then88 ], [ %1, %land.lhs.true.if.end98_crit_edge ], [ %1, %lor.lhs.false81.if.end98_crit_edge ]
  %arrayidx100 = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset
  %82 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %idx.0, ptr %arrayidx100, align 2
  %flags104 = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl, i32 0, i32 1, i32 %offset, i32 4
  %83 = ptrtoint ptr %flags104 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %flags.0, ptr %flags104, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rate_control_set_rates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_rate_set_vht(ptr nocapture noundef writeonly %rate, i8 noundef zeroext %mcs, i8 noundef zeroext %nss) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %mcs)
  %tobool.not = icmp ult i8 %mcs, 16
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !43

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 996, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv21 = zext i8 %nss to i32
  %sub = add nsw i32 %conv21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %tobool23.not = icmp ult i32 %sub, 8
  br i1 %tobool23.not, label %if.end.if.end45_crit_edge, label %do.end39, !prof !43

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 997, i32 noundef 9, ptr noundef null) #12
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %sub.tr = trunc i32 %sub to i8
  %0 = shl i8 %sub.tr, 4
  %conv56 = or i8 %0, %mcs
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv56, ptr %rate, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__param_minstrel_vht_only, !1, !"__param_minstrel_vht_only", i1 false, i1 false}
!1 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 197, i32 1}
!2 = !{ptr @__UNIQUE_ID_minstrel_vht_onlytype817, !1, !"__UNIQUE_ID_minstrel_vht_onlytype817", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_minstrel_vht_only818, !4, !"__UNIQUE_ID_minstrel_vht_only818", i1 false, i1 false}
!4 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 198, i32 1}
!5 = !{ptr @minstrel_mcs_groups, !6, !"minstrel_mcs_groups", i1 false, i1 false}
!6 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 209, i32 24}
!7 = !{ptr @minstrel_cck_bitrates, !8, !"minstrel_cck_bitrates", i1 false, i1 false}
!8 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 264, i32 11}
!9 = !{ptr @minstrel_ofdm_bitrates, !10, !"minstrel_ofdm_bitrates", i1 false, i1 false}
!10 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 265, i32 11}
!11 = !{ptr @__param_str_minstrel_vht_only, !1, !"__param_str_minstrel_vht_only", i1 false, i1 false}
!12 = !{ptr @minstrel_vht_only, !13, !"minstrel_vht_only", i1 false, i1 false}
!13 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 196, i32 13}
!14 = !{ptr @sample_table, !15, !"sample_table", i1 false, i1 false}
!15 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 266, i32 11}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 1884, i32 10}
!18 = !{ptr @mac80211_minstrel_ht, !19, !"mac80211_minstrel_ht", i1 false, i1 false}
!19 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 1883, i32 38}
!20 = distinct !{null, !21, !"bitrates", i1 false, i1 false}
!21 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 1776, i32 19}
!22 = distinct !{null, !23, !"bitrates", i1 false, i1 false}
!23 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 1795, i32 19}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 1856, i32 21}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 1675, i32 7}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/net/mac80211.h", i32 6355, i32 2}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @minstrel_sample_seq, !32, !"minstrel_sample_seq", i1 false, i1 false}
!32 = !{!"../net/mac80211/rc80211_minstrel_ht.c", i32 267, i32 17}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!"branch_weights", i32 1, i32 2000}
