; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/channel.c_pt.bc'
source_filename = "../drivers/staging/vt6656/channel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.134 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.133, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.133 = type { i64, i64, i8 }

@vnt_channels_5ghz = internal global { [42 x %struct.ieee80211_channel], [592 x i8] } { [42 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 4915, i16 0, i16 15, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4920, i16 0, i16 16, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4925, i16 0, i16 17, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4935, i16 0, i16 18, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4940, i16 0, i16 19, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4945, i16 0, i16 20, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4960, i16 0, i16 21, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 4980, i16 0, i16 22, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5035, i16 0, i16 23, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5040, i16 0, i16 24, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5045, i16 0, i16 25, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5055, i16 0, i16 26, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5060, i16 0, i16 27, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5080, i16 0, i16 28, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5170, i16 0, i16 29, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5180, i16 0, i16 30, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5190, i16 0, i16 31, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5200, i16 0, i16 32, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5210, i16 0, i16 33, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5220, i16 0, i16 34, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5230, i16 0, i16 35, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5240, i16 0, i16 36, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5260, i16 0, i16 37, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5280, i16 0, i16 38, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5300, i16 0, i16 39, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5320, i16 0, i16 40, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5500, i16 0, i16 41, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5520, i16 0, i16 42, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5540, i16 0, i16 43, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5560, i16 0, i16 44, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5580, i16 0, i16 45, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5600, i16 0, i16 46, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5620, i16 0, i16 47, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5640, i16 0, i16 48, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5660, i16 0, i16 49, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5680, i16 0, i16 50, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5700, i16 0, i16 51, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5745, i16 0, i16 52, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5765, i16 0, i16 53, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5785, i16 0, i16 54, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5805, i16 0, i16 55, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5825, i16 0, i16 56, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [592 x i8] zeroinitializer }, align 32
@vnt_supported_5ghz_band = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @vnt_channels_5ghz, ptr @vnt_rates_a, i32 0, i32 42, i32 8, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@vnt_channels_2ghz = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@vnt_supported_2ghz_band = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @vnt_channels_2ghz, ptr @vnt_rates_bg, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@vnt_rates_a = internal global { [8 x %struct.ieee80211_rate], [32 x i8] } { [8 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [32 x i8] zeroinitializer }, align 32
@vnt_rates_bg = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 11, i16 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 9, i64 12, i64 14]
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"vnt_channels_5ghz\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 69, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"vnt_supported_5ghz_band\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 121, i32 40 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"vnt_channels_2ghz\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 52, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"vnt_supported_2ghz_band\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 114, i32 40 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"vnt_rates_a\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 41, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"vnt_rates_bg\00", align 1
@___asan_gen_.17 = private constant [36 x i8] c"../drivers/staging/vt6656/channel.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 26, i32 30 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @vnt_channels_5ghz, ptr @vnt_supported_5ghz_band, ptr @vnt_channels_2ghz, ptr @vnt_supported_2ghz_band, ptr @vnt_rates_a, ptr @vnt_rates_bg], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_channels_5ghz to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_supported_5ghz_band to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_channels_2ghz to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_supported_2ghz_band to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rates_a to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rates_bg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnt_init_bands(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.for.body_crit_edge [
    i8 12, label %entry.sw.bb4_crit_edge
    i8 9, label %entry.sw.bb4_crit_edge35
    i8 3, label %entry.sw.bb4_crit_edge36
    i8 14, label %entry.sw.bb4_crit_edge37
  ]

entry.sw.bb4_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.sw.bb4_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.sw.bb4_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %max_power = getelementptr %struct.ieee80211_channel, ptr @vnt_channels_5ghz, i32 %i.032, i32 6
  %3 = ptrtoint ptr %max_power to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 63, ptr %max_power, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr @vnt_channels_5ghz, i32 %i.032, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 48, ptr %flags, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %arrayidx3 = getelementptr %struct.wiphy, ptr %8, i32 0, i32 53, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vnt_supported_5ghz_band, ptr %arrayidx3, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %for.end, %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge35, %entry.sw.bb4_crit_edge36, %entry.sw.bb4_crit_edge37
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 0, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 0, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 1, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 1, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 2, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 2, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 3, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 3, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 4, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 4, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 5, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 5, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 6, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 6, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 7, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 7, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 8, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 8, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 9, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 9, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 10, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 10, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 11, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 11, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 12, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 12, i32 4), align 4
  store i32 63, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 13, i32 6), align 4
  store i32 48, ptr getelementptr inbounds ([14 x %struct.ieee80211_channel], ptr @vnt_channels_2ghz, i32 0, i32 13, i32 4), align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %wiphy17 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy17, align 8
  %bands18 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %bands18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vnt_supported_2ghz_band, ptr %bands18, align 16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @vnt_channels_5ghz, !1, !"vnt_channels_5ghz", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/channel.c", i32 69, i32 33}
!2 = !{ptr @vnt_supported_5ghz_band, !3, !"vnt_supported_5ghz_band", i1 false, i1 false}
!3 = !{!"../drivers/staging/vt6656/channel.c", i32 121, i32 40}
!4 = !{ptr @vnt_rates_a, !5, !"vnt_rates_a", i1 false, i1 false}
!5 = !{!"../drivers/staging/vt6656/channel.c", i32 41, i32 30}
!6 = !{ptr @vnt_channels_2ghz, !7, !"vnt_channels_2ghz", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6656/channel.c", i32 52, i32 33}
!8 = !{ptr @vnt_supported_2ghz_band, !9, !"vnt_supported_2ghz_band", i1 false, i1 false}
!9 = !{!"../drivers/staging/vt6656/channel.c", i32 114, i32 40}
!10 = !{ptr @vnt_rates_bg, !11, !"vnt_rates_bg", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6656/channel.c", i32 26, i32 30}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
