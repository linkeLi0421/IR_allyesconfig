; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/channel.c_pt.bc'
source_filename = "../drivers/staging/vt6655/channel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.125, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.125 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }

@vnt_supported_5ghz_band = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @vnt_channels_5ghz, ptr @vnt_rates_a, i32 0, i32 42, i32 8, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@vnt_supported_2ghz_band = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @vnt_channels_2ghz, ptr @vnt_rates_bg, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@vnt_channels_5ghz = internal global { [42 x %struct.ieee80211_channel], [592 x i8] } { [42 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 4915, i16 0, i16 15, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4920, i16 0, i16 16, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4925, i16 0, i16 17, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4935, i16 0, i16 18, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4940, i16 0, i16 19, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4945, i16 0, i16 20, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4960, i16 0, i16 21, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4980, i16 0, i16 22, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5035, i16 0, i16 23, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5040, i16 0, i16 24, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5045, i16 0, i16 25, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5055, i16 0, i16 26, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5060, i16 0, i16 27, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5080, i16 0, i16 28, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5170, i16 0, i16 29, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5180, i16 0, i16 30, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5190, i16 0, i16 31, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5200, i16 0, i16 32, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5210, i16 0, i16 33, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5220, i16 0, i16 34, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5230, i16 0, i16 35, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5240, i16 0, i16 36, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5260, i16 0, i16 37, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5280, i16 0, i16 38, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5300, i16 0, i16 39, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5320, i16 0, i16 40, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5500, i16 0, i16 41, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5520, i16 0, i16 42, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5540, i16 0, i16 43, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5560, i16 0, i16 44, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5580, i16 0, i16 45, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5600, i16 0, i16 46, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5620, i16 0, i16 47, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5640, i16 0, i16 48, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5660, i16 0, i16 49, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5680, i16 0, i16 50, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5700, i16 0, i16 51, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5745, i16 0, i16 52, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5765, i16 0, i16 53, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5785, i16 0, i16 54, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5805, i16 0, i16 55, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5825, i16 0, i16 56, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [592 x i8] zeroinitializer }, align 32
@vnt_rates_a = internal global { [8 x %struct.ieee80211_rate], [32 x i8] } { [8 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [32 x i8] zeroinitializer }, align 32
@vnt_channels_2ghz = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@vnt_rates_bg = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 9, i64 14]
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"vnt_supported_5ghz_band\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 108, i32 40 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"vnt_supported_2ghz_band\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 101, i32 40 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"vnt_channels_5ghz\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 56, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"vnt_rates_a\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 28, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"vnt_channels_2ghz\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 39, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"vnt_rates_bg\00", align 1
@___asan_gen_.17 = private constant [36 x i8] c"../drivers/staging/vt6655/channel.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 13, i32 30 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @vnt_supported_5ghz_band, ptr @vnt_supported_2ghz_band, ptr @vnt_channels_5ghz, ptr @vnt_rates_a, ptr @vnt_channels_2ghz, ptr @vnt_rates_bg], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_supported_5ghz_band to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_supported_2ghz_band to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_channels_5ghz to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rates_a to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_channels_2ghz to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rates_bg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnt_init_bands(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %byRFType, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 9, label %entry.sw.bb1_crit_edge
    i8 5, label %entry.sw.bb1_crit_edge15
    i8 14, label %entry.sw.bb1_crit_edge16
    i8 1, label %entry.sw.bb1_crit_edge17
    i8 3, label %entry.sw.bb1_crit_edge18
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

sw.default:                                       ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @vnt_supported_5ghz_band, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.i = icmp sgt i32 %3, 0
  br i1 %cmp10.i, label %sw.default.for.body.i_crit_edge, label %sw.default.vnt_init_band.exit_crit_edge

sw.default.vnt_init_band.exit_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_init_band.exit

sw.default.for.body.i_crit_edge:                  ; preds = %sw.default
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.default.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.default.for.body.i_crit_edge ]
  %4 = load ptr, ptr @vnt_supported_5ghz_band, align 4
  %max_power.i = getelementptr %struct.ieee80211_channel, ptr %4, i32 %i.011.i, i32 6
  %5 = ptrtoint ptr %max_power.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 63, ptr %max_power.i, align 4
  %6 = load ptr, ptr @vnt_supported_5ghz_band, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %6, i32 %i.011.i, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 48, ptr %flags.i, align 4
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %8 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @vnt_supported_5ghz_band, i32 0, i32 3), align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vnt_init_band.exit_crit_edge

for.body.i.vnt_init_band.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_init_band.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

vnt_init_band.exit:                               ; preds = %for.body.i.vnt_init_band.exit_crit_edge, %sw.default.vnt_init_band.exit_crit_edge
  %hw.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy.i, align 8
  %arrayidx3.i = getelementptr %struct.wiphy, ptr %12, i32 0, i32 53, i32 1
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vnt_supported_5ghz_band, ptr %arrayidx3.i, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %vnt_init_band.exit, %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18
  %14 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @vnt_supported_2ghz_band, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.i4 = icmp sgt i32 %14, 0
  br i1 %cmp10.i4, label %sw.bb1.for.body.i10_crit_edge, label %sw.bb1.vnt_init_band.exit14_crit_edge

sw.bb1.vnt_init_band.exit14_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_init_band.exit14

sw.bb1.for.body.i10_crit_edge:                    ; preds = %sw.bb1
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %sw.bb1.for.body.i10_crit_edge
  %i.011.i5 = phi i32 [ %inc.i8, %for.body.i10.for.body.i10_crit_edge ], [ 0, %sw.bb1.for.body.i10_crit_edge ]
  %15 = load ptr, ptr @vnt_supported_2ghz_band, align 4
  %max_power.i6 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %i.011.i5, i32 6
  %16 = ptrtoint ptr %max_power.i6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 63, ptr %max_power.i6, align 4
  %17 = load ptr, ptr @vnt_supported_2ghz_band, align 4
  %flags.i7 = getelementptr %struct.ieee80211_channel, ptr %17, i32 %i.011.i5, i32 4
  %18 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 48, ptr %flags.i7, align 4
  %inc.i8 = add nuw nsw i32 %i.011.i5, 1
  %19 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @vnt_supported_2ghz_band, i32 0, i32 3), align 4
  %cmp.i9 = icmp slt i32 %inc.i8, %19
  br i1 %cmp.i9, label %for.body.i10.for.body.i10_crit_edge, label %for.body.i10.vnt_init_band.exit14_crit_edge

for.body.i10.vnt_init_band.exit14_crit_edge:      ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #5
  br label %vnt_init_band.exit14

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i10

vnt_init_band.exit14:                             ; preds = %for.body.i10.vnt_init_band.exit14_crit_edge, %sw.bb1.vnt_init_band.exit14_crit_edge
  %hw.i11 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %hw.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i11, align 4
  %wiphy.i12 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i12, align 8
  %arrayidx3.i13 = getelementptr %struct.wiphy, ptr %23, i32 0, i32 53, i32 0
  %24 = ptrtoint ptr %arrayidx3.i13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vnt_supported_2ghz_band, ptr %arrayidx3.i13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @set_channel(ptr noundef %priv, ptr nocapture noundef readonly %ch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %byCurrentCh = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 103
  %0 = ptrtoint ptr %byCurrentCh to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %byCurrentCh, align 2
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %bUpdateBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 106
  %4 = ptrtoint ptr %bUpdateBBVGA to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bUpdateBBVGA, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %byBBVGACurrent = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 109
  %6 = ptrtoint ptr %byBBVGACurrent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %byBBVGACurrent, align 1
  %abyBBVGA = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 110
  %8 = ptrtoint ptr %abyBBVGA to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %abyBBVGA, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp7.not = icmp eq i8 %7, %9
  br i1 %cmp7.not, label %land.lhs.true.do.body_crit_edge, label %if.then9

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %byBBVGACurrent to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %byBBVGACurrent, align 1
  tail call void @bb_set_vga_gain_offset(ptr noundef %priv, i8 noundef zeroext %9) #3
  br label %do.body

do.body:                                          ; preds = %if.then9, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %11 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 85
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  %14 = or i8 %13, 1
  %15 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_offset, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %14) #3, !srcloc !25
  %byRFType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %17 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %byRFType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp20 = icmp eq i8 %18, 10
  br i1 %cmp20, label %if.then22, label %do.body.if.end26_crit_edge

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %byCurrentCh to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %byCurrentCh, align 2
  %21 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value, align 2
  %call25 = tail call zeroext i1 @RFbAL7230SelectChannelPostProcess(ptr noundef %priv, i16 noundef zeroext %20, i16 noundef zeroext %22) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.body.if.end26_crit_edge
  %23 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hw_value, align 2
  %25 = ptrtoint ptr %byCurrentCh to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %byCurrentCh, align 2
  %26 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %byRFType, align 1
  %28 = load i16, ptr %hw_value, align 2
  %call31 = tail call zeroext i1 @RFbSelectChannel(ptr noundef %priv, i8 noundef zeroext %27, i16 noundef zeroext %28) #3
  %bEnablePSMode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 88
  %29 = ptrtoint ptr %bEnablePSMode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bEnablePSMode, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool36.not = icmp eq i8 %30, 0
  br i1 %tobool36.not, label %if.end26.if.end41_crit_edge, label %if.then37

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %byRFType to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %byRFType, align 1
  %33 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hw_value, align 2
  %call40 = tail call zeroext i1 @rf_write_wake_prog_syn(ptr noundef %priv, i8 noundef zeroext %32, i16 noundef zeroext %34) #3
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end26.if.end41_crit_edge
  tail call void @bb_software_reset(ptr noundef %priv) #3
  %local_id = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %35 = ptrtoint ptr %local_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %local_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %36)
  %cmp43 = icmp ugt i8 %36, 9
  br i1 %cmp43, label %if.then45, label %if.end41.if.end70_crit_edge

if.end41.if.end70_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %37 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port_offset, align 4
  %add.ptr57 = getelementptr i8, ptr %38, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57, i8 1) #3, !srcloc !25
  %39 = ptrtoint ptr %byCurrentCh to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %byCurrentCh, align 2
  %call59 = tail call zeroext i1 @RFbSetPower(ptr noundef %priv, i32 noundef 0, i16 noundef zeroext %40) #3
  %byCurPwr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 118
  %41 = ptrtoint ptr %byCurPwr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %byCurPwr, align 1
  %43 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port_offset, align 4
  %add.ptr61 = getelementptr i8, ptr %44, i32 115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61, i8 %42) #3, !srcloc !25
  %45 = ptrtoint ptr %byCurrentCh to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %byCurrentCh, align 2
  %call63 = tail call zeroext i1 @RFbSetPower(ptr noundef %priv, i32 noundef 4, i16 noundef zeroext %46) #3
  %47 = ptrtoint ptr %byCurPwr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %byCurPwr, align 1
  %49 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port_offset, align 4
  %add.ptr66 = getelementptr i8, ptr %50, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66, i8 %48) #3, !srcloc !25
  %51 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port_offset, align 4
  %add.ptr68 = getelementptr i8, ptr %52, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr68, i8 0) #3, !srcloc !25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call51) #3
  br label %if.end70

if.end70:                                         ; preds = %if.then45, %if.end41.if.end70_crit_edge
  %byBBType = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 64
  %53 = ptrtoint ptr %byBBType to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %byBBType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp72 = icmp eq i8 %54, 1
  %55 = ptrtoint ptr %byCurrentCh to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %byCurrentCh, align 2
  %. = select i1 %cmp72, i32 0, i32 4
  %call76 = tail call zeroext i1 @RFbSetPower(ptr noundef %priv, i32 noundef %., i16 noundef zeroext %56) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %call31, %if.end70 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_set_vga_gain_offset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @RFbAL7230SelectChannelPostProcess(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @RFbSelectChannel(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rf_write_wake_prog_syn(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bb_software_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @RFbSetPower(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @vnt_supported_5ghz_band, !1, !"vnt_supported_5ghz_band", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/channel.c", i32 108, i32 40}
!2 = !{ptr @vnt_channels_5ghz, !3, !"vnt_channels_5ghz", i1 false, i1 false}
!3 = !{!"../drivers/staging/vt6655/channel.c", i32 56, i32 33}
!4 = !{ptr @vnt_rates_a, !5, !"vnt_rates_a", i1 false, i1 false}
!5 = !{!"../drivers/staging/vt6655/channel.c", i32 28, i32 30}
!6 = !{ptr @vnt_supported_2ghz_band, !7, !"vnt_supported_2ghz_band", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6655/channel.c", i32 101, i32 40}
!8 = !{ptr @vnt_channels_2ghz, !9, !"vnt_channels_2ghz", i1 false, i1 false}
!9 = !{!"../drivers/staging/vt6655/channel.c", i32 39, i32 33}
!10 = !{ptr @vnt_rates_bg, !11, !"vnt_rates_bg", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6655/channel.c", i32 13, i32 30}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
!22 = !{i64 4993275}
!23 = !{i64 2152532620}
!24 = !{i64 2152534225}
!25 = !{i64 4992880}
