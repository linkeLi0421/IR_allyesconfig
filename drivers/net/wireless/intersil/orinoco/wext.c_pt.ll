; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/wext.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/wext.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.137 = type { i16, i16, i16, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.hermes_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_mlme = type { i16, i16, %struct.sockaddr }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }

@orinoco_handler = internal constant { [54 x ptr], [40 x i8] } { [54 x ptr] [ptr @orinoco_ioctl_commit, ptr @cfg80211_wext_giwname, ptr null, ptr null, ptr @orinoco_ioctl_setfreq, ptr @orinoco_ioctl_getfreq, ptr @cfg80211_wext_siwmode, ptr @cfg80211_wext_giwmode, ptr @orinoco_ioctl_setsens, ptr @orinoco_ioctl_getsens, ptr null, ptr @cfg80211_wext_giwrange, ptr null, ptr null, ptr null, ptr null, ptr @iw_handler_set_spy, ptr @iw_handler_get_spy, ptr @iw_handler_set_thrspy, ptr @iw_handler_get_thrspy, ptr @orinoco_ioctl_setwap, ptr @orinoco_ioctl_getwap, ptr @orinoco_ioctl_set_mlme, ptr null, ptr @cfg80211_wext_siwscan, ptr @cfg80211_wext_giwscan, ptr @orinoco_ioctl_setessid, ptr @orinoco_ioctl_getessid, ptr null, ptr null, ptr null, ptr null, ptr @orinoco_ioctl_setrate, ptr @orinoco_ioctl_getrate, ptr @cfg80211_wext_siwrts, ptr @cfg80211_wext_giwrts, ptr @cfg80211_wext_siwfrag, ptr @cfg80211_wext_giwfrag, ptr null, ptr null, ptr null, ptr @cfg80211_wext_giwretry, ptr @orinoco_ioctl_setiwencode, ptr @orinoco_ioctl_getiwencode, ptr @orinoco_ioctl_setpower, ptr @orinoco_ioctl_getpower, ptr null, ptr null, ptr @orinoco_ioctl_set_genie, ptr @orinoco_ioctl_get_genie, ptr @orinoco_ioctl_set_auth, ptr @orinoco_ioctl_get_auth, ptr @orinoco_ioctl_set_encodeext, ptr @orinoco_ioctl_get_encodeext], [40 x i8] zeroinitializer }, align 32
@orinoco_private_handler = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @orinoco_ioctl_reset, ptr @orinoco_ioctl_reset, ptr @orinoco_ioctl_setport3, ptr @orinoco_ioctl_getport3, ptr @orinoco_ioctl_setpreamble, ptr @orinoco_ioctl_getpreamble, ptr @orinoco_ioctl_setibssport, ptr @orinoco_ioctl_getibssport, ptr null, ptr @orinoco_ioctl_getrid], [56 x i8] zeroinitializer }, align 32
@orinoco_privtab = internal constant { [9 x %struct.iw_priv_args], [40 x i8] } { [9 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35808, i16 0, i16 0, [16 x i8] c"force_reset\00\00\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 0, i16 0, [16 x i8] c"card_reset\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35810, i16 18433, i16 0, [16 x i8] c"set_port3\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35811, i16 0, i16 18433, [16 x i8] c"get_port3\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35812, i16 18433, i16 0, [16 x i8] c"set_preamble\00\00\00\00" }, %struct.iw_priv_args { i32 35813, i16 0, i16 18433, [16 x i8] c"get_preamble\00\00\00\00" }, %struct.iw_priv_args { i32 35814, i16 18433, i16 0, [16 x i8] c"set_ibssport\00\00\00\00" }, %struct.iw_priv_args { i32 35815, i16 0, i16 18433, [16 x i8] c"get_ibssport\00\00\00\00" }, %struct.iw_priv_args { i32 35817, i16 0, i16 5120, [16 x i8] c"get_rid\00\00\00\00\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@orinoco_handler_def = dso_local constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @orinoco_handler, i16 54, i16 10, i16 9, ptr @orinoco_private_handler, ptr @orinoco_privtab, ptr @orinoco_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@orinoco_ioctl_setwap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: Lucent/Agere firmware doesn't support manual roaming\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orinoco_ioctl_setwap\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intersil/orinoco/wext.c\00", [51 x i8] zeroinitializer }, align 32
@orinoco_ioctl_setwap._entry_ptr = internal global ptr @orinoco_ioctl_setwap._entry, section ".printk_index", align 4
@orinoco_ioctl_setwap._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: Manual roaming supported only in managed mode\0A\00", [43 x i8] zeroinitializer }, align 32
@orinoco_ioctl_setwap._entry_ptr.5 = internal global ptr @orinoco_ioctl_setwap._entry.3, section ".printk_index", align 4
@orinoco_ioctl_setwap._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: Desired ESSID must be set for manual roaming\0A\00", [44 x i8] zeroinitializer }, align 32
@orinoco_ioctl_setwap._entry_ptr.8 = internal global ptr @orinoco_ioctl_setwap._entry.6, section ".printk_index", align 4
@orinoco_ioctl_set_encodeext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Error %d setting TKIP key\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"orinoco_ioctl_set_encodeext\00", [36 x i8] zeroinitializer }, align 32
@orinoco_ioctl_set_encodeext._entry_ptr = internal global ptr @orinoco_ioctl_set_encodeext._entry, section ".printk_index", align 4
@orinoco_ioctl_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Forcing reset!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orinoco_ioctl_reset\00", [44 x i8] zeroinitializer }, align 32
@orinoco_ioctl_reset._entry_ptr = internal global ptr @orinoco_ioctl_reset._entry, section ".printk_index", align 4
@orinoco_ioctl_reset._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Force scheduling reset!\0A\00", [33 x i8] zeroinitializer }, align 32
@orinoco_ioctl_reset._entry_ptr.15 = internal global ptr @orinoco_ioctl_reset._entry.13, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@orinoco_get_wireless_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: get_wireless_stats() called while device not present\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orinoco_get_wireless_stats\00", [37 x i8] zeroinitializer }, align 32
@orinoco_get_wireless_stats._entry_ptr = internal global ptr @orinoco_get_wireless_stats._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 768]
@__sancov_gen_cov_switch_values.19 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"orinoco_handler\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1349, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"orinoco_private_handler\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1393, i32 25 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"orinoco_privtab\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1325, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"orinoco_handler_def\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1405, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 182, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 190, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 199, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 797, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1109, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1114, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [48 x i8] c"../drivers/net/wireless/intersil/orinoco/wext.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 98, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @orinoco_get_wireless_stats._entry, ptr @orinoco_get_wireless_stats._entry_ptr, ptr @orinoco_ioctl_reset._entry, ptr @orinoco_ioctl_reset._entry.13, ptr @orinoco_ioctl_reset._entry_ptr, ptr @orinoco_ioctl_reset._entry_ptr.15, ptr @orinoco_ioctl_set_encodeext._entry, ptr @orinoco_ioctl_set_encodeext._entry_ptr, ptr @orinoco_ioctl_setwap._entry, ptr @orinoco_ioctl_setwap._entry.3, ptr @orinoco_ioctl_setwap._entry.6, ptr @orinoco_ioctl_setwap._entry_ptr, ptr @orinoco_ioctl_setwap._entry_ptr.5, ptr @orinoco_ioctl_setwap._entry_ptr.8, ptr @orinoco_handler, ptr @orinoco_private_handler, ptr @orinoco_privtab, ptr @orinoco_handler_def, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_handler to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_private_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_privtab to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_handler_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_ioctl_setwap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_ioctl_setwap._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_ioctl_setwap._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_ioctl_set_encodeext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_ioctl_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_ioctl_reset._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_get_wireless_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @orinoco_get_wireless_stats(ptr noundef %dev) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %cq = alloca %struct.anon.137, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %hw1 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 26
  %wstats2 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %dev) #10
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %9(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %10 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  br i1 %tobool.not.i, label %if.end7, label %orinoco_lock.exit

orinoco_lock.exit:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %15(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmd_wait.i = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_wait.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_wait.i, align 4
  %call.i = call i32 %17(ptr noundef %hw1, i16 noundef zeroext 17, i16 noundef zeroext -3840, ptr noundef null) #7
  %iw_mode = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp9 = icmp eq i32 %19, 1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %qual = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %qual to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %qual, align 2
  %spy_data = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 0, i32 1, i32 4, i32 1
  %21 = ptrtoint ptr %spy_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spy_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.then10.if.end52_crit_edge, label %if.then11

if.then10.if.end52_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %spy_stat = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 0, i32 5, i32 2
  %23 = ptrtoint ptr %spy_stat to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %spy_stat, align 4
  %25 = ptrtoint ptr %qual to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %qual, align 2
  %level = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 48, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %level, align 1
  %level20 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1, i32 1
  %28 = ptrtoint ptr %level20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %level20, align 1
  %noise = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 48, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %noise, align 2
  %noise25 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1, i32 2
  %31 = ptrtoint ptr %noise25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %noise25, align 2
  %updated = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 48, i32 2, i32 0, i32 3
  %32 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %updated, align 1
  %updated30 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1, i32 3
  %34 = ptrtoint ptr %updated30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %updated30, align 1
  br label %if.end52

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cq) #7
  %35 = ptrtoint ptr %cq to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %cq, align 8
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %read_ltv = getelementptr inbounds %struct.hermes_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %read_ltv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_ltv, align 4
  %call32 = call i32 %39(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -701, i32 noundef 8, ptr noundef null, ptr noundef nonnull %cq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %40 = getelementptr inbounds %struct.anon.137, ptr %cq, i32 0, i32 2
  %41 = getelementptr inbounds %struct.anon.137, ptr %cq, i32 0, i32 1
  %42 = ptrtoint ptr %cq to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cq, align 8
  %44 = lshr i16 %43, 8
  %conv36 = trunc i16 %44 to i8
  %qual37 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1
  %45 = ptrtoint ptr %qual37 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv36, ptr %qual37, align 2
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %41, align 2
  %48 = lshr i16 %47, 8
  %conv39 = trunc i16 %48 to i8
  %sub = add i8 %conv39, 107
  %level42 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1, i32 1
  %49 = ptrtoint ptr %level42 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %sub, ptr %level42, align 1
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %40, align 4
  %52 = lshr i16 %51, 8
  %conv44 = trunc i16 %52 to i8
  %sub45 = add i8 %conv44, 107
  %noise48 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1, i32 2
  %53 = ptrtoint ptr %noise48 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %sub45, ptr %noise48, align 2
  %updated50 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 17, i32 1, i32 3
  %54 = ptrtoint ptr %updated50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 15, ptr %updated50, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then34, %if.else.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cq) #7
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then11, %if.then10.if.end52_crit_edge
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i82 = getelementptr inbounds %struct.hermes_ops, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %unlock_irqrestore.i82 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %unlock_irqrestore.i82, align 4
  call void %58(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %orinoco_lock.exit, %do.end
  %retval.0 = phi ptr [ %wstats2, %if.end52 ], [ null, %do.end ], [ %wstats2, %orinoco_lock.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_commit(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %open = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 19
  %3 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end3, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 @orinoco_commit(ptr noundef %priv.i.i.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call4, %if.end3 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %14(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ndev_priv.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_giwname(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setfreq(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %frq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %iw_mode = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4
  %3 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %e = getelementptr inbounds %struct.iw_freq, ptr %frq, i32 0, i32 1
  %5 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp1 = icmp eq i16 %6, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %frq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %8)
  %cmp3 = icmp slt i32 %8, 1001
  br i1 %cmp3, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.for.body.preheader_crit_edge

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %6)
  %cmp962 = icmp slt i16 %6, 6
  br i1 %cmp962, label %if.else.for.body.preheader_crit_edge, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.else.for.body.preheader_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else.for.body.preheader_crit_edge, %land.lhs.true.for.body.preheader_crit_edge
  %conv8 = sext i16 %6 to i32
  %sub = sub nsw i32 6, %conv8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %denom.063 = phi i32 [ %mul, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %mul = mul i32 %denom.063, 10
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %denom.0.lcssa = phi i32 [ 1, %if.else.for.end_crit_edge ], [ %mul, %for.body.for.end_crit_edge ]
  %9 = ptrtoint ptr %frq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frq, align 4
  %div = sdiv i32 %10, %denom.0.lcssa
  %mul.i = mul i32 %div, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #7
  br label %if.end13

if.end13:                                         ; preds = %for.end, %land.lhs.true.if.end13_crit_edge
  %chan.0 = phi i32 [ %call.i, %for.end ], [ %8, %land.lhs.true.if.end13_crit_edge ]
  %11 = add i32 %chan.0, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %11)
  %12 = icmp ult i32 %11, -14
  br i1 %12, label %if.end13.cleanup_crit_edge, label %lor.lhs.false18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end13
  %channel_mask = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %channel_mask, align 4
  %conv19 = zext i16 %14 to i32
  %sub20 = add nsw i32 %chan.0, -1
  %shl = shl nuw nsw i32 1, %sub20
  %and = and i32 %shl, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false18.cleanup_crit_edge, label %if.end22

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false18
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %18(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %19 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end27, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end22
  %conv28 = trunc i32 %chan.0 to i16
  %channel = getelementptr inbounds %struct.wiphy, ptr %1, i32 2
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv28, ptr %channel, align 4
  %22 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp30 = icmp eq i32 %23, 6
  br i1 %cmp30, label %if.then32, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %hw33 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 26
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %cmd_wait = getelementptr inbounds %struct.hermes_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_wait, align 4
  %call35 = call i32 %27(ptr noundef %hw33, i16 noundef zeroext 2104, i16 noundef zeroext %conv28, ptr noundef null) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then32, %if.end27.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %if.end22.cleanup.sink.split_crit_edge ], [ %call35, %if.then32 ], [ -115, %if.end27.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %31(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false18.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getfreq(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %frq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %call1 = tail call i32 @orinoco_hw_get_freq(ptr noundef %priv.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %call1, 100000
  %2 = ptrtoint ptr %frq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %frq, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %frq, i32 0, i32 1
  %3 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %e, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %ndev_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_siwmode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_giwmode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setsens(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %srq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %has_sensitivity = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %5 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %has_sensitivity, align 2
  %6 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %7 = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %8 = icmp ult i32 %7, -3
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %12(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %13 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end7, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %3 to i16
  %ap_density = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 38
  %15 = ptrtoint ptr %ap_density to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %ap_density, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -115, %if.end7 ], [ -16, %if.end3.cleanup.sink.split_crit_edge ]
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %19(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %ndev_priv.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getsens(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %srq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %rec.i = alloca i16, align 2
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %hw1 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %has_sensitivity = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %3 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %has_sensitivity, align 2
  %4 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end4, label %orinoco_lock.exit

orinoco_lock.exit:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %14(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #7
  %15 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %rec.i, align 2, !annotation !53
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %read_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %read_ltv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_ltv.i, align 4
  %call.i = call i32 %19(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1018, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i) #7
  %20 = ptrtoint ptr %rec.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rec.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #7
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i20 = getelementptr inbounds %struct.hermes_ops, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %unlock_irqrestore.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unlock_irqrestore.i20, align 4
  call void %25(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %26 = call i16 @llvm.bswap.i16(i16 %21) #7
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %srq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %srq, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %srq, i32 0, i32 1
  %28 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %orinoco_lock.exit, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -95, %ndev_priv.exit.cleanup_crit_edge ], [ -16, %orinoco_lock.exit ], [ %call.i, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_giwrange(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setwap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %ap_addr, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %9 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sa_data, align 4
  %add.ptr.i = getelementptr %struct.sockaddr, ptr %ap_addr, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %12 to i32
  %or.i = or i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %sa_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sa_data, align 2
  %add.ptr1.i = getelementptr %struct.sockaddr, ptr %ap_addr, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %14, %12
  %and510.i = and i16 %and9.i, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i70 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i70, label %lor.lhs.false.if.then6_crit_edge, label %if.end14

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %desired_bssid = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 85, i32 4
  %17 = call ptr @memset(ptr %desired_bssid, i32 0, i32 10)
  %18 = ptrtoint ptr %sa_data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sa_data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp9 = icmp eq i8 %19, 0
  br i1 %cmp9, label %if.then11, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 @__orinoco_hw_set_wap(ptr noundef %priv.i.i.i) #7
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %firmware_type = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31
  %20 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %firmware_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp15 = icmp eq i32 %21, 0
  br i1 %cmp15, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %dev) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %iw_mode = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp21.not = icmp eq i32 %23, 2
  br i1 %cmp21.not, label %if.end31, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %dev) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp33 = icmp eq i32 %21, 1
  br i1 %cmp33, label %land.lhs.true, label %if.end31.if.end47_crit_edge

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end31
  %desired_essid = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 32
  %24 = ptrtoint ptr %desired_essid to i32
  call void @__asan_load1_noabort(i32 %24)
  %char0 = load i8, ptr %desired_essid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp37 = icmp eq i8 %char0, 0
  br i1 %cmp37, label %do.end42, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end42:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %dev) #10
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end31.if.end47_crit_edge
  %bssid_fixed48 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 85, i32 10
  %25 = ptrtoint ptr %bssid_fixed48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %bssid_fixed48, align 4
  %desired_bssid49 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 85, i32 4
  %26 = call ptr @memcpy(ptr %desired_bssid49, ptr %sa_data, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end42, %do.end26, %do.end, %if.then11, %if.then6.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ 0, %if.then11 ], [ -115, %if.then6.cleanup_crit_edge ], [ -95, %do.end ], [ -95, %do.end26 ], [ -95, %do.end42 ], [ -115, %if.end47 ]
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %30(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getwap(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr noundef %ap_addr, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %ap_addr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %ap_addr, align 2
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %call2 = call i32 @orinoco_hw_get_current_bssid(ptr noundef %priv.i.i.i, ptr noundef %sa_data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %ndev_priv.exit.cleanup_crit_edge ]
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %13(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_set_mlme(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr noundef %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %9 = ptrtoint ptr %extra to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %extra, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %sw.default [
    i16 0, label %if.end.cleanup_crit_edge
    i16 1, label %sw.bb
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sa_data = getelementptr inbounds %struct.iw_mlme, ptr %extra, i32 0, i32 2, i32 1
  %reason_code = getelementptr inbounds %struct.iw_mlme, ptr %extra, i32 0, i32 1
  %12 = ptrtoint ptr %reason_code to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reason_code, align 2
  %call2 = call i32 @orinoco_hw_disassociate(ptr noundef %priv.i.i.i, ptr noundef %sa_data, i16 noundef zeroext %13) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %if.end.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ -95, %sw.default ], [ %call2, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ]
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %17(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_siwscan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_giwscan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setessid(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %erq, ptr nocapture noundef readonly %essidbuf) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %4)
  %cmp = icmp ugt i16 %4, 32
  br i1 %cmp, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %desired_essid = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 32
  %11 = call ptr @memset(ptr %desired_essid, i32 0, i32 33)
  %flags7 = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %12 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.end6.cleanup.sink.split_crit_edge, label %if.then8

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length, align 4
  %conv12 = zext i16 %15 to i32
  %16 = call ptr @memcpy(ptr %desired_essid, ptr %essidbuf, i32 %conv12)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %if.end.cleanup.sink.split_crit_edge ], [ -115, %if.then8 ], [ -115, %if.end6.cleanup.sink.split_crit_edge ]
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %20(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %ndev_priv.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getessid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %erq, ptr noundef %essidbuf) #0 align 64 {
entry:
  %active = alloca i32, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active) #7
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %active, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %ndev_priv.exit
  %call2 = call i32 @orinoco_hw_get_essid(ptr noundef %priv.i.i.i, ptr noundef nonnull %active, ptr noundef %essidbuf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %call2 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %length, align 4
  br label %if.end14

if.else:                                          ; preds = %ndev_priv.exit
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %10(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %11 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end8, label %orinoco_lock.exit

orinoco_lock.exit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %16(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %desired_essid = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 32
  %17 = call ptr @memcpy(ptr %essidbuf, ptr %desired_essid, i32 32)
  %call11 = call i32 @strlen(ptr noundef %desired_essid) #11
  %conv12 = trunc i32 %call11 to i16
  %length13 = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %18 = ptrtoint ptr %length13 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv12, ptr %length13, align 4
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i30 = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %unlock_irqrestore.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unlock_irqrestore.i30, align 4
  call void %22(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end8, %if.end
  %flags15 = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %23 = ptrtoint ptr %flags15 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags15, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %orinoco_lock.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call2, %if.then.cleanup_crit_edge ], [ -16, %orinoco_lock.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setrate(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %3 = ptrtoint ptr %rrq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %ndev_priv.exit.if.end4_crit_edge, label %if.else

ndev_priv.exit.if.end4_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.else:                                          ; preds = %ndev_priv.exit
  %.frozen = freeze i32 %4
  %div = sdiv i32 %.frozen, 100000
  %5 = mul i32 %div, 100000
  %rem.decomposed = sub i32 %.frozen, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %if.else.if.end4_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %ndev_priv.exit.if.end4_crit_edge
  %bitrate.0 = phi i32 [ 110, %ndev_priv.exit.if.end4_crit_edge ], [ %div, %if.else.if.end4_crit_edge ]
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %lnot.ext = zext i1 %tobool5.not to i32
  %call6 = tail call i32 @orinoco_get_bitratemode(i32 noundef %bitrate.0, i32 noundef %lnot.ext) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -1
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %11(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %12 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end13, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %bitratemode = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 72
  %14 = ptrtoint ptr %bitratemode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call6, ptr %bitratemode, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -115, %if.end13 ], [ -16, %if.end9.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %18(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getrate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rrq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %bitrate = alloca i32, align 4
  %automatic = alloca i32, align 4
  %flags = alloca i32, align 4
  %act_bitrate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitrate) #7
  %2 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bitrate, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %automatic) #7
  %3 = ptrtoint ptr %automatic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %automatic, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end, label %orinoco_lock.exit

orinoco_lock.exit:                                ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %14(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %bitratemode = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 72
  %15 = ptrtoint ptr %bitratemode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bitratemode, align 4
  call void @orinoco_get_ratemode_cfg(i32 noundef %16, ptr noundef nonnull %bitrate, ptr noundef nonnull %automatic) #7
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_bitrate) #7
  %19 = ptrtoint ptr %act_bitrate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %act_bitrate, align 4, !annotation !53
  %call4 = call i32 @orinoco_hw_get_act_bitrate(ptr noundef %priv.i.i.i, ptr noundef nonnull %act_bitrate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %act_bitrate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %act_bitrate, align 4
  %22 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bitrate, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_bitrate) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i20 = getelementptr inbounds %struct.hermes_ops, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %unlock_irqrestore.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unlock_irqrestore.i20, align 4
  call void %26(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %27 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitrate, align 4
  %29 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rrq, align 4
  %30 = ptrtoint ptr %automatic to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %automatic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool8.not = icmp eq i32 %31, 0
  %conv = zext i1 %tobool8.not to i8
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %32 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %fixed, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 2
  %33 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %disabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %orinoco_lock.exit
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %orinoco_lock.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %automatic) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitrate) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_siwrts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_giwrts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_siwfrag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_giwfrag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_wext_giwretry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setiwencode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %erq, ptr nocapture noundef readonly %keybuf) #0 align 64 {
entry:
  %flags4 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %flags = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  %and = zext i16 %4 to i32
  %sub = add nsw i32 %and, -1
  %tx_key = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 28
  %5 = ptrtoint ptr %tx_key to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tx_key, align 2
  %conv1 = zext i16 %6 to i32
  %encode_alg2 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %encode_alg2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encode_alg2, align 4
  %wep_restrict = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %wep_restrict to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wep_restrict, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags4) #7
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %flags4, align 4, !annotation !53
  %has_wep = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %12 = ptrtoint ptr %has_wep to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %has_wep, align 2
  %13 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %14 = ptrtoint ptr %erq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %erq, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end.if.end22_crit_edge, label %if.then6

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then6:                                         ; preds = %if.end
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %17)
  %cmp = icmp ugt i16 %17, 13
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %17)
  %cmp13 = icmp ugt i16 %17, 5
  %18 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool19.not = icmp eq i16 %18, 0
  %or.cond = select i1 %cmp13, i1 %tobool19.not, i1 false
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end10.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %22(ptr noundef %lock.i, ptr noundef nonnull %flags4) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %23 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end27, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %has_wep to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load28 = load i16, ptr %has_wep, align 2
  %26 = and i16 %bf.load28, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool32.not = icmp eq i16 %26, 0
  br i1 %tobool32.not, label %if.end27.if.end39_crit_edge, label %land.lhs.true33

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true33:                                  ; preds = %if.end27
  %27 = ptrtoint ptr %encode_alg2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %encode_alg2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp35 = icmp eq i32 %28, 2
  br i1 %cmp35, label %if.then37, label %land.lhs.true33.if.end39_crit_edge

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 @orinoco_clear_tkip_key(ptr noundef %priv.i.i.i, i32 noundef %conv1) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true33.if.end39_crit_edge, %if.end27.if.end39_crit_edge
  %length40 = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %29 = ptrtoint ptr %length40 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length40, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp42.not = icmp eq i16 %30, 0
  %31 = add nsw i16 %4, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %31)
  %32 = icmp ult i16 %31, -4
  br i1 %cmp42.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end39
  br i1 %32, label %if.then49, label %if.then44.if.end52_crit_edge

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %tx_key to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tx_key, align 2
  %conv51 = zext i16 %34 to i32
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then44.if.end52_crit_edge
  %index.0 = phi i32 [ %conv51, %if.then49 ], [ %sub, %if.then44.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp53.not = icmp eq i32 %8, 1
  %spec.select = select i1 %cmp53.not, i32 %conv1, i32 %index.0
  br label %if.end78

if.else:                                          ; preds = %if.end39
  br i1 %32, label %if.then62, label %if.else72

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp57 = icmp eq i16 %4, 0
  br i1 %cmp57, label %lor.lhs.false65, label %if.then62.cleanup.sink.split_crit_edge

if.then62.cleanup.sink.split_crit_edge:           ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false65:                                  ; preds = %if.then62
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp68 = icmp eq i16 %36, 0
  br i1 %cmp68, label %lor.lhs.false65.cleanup.sink.split_crit_edge, label %lor.lhs.false65.if.end78_crit_edge

lor.lhs.false65.if.end78_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

lor.lhs.false65.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else72:                                        ; preds = %if.else
  %key_len = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %sub, i32 2
  %37 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp73 = icmp eq i32 %38, 0
  br i1 %cmp73, label %if.else72.cleanup.sink.split_crit_edge, label %if.else72.if.end78_crit_edge

if.else72.if.end78_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.else72.cleanup.sink.split_crit_edge:           ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end78:                                         ; preds = %if.else72.if.end78_crit_edge, %lor.lhs.false65.if.end78_crit_edge, %if.end52
  %index.1 = phi i32 [ -1, %lor.lhs.false65.if.end78_crit_edge ], [ %index.0, %if.end52 ], [ %sub, %if.else72.if.end78_crit_edge ]
  %setindex.0 = phi i32 [ %conv1, %lor.lhs.false65.if.end78_crit_edge ], [ %spec.select, %if.end52 ], [ %sub, %if.else72.if.end78_crit_edge ]
  %encode_alg.0 = phi i32 [ %8, %lor.lhs.false65.if.end78_crit_edge ], [ 1, %if.end52 ], [ %8, %if.else72.if.end78_crit_edge ]
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %tobool82.not = icmp sgt i16 %40, -1
  %spec.select178 = select i1 %tobool82.not, i32 %encode_alg.0, i32 0
  %41 = and i16 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool88.not = icmp eq i16 %41, 0
  %narrow = select i1 %tobool88.not, i16 %10, i16 0
  %42 = and i16 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool94.not = icmp eq i16 %42, 0
  %narrow187 = select i1 %tobool94.not, i16 %narrow, i16 1
  %43 = ptrtoint ptr %erq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %erq, align 4
  %tobool98.not = icmp eq ptr %44, null
  %brmerge = select i1 %tobool98.not, i1 true, i1 %cmp42.not
  br i1 %brmerge, label %if.end78.if.end108_crit_edge, label %if.then.i

if.end78.if.end108_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then.i:                                        ; preds = %if.end78
  %conv101 = zext i16 %30 to i32
  %arrayidx.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.1
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree_sensitive(ptr noundef %46) #7
  %seq4.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.1, i32 1
  %47 = ptrtoint ptr %seq4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %seq4.i, align 4
  call void @kfree_sensitive(ptr noundef %48) #7
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv101, i32 noundef 2848) #12
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i.i.i, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool11.not.i, label %nomem.i, label %if.end45.i

if.end45.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %seq4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %seq4.i, align 4
  %key_len36.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.1, i32 2
  %51 = ptrtoint ptr %key_len36.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv101, ptr %key_len36.i, align 4
  %seq_len39.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.1, i32 3
  %52 = ptrtoint ptr %seq_len39.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %seq_len39.i, align 4
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %55 = call ptr @memcpy(ptr %54, ptr %keybuf, i32 %conv101)
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %30)
  %cmp.i = icmp ugt i16 %30, 5
  %cond.i = select i1 %cmp.i, i32 1027077, i32 1027073
  br label %orinoco_set_key.exit

nomem.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %key_len70.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.1, i32 2
  %56 = ptrtoint ptr %key_len70.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %key_len70.i, align 4
  %seq_len73.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.1, i32 3
  %57 = ptrtoint ptr %seq_len73.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %seq_len73.i, align 4
  br label %orinoco_set_key.exit

orinoco_set_key.exit:                             ; preds = %nomem.i, %if.end45.i
  %.sink.i = phi i32 [ %cond.i, %if.end45.i ], [ 0, %nomem.i ]
  %retval.0.i180 = phi i32 [ 0, %if.end45.i ], [ -12, %nomem.i ]
  %cipher.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.1, i32 5
  %58 = ptrtoint ptr %cipher.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink.i, ptr %cipher.i, align 4
  br label %if.end108

if.end108:                                        ; preds = %orinoco_set_key.exit, %if.end78.if.end108_crit_edge
  %err.0 = phi i32 [ %retval.0.i180, %orinoco_set_key.exit ], [ -115, %if.end78.if.end108_crit_edge ]
  %conv109 = trunc i32 %setindex.0 to i16
  %59 = ptrtoint ptr %tx_key to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv109, ptr %tx_key, align 2
  %60 = ptrtoint ptr %encode_alg2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %encode_alg2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %spec.select178)
  %cmp112 = icmp eq i32 %61, %spec.select178
  br i1 %cmp112, label %land.lhs.true114, label %if.end108.if.end124_crit_edge

if.end108.if.end124_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true114:                                 ; preds = %if.end108
  %62 = ptrtoint ptr %wep_restrict to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %wep_restrict, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %narrow187, i16 %63)
  %cmp117 = icmp eq i16 %narrow187, %63
  br i1 %cmp117, label %land.lhs.true119, label %land.lhs.true114.if.end124_crit_edge

land.lhs.true114.if.end124_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true119:                                 ; preds = %land.lhs.true114
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %state.i, align 4
  %66 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i181 = icmp eq i32 %66, 0
  br i1 %tobool.not.i181, label %if.then122, label %land.lhs.true119.if.end124_crit_edge

land.lhs.true119.if.end124_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then122:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  %call123 = call i32 @__orinoco_hw_setup_wepkeys(ptr noundef %priv.i.i.i) #7
  br label %cleanup.sink.split

if.end124:                                        ; preds = %land.lhs.true119.if.end124_crit_edge, %land.lhs.true114.if.end124_crit_edge, %if.end108.if.end124_crit_edge
  %67 = ptrtoint ptr %encode_alg2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.select178, ptr %encode_alg2, align 4
  %68 = ptrtoint ptr %wep_restrict to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %narrow187, ptr %wep_restrict, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end124, %if.then122, %if.else72.cleanup.sink.split_crit_edge, %lor.lhs.false65.cleanup.sink.split_crit_edge, %if.then62.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %if.end22.cleanup.sink.split_crit_edge ], [ %call123, %if.then122 ], [ %err.0, %if.end124 ], [ -22, %lor.lhs.false65.cleanup.sink.split_crit_edge ], [ -22, %if.then62.cleanup.sink.split_crit_edge ], [ -22, %if.else72.cleanup.sink.split_crit_edge ]
  %69 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %72(ptr noundef %lock.i, ptr noundef nonnull %flags4) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %ndev_priv.exit.cleanup_crit_edge ], [ -7, %if.then6.cleanup_crit_edge ], [ -7, %if.end10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags4) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getiwencode(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %erq, ptr nocapture noundef writeonly %keybuf) #0 align 64 {
entry:
  %flags1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %flags = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  %and = zext i16 %4 to i32
  %sub = add nsw i32 %and, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags1) #7
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %flags1, align 4, !annotation !53
  %has_wep = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %6 = ptrtoint ptr %has_wep to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %has_wep, align 2
  %7 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %11(ptr noundef %lock.i, ptr noundef nonnull %flags1) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %12 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %14 = add nsw i16 %4, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %14)
  %15 = icmp ult i16 %14, -4
  br i1 %15, label %if.then10, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %tx_key = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 28
  %16 = ptrtoint ptr %tx_key to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_key, align 2
  %conv11 = zext i16 %17 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  %index.0 = phi i32 [ %conv11, %if.then10 ], [ %sub, %if.end5.if.end12_crit_edge ]
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags, align 2
  %encode_alg = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %encode_alg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %encode_alg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  %spec.store.select = select i1 %tobool14.not, i16 -32768, i16 0
  %21 = trunc i32 %index.0 to i16
  %22 = add i16 %21, 1
  %conv23 = or i16 %spec.store.select, %22
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv23, ptr %flags, align 2
  %wep_restrict = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %wep_restrict to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wep_restrict, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool24.not = icmp eq i16 %25, 0
  %storemerge.v = select i1 %tobool24.not, i16 8192, i16 16384
  %storemerge = or i16 %storemerge.v, %conv23
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge, ptr %flags, align 2
  %arrayidx = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.0
  %key_len = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %index.0, i32 2
  %27 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_len, align 4
  %conv35 = trunc i32 %28 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv35, ptr %length, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %conv39 = and i32 %28, 65535
  %32 = call ptr @memcpy(ptr %keybuf, ptr %31, i32 %conv39)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end12 ], [ -16, %if.end.cleanup.sink.split_crit_edge ]
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %36(ptr noundef %lock.i, ptr noundef nonnull %flags1) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %ndev_priv.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags1) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setpower(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %prq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %disabled = getelementptr inbounds %struct.iw_param, ptr %prq, i32 0, i32 2
  %9 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pm_on = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 40
  %11 = ptrtoint ptr %pm_on to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %pm_on, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  %flags3 = getelementptr inbounds %struct.iw_param, ptr %prq, i32 0, i32 3
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags3, align 2
  %14 = and i16 %13, 3840
  %and = zext i16 %14 to i32
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and, label %if.else.cleanup_crit_edge [
    i32 256, label %if.else.sw.epilog.sink.split_crit_edge
    i32 768, label %sw.bb5
    i32 0, label %if.else.sw.epilog_crit_edge
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %if.else.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 1, %sw.bb5 ], [ 0, %if.else.sw.epilog.sink.split_crit_edge ]
  %pm_mcast6 = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %pm_mcast6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %.sink, ptr %pm_mcast6, align 4
  %pm_on7 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 40
  %17 = ptrtoint ptr %pm_on7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %pm_on7, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else.sw.epilog_crit_edge
  %18 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags3, align 2
  %20 = and i16 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool11.not = icmp eq i16 %20, 0
  br i1 %tobool11.not, label %sw.epilog.if.end15_crit_edge, label %if.then12

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %pm_on13 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 40
  %21 = ptrtoint ptr %pm_on13 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %pm_on13, align 2
  %22 = ptrtoint ptr %prq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prq, align 4
  %div = sdiv i32 %23, 1000
  %conv14 = trunc i32 %div to i16
  %pm_timeout = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %pm_timeout to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv14, ptr %pm_timeout, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %sw.epilog.if.end15_crit_edge
  %25 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags3, align 2
  %27 = and i16 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool19.not = icmp eq i16 %27, 0
  br i1 %tobool19.not, label %if.end15.if.end25_crit_edge, label %if.then20

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %pm_on21 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 40
  %28 = ptrtoint ptr %pm_on21 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %pm_on21, align 2
  %29 = ptrtoint ptr %prq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prq, align 4
  %div23 = sdiv i32 %30, 1000
  %conv24 = trunc i32 %div23 to i16
  %pm_period = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 42
  %31 = ptrtoint ptr %pm_period to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv24, ptr %pm_period, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end15.if.end25_crit_edge
  %pm_on26 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 40
  %32 = ptrtoint ptr %pm_on26 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pm_on26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool27.not = icmp eq i16 %33, 0
  %spec.select = select i1 %tobool27.not, i32 -22, i32 -115
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.else.cleanup_crit_edge, %if.then2, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ -115, %if.then2 ], [ -22, %if.else.cleanup_crit_edge ], [ %spec.select, %if.end25 ]
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %37(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getpower(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %prq, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %rec.i75 = alloca i16, align 2
  %rec.i71 = alloca i16, align 2
  %rec.i67 = alloca i16, align 2
  %rec.i = alloca i16, align 2
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %hw1 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #7
  %9 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %rec.i, align 2, !annotation !53
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %read_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %read_ltv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_ltv.i, align 4
  %call.i = call i32 %13(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1015, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i) #7
  %14 = ptrtoint ptr %rec.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rec.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i67) #7
  %16 = ptrtoint ptr %rec.i67 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %rec.i67, align 2, !annotation !53
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %read_ltv.i69 = getelementptr inbounds %struct.hermes_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %read_ltv.i69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_ltv.i69, align 4
  %call.i70 = call i32 %20(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1012, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i67) #7
  %21 = ptrtoint ptr %rec.i67 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rec.i67, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool7.not = icmp eq i32 %call.i70, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i71) #7
  %24 = ptrtoint ptr %rec.i71 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %rec.i71, align 2, !annotation !53
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %read_ltv.i73 = getelementptr inbounds %struct.hermes_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %read_ltv.i73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_ltv.i73, align 4
  %call.i74 = call i32 %28(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1011, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i71) #7
  %29 = ptrtoint ptr %rec.i71 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rec.i71, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool11.not = icmp eq i32 %call.i74, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i75) #7
  %32 = ptrtoint ptr %rec.i75 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %rec.i75, align 2, !annotation !53
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %read_ltv.i77 = getelementptr inbounds %struct.hermes_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %read_ltv.i77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_ltv.i77, align 4
  %call.i78 = call i32 %36(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1013, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i75) #7
  %37 = ptrtoint ptr %rec.i75 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rec.i75, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool15.not = icmp eq i32 %call.i78, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  %conv = zext i1 %tobool18.not to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %prq, i32 0, i32 2
  %39 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %disabled, align 1
  %flags19 = getelementptr inbounds %struct.iw_param, ptr %prq, i32 0, i32 3
  %40 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags19, align 2
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %42)
  %cmp21 = icmp eq i16 %42, 8192
  %. = select i1 %cmp21, i16 8192, i16 4096
  %storemerge.in.in.sroa.speculated = select i1 %cmp21, i16 %31, i16 %23
  %storemerge.in = zext i16 %storemerge.in.in.sroa.speculated to i32
  %storemerge = mul nuw nsw i32 %storemerge.in, 1000
  %43 = ptrtoint ptr %prq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %prq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool31.not = icmp eq i16 %38, 0
  %.85 = select i1 %tobool31.not, i16 256, i16 768
  %44 = or i16 %., %.85
  %45 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %flags19, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i70, %if.end5.cleanup_crit_edge ], [ %call.i74, %if.end9.cleanup_crit_edge ], [ %call.i78, %if.end13.cleanup_crit_edge ], [ 0, %if.end17 ]
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %49(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_set_genie(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr noundef %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %4)
  %cmp = icmp ugt i16 %4, 2304
  br i1 %cmp, label %ndev_priv.exit.cleanup_crit_edge, label %lor.lhs.false

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp ne i16 %4, 0
  %cmp4 = icmp eq ptr %extra, null
  %or.cond = and i1 %cmp4, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool7.not = icmp eq i16 %4, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %if.then8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %if.end
  %conv10 = zext i16 %4 to i32
  %call11 = tail call ptr @kmemdup(ptr noundef %extra, i32 noundef %conv10, i32 noundef 3264) #7
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then8.cleanup_crit_edge, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.then8.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %buf.0 = phi ptr [ %call11, %if.then8.if.end16_crit_edge ], [ null, %if.end.if.end16_crit_edge ]
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %14(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @kfree(ptr noundef %buf.0) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %wpa_ie = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 38, i32 31
  %15 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wpa_ie, align 4
  call void @kfree(ptr noundef %16) #7
  %17 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.0, ptr %wpa_ie, align 4
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %length, align 4
  %conv24 = zext i16 %19 to i32
  %wpa_ie_len = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 39
  %20 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv24, ptr %wpa_ie_len, align 4
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i44 = getelementptr inbounds %struct.hermes_ops, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %unlock_irqrestore.i44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unlock_irqrestore.i44, align 4
  call void %24(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then20 ], [ 0, %if.end21 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %ndev_priv.exit.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_get_genie(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %wpa_ie_len = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 39
  %9 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wpa_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %wpa_ie = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 38, i32 31
  %11 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wpa_ie, align 4
  %cmp3 = icmp eq ptr %12, null
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %if.end5

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %length, align 4
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %length6 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %14 = ptrtoint ptr %length6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length6, align 4
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp8 = icmp sgt i32 %10, %conv
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = trunc i32 %10 to i16
  %16 = ptrtoint ptr %length6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv13, ptr %length6, align 4
  %17 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wpa_ie, align 4
  %19 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wpa_ie_len, align 4
  %21 = call ptr @memcpy(ptr %extra, ptr %18, i32 %20)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.then4, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end11 ], [ -7, %if.end5.cleanup_crit_edge ]
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %25(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_set_auth(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %hw1 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %flags3 = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags3, align 2
  %11 = and i16 %10, 4095
  %and = zext i16 %11 to i32
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and, label %sw.default [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %if.end.cleanup_crit_edge93
    i32 2, label %if.end.cleanup_crit_edge94
    i32 8, label %if.end.cleanup_crit_edge95
    i32 10, label %if.end.cleanup_crit_edge96
    i32 5, label %if.end.cleanup_crit_edge97
    i32 12, label %sw.bb4
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
    i32 6, label %sw.bb24
    i32 7, label %sw.bb38
  ]

if.end.cleanup_crit_edge97:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge96:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge95:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge94:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge93:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp5 = icmp eq i32 %14, 2
  %spec.select = select i1 %cmp5, i32 -22, i32 -115
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wrqu, align 4
  %key_mgmt = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 42
  %17 = trunc i32 %16 to i8
  %18 = ptrtoint ptr %key_mgmt to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %key_mgmt, align 4
  %bf.value = shl i8 %17, 3
  %bf.shl = and i8 %bf.value, 56
  %bf.clear = and i8 %bf.load, -57
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %key_mgmt, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %19 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %tkip_cm_active18 = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 42
  %21 = ptrtoint ptr %tkip_cm_active18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load19 = load i8, ptr %tkip_cm_active18, align 4
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set16 = or i8 %bf.load19, 64
  %22 = ptrtoint ptr %tkip_cm_active18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.set16, ptr %tkip_cm_active18, align 4
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %cmd_wait.i = getelementptr inbounds %struct.hermes_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %cmd_wait.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_wait.i, align 4
  %call.i = call i32 %26(ptr noundef %hw1, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null) #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear20 = and i8 %bf.load19, -65
  %27 = ptrtoint ptr %tkip_cm_active18 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear20, ptr %tkip_cm_active18, align 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %cmd_wait.i86 = getelementptr inbounds %struct.hermes_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %cmd_wait.i86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_wait.i86, align 4
  %call.i87 = call i32 %31(ptr noundef %hw1, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null) #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  %32 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wrqu, align 4
  %and26 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else29, label %if.then28

if.then28:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %wep_restrict = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %34 = ptrtoint ptr %wep_restrict to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %wep_restrict, align 4
  br label %cleanup

if.else29:                                        ; preds = %sw.bb24
  %and31 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else29.cleanup_crit_edge, label %if.then33

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  %wep_restrict34 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %35 = ptrtoint ptr %wep_restrict34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %wep_restrict34, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  %has_wpa = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %36 = ptrtoint ptr %has_wpa to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load39 = load i16, ptr %has_wpa, align 2
  %37 = and i16 %bf.load39, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool41.not = icmp eq i16 %37, 0
  %38 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool53.not = icmp eq i32 %39, 0
  br i1 %tobool41.not, label %if.else51, label %if.then42

if.then42:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  %wpa_enabled = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 42
  %40 = ptrtoint ptr %wpa_enabled to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load45 = load i8, ptr %wpa_enabled, align 4
  %bf.shl47 = select i1 %tobool53.not, i8 0, i8 -128
  %bf.clear48 = and i8 %bf.load45, 127
  %bf.set49 = or i8 %bf.clear48, %bf.shl47
  store i8 %bf.set49, ptr %wpa_enabled, align 4
  br label %cleanup

if.else51:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select83 = select i1 %tobool53.not, i32 -115, i32 -95
  %wpa_enabled56 = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 42
  %41 = ptrtoint ptr %wpa_enabled56 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load57 = load i8, ptr %wpa_enabled56, align 4
  %bf.clear58 = and i8 %bf.load57, 127
  store i8 %bf.clear58, ptr %wpa_enabled56, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else51, %if.then42, %if.then33, %if.else29.cleanup_crit_edge, %if.then28, %if.else, %if.then13, %sw.bb9, %sw.bb4, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge93, %if.end.cleanup_crit_edge94, %if.end.cleanup_crit_edge95, %if.end.cleanup_crit_edge96, %if.end.cleanup_crit_edge97, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ -95, %sw.default ], [ -115, %if.then42 ], [ %spec.select83, %if.else51 ], [ -115, %if.then28 ], [ -115, %if.then33 ], [ %call.i, %if.then13 ], [ %call.i87, %if.else ], [ -115, %sw.bb9 ], [ -115, %if.end.cleanup_crit_edge ], [ -115, %if.end.cleanup_crit_edge93 ], [ -115, %if.end.cleanup_crit_edge94 ], [ -115, %if.end.cleanup_crit_edge95 ], [ -115, %if.end.cleanup_crit_edge96 ], [ -115, %if.end.cleanup_crit_edge97 ], [ %spec.select, %sw.bb4 ], [ -22, %if.else29.cleanup_crit_edge ]
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %45(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_get_auth(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %flags2 = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags2, align 2
  %11 = and i16 %10, 4095
  %and = zext i16 %11 to i32
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb3
    i32 6, label %sw.bb9
    i32 7, label %sw.bb14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %key_mgmt = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 42
  %13 = ptrtoint ptr %key_mgmt to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %key_mgmt, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tkip_cm_active = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 42
  %14 = ptrtoint ptr %tkip_cm_active to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load4 = load i8, ptr %tkip_cm_active, align 4
  %bf.lshr5 = lshr i8 %bf.load4, 6
  %bf.clear6 = and i8 %bf.lshr5, 1
  %bf.cast7 = zext i8 %bf.clear6 to i32
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %wep_restrict = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %15 = ptrtoint ptr %wep_restrict to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %wep_restrict, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %wpa_enabled = getelementptr inbounds %struct.wiphy, ptr %1, i32 2, i32 42
  %17 = ptrtoint ptr %wpa_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load15 = load i8, ptr %wpa_enabled, align 4
  %bf.lshr16 = lshr i8 %bf.load15, 7
  %bf.cast17 = zext i8 %bf.lshr16 to i32
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb14, %sw.bb9, %sw.bb3, %sw.bb
  %.sink = phi i32 [ %bf.cast17, %sw.bb14 ], [ %bf.cast7, %sw.bb3 ], [ %bf.cast, %sw.bb ], [ %., %sw.bb9 ]
  %18 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %wrqu, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split, %if.end.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %22(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_set_encodeext(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr noundef %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %alg1 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %2 = ptrtoint ptr %alg1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup93_crit_edge

ndev_priv.exit.cleanup93_crit_edge:               ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end:                                           ; preds = %ndev_priv.exit
  %flags4 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags4, align 2
  %13 = and i16 %12, 255
  %and = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp9 = icmp ugt i16 %13, 4
  br i1 %cmp9, label %lor.lhs.false.cleanup93_crit_edge, label %if.end12

lor.lhs.false.cleanup93_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nsw i32 %and, -1
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_key = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 28
  %14 = ptrtoint ptr %tx_key to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_key, align 2
  %conv13 = zext i16 %15 to i32
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end12
  %idx.0 = phi i32 [ %dec, %if.end12 ], [ %conv13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool18.not.inv = icmp slt i16 %12, 0
  %narrow = select i1 %tobool18.not.inv, i16 0, i16 %3
  %has_wpa = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %16 = ptrtoint ptr %has_wpa to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %has_wpa, align 2
  %17 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool21.not = icmp eq i16 %17, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %narrow)
  %cmp22.not = icmp eq i16 %narrow, 2
  %or.cond = select i1 %tobool21.not, i1 true, i1 %cmp22.not
  br i1 %or.cond, label %if.end14.if.end28_crit_edge, label %if.then24

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %tx_key25 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 28
  %18 = ptrtoint ptr %tx_key25 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_key25, align 2
  %conv26 = zext i16 %19 to i32
  %call27 = call i32 @orinoco_clear_tkip_key(ptr noundef %priv.i.i.i, i32 noundef %conv26) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end14.if.end28_crit_edge
  %20 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %extra, align 4
  %and29 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.then41_crit_edge, label %if.then31

if.end28.if.then41_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then31:                                        ; preds = %if.end28
  %conv32 = trunc i32 %idx.0 to i16
  %tx_key33 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 28
  %22 = ptrtoint ptr %tx_key33 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv32, ptr %tx_key33, align 2
  br i1 %cmp22.not, label %if.then31.sw.bb54_crit_edge, label %lor.rhs

if.then31.sw.bb54_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54

lor.rhs:                                          ; preds = %if.then31
  %key_len = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %23 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp37 = icmp eq i16 %24, 0
  br i1 %cmp37, label %lor.rhs.cleanup93_crit_edge, label %lor.rhs.if.then41_crit_edge

lor.rhs.if.then41_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.rhs.cleanup93_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.then41:                                        ; preds = %lor.rhs.if.then41_crit_edge, %if.end28.if.then41_crit_edge
  %25 = zext i16 %narrow to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %narrow, label %if.then41.cleanup93_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb43
    i16 2, label %if.then41.sw.bb54_crit_edge
  ]

if.then41.sw.bb54_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54

if.then41.cleanup93_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

sw.bb:                                            ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %encode_alg = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %encode_alg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %encode_alg, align 4
  %arrayidx.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree_sensitive(ptr noundef %28) #7
  %seq4.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 1
  %29 = ptrtoint ptr %seq4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %seq4.i, align 4
  call void @kfree_sensitive(ptr noundef %30) #7
  %cipher.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 5
  %31 = ptrtoint ptr %cipher.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cipher.i, align 4
  %32 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 16)
  br label %cleanup93

sw.bb43:                                          ; preds = %if.then41
  %key_len44 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %33 = ptrtoint ptr %key_len44 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %key_len44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp46 = icmp eq i16 %34, 0
  br i1 %cmp46, label %sw.bb43.cleanup93_crit_edge, label %if.end49

sw.bb43.cleanup93_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end49:                                         ; preds = %sw.bb43
  %encode_alg50 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %encode_alg50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %encode_alg50, align 4
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %36 = ptrtoint ptr %key_len44 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %key_len44, align 2
  %conv52 = zext i16 %37 to i32
  %arrayidx.i149 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0
  %38 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i149, align 4
  call void @kfree_sensitive(ptr noundef %39) #7
  %seq4.i150 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 1
  %40 = ptrtoint ptr %seq4.i150 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seq4.i150, align 4
  call void @kfree_sensitive(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i151 = icmp eq i16 %37, 0
  br i1 %tobool.not.i151, label %if.end16.i.thread, label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end49
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv52, i32 noundef 2848) #12
  %42 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i.i.i, ptr %arrayidx.i149, align 4
  %tobool11.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool11.not.i, label %nomem.i, label %if.then41.i

if.end16.i.thread:                                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.i149, align 4
  %44 = ptrtoint ptr %seq4.i150 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %seq4.i150, align 4
  %key_len36.i152162 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 2
  %45 = ptrtoint ptr %key_len36.i152162 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv52, ptr %key_len36.i152162, align 4
  %seq_len39.i153163 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 3
  %46 = ptrtoint ptr %seq_len39.i153163 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %seq_len39.i153163, align 4
  br label %if.end45.i

if.then41.i:                                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %seq4.i150 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %seq4.i150, align 4
  %key_len36.i152 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 2
  %48 = ptrtoint ptr %key_len36.i152 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv52, ptr %key_len36.i152, align 4
  %seq_len39.i153 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 3
  %49 = ptrtoint ptr %seq_len39.i153 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %seq_len39.i153, align 4
  %50 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i149, align 4
  %52 = call ptr @memcpy(ptr %51, ptr %key, i32 %conv52)
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %if.end16.i.thread
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %37)
  %cmp.i = icmp ugt i16 %37, 5
  %cond.i = select i1 %cmp.i, i32 1027077, i32 1027073
  br label %orinoco_set_key.exit

nomem.i:                                          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %key_len70.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 2
  %53 = ptrtoint ptr %key_len70.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %key_len70.i, align 4
  %seq_len73.i = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 3
  %54 = ptrtoint ptr %seq_len73.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %seq_len73.i, align 4
  br label %orinoco_set_key.exit

orinoco_set_key.exit:                             ; preds = %nomem.i, %if.end45.i
  %.sink.i = phi i32 [ %cond.i, %if.end45.i ], [ 0, %nomem.i ]
  %cipher.i155 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 5
  %55 = ptrtoint ptr %cipher.i155 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink.i, ptr %cipher.i155, align 4
  br label %cleanup93

sw.bb54:                                          ; preds = %if.then41.sw.bb54_crit_edge, %if.then31.sw.bb54_crit_edge
  %56 = ptrtoint ptr %has_wpa to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load56 = load i16, ptr %has_wpa, align 2
  %57 = and i16 %bf.load56, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool60.not = icmp eq i16 %57, 0
  br i1 %tobool60.not, label %sw.bb54.cleanup93_crit_edge, label %lor.lhs.false61

sw.bb54.cleanup93_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

lor.lhs.false61:                                  ; preds = %sw.bb54
  %key_len62 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %58 = ptrtoint ptr %key_len62 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %key_len62, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %59)
  %cmp64 = icmp ugt i16 %59, 32
  br i1 %cmp64, label %lor.lhs.false61.cleanup93_crit_edge, label %if.end67

lor.lhs.false61.cleanup93_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end67:                                         ; preds = %lor.lhs.false61
  %encode_alg68 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %encode_alg68 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %encode_alg68, align 4
  %61 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %extra, align 4
  %and70 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %rx_seq = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 2
  %spec.select147 = select i1 %tobool71.not, ptr null, ptr %rx_seq
  %key74 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %63 = ptrtoint ptr %key_len62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %key_len62, align 2
  %conv77 = zext i16 %64 to i32
  %call78 = call fastcc i32 @orinoco_set_key(ptr noundef %priv.i.i.i, i32 noundef %idx.0, i32 noundef 2, ptr noundef %key74, i32 noundef %conv77, ptr noundef %spec.select147, i32 noundef 8)
  %65 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %extra, align 4
  %and80 = and i32 %66, 8
  %arrayidx81 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0
  %67 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx81, align 4
  %key_len85 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 2
  %69 = ptrtoint ptr %key_len85 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %key_len85, align 4
  %call86 = call i32 @__orinoco_hw_set_tkip_key(ptr noundef %priv.i.i.i, i32 noundef %idx.0, i32 noundef %and80, ptr noundef %68, i32 noundef %70, ptr noundef %spec.select147, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end67.cleanup93_crit_edge, label %do.end

if.end67.cleanup93_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

do.end:                                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, i32 noundef %call86) #10
  br label %cleanup93

cleanup93:                                        ; preds = %do.end, %if.end67.cleanup93_crit_edge, %lor.lhs.false61.cleanup93_crit_edge, %sw.bb54.cleanup93_crit_edge, %orinoco_set_key.exit, %sw.bb43.cleanup93_crit_edge, %sw.bb, %if.then41.cleanup93_crit_edge, %lor.rhs.cleanup93_crit_edge, %lor.lhs.false.cleanup93_crit_edge, %ndev_priv.exit.cleanup93_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup93_crit_edge ], [ -22, %lor.lhs.false.cleanup93_crit_edge ], [ -22, %if.then41.cleanup93_crit_edge ], [ -22, %sw.bb43.cleanup93_crit_edge ], [ -22, %lor.lhs.false61.cleanup93_crit_edge ], [ -22, %sw.bb54.cleanup93_crit_edge ], [ %call86, %do.end ], [ 0, %if.end67.cleanup93_crit_edge ], [ -115, %sw.bb ], [ -115, %orinoco_set_key.exit ], [ -115, %lor.rhs.cleanup93_crit_edge ]
  %71 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %74(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_get_encodeext(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef writeonly %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length, align 4
  %conv = zext i16 %10 to i32
  %sub = add nsw i32 %conv, -40
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %10)
  %cmp2 = icmp ult i16 %10, 40
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags6 = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags6, align 2
  %13 = and i16 %12, 255
  %and = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp11 = icmp ugt i16 %13, 4
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nsw i32 %and, -1
  br label %if.end16

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %tx_key = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 28
  %14 = ptrtoint ptr %tx_key to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_key, align 2
  %conv15 = zext i16 %15 to i32
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end14
  %idx.0 = phi i32 [ %dec, %if.end14 ], [ %conv15, %if.else ]
  %16 = trunc i32 %idx.0 to i16
  %conv17 = add i16 %16, 1
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv17, ptr %flags6, align 2
  %18 = call ptr @memset(ptr %extra, i32 0, i32 40)
  %encode_alg = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %encode_alg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %encode_alg, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %20, label %if.end16.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb38
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags6, align 2
  %24 = or i16 %23, -32768
  store i16 %24, ptr %flags6, align 2
  br label %cleanup

sw.bb22:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %alg23 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %25 = ptrtoint ptr %alg23 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %alg23, align 4
  %arrayidx = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0
  %key_len24 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 2
  %26 = ptrtoint ptr %key_len24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_len24, align 4
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 %sub)
  %conv27 = trunc i32 %28 to i16
  %key_len28 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %29 = ptrtoint ptr %key_len28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv27, ptr %key_len28, align 2
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %conv33 = and i32 %28, 65535
  %32 = call ptr @memcpy(ptr %key, ptr %31, i32 %conv33)
  br label %cleanup

sw.bb38:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %alg39 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %33 = ptrtoint ptr %alg39 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2, ptr %alg39, align 4
  %arrayidx41 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0
  %key_len42 = getelementptr %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 29, i32 %idx.0, i32 2
  %34 = ptrtoint ptr %key_len42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key_len42, align 4
  %36 = call i32 @llvm.smin.i32(i32 %35, i32 %sub)
  %conv50 = trunc i32 %36 to i16
  %key_len51 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %37 = ptrtoint ptr %key_len51 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv50, ptr %key_len51, align 2
  %key52 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx41, align 4
  %conv58 = and i32 %36, 65535
  %40 = call ptr @memcpy(ptr %key52, ptr %39, i32 %conv58)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %sw.bb22, %sw.bb, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %sw.bb38 ], [ 0, %sw.bb22 ], [ 0, %sw.bb ]
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %44(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_hw_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__orinoco_hw_set_wap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_hw_get_current_bssid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_hw_disassociate(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_hw_get_essid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_get_bitratemode(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @orinoco_get_ratemode_cfg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_hw_get_act_bitrate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orinoco_clear_tkip_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orinoco_set_key(ptr nocapture noundef %priv, i32 noundef %index, i32 noundef %alg, ptr nocapture noundef readonly %key, i32 noundef %key_len, ptr nocapture noundef readonly %seq, i32 noundef %seq_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #7
  %seq4 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %index, i32 1
  %2 = ptrtoint ptr %seq4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seq4, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_len)
  %tobool.not = icmp eq i32 %key_len, 0
  br i1 %tobool.not, label %if.else, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %key_len, i32 noundef 2848) #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end8.i.i.nomem_crit_edge, label %if.end8.i.i.if.end16_crit_edge

if.end8.i.i.if.end16_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end8.i.i.nomem_crit_edge:                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nomem

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end8.i.i.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_len)
  %tobool17.not = icmp eq i32 %seq_len, 0
  br i1 %tobool17.not, label %if.else29, label %if.end8.i.i148

if.end8.i.i148:                                   ; preds = %if.end16
  %call9.i.i147 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %seq_len, i32 noundef 2848) #12
  %6 = ptrtoint ptr %seq4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i147, ptr %seq4, align 4
  %tobool26.not = icmp eq ptr %call9.i.i147, null
  br i1 %tobool26.not, label %free_key, label %if.end8.i.i148.if.end33_crit_edge

if.end8.i.i148.if.end33_crit_edge:                ; preds = %if.end8.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.else29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %seq4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %seq4, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.end8.i.i148.if.end33_crit_edge
  %key_len36 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %index, i32 2
  %8 = ptrtoint ptr %key_len36 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %key_len, ptr %key_len36, align 4
  %seq_len39 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %index, i32 3
  %9 = ptrtoint ptr %seq_len39 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %seq_len, ptr %seq_len39, align 4
  br i1 %tobool.not, label %if.end33.if.end45_crit_edge, label %if.then41

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = call ptr @memcpy(ptr %11, ptr %key, i32 %key_len)
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end33.if.end45_crit_edge
  br i1 %tobool17.not, label %if.end45.if.end51_crit_edge, label %if.then47

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %seq4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seq4, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %seq, i32 %seq_len)
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end45.if.end51_crit_edge
  %16 = zext i32 %alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %alg, label %sw.default [
    i32 2, label %if.end51.return_crit_edge
    i32 1, label %sw.bb54
  ]

if.end51.return_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb54:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %key_len)
  %cmp = icmp sgt i32 %key_len, 5
  %cond = select i1 %cmp, i32 1027077, i32 1027073
  br label %return

sw.default:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

free_key:                                         ; preds = %if.end8.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %18) #7
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx, align 4
  br label %nomem

nomem:                                            ; preds = %free_key, %if.end8.i.i.nomem_crit_edge
  %key_len70 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %index, i32 2
  %20 = ptrtoint ptr %key_len70 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %key_len70, align 4
  %seq_len73 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %index, i32 3
  %21 = ptrtoint ptr %seq_len73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %seq_len73, align 4
  br label %return

return:                                           ; preds = %nomem, %sw.default, %sw.bb54, %if.end51.return_crit_edge
  %.sink = phi i32 [ %cond, %sw.bb54 ], [ 0, %sw.default ], [ 0, %nomem ], [ 1027074, %if.end51.return_crit_edge ]
  %retval.0 = phi i32 [ 0, %sw.bb54 ], [ 0, %sw.default ], [ -12, %nomem ], [ 0, %if.end51.return_crit_edge ]
  %cipher = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %index, i32 5
  %22 = ptrtoint ptr %cipher to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %cipher, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__orinoco_hw_setup_wepkeys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__orinoco_hw_set_tkip_key(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_reset(ptr noundef %dev, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call1, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %info, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -29727, i16 %3)
  %cmp = icmp eq i16 %3, -29727
  br i1 %cmp, label %do.end, label %do.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %dev) #10
  %reset_work = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  tail call void @orinoco_reset(ptr noundef %reset_work) #7
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %dev) #10
  %reset_work12 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %reset_work12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %ndev_priv.exit.cleanup_crit_edge ], [ 0, %do.end7 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setport3(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %11 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %has_ibss = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %12 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %has_ibss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear = and i16 %bf.load, -2
  %13 = ptrtoint ptr %has_ibss to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.clear, ptr %has_ibss, align 2
  br label %if.then18

sw.bb5:                                           ; preds = %if.end
  %has_port3 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %14 = ptrtoint ptr %has_port3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load6 = load i16, ptr %has_port3, align 2
  %15 = and i16 %bf.load6, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool10.not = icmp eq i16 %15, 0
  br i1 %tobool10.not, label %sw.bb5.cleanup_crit_edge, label %if.end12

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set16 = or i16 %bf.load6, 1
  %16 = ptrtoint ptr %has_port3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.set16, ptr %has_port3, align 2
  br label %if.then18

if.then18:                                        ; preds = %if.end12, %if.end3
  call void @set_port_type(ptr noundef %priv.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %ndev_priv.exit.cleanup_crit_edge ], [ -115, %if.then18 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %20(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getport3(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef writeonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %prefer_port3 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %2 = ptrtoint ptr %prefer_port3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %prefer_port3, align 2
  %bf.clear = and i16 %bf.load, 1
  %bf.cast = zext i16 %bf.clear to i32
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.cast, ptr %extra, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setpreamble(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %has_preamble = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %3 = ptrtoint ptr %has_preamble to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %has_preamble, align 2
  %4 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %extra, align 4
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %10(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %11 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end3, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp ne i32 %6, 0
  %spec.select = zext i1 %tobool4.not to i16
  %13 = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 44
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.select, ptr %13, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -115, %if.end3 ], [ -16, %if.end.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %18(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %ndev_priv.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getpreamble(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef writeonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %has_preamble = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 24
  %2 = ptrtoint ptr %has_preamble to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %has_preamble, align 2
  %3 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %ndev_priv.exit.cleanup_crit_edge, label %if.end

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %preamble = getelementptr inbounds %struct.orinoco_private, ptr %priv.i.i.i, i32 0, i32 44
  %4 = ptrtoint ptr %preamble to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %preamble, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %extra, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %ndev_priv.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_setibssport(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !53
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %8(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %9 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 86
  %ibss_port = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %ibss_port to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %3, ptr %ibss_port, align 4
  call void @set_port_type(ptr noundef %priv.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -115, %if.end ], [ -16, %ndev_priv.exit.cleanup_crit_edge ]
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %15(ptr noundef %lock.i, ptr noundef nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getibssport(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef writeonly %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ibss_port = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 31, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %ibss_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ibss_port, align 4
  %4 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %extra, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orinoco_ioctl_getrid(ptr noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %data, ptr noundef %extra) #0 align 64 {
entry:
  %length = alloca i16, align 2
  %flags2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end7.i.i, !prof !50

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %ndev_priv.exit, !prof !50

do.body4.i.i.i:                                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

ndev_priv.exit:                                   ; preds = %do.end7.i.i
  %hw1 = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 26
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #7
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %length, align 2, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags2) #7
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %flags2, align 4, !annotation !53
  %call3 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call3, label %if.end, label %ndev_priv.exit.cleanup_crit_edge

ndev_priv.exit.cleanup_crit_edge:                 ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ndev_priv.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1024, i16 %3)
  %cmp = icmp ult i16 %3, -1024
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 28
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 10
  call void %9(ptr noundef %lock.i, ptr noundef nonnull %flags2) #7
  %hw_unavailable.i = getelementptr inbounds %struct.wiphy, ptr %1, i32 1, i32 56, i32 12, i32 11
  %10 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  br i1 %tobool.not.i, label %if.end13, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  %read_ltv = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %read_ltv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ltv, align 4
  %call15 = call i32 %15(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext %3, i32 noundef 1024, ptr noundef nonnull %length, ptr noundef %extra) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length, align 2
  %sub = shl i16 %17, 1
  %mul = add i16 %sub, -2
  %18 = call i16 @llvm.umin.i16(i16 %mul, i16 1024)
  %length27 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %length27 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %length27, align 4
  br label %out

out:                                              ; preds = %if.end17, %if.end13.out_crit_edge
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end8.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %21, %out ], [ %13, %if.end8.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call15, %out ], [ -16, %if.end8.cleanup.sink.split_crit_edge ]
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %.sink, i32 0, i32 14
  %22 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %23(ptr noundef %lock.i, ptr noundef nonnull %flags2) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %ndev_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %ndev_priv.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @orinoco_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_port_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @orinoco_handler_def, !1, !"orinoco_handler_def", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 1405, i32 29}
!2 = !{ptr @orinoco_handler, !3, !"orinoco_handler", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 1349, i32 25}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 182, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @orinoco_ioctl_setwap._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @orinoco_ioctl_setwap._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 190, i32 3}
!12 = !{ptr @orinoco_ioctl_setwap._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @orinoco_ioctl_setwap._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 199, i32 3}
!16 = !{ptr @orinoco_ioctl_setwap._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @orinoco_ioctl_setwap._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 797, i32 5}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @orinoco_ioctl_set_encodeext._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @orinoco_ioctl_set_encodeext._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @orinoco_private_handler, !24, !"orinoco_private_handler", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 1393, i32 25}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 1109, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @orinoco_ioctl_reset._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @orinoco_ioctl_reset._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 1114, i32 3}
!32 = !{ptr @orinoco_ioctl_reset._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @orinoco_ioctl_reset._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @orinoco_privtab, !35, !"orinoco_privtab", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 1325, i32 34}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intersil/orinoco/wext.c", i32 98, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @orinoco_get_wireless_stats._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @orinoco_get_wireless_stats._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2157085853, i64 2157086341, i64 2157085890, i64 2157085946, i64 2157085980, i64 2157086004, i64 2157086045, i64 2157086066, i64 2157086094, i64 2157086128}
!52 = !{i64 2157079770, i64 2157080258, i64 2157079807, i64 2157079863, i64 2157079897, i64 2157079921, i64 2157079962, i64 2157079983, i64 2157080011, i64 2157080045}
!53 = !{!"auto-init"}
