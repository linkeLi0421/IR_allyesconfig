; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas_tf/cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas_tf/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lbtf_cmd_copyback\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_cmd_copyback\09\09\09\09"
module asm "\09.long\09__crc_lbtf_cmd_copyback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_cmd_copyback:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_cmd_copyback\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_cmd_copyback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__lbtf_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc___lbtf_cmd\09\09\09\09"
module asm "\09.long\09__crc___lbtf_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___lbtf_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22__lbtf_cmd\22\09\09\09\09\09"
module asm "__kstrtabns___lbtf_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbtf_cmd_response_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_cmd_response_rx\09\09\09\09"
module asm "\09.long\09__crc_lbtf_cmd_response_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_cmd_response_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_cmd_response_rx\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_cmd_response_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.channel_range = type { i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.cmd_ds_get_hw_spec = type <{ %struct.cmd_header, i16, i16, i16, i16, [6 x i8], i16, i16, i32, i32, i32, i32, i32 }>
%struct.lbtf_private = type { ptr, ptr, ptr, [2312 x i8], ptr, %struct.work_struct, %struct.work_struct, i32, i32, %struct.mutex, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.timer_list, i32, i32, i8, i16, [6 x i8], [32 x [6 x i8]], i32, i32, ptr, ptr, i16, i16, %struct.channel_range, i8, i32, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, %struct.lbtf_offset_value, i8, %struct.sk_buff_head, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.lbtf_offset_value = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.anon.127 = type { i64, i64, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cmd_ctrl_node = type { %struct.list_head, i32, ptr, i32, ptr, i16, %struct.wait_queue_head }
%struct.cmd_ds_802_11_rf_channel = type { %struct.cmd_header, i16, i16, i16, i16, [32 x i8] }
%struct.cmd_ds_802_11_beacon_set = type { %struct.cmd_header, i16, [440 x i8] }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.cmd_ds_802_11_beacon_control = type { %struct.cmd_header, i16, i16, i16 }
%struct.cmd_ds_mac_multicast_addr = type { %struct.cmd_header, i16, i16, [192 x i8] }
%struct.cmd_ds_set_mode = type { %struct.cmd_header, i16 }
%struct.cmd_ds_set_bssid = type <{ %struct.cmd_header, [6 x i8], i8 }>
%struct.cmd_ds_802_11_mac_address = type { %struct.cmd_header, i16, [6 x i8] }
%struct.cmd_ds_802_11_radio_control = type { %struct.cmd_header, i16, i16 }
%struct.cmd_ds_mac_control = type { %struct.cmd_header, i16, i16 }

@__kstrtab_lbtf_cmd_copyback = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_cmd_copyback = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_cmd_copyback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_cmd_copyback to i32), ptr @__kstrtab_lbtf_cmd_copyback, ptr @__kstrtabns_lbtf_cmd_copyback }, section "___ksymtab_gpl+lbtf_cmd_copyback", align 4
@lbtf_debug = external dso_local local_unnamed_addr global i32, align 4
@lbtf_update_hw_spec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017libertas_tf enter: %s()\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lbtf_update_hw_spec\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/marvell/libertas_tf/cmd.c\00", [49 x i8] zeroinitializer }, align 32
@lbtf_update_hw_spec._entry_ptr = internal global ptr @lbtf_update_hw_spec._entry, section ".printk_index", align 4
@lbtf_update_hw_spec._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016libertastf: %pM, fw %u.%u.%up%u, cap 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@lbtf_update_hw_spec._entry_ptr.5 = internal global ptr @lbtf_update_hw_spec._entry.3, section ".printk_index", align 4
@lbtf_update_hw_spec._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017libertas_tf cmd: GET_HW_SPEC: hardware interface 0x%x, hardware spec 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@lbtf_update_hw_spec._entry_ptr.8 = internal global ptr @lbtf_update_hw_spec._entry.6, section ".printk_index", align 4
@lbtf_update_hw_spec._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016libertas_tf: unidentified region code; using the default (USA)\0A\00", [62 x i8] zeroinitializer }, align 32
@lbtf_update_hw_spec._entry_ptr.11 = internal global ptr @lbtf_update_hw_spec._entry.9, section ".printk_index", align 4
@lbtf_update_hw_spec._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017libertas_tf leave: %s()\0A\00", [37 x i8] zeroinitializer }, align 32
@lbtf_update_hw_spec._entry_ptr.14 = internal global ptr @lbtf_update_hw_spec._entry.12, section ".printk_index", align 4
@lbtf_set_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbtf_set_channel\00", [47 x i8] zeroinitializer }, align 32
@lbtf_set_channel._entry_ptr = internal global ptr @lbtf_set_channel._entry, section ".printk_index", align 4
@lbtf_set_channel._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libertas_tf leave: %s(), ret %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lbtf_set_channel._entry_ptr.18 = internal global ptr @lbtf_set_channel._entry.16, section ".printk_index", align 4
@lbtf_beacon_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbtf_beacon_set\00", [16 x i8] zeroinitializer }, align 32
@lbtf_beacon_set._entry_ptr = internal global ptr @lbtf_beacon_set._entry, section ".printk_index", align 4
@lbtf_beacon_set._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_beacon_set._entry_ptr.21 = internal global ptr @lbtf_beacon_set._entry.20, section ".printk_index", align 4
@lbtf_beacon_set._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_beacon_set._entry_ptr.23 = internal global ptr @lbtf_beacon_set._entry.22, section ".printk_index", align 4
@lbtf_beacon_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbtf_beacon_ctrl\00", [47 x i8] zeroinitializer }, align 32
@lbtf_beacon_ctrl._entry_ptr = internal global ptr @lbtf_beacon_ctrl._entry, section ".printk_index", align 4
@lbtf_beacon_ctrl._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.24, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_beacon_ctrl._entry_ptr.26 = internal global ptr @lbtf_beacon_ctrl._entry.25, section ".printk_index", align 4
@lbtf_cmd_set_mac_multicast_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.27, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lbtf_cmd_set_mac_multicast_addr\00", [32 x i8] zeroinitializer }, align 32
@lbtf_cmd_set_mac_multicast_addr._entry_ptr = internal global ptr @lbtf_cmd_set_mac_multicast_addr._entry, section ".printk_index", align 4
@lbtf_cmd_set_mac_multicast_addr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017libertas_tf cmd: MULTICAST_ADR: setting %d addresses\0A\00", [40 x i8] zeroinitializer }, align 32
@lbtf_cmd_set_mac_multicast_addr._entry_ptr.30 = internal global ptr @lbtf_cmd_set_mac_multicast_addr._entry.28, section ".printk_index", align 4
@lbtf_cmd_set_mac_multicast_addr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.27, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_cmd_set_mac_multicast_addr._entry_ptr.32 = internal global ptr @lbtf_cmd_set_mac_multicast_addr._entry.31, section ".printk_index", align 4
@lbtf_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.33, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbtf_set_mode\00", [18 x i8] zeroinitializer }, align 32
@lbtf_set_mode._entry_ptr = internal global ptr @lbtf_set_mode._entry, section ".printk_index", align 4
@lbtf_set_mode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas_tf wext: Switching to mode: 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@lbtf_set_mode._entry_ptr.36 = internal global ptr @lbtf_set_mode._entry.34, section ".printk_index", align 4
@lbtf_set_mode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.33, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_set_mode._entry_ptr.38 = internal global ptr @lbtf_set_mode._entry.37, section ".printk_index", align 4
@lbtf_set_bssid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lbtf_set_bssid\00", [17 x i8] zeroinitializer }, align 32
@lbtf_set_bssid._entry_ptr = internal global ptr @lbtf_set_bssid._entry, section ".printk_index", align 4
@lbtf_set_bssid._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.39, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_set_bssid._entry_ptr.41 = internal global ptr @lbtf_set_bssid._entry.40, section ".printk_index", align 4
@lbtf_set_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.42, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lbtf_set_mac_address\00", [43 x i8] zeroinitializer }, align 32
@lbtf_set_mac_address._entry_ptr = internal global ptr @lbtf_set_mac_address._entry, section ".printk_index", align 4
@lbtf_set_mac_address._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.42, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_set_mac_address._entry_ptr.44 = internal global ptr @lbtf_set_mac_address._entry.43, section ".printk_index", align 4
@lbtf_set_radio_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lbtf_set_radio_control\00", [41 x i8] zeroinitializer }, align 32
@lbtf_set_radio_control._entry_ptr = internal global ptr @lbtf_set_radio_control._entry, section ".printk_index", align 4
@lbtf_set_radio_control._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas_tf cmd: RADIO_SET: radio %d, preamble %d\0A\00", [43 x i8] zeroinitializer }, align 32
@lbtf_set_radio_control._entry_ptr.48 = internal global ptr @lbtf_set_radio_control._entry.46, section ".printk_index", align 4
@lbtf_set_radio_control._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.45, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_set_radio_control._entry_ptr.50 = internal global ptr @lbtf_set_radio_control._entry.49, section ".printk_index", align 4
@lbtf_set_mac_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.51, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lbtf_set_mac_control\00", [43 x i8] zeroinitializer }, align 32
@lbtf_set_mac_control._entry_ptr = internal global ptr @lbtf_set_mac_control._entry, section ".printk_index", align 4
@lbtf_set_mac_control._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.51, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_set_mac_control._entry_ptr.53 = internal global ptr @lbtf_set_mac_control._entry.52, section ".printk_index", align 4
@lbtf_allocate_cmd_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.54, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lbtf_allocate_cmd_buffer\00", [39 x i8] zeroinitializer }, align 32
@lbtf_allocate_cmd_buffer._entry_ptr = internal global ptr @lbtf_allocate_cmd_buffer._entry, section ".printk_index", align 4
@lbtf_allocate_cmd_buffer._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017libertas_tf host: ALLOC_CMD_BUF: tempcmd_array is NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@lbtf_allocate_cmd_buffer._entry_ptr.57 = internal global ptr @lbtf_allocate_cmd_buffer._entry.55, section ".printk_index", align 4
@lbtf_allocate_cmd_buffer._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017libertas_tf host: ALLOC_CMD_BUF: ptempvirtualaddr is NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@lbtf_allocate_cmd_buffer._entry_ptr.60 = internal global ptr @lbtf_allocate_cmd_buffer._entry.58, section ".printk_index", align 4
@lbtf_allocate_cmd_buffer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cmdarray[i].cmdwait_q\00", [41 x i8] zeroinitializer }, align 32
@lbtf_allocate_cmd_buffer._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.54, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_allocate_cmd_buffer._entry_ptr.63 = internal global ptr @lbtf_allocate_cmd_buffer._entry.62, section ".printk_index", align 4
@lbtf_free_cmd_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.64, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lbtf_free_cmd_buffer\00", [43 x i8] zeroinitializer }, align 32
@lbtf_free_cmd_buffer._entry_ptr = internal global ptr @lbtf_free_cmd_buffer._entry, section ".printk_index", align 4
@lbtf_free_cmd_buffer._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas_tf host: FREE_CMD_BUF: cmd_array is NULL\0A\00", [43 x i8] zeroinitializer }, align 32
@lbtf_free_cmd_buffer._entry_ptr.67 = internal global ptr @lbtf_free_cmd_buffer._entry.65, section ".printk_index", align 4
@lbtf_free_cmd_buffer._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.64, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_free_cmd_buffer._entry_ptr.69 = internal global ptr @lbtf_free_cmd_buffer._entry.68, section ".printk_index", align 4
@lbtf_execute_next_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.70, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lbtf_execute_next_command\00", [38 x i8] zeroinitializer }, align 32
@lbtf_execute_next_command._entry_ptr = internal global ptr @lbtf_execute_next_command._entry, section ".printk_index", align 4
@lbtf_execute_next_command._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\011libertas_tf: EXEC_NEXT_CMD: already processing command!\0A\00", [37 x i8] zeroinitializer }, align 32
@lbtf_execute_next_command._entry_ptr.73 = internal global ptr @lbtf_execute_next_command._entry.71, section ".printk_index", align 4
@lbtf_execute_next_command._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017libertas_tf host: EXEC_NEXT_CMD: sending command 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@lbtf_execute_next_command._entry_ptr.76 = internal global ptr @lbtf_execute_next_command._entry.74, section ".printk_index", align 4
@lbtf_execute_next_command._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.70, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_execute_next_command._entry_ptr.78 = internal global ptr @lbtf_execute_next_command._entry.77, section ".printk_index", align 4
@lbtf_cmd_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.79, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lbtf_cmd_async\00", [17 x i8] zeroinitializer }, align 32
@lbtf_cmd_async._entry_ptr = internal global ptr @lbtf_cmd_async._entry, section ".printk_index", align 4
@lbtf_cmd_async._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.79, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_cmd_async._entry_ptr.81 = internal global ptr @lbtf_cmd_async._entry.80, section ".printk_index", align 4
@__lbtf_cmd._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.82, ptr @.str.2, i32 671, ptr null, ptr null }, align 1
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__lbtf_cmd\00", [21 x i8] zeroinitializer }, align 32
@__lbtf_cmd._entry_ptr = internal global ptr @__lbtf_cmd._entry, section ".printk_index", align 4
@__lbtf_cmd._entry.83 = internal constant %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 685, ptr null, ptr null }, align 1
@.str.84 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016libertas_tf: PREP_CMD: command 0x%04x interrupted by signal: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__lbtf_cmd._entry_ptr.85 = internal global ptr @__lbtf_cmd._entry.83, section ".printk_index", align 4
@__lbtf_cmd._entry.86 = internal constant %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 693, ptr null, ptr null }, align 1
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016libertas_tf: PREP_CMD: command 0x%04x failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__lbtf_cmd._entry_ptr.88 = internal global ptr @__lbtf_cmd._entry.86, section ".printk_index", align 4
@__lbtf_cmd._entry.89 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.82, ptr @.str.2, i32 699, ptr null, ptr null }, align 1
@__lbtf_cmd._entry_ptr.90 = internal global ptr @__lbtf_cmd._entry.89, section ".printk_index", align 4
@__kstrtab___lbtf_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns___lbtf_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab___lbtf_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__lbtf_cmd to i32), ptr @__kstrtab___lbtf_cmd, ptr @__kstrtabns___lbtf_cmd }, section "___ksymtab_gpl+__lbtf_cmd", align 4
@lbtf_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_lbtf_cmd_response_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_cmd_response_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_cmd_response_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_cmd_response_rx to i32), ptr @__kstrtab_lbtf_cmd_response_rx, ptr @__kstrtabns_lbtf_cmd_response_rx }, section "___ksymtab_gpl+lbtf_cmd_response_rx", align 4
@lbtf_process_rx_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.91, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lbtf_process_rx_command\00", [40 x i8] zeroinitializer }, align 32
@lbtf_process_rx_command._entry_ptr = internal global ptr @lbtf_process_rx_command._entry, section ".printk_index", align 4
@lbtf_process_rx_command._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017libertas_tf cmd: libertastf: cmd response 0x%04x, seq %d, size %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lbtf_process_rx_command._entry_ptr.94 = internal global ptr @lbtf_process_rx_command._entry.92, section ".printk_index", align 4
@lbtf_process_rx_command._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016libertas_tf: libertastf: reset failed\0A\00", [55 x i8] zeroinitializer }, align 32
@lbtf_process_rx_command._entry_ptr.97 = internal global ptr @lbtf_process_rx_command._entry.95, section ".printk_index", align 4
@lbtf_process_rx_command._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.91, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_process_rx_command._entry_ptr.99 = internal global ptr @lbtf_process_rx_command._entry.98, section ".printk_index", align 4
@channel_ranges = internal constant { [6 x %struct.channel_range], [46 x i8] } { [6 x %struct.channel_range] [%struct.channel_range { i8 16, i8 1, i8 12 }, %struct.channel_range { i8 32, i8 1, i8 12 }, %struct.channel_range { i8 48, i8 1, i8 14 }, %struct.channel_range { i8 64, i8 1, i8 14 }, %struct.channel_range { i8 49, i8 1, i8 14 }, %struct.channel_range { i8 50, i8 1, i8 14 }], [46 x i8] zeroinitializer }, align 32
@__lbtf_cleanup_and_insert_cmd._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.100, ptr @.str.2, i32 278, ptr null, ptr null }, align 1
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__lbtf_cleanup_and_insert_cmd\00", [34 x i8] zeroinitializer }, align 32
@__lbtf_cleanup_and_insert_cmd._entry_ptr = internal global ptr @__lbtf_cleanup_and_insert_cmd._entry, section ".printk_index", align 4
@__lbtf_cleanup_and_insert_cmd._entry.101 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.100, ptr @.str.2, i32 291, ptr null, ptr null }, align 1
@__lbtf_cleanup_and_insert_cmd._entry_ptr.102 = internal global ptr @__lbtf_cleanup_and_insert_cmd._entry.101, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lbtf_submit_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.103, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lbtf_submit_command\00", [44 x i8] zeroinitializer }, align 32
@lbtf_submit_command._entry_ptr = internal global ptr @lbtf_submit_command._entry, section ".printk_index", align 4
@lbtf_submit_command._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017libertas_tf cmd: DNLD_CMD: command 0x%04x, seq %d, size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lbtf_submit_command._entry_ptr.106 = internal global ptr @lbtf_submit_command._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DNLD_CMD\00", [23 x i8] zeroinitializer }, align 32
@lbtf_submit_command._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016libertas_tf: DNLD_CMD: hw_host_to_card failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@lbtf_submit_command._entry_ptr.110 = internal global ptr @lbtf_submit_command._entry.108, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lbtf_submit_command._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.103, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_submit_command._entry_ptr.112 = internal global ptr @lbtf_submit_command._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"libertas_tf %s: \00", [47 x i8] zeroinitializer }, align 32
@lbtf_deb_hex.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"libertas_tf\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbtf_deb_hex\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/marvell/libertas_tf/deb_defs.h\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__lbtf_cmd_async._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.119, ptr @.str.2, i32 611, ptr null, ptr null }, align 1
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__lbtf_cmd_async\00", [47 x i8] zeroinitializer }, align 32
@__lbtf_cmd_async._entry_ptr = internal global ptr @__lbtf_cmd_async._entry, section ".printk_index", align 4
@__lbtf_cmd_async._entry.120 = internal constant %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 614, ptr null, ptr null }, align 1
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libertas_tf host: PREP_CMD: card removed\0A\00", [52 x i8] zeroinitializer }, align 32
@__lbtf_cmd_async._entry_ptr.122 = internal global ptr @__lbtf_cmd_async._entry.120, section ".printk_index", align 4
@__lbtf_cmd_async._entry.123 = internal constant %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.2, i32 621, ptr null, ptr null }, align 1
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017libertas_tf host: PREP_CMD: cmdnode is NULL\0A\00", [49 x i8] zeroinitializer }, align 32
@__lbtf_cmd_async._entry_ptr.125 = internal global ptr @__lbtf_cmd_async._entry.123, section ".printk_index", align 4
@__lbtf_cmd_async._entry.126 = internal constant %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.2, i32 642, ptr null, ptr null }, align 1
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017libertas_tf host: PREP_CMD: command 0x%04x\0A\00", [50 x i8] zeroinitializer }, align 32
@__lbtf_cmd_async._entry_ptr.128 = internal global ptr @__lbtf_cmd_async._entry.126, section ".printk_index", align 4
@__lbtf_cmd_async._entry.129 = internal constant %struct.pi_entry { ptr @.str.130, ptr @.str.119, ptr @.str.2, i32 649, ptr null, ptr null }, align 1
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libertas_tf leave: %s(), ret %p\0A\00", [61 x i8] zeroinitializer }, align 32
@__lbtf_cmd_async._entry_ptr.131 = internal global ptr @__lbtf_cmd_async._entry.129, section ".printk_index", align 4
@lbtf_get_cmd_ctrl_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.132, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lbtf_get_cmd_ctrl_node\00", [41 x i8] zeroinitializer }, align 32
@lbtf_get_cmd_ctrl_node._entry_ptr = internal global ptr @lbtf_get_cmd_ctrl_node._entry, section ".printk_index", align 4
@lbtf_get_cmd_ctrl_node._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017libertas_tf host: GET_CMD_NODE: cmd_ctrl_node is not available\0A\00", [62 x i8] zeroinitializer }, align 32
@lbtf_get_cmd_ctrl_node._entry_ptr.135 = internal global ptr @lbtf_get_cmd_ctrl_node._entry.133, section ".printk_index", align 4
@lbtf_get_cmd_ctrl_node._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.132, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_get_cmd_ctrl_node._entry_ptr.137 = internal global ptr @lbtf_get_cmd_ctrl_node._entry.136, section ".printk_index", align 4
@lbtf_queue_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.138, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lbtf_queue_cmd\00", [17 x i8] zeroinitializer }, align 32
@lbtf_queue_cmd._entry_ptr = internal global ptr @lbtf_queue_cmd._entry, section ".printk_index", align 4
@lbtf_queue_cmd._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libertas_tf host: QUEUE_CMD: cmdnode is NULL\0A\00", [48 x i8] zeroinitializer }, align 32
@lbtf_queue_cmd._entry_ptr.141 = internal global ptr @lbtf_queue_cmd._entry.139, section ".printk_index", align 4
@lbtf_queue_cmd._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libertas_tf host: DNLD_CMD: cmd size is zero\0A\00", [48 x i8] zeroinitializer }, align 32
@lbtf_queue_cmd._entry_ptr.144 = internal global ptr @lbtf_queue_cmd._entry.142, section ".printk_index", align 4
@lbtf_queue_cmd._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.138, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017libertas_tf host: QUEUE_CMD: inserted command 0x%04x into cmdpendingq\0A\00", [55 x i8] zeroinitializer }, align 32
@lbtf_queue_cmd._entry_ptr.147 = internal global ptr @lbtf_queue_cmd._entry.145, section ".printk_index", align 4
@lbtf_queue_cmd._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.138, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_queue_cmd._entry_ptr.149 = internal global ptr @lbtf_queue_cmd._entry.148, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64]
@__sancov_gen_cov_switch_values.150 = internal global [7 x i64] [i64 5, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 16, i64 32771, i64 32773]
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 85, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 102, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 109, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 127, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 137, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 154, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 161, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 170, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 173, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 183, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 191, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 200, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 320, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 327, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 334, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 341, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 345, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 348, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 354, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 362, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 368, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 376, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 385, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 410, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 415, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 422, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 431, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 448, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 454, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 464, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 471, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 478, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 494, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 498, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 515, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 570, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 575, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 590, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 599, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 656, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 658, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 671, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 684, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 692, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 720, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 736, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 773, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 800, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [15 x i8] c"channel_ranges\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 14, i32 35 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 278, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 242, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 251, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 253, i32 29 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 259, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 268, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 96, i32 42 }
@___asan_gen_.441 = private unnamed_addr constant [55 x i8] c"../drivers/net/wireless/marvell/libertas_tf/deb_defs.h\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 97, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 611, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 614, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 621, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 642, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 649, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 531, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 543, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 549, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 208, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 211, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 216, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 225, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.498 = private constant [50 x i8] c"../drivers/net/wireless/marvell/libertas_tf/cmd.c\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 229, i32 2 }
@llvm.compiler.used = appending global [197 x ptr] [ptr @__ksymtab___lbtf_cmd, ptr @__ksymtab_lbtf_cmd_copyback, ptr @__ksymtab_lbtf_cmd_response_rx, ptr @__lbtf_cleanup_and_insert_cmd._entry, ptr @__lbtf_cleanup_and_insert_cmd._entry.101, ptr @__lbtf_cleanup_and_insert_cmd._entry_ptr, ptr @__lbtf_cleanup_and_insert_cmd._entry_ptr.102, ptr @__lbtf_cmd._entry, ptr @__lbtf_cmd._entry.83, ptr @__lbtf_cmd._entry.86, ptr @__lbtf_cmd._entry.89, ptr @__lbtf_cmd._entry_ptr, ptr @__lbtf_cmd._entry_ptr.85, ptr @__lbtf_cmd._entry_ptr.88, ptr @__lbtf_cmd._entry_ptr.90, ptr @__lbtf_cmd_async._entry, ptr @__lbtf_cmd_async._entry.120, ptr @__lbtf_cmd_async._entry.123, ptr @__lbtf_cmd_async._entry.126, ptr @__lbtf_cmd_async._entry.129, ptr @__lbtf_cmd_async._entry_ptr, ptr @__lbtf_cmd_async._entry_ptr.122, ptr @__lbtf_cmd_async._entry_ptr.125, ptr @__lbtf_cmd_async._entry_ptr.128, ptr @__lbtf_cmd_async._entry_ptr.131, ptr @lbtf_allocate_cmd_buffer._entry, ptr @lbtf_allocate_cmd_buffer._entry.55, ptr @lbtf_allocate_cmd_buffer._entry.58, ptr @lbtf_allocate_cmd_buffer._entry.62, ptr @lbtf_allocate_cmd_buffer._entry_ptr, ptr @lbtf_allocate_cmd_buffer._entry_ptr.57, ptr @lbtf_allocate_cmd_buffer._entry_ptr.60, ptr @lbtf_allocate_cmd_buffer._entry_ptr.63, ptr @lbtf_beacon_ctrl._entry, ptr @lbtf_beacon_ctrl._entry.25, ptr @lbtf_beacon_ctrl._entry_ptr, ptr @lbtf_beacon_ctrl._entry_ptr.26, ptr @lbtf_beacon_set._entry, ptr @lbtf_beacon_set._entry.20, ptr @lbtf_beacon_set._entry.22, ptr @lbtf_beacon_set._entry_ptr, ptr @lbtf_beacon_set._entry_ptr.21, ptr @lbtf_beacon_set._entry_ptr.23, ptr @lbtf_cmd_async._entry, ptr @lbtf_cmd_async._entry.80, ptr @lbtf_cmd_async._entry_ptr, ptr @lbtf_cmd_async._entry_ptr.81, ptr @lbtf_cmd_set_mac_multicast_addr._entry, ptr @lbtf_cmd_set_mac_multicast_addr._entry.28, ptr @lbtf_cmd_set_mac_multicast_addr._entry.31, ptr @lbtf_cmd_set_mac_multicast_addr._entry_ptr, ptr @lbtf_cmd_set_mac_multicast_addr._entry_ptr.30, ptr @lbtf_cmd_set_mac_multicast_addr._entry_ptr.32, ptr @lbtf_execute_next_command._entry, ptr @lbtf_execute_next_command._entry.71, ptr @lbtf_execute_next_command._entry.74, ptr @lbtf_execute_next_command._entry.77, ptr @lbtf_execute_next_command._entry_ptr, ptr @lbtf_execute_next_command._entry_ptr.73, ptr @lbtf_execute_next_command._entry_ptr.76, ptr @lbtf_execute_next_command._entry_ptr.78, ptr @lbtf_free_cmd_buffer._entry, ptr @lbtf_free_cmd_buffer._entry.65, ptr @lbtf_free_cmd_buffer._entry.68, ptr @lbtf_free_cmd_buffer._entry_ptr, ptr @lbtf_free_cmd_buffer._entry_ptr.67, ptr @lbtf_free_cmd_buffer._entry_ptr.69, ptr @lbtf_get_cmd_ctrl_node._entry, ptr @lbtf_get_cmd_ctrl_node._entry.133, ptr @lbtf_get_cmd_ctrl_node._entry.136, ptr @lbtf_get_cmd_ctrl_node._entry_ptr, ptr @lbtf_get_cmd_ctrl_node._entry_ptr.135, ptr @lbtf_get_cmd_ctrl_node._entry_ptr.137, ptr @lbtf_process_rx_command._entry, ptr @lbtf_process_rx_command._entry.92, ptr @lbtf_process_rx_command._entry.95, ptr @lbtf_process_rx_command._entry.98, ptr @lbtf_process_rx_command._entry_ptr, ptr @lbtf_process_rx_command._entry_ptr.94, ptr @lbtf_process_rx_command._entry_ptr.97, ptr @lbtf_process_rx_command._entry_ptr.99, ptr @lbtf_queue_cmd._entry, ptr @lbtf_queue_cmd._entry.139, ptr @lbtf_queue_cmd._entry.142, ptr @lbtf_queue_cmd._entry.145, ptr @lbtf_queue_cmd._entry.148, ptr @lbtf_queue_cmd._entry_ptr, ptr @lbtf_queue_cmd._entry_ptr.141, ptr @lbtf_queue_cmd._entry_ptr.144, ptr @lbtf_queue_cmd._entry_ptr.147, ptr @lbtf_queue_cmd._entry_ptr.149, ptr @lbtf_set_bssid._entry, ptr @lbtf_set_bssid._entry.40, ptr @lbtf_set_bssid._entry_ptr, ptr @lbtf_set_bssid._entry_ptr.41, ptr @lbtf_set_channel._entry, ptr @lbtf_set_channel._entry.16, ptr @lbtf_set_channel._entry_ptr, ptr @lbtf_set_channel._entry_ptr.18, ptr @lbtf_set_mac_address._entry, ptr @lbtf_set_mac_address._entry.43, ptr @lbtf_set_mac_address._entry_ptr, ptr @lbtf_set_mac_address._entry_ptr.44, ptr @lbtf_set_mac_control._entry, ptr @lbtf_set_mac_control._entry.52, ptr @lbtf_set_mac_control._entry_ptr, ptr @lbtf_set_mac_control._entry_ptr.53, ptr @lbtf_set_mode._entry, ptr @lbtf_set_mode._entry.34, ptr @lbtf_set_mode._entry.37, ptr @lbtf_set_mode._entry_ptr, ptr @lbtf_set_mode._entry_ptr.36, ptr @lbtf_set_mode._entry_ptr.38, ptr @lbtf_set_radio_control._entry, ptr @lbtf_set_radio_control._entry.46, ptr @lbtf_set_radio_control._entry.49, ptr @lbtf_set_radio_control._entry_ptr, ptr @lbtf_set_radio_control._entry_ptr.48, ptr @lbtf_set_radio_control._entry_ptr.50, ptr @lbtf_submit_command._entry, ptr @lbtf_submit_command._entry.104, ptr @lbtf_submit_command._entry.108, ptr @lbtf_submit_command._entry.111, ptr @lbtf_submit_command._entry_ptr, ptr @lbtf_submit_command._entry_ptr.106, ptr @lbtf_submit_command._entry_ptr.110, ptr @lbtf_submit_command._entry_ptr.112, ptr @lbtf_update_hw_spec._entry, ptr @lbtf_update_hw_spec._entry.12, ptr @lbtf_update_hw_spec._entry.3, ptr @lbtf_update_hw_spec._entry.6, ptr @lbtf_update_hw_spec._entry.9, ptr @lbtf_update_hw_spec._entry_ptr, ptr @lbtf_update_hw_spec._entry_ptr.11, ptr @lbtf_update_hw_spec._entry_ptr.14, ptr @lbtf_update_hw_spec._entry_ptr.5, ptr @lbtf_update_hw_spec._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.33, ptr @.str.35, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @lbtf_allocate_cmd_buffer.__key, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @channel_ranges, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_update_hw_spec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_update_hw_spec._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_update_hw_spec._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_update_hw_spec._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_update_hw_spec._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_channel._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_beacon_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_beacon_set._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_beacon_set._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_beacon_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_beacon_ctrl._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_cmd_set_mac_multicast_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_cmd_set_mac_multicast_addr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_cmd_set_mac_multicast_addr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_mode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_mode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_bssid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_bssid._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_mac_address._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_radio_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_radio_control._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_radio_control._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_mac_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_set_mac_control._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_allocate_cmd_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_allocate_cmd_buffer._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_allocate_cmd_buffer._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_allocate_cmd_buffer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_allocate_cmd_buffer._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_free_cmd_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_free_cmd_buffer._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_free_cmd_buffer._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_execute_next_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_execute_next_command._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_execute_next_command._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_execute_next_command._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_cmd_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_cmd_async._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_process_rx_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_process_rx_command._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_process_rx_command._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_process_rx_command._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ranges to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_submit_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_submit_command._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_submit_command._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_submit_command._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_get_cmd_ctrl_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_get_cmd_ctrl_node._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_get_cmd_ctrl_node._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_queue_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_queue_cmd._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_queue_cmd._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_queue_cmd._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_queue_cmd._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lbtf_cmd_copyback(ptr nocapture readnone %priv, i32 noundef %extra, ptr nocapture noundef readonly %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %extra to ptr
  %size = getelementptr inbounds %struct.cmd_header, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %size, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %size1 = getelementptr inbounds %struct.cmd_header, ptr %resp, i32 0, i32 1
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %size1, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = tail call i16 @llvm.umin.i16(i16 %3, i16 %6)
  %conv7 = zext i16 %7 to i32
  %8 = call ptr @memcpy(ptr %0, ptr %resp, i32 %conv7)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_update_hw_spec(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_get_hw_spec, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %cmd) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = call ptr @memset(ptr %cmd, i32 0, i32 46)
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %permanentaddr = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 5
  %current_addr = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 21
  %2 = call ptr @memcpy(ptr %permanentaddr, ptr %current_addr, i32 6)
  %3 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 11776, ptr %size, align 1
  %4 = ptrtoint ptr %cmd to i32
  %call11 = call i32 @__lbtf_cmd(ptr noundef %priv, i16 noundef zeroext 3, ptr noundef nonnull %cmd, i32 noundef 46, ptr noundef nonnull @lbtf_cmd_copyback, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %do.end3.do.body90_crit_edge

do.end3.do.body90_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

if.end13:                                         ; preds = %do.end3
  %fwcapinfo = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 12
  %5 = ptrtoint ptr %fwcapinfo to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %fwcapinfo, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %fwcapinfo14 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 8
  %8 = ptrtoint ptr %fwcapinfo14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fwcapinfo14, align 4
  %fwrelease = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 8
  %9 = ptrtoint ptr %fwrelease to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %fwrelease, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %fwrelease15 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 7
  %or = call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 8)
  %12 = ptrtoint ptr %fwrelease15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %fwrelease15, align 4
  %shr27 = lshr i32 %or, 24
  %shr30 = lshr i32 %or, 16
  %and31 = and i32 %shr30, 255
  %shr33 = lshr i32 %or, 8
  %and34 = and i32 %shr33, 255
  %and36 = and i32 %or, 255
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %permanentaddr, i32 noundef %shr27, i32 noundef %and31, i32 noundef %and34, i32 noundef %and36, i32 noundef %7) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %13 = load i32, ptr @lbtf_debug, align 4
  %and40 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %cmp41.not = icmp eq i32 %and40, 0
  br i1 %cmp41.not, label %if.end13.do.end53_crit_edge, label %do.end46

if.end13.do.end53_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

do.end46:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %hwifversion = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 1
  %14 = ptrtoint ptr %hwifversion to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %hwifversion, align 1
  %conv48 = zext i16 %15 to i32
  %version = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %version, align 1
  %conv49 = zext i16 %17 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv48, i32 noundef %conv49) #11
  br label %do.end53

do.end53:                                         ; preds = %do.end46, %if.end13.do.end53_crit_edge
  %regioncode = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 6
  %18 = ptrtoint ptr %regioncode to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %regioncode, align 1
  %20 = lshr i16 %19, 8
  %regioncode57 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 28
  %21 = ptrtoint ptr %regioncode57 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %regioncode57, align 2
  %trunc = trunc i16 %20 to i8
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %for.cond.5 [
    i8 16, label %do.end53.if.end76_crit_edge
    i8 32, label %do.end53.if.end76_crit_edge128
    i8 48, label %do.end53.if.end76_crit_edge129
    i8 49, label %do.end53.if.end76_crit_edge130
    i8 50, label %do.end53.if.end76_crit_edge131
    i8 64, label %do.end53.if.end76_crit_edge132
  ]

do.end53.if.end76_crit_edge132:                   ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end53.if.end76_crit_edge131:                   ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end53.if.end76_crit_edge130:                   ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end53.if.end76_crit_edge129:                   ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end53.if.end76_crit_edge128:                   ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end53.if.end76_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

for.cond.5:                                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %regioncode57 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 16, ptr %regioncode57, align 2
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %if.end76

if.end76:                                         ; preds = %for.cond.5, %do.end53.if.end76_crit_edge, %do.end53.if.end76_crit_edge128, %do.end53.if.end76_crit_edge129, %do.end53.if.end76_crit_edge130, %do.end53.if.end76_crit_edge131, %do.end53.if.end76_crit_edge132
  %24 = ptrtoint ptr %current_addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %current_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp80 = icmp eq i8 %25, -1
  br i1 %cmp80, label %if.then82, label %if.end76.if.end87_crit_edge

if.end76.if.end87_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %26 = call ptr @memcpy(ptr %current_addr, ptr %permanentaddr, i32 6)
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end76.if.end87_crit_edge
  %hw = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 1
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %perm_addr.i, ptr %current_addr, i32 6)
  %32 = ptrtoint ptr %regioncode57 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %regioncode57, align 2
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.150)
  switch i16 %33, label %if.end87.for.end.i_crit_edge [
    i16 50, label %for.end.fold.split29.i
    i16 32, label %for.end.fold.split.i
    i16 48, label %for.end.fold.split26.i
    i16 64, label %for.end.fold.split27.i
    i16 49, label %for.end.fold.split28.i
  ]

if.end87.for.end.i_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split26.i:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split27.i:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split28.i:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.fold.split29.i:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split29.i, %for.end.fold.split28.i, %for.end.fold.split27.i, %for.end.fold.split26.i, %for.end.fold.split.i, %if.end87.for.end.i_crit_edge
  %range.0.i = phi ptr [ getelementptr inbounds ([6 x %struct.channel_range], ptr @channel_ranges, i32 0, i32 1), %for.end.fold.split.i ], [ getelementptr inbounds ([6 x %struct.channel_range], ptr @channel_ranges, i32 0, i32 2), %for.end.fold.split26.i ], [ getelementptr inbounds ([6 x %struct.channel_range], ptr @channel_ranges, i32 0, i32 3), %for.end.fold.split27.i ], [ getelementptr inbounds ([6 x %struct.channel_range], ptr @channel_ranges, i32 0, i32 4), %for.end.fold.split28.i ], [ getelementptr inbounds ([6 x %struct.channel_range], ptr @channel_ranges, i32 0, i32 5), %for.end.fold.split29.i ], [ @channel_ranges, %if.end87.for.end.i_crit_edge ]
  %start.i = getelementptr inbounds %struct.channel_range, ptr %range.0.i, i32 0, i32 1
  %35 = ptrtoint ptr %start.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %start.i, align 1
  %end.i = getelementptr inbounds %struct.channel_range, ptr %range.0.i, i32 0, i32 2
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %end.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp824.i = icmp ult i8 %36, %38
  br i1 %cmp824.i, label %for.body10.preheader.i, label %for.end.i.do.body90_crit_edge

for.end.i.do.body90_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

for.body10.preheader.i:                           ; preds = %for.end.i
  %39 = zext i8 %36 to i32
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body10.preheader.i
  %indvars.iv.i = phi i32 [ %39, %for.body10.preheader.i ], [ %indvars.iv.next.i, %for.body10.i.for.body10.i_crit_edge ]
  %sub.i = add nsw i32 %indvars.iv.i, -1
  %flags.i = getelementptr %struct.lbtf_private, ptr %priv, i32 0, i32 32, i32 %sub.i, i32 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %flags.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %end.i, align 1
  %43 = zext i8 %42 to i32
  %cmp8.i = icmp ult i32 %indvars.iv.next.i, %43
  br i1 %cmp8.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.do.body90_crit_edge

for.body10.i.do.body90_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

do.body90:                                        ; preds = %for.body10.i.do.body90_crit_edge, %for.end.i.do.body90_crit_edge, %do.end3.do.body90_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %44 = load i32, ptr @lbtf_debug, align 4
  %and91 = and i32 %44, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 16386
  br i1 %cmp92, label %do.end97, label %do.body90.do.end102_crit_edge

do.body90.do.end102_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102

do.end97:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #11
  br label %do.end102

do.end102:                                        ; preds = %do.end97, %do.body90.do.end102_crit_edge
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %cmd) #8
  ret i32 %call11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__lbtf_cmd(ptr noundef %priv, i16 noundef zeroext %command, ptr nocapture noundef readonly %in_cmd, i32 noundef %in_cmd_size, ptr noundef %callback, i32 noundef %callback_arg) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and)
  %cmp = icmp eq i32 %and, 8193
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.82) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr noundef %in_cmd, i32 noundef %in_cmd_size, ptr noundef %callback, i32 noundef %callback_arg)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body9

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call4 to i32
  br label %do.body64

do.body9:                                         ; preds = %do.end3
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 680) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 682) #8
  %cmdwaitqwoken = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call4, i32 0, i32 5
  %2 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cmdwaitqwoken, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then21, label %do.body9.do.body44_crit_edge

do.body9.do.body44_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then21:                                        ; preds = %do.body9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %cmdwait_q = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call4, i32 0, i32 6
  %call23113 = call i32 @prepare_to_wait_event(ptr noundef %cmdwait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %5 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cmdwaitqwoken, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool25.not114 = icmp eq i16 %6, 0
  br i1 %tobool25.not114, label %if.then21.if.end27_crit_edge, label %if.then21.if.end33.thread108_crit_edge

if.then21.if.end33.thread108_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread108

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  br label %if.end27

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %if.then21.if.end27_crit_edge
  %call23115 = phi i32 [ %call23, %cleanup.if.end27_crit_edge ], [ %call23113, %if.then21.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23115)
  %tobool28.not = icmp eq i32 %call23115, 0
  br i1 %tobool28.not, label %cleanup, label %do.end39

cleanup:                                          ; preds = %if.end27
  call void @schedule() #8
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %cmdwait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %7 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cmdwaitqwoken, align 4
  %tobool25.not = icmp eq i16 %8, 0
  br i1 %tobool25.not, label %cleanup.if.end27_crit_edge, label %cleanup.if.end33.thread108_crit_edge

cleanup.if.end33.thread108_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread108

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end33.thread108:                               ; preds = %cleanup.if.end33.thread108_crit_edge, %if.then21.if.end33.thread108_crit_edge
  call void @finish_wait(ptr noundef %cmdwait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.body44

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  %conv = zext i16 %command to i32
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef %call23115) #11
  br label %do.body64

do.body44:                                        ; preds = %if.end33.thread108, %do.body9.do.body44_crit_edge
  %driver_lock = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 15
  %call49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %result = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call4, i32 0, i32 1
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool54.not = icmp eq i32 %10, 0
  br i1 %tobool54.not, label %do.body44.if.end62_crit_edge, label %do.end58

do.body44.if.end62_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end58:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %conv60 = zext i16 %command to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %conv60, i32 noundef %10) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end58, %do.body44.if.end62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %11 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %11, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and.i)
  %cmp.i98 = icmp eq i32 %and.i, 8193
  br i1 %cmp.i98, label %do.end.i, label %if.end62.do.end2.i_crit_edge

if.end62.do.end2.i_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.100) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.end62.do.end2.i_crit_edge
  %tobool.not.i = icmp eq ptr %call4, null
  br i1 %tobool.not.i, label %do.end2.i.do.body5.i_crit_edge, label %if.end4.i

do.end2.i.do.body5.i_crit_edge:                   ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

if.end4.i:                                        ; preds = %do.end2.i
  %callback.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call4, i32 0, i32 2
  %12 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %callback.i, align 4
  %callback_arg.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call4, i32 0, i32 3
  %13 = ptrtoint ptr %callback_arg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %callback_arg.i, align 4
  %cmdbuf.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call4, i32 0, i32 4
  %14 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdbuf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 2048)
  %cmdfreeq.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call4, ptr noundef %18, ptr noundef %cmdfreeq.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.do.body5.i_crit_edge

if.end4.i.do.body5.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmdfreeq.i, ptr %call4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call4, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call4, ptr %18, align 4
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.end.i.i.i, %if.end4.i.do.body5.i_crit_edge, %do.end2.i.do.body5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %23 = load i32, ptr @lbtf_debug, align 4
  %and6.i = and i32 %23, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 8194
  br i1 %cmp7.i, label %do.end10.i, label %do.body5.i.__lbtf_cleanup_and_insert_cmd.exit_crit_edge

do.body5.i.__lbtf_cleanup_and_insert_cmd.exit_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__lbtf_cleanup_and_insert_cmd.exit

do.end10.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.100) #11
  br label %__lbtf_cleanup_and_insert_cmd.exit

__lbtf_cleanup_and_insert_cmd.exit:               ; preds = %do.end10.i, %do.body5.i.__lbtf_cleanup_and_insert_cmd.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call49) #8
  br label %do.body64

do.body64:                                        ; preds = %__lbtf_cleanup_and_insert_cmd.exit, %do.end39, %if.then6
  %ret.0 = phi i32 [ %1, %if.then6 ], [ %call23115, %do.end39 ], [ %10, %__lbtf_cleanup_and_insert_cmd.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %24 = load i32, ptr @lbtf_debug, align 4
  %and65 = and i32 %24, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and65)
  %cmp66 = icmp eq i32 %and65, 8194
  br i1 %cmp66, label %do.end71, label %do.body64.do.end76_crit_edge

do.body64.do.end76_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

do.end71:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.82, i32 noundef %ret.0) #11
  br label %do.end76

do.end76:                                         ; preds = %do.end71, %do.body64.do.end76_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_set_channel(ptr noundef %priv, i8 noundef zeroext %channel) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_rf_channel, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %1 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %1, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %action = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %action to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 256, ptr %action, align 1
  %conv = zext i8 %channel to i16
  %3 = shl nuw i16 %conv, 8
  %channel4 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %channel4 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %channel4, align 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 12288, ptr %size, align 1
  %6 = ptrtoint ptr %cmd to i32
  %call12 = call i32 @__lbtf_cmd(ptr noundef %priv, i16 noundef zeroext 29, ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef nonnull @lbtf_cmd_copyback, i32 noundef %6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %7 = load i32, ptr @lbtf_debug, align 4
  %and14 = and i32 %7, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 16386
  br i1 %cmp15, label %do.end20, label %do.end3.do.end25_crit_edge

do.end3.do.end25_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end20:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call12) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %do.end3.do.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #8
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_beacon_set(ptr noundef %priv, ptr nocapture noundef readonly %beacon) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_beacon_set, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 450, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 450)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %1 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %1, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 440, i32 %3)
  %cmp4 = icmp ugt i32 %3, 440
  br i1 %cmp4, label %do.body6, label %if.end18

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and7 = and i32 %4, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 16386
  br i1 %cmp8, label %do.body6.cleanup.sink.split_crit_edge, label %do.body6.cleanup_crit_edge

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body6.cleanup.sink.split_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end18:                                         ; preds = %do.end3
  %add = add nuw nsw i32 %3, 10
  %conv = trunc i32 %add to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size20 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %size20 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %size20, align 1
  %conv22 = trunc i32 %3 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %len23 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_set, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %len23 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %len23, align 1
  %beacon24 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_set, ptr %cmd, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = call ptr @memcpy(ptr %beacon24, ptr %10, i32 %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %12 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %12, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16385
  br i1 %cmp.i, label %do.end.i, label %if.end18.do.end2.i_crit_edge

if.end18.do.end2.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.end18.do.end2.i_crit_edge
  %call3.i = call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext 203, ptr noundef nonnull %cmd, i32 noundef %add, ptr noundef null, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %13 = load i32, ptr @lbtf_debug, align 4
  %and5.i = and i32 %13, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 16386
  br i1 %cmp6.i, label %do.end9.i, label %do.end2.i.lbtf_cmd_async.exit_crit_edge

do.end2.i.lbtf_cmd_async.exit_crit_edge:          ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cmd_async.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %lbtf_cmd_async.exit

lbtf_cmd_async.exit:                              ; preds = %do.end9.i, %do.end2.i.lbtf_cmd_async.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %14 = load i32, ptr @lbtf_debug, align 4
  %and28 = and i32 %14, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 16386
  br i1 %cmp29, label %lbtf_cmd_async.exit.cleanup.sink.split_crit_edge, label %lbtf_cmd_async.exit.cleanup_crit_edge

lbtf_cmd_async.exit.cleanup_crit_edge:            ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lbtf_cmd_async.exit.cleanup.sink.split_crit_edge: ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lbtf_cmd_async.exit.cleanup.sink.split_crit_edge, %do.body6.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ -1, %do.body6.cleanup.sink.split_crit_edge ], [ 0, %lbtf_cmd_async.exit.cleanup.sink.split_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lbtf_cmd_async.exit.cleanup_crit_edge, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.body6.cleanup_crit_edge ], [ 0, %lbtf_cmd_async.exit.cleanup_crit_edge ], [ %.sink, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 450, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr nocapture noundef readonly %in_cmd, i32 noundef %in_cmd_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr noundef %in_cmd, i32 noundef %in_cmd_size, ptr noundef null, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %1 = load i32, ptr @lbtf_debug, align 4
  %and5 = and i32 %1, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 16386
  br i1 %cmp6, label %do.end9, label %do.end2.do.end13_crit_edge

do.end2.do.end13_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end9:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end9, %do.end2.do.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_beacon_ctrl(ptr noundef %priv, i1 noundef zeroext %beacon_enable, i32 noundef %beacon_int) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_beacon_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %cmd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %5 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %5, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3584, ptr %0, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %1, align 8
  %8 = select i1 %beacon_enable, i16 256, i16 0
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %2, align 2
  %conv5 = trunc i32 %beacon_int to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %12 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %12, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16385
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end2.i_crit_edge

do.end3.do.end2.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end3.do.end2.i_crit_edge
  %call3.i = call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext 176, ptr noundef nonnull %cmd, i32 noundef 14, ptr noundef null, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %13 = load i32, ptr @lbtf_debug, align 4
  %and5.i = and i32 %13, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 16386
  br i1 %cmp6.i, label %do.end9.i, label %do.end2.i.lbtf_cmd_async.exit_crit_edge

do.end2.i.lbtf_cmd_async.exit_crit_edge:          ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cmd_async.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %lbtf_cmd_async.exit

lbtf_cmd_async.exit:                              ; preds = %do.end9.i, %do.end2.i.lbtf_cmd_async.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %14 = load i32, ptr @lbtf_debug, align 4
  %and8 = and i32 %14, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 16386
  br i1 %cmp9, label %do.end14, label %lbtf_cmd_async.exit.do.end19_crit_edge

lbtf_cmd_async.exit.do.end19_crit_edge:           ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end14:                                         ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24) #11
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %lbtf_cmd_async.exit.do.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %cmd) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_complete_command(ptr noundef %priv, ptr noundef %cmd, i32 noundef %result) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %result1 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %result, ptr %result1, align 4
  %cmdwaitqwoken = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 5
  %1 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %cmdwaitqwoken, align 4
  %cmdwait_q = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %cmdwait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %callback = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %4, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 8193
  br i1 %cmp.i, label %do.end.i, label %if.then.do.end2.i_crit_edge

if.then.do.end2.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.100) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.then.do.end2.i_crit_edge
  %tobool.not.i = icmp eq ptr %cmd, null
  br i1 %tobool.not.i, label %do.end2.i.do.body5.i_crit_edge, label %if.end4.i

do.end2.i.do.body5.i_crit_edge:                   ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

if.end4.i:                                        ; preds = %do.end2.i
  %5 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %callback, align 4
  %callback_arg.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %callback_arg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %callback_arg.i, align 4
  %cmdbuf.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmdbuf.i, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 2048)
  %cmdfreeq.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %cmd, ptr noundef %11, ptr noundef %cmdfreeq.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.do.body5.i_crit_edge

if.end4.i.do.body5.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmdfreeq.i, ptr %cmd, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %cmd, ptr %11, align 4
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.end.i.i.i, %if.end4.i.do.body5.i_crit_edge, %do.end2.i.do.body5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %16 = load i32, ptr @lbtf_debug, align 4
  %and6.i = and i32 %16, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 8194
  br i1 %cmp7.i, label %do.end10.i, label %do.body5.i.if.end_crit_edge

do.body5.i.if.end_crit_edge:                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end10.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.100) #11
  br label %if.end

if.end:                                           ; preds = %do.end10.i, %do.body5.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cur_cmd = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 12
  %17 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cur_cmd, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_cmd_set_mac_multicast_addr(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mac_multicast_addr, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 204)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %1 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %1, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -13312, ptr %size, align 1
  %action = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %action to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 256, ptr %action, align 1
  %nr_of_multicastmacaddr = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 23
  %4 = ptrtoint ptr %nr_of_multicastmacaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_of_multicastmacaddr, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %nr_of_adrs = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %nr_of_adrs to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %nr_of_adrs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %8 = load i32, ptr @lbtf_debug, align 4
  %and5 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 0
  br i1 %cmp6.not, label %do.end3.do.end18_crit_edge, label %do.end11

do.end3.do.end18_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end11:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %conv14 = zext i16 %6 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv14) #11
  br label %do.end18

do.end18:                                         ; preds = %do.end11, %do.end3.do.end18_crit_edge
  %maclist = getelementptr inbounds %struct.cmd_ds_mac_multicast_addr, ptr %cmd, i32 0, i32 3
  %multicastlist = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 22
  %9 = ptrtoint ptr %nr_of_multicastmacaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_of_multicastmacaddr, align 4
  %mul = mul i32 %10, 6
  %11 = call ptr @memcpy(ptr %maclist, ptr %multicastlist, i32 %mul)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %12 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %12, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16385
  br i1 %cmp.i, label %do.end.i, label %do.end18.do.end2.i_crit_edge

do.end18.do.end2.i_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end18.do.end2.i_crit_edge
  %call3.i = call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext 16, ptr noundef nonnull %cmd, i32 noundef 204, ptr noundef null, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %13 = load i32, ptr @lbtf_debug, align 4
  %and5.i = and i32 %13, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 16386
  br i1 %cmp6.i, label %do.end9.i, label %do.end2.i.lbtf_cmd_async.exit_crit_edge

do.end2.i.lbtf_cmd_async.exit_crit_edge:          ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cmd_async.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %lbtf_cmd_async.exit

lbtf_cmd_async.exit:                              ; preds = %do.end9.i, %do.end2.i.lbtf_cmd_async.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %14 = load i32, ptr @lbtf_debug, align 4
  %and23 = and i32 %14, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 16386
  br i1 %cmp24, label %do.end29, label %lbtf_cmd_async.exit.do.end34_crit_edge

lbtf_cmd_async.exit.do.end34_crit_edge:           ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end29:                                         ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.27) #11
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %lbtf_cmd_async.exit.do.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %cmd) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_set_mode(ptr noundef %priv, i32 noundef %mode) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_set_mode, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_set_mode, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %cmd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %3 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %3, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %and)
  %cmp = icmp eq i32 %and, 33
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2560, ptr %0, align 2
  %conv = trunc i32 %mode to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %7 = load i32, ptr @lbtf_debug, align 4
  %and6 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %do.end3.do.end17_crit_edge, label %do.end12

do.end3.do.end17_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end12:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %mode) #11
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.end3.do.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %8 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %8, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16385
  br i1 %cmp.i, label %do.end.i, label %do.end17.do.end2.i_crit_edge

do.end17.do.end2.i_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end17.do.end2.i_crit_edge
  %call3.i = call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext 204, ptr noundef nonnull %cmd, i32 noundef 10, ptr noundef null, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %9 = load i32, ptr @lbtf_debug, align 4
  %and5.i = and i32 %9, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 16386
  br i1 %cmp6.i, label %do.end9.i, label %do.end2.i.lbtf_cmd_async.exit_crit_edge

do.end2.i.lbtf_cmd_async.exit_crit_edge:          ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cmd_async.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %lbtf_cmd_async.exit

lbtf_cmd_async.exit:                              ; preds = %do.end9.i, %do.end2.i.lbtf_cmd_async.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %10 = load i32, ptr @lbtf_debug, align 4
  %and20 = and i32 %10, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 34
  br i1 %cmp21, label %do.end26, label %lbtf_cmd_async.exit.do.end31_crit_edge

lbtf_cmd_async.exit.do.end31_crit_edge:           ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end26:                                         ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #11
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %lbtf_cmd_async.exit.do.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_set_bssid(ptr noundef %priv, i1 noundef zeroext %activate, ptr nocapture noundef readonly %bssid) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_set_bssid, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_set_bssid, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_set_bssid, ptr %cmd, i32 0, i32 2
  %3 = call ptr @memset(ptr %cmd, i32 255, i32 14)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3840, ptr %0, align 2
  %conv = zext i1 %activate to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %2, align 2
  br i1 %activate, label %if.then6, label %do.end3.if.end8_crit_edge

do.end3.if.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %1, ptr %bssid, i32 6)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end3.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %8 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %8, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16385
  br i1 %cmp.i, label %do.end.i, label %if.end8.do.end2.i_crit_edge

if.end8.do.end2.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.end8.do.end2.i_crit_edge
  %call3.i = call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext 205, ptr noundef nonnull %cmd, i32 noundef 15, ptr noundef null, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %9 = load i32, ptr @lbtf_debug, align 4
  %and5.i = and i32 %9, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 16386
  br i1 %cmp6.i, label %do.end9.i, label %do.end2.i.lbtf_cmd_async.exit_crit_edge

do.end2.i.lbtf_cmd_async.exit_crit_edge:          ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cmd_async.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %lbtf_cmd_async.exit

lbtf_cmd_async.exit:                              ; preds = %do.end9.i, %do.end2.i.lbtf_cmd_async.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %10 = load i32, ptr @lbtf_debug, align 4
  %and11 = and i32 %10, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 16386
  br i1 %cmp12, label %do.end17, label %lbtf_cmd_async.exit.do.end22_crit_edge

lbtf_cmd_async.exit.do.end22_crit_edge:           ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end17:                                         ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.39) #11
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %lbtf_cmd_async.exit.do.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_set_mac_address(ptr noundef %priv, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_mac_address, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_mac_address, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cmd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.42) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4096, ptr %0, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %1, align 8
  %7 = call ptr @memcpy(ptr %2, ptr %mac_addr, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %8 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %8, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16385
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end2.i_crit_edge

do.end3.do.end2.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end3.do.end2.i_crit_edge
  %call3.i = call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext 77, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef null, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %9 = load i32, ptr @lbtf_debug, align 4
  %and5.i = and i32 %9, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 16386
  br i1 %cmp6.i, label %do.end9.i, label %do.end2.i.lbtf_cmd_async.exit_crit_edge

do.end2.i.lbtf_cmd_async.exit_crit_edge:          ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cmd_async.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %lbtf_cmd_async.exit

lbtf_cmd_async.exit:                              ; preds = %do.end9.i, %do.end2.i.lbtf_cmd_async.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %10 = load i32, ptr @lbtf_debug, align 4
  %and6 = and i32 %10, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 16386
  br i1 %cmp7, label %do.end11, label %lbtf_cmd_async.exit.do.end16_crit_edge

lbtf_cmd_async.exit.do.end16_crit_edge:           ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end11:                                         ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.42) #11
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %lbtf_cmd_async.exit.do.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_set_radio_control(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_radio_control, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_radio_control, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_radio_control, ptr %cmd, i32 0, i32 2
  %3 = call ptr @memset(ptr %cmd, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3072, ptr %0, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %1, align 2
  %preamble = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 31
  %7 = ptrtoint ptr %preamble to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %preamble, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %switch.selectcmp = icmp eq i32 %8, 3
  %switch.select = select i1 %switch.selectcmp, i16 256, i16 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch.selectcmp58 = icmp eq i32 %8, 2
  %switch.select59 = select i1 %switch.selectcmp58, i16 768, i16 %switch.select
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %switch.select59, ptr %2, align 2
  %radioon = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 30
  %10 = ptrtoint ptr %radioon to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %radioon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = and i16 %switch.select59, 1536
  %storemerge = select i1 %tobool.not, i16 %12, i16 %switch.select59
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %storemerge, ptr %2, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %14 = load i32, ptr @lbtf_debug, align 4
  %and17 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18.not = icmp eq i32 %and17, 0
  br i1 %cmp18.not, label %do.end3.do.end31_crit_edge, label %do.end23

do.end3.do.end31_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end23:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %conv26 = zext i8 %11 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv26, i32 noundef %8) #11
  br label %do.end31

do.end31:                                         ; preds = %do.end23, %do.end3.do.end31_crit_edge
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %0, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 3072, ptr %0, align 2
  %conv38 = zext i16 %17 to i32
  %19 = ptrtoint ptr %cmd to i32
  %call39 = call i32 @__lbtf_cmd(ptr noundef %priv, i16 noundef zeroext 28, ptr noundef nonnull %cmd, i32 noundef %conv38, ptr noundef nonnull @lbtf_cmd_copyback, i32 noundef %19)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %20 = load i32, ptr @lbtf_debug, align 4
  %and41 = and i32 %20, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 16386
  br i1 %cmp42, label %do.end47, label %do.end31.do.end52_crit_edge

do.end31.do.end52_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

do.end47:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.45, i32 noundef %call39) #11
  br label %do.end52

do.end52:                                         ; preds = %do.end47, %do.end31.do.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #8
  ret i32 %call39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_set_mac_control(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mac_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_mac_control, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_mac_control, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cmd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3072, ptr %0, align 2
  %mac_control = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 27
  %6 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_control, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %1, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %2, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %11 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %11, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16385
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end2.i_crit_edge

do.end3.do.end2.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end3.do.end2.i_crit_edge
  %call3.i = call fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext 40, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef null, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %12 = load i32, ptr @lbtf_debug, align 4
  %and5.i = and i32 %12, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 16386
  br i1 %cmp6.i, label %do.end9.i, label %do.end2.i.lbtf_cmd_async.exit_crit_edge

do.end2.i.lbtf_cmd_async.exit_crit_edge:          ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cmd_async.exit

do.end9.i:                                        ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.79) #11
  br label %lbtf_cmd_async.exit

lbtf_cmd_async.exit:                              ; preds = %do.end9.i, %do.end2.i.lbtf_cmd_async.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %13 = load i32, ptr @lbtf_debug, align 4
  %and6 = and i32 %13, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 16386
  br i1 %cmp7, label %do.end11, label %lbtf_cmd_async.exit.do.end16_crit_edge

lbtf_cmd_async.exit.do.end16_crit_edge:           ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end11:                                         ; preds = %lbtf_cmd_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.51) #11
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %lbtf_cmd_async.exit.do.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_allocate_cmd_buffer(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and)
  %cmp = icmp eq i32 %and, 8193
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.54) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 800) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body6, label %if.end18

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %2 = load i32, ptr @lbtf_debug, align 4
  %and7 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %do.body6.do.body49_crit_edge, label %do.body6.do.body49.sink.split_crit_edge

do.body6.do.body49.sink.split_crit_edge:          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49.sink.split

do.body6.do.body49_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

if.end18:                                         ; preds = %do.end3
  %cmd_array = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 11
  %3 = ptrtoint ptr %cmd_array to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %cmd_array, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i75, ptr %cmdbuf, align 4
  %tobool23.not = icmp eq ptr %call7.i.i75, null
  br i1 %tobool23.not, label %if.end18.do.body25_crit_edge, label %for.cond

if.end18.do.body25_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.1 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 1, i32 4
  %7 = ptrtoint ptr %cmdbuf.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i75.1, ptr %cmdbuf.1, align 4
  %tobool23.not.1 = icmp eq ptr %call7.i.i75.1, null
  br i1 %tobool23.not.1, label %for.cond.do.body25_crit_edge, label %for.cond.1

for.cond.do.body25_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.2 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 2, i32 4
  %9 = ptrtoint ptr %cmdbuf.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i75.2, ptr %cmdbuf.2, align 4
  %tobool23.not.2 = icmp eq ptr %call7.i.i75.2, null
  br i1 %tobool23.not.2, label %for.cond.1.do.body25_crit_edge, label %for.cond.2

for.cond.1.do.body25_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.3 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 3, i32 4
  %11 = ptrtoint ptr %cmdbuf.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i75.3, ptr %cmdbuf.3, align 4
  %tobool23.not.3 = icmp eq ptr %call7.i.i75.3, null
  br i1 %tobool23.not.3, label %for.cond.2.do.body25_crit_edge, label %for.cond.3

for.cond.2.do.body25_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.4 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 4, i32 4
  %13 = ptrtoint ptr %cmdbuf.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i75.4, ptr %cmdbuf.4, align 4
  %tobool23.not.4 = icmp eq ptr %call7.i.i75.4, null
  br i1 %tobool23.not.4, label %for.cond.3.do.body25_crit_edge, label %for.cond.4

for.cond.3.do.body25_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.5 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 5, i32 4
  %15 = ptrtoint ptr %cmdbuf.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i75.5, ptr %cmdbuf.5, align 4
  %tobool23.not.5 = icmp eq ptr %call7.i.i75.5, null
  br i1 %tobool23.not.5, label %for.cond.4.do.body25_crit_edge, label %for.cond.5

for.cond.4.do.body25_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.6 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 6, i32 4
  %17 = ptrtoint ptr %cmdbuf.6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i75.6, ptr %cmdbuf.6, align 4
  %tobool23.not.6 = icmp eq ptr %call7.i.i75.6, null
  br i1 %tobool23.not.6, label %for.cond.5.do.body25_crit_edge, label %for.cond.6

for.cond.5.do.body25_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.6:                                       ; preds = %for.cond.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.7 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 7, i32 4
  %19 = ptrtoint ptr %cmdbuf.7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i75.7, ptr %cmdbuf.7, align 4
  %tobool23.not.7 = icmp eq ptr %call7.i.i75.7, null
  br i1 %tobool23.not.7, label %for.cond.6.do.body25_crit_edge, label %for.cond.7

for.cond.6.do.body25_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.7:                                       ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.8 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 8, i32 4
  %21 = ptrtoint ptr %cmdbuf.8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i75.8, ptr %cmdbuf.8, align 4
  %tobool23.not.8 = icmp eq ptr %call7.i.i75.8, null
  br i1 %tobool23.not.8, label %for.cond.7.do.body25_crit_edge, label %for.cond.8

for.cond.7.do.body25_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.8:                                       ; preds = %for.cond.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i75.9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.9 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 9, i32 4
  %23 = ptrtoint ptr %cmdbuf.9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i75.9, ptr %cmdbuf.9, align 4
  %tobool23.not.9 = icmp eq ptr %call7.i.i75.9, null
  br i1 %tobool23.not.9, label %for.cond.8.do.body25_crit_edge, label %for.cond.9

for.cond.8.do.body25_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond.9:                                       ; preds = %for.cond.8
  %driver_lock.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 15
  %cmdfreeq.i.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 13
  %prev.i.i.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 13, i32 1
  br label %do.body41

do.body25:                                        ; preds = %for.cond.8.do.body25_crit_edge, %for.cond.7.do.body25_crit_edge, %for.cond.6.do.body25_crit_edge, %for.cond.5.do.body25_crit_edge, %for.cond.4.do.body25_crit_edge, %for.cond.3.do.body25_crit_edge, %for.cond.2.do.body25_crit_edge, %for.cond.1.do.body25_crit_edge, %for.cond.do.body25_crit_edge, %if.end18.do.body25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %24 = load i32, ptr @lbtf_debug, align 4
  %and26 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %do.body25.do.body49_crit_edge, label %do.body25.do.body49.sink.split_crit_edge

do.body25.do.body49.sink.split_crit_edge:         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49.sink.split

do.body25.do.body49_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.body41:                                        ; preds = %lbtf_cleanup_and_insert_cmd.exit.do.body41_crit_edge, %for.cond.9
  %i.177 = phi i32 [ 0, %for.cond.9 ], [ %inc47, %lbtf_cleanup_and_insert_cmd.exit.do.body41_crit_edge ]
  %arrayidx42 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.177
  %cmdwait_q = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.177, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %cmdwait_q, ptr noundef nonnull @.str.61, ptr noundef nonnull @lbtf_allocate_cmd_buffer.__key) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %25 = load i32, ptr @lbtf_debug, align 4
  %and.i.i = and i32 %25, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 8193
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body41.do.end2.i.i_crit_edge

do.body41.do.end2.i.i_crit_edge:                  ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i.i

do.end.i.i:                                       ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.100) #11
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i.i, %do.body41.do.end2.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %arrayidx42, null
  br i1 %tobool.not.i.i, label %do.end2.i.i.do.body5.i.i_crit_edge, label %if.end4.i.i

do.end2.i.i.do.body5.i.i_crit_edge:               ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

if.end4.i.i:                                      ; preds = %do.end2.i.i
  %callback.i.i = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.177, i32 2
  %26 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %callback.i.i, align 4
  %callback_arg.i.i = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.177, i32 3
  %27 = ptrtoint ptr %callback_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %callback_arg.i.i, align 8
  %cmdbuf.i.i = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.177, i32 4
  %28 = ptrtoint ptr %cmdbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmdbuf.i.i, align 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 2048)
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %arrayidx42, ptr noundef %32, ptr noundef %cmdfreeq.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.i.do.body5.i.i_crit_edge

if.end4.i.i.do.body5.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx42, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cmdfreeq.i.i, ptr %arrayidx42, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx42, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx42, ptr %32, align 4
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %if.end.i.i.i.i, %if.end4.i.i.do.body5.i.i_crit_edge, %do.end2.i.i.do.body5.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %37 = load i32, ptr @lbtf_debug, align 4
  %and6.i.i = and i32 %37, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and6.i.i)
  %cmp7.i.i = icmp eq i32 %and6.i.i, 8194
  br i1 %cmp7.i.i, label %do.end10.i.i, label %do.body5.i.i.lbtf_cleanup_and_insert_cmd.exit_crit_edge

do.body5.i.i.lbtf_cleanup_and_insert_cmd.exit_crit_edge: ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_cleanup_and_insert_cmd.exit

do.end10.i.i:                                     ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.100) #11
  br label %lbtf_cleanup_and_insert_cmd.exit

lbtf_cleanup_and_insert_cmd.exit:                 ; preds = %do.end10.i.i, %do.body5.i.i.lbtf_cleanup_and_insert_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call2.i) #8
  %inc47 = add nuw nsw i32 %i.177, 1
  %exitcond.not = icmp eq i32 %inc47, 10
  br i1 %exitcond.not, label %lbtf_cleanup_and_insert_cmd.exit.do.body49_crit_edge, label %lbtf_cleanup_and_insert_cmd.exit.do.body41_crit_edge

lbtf_cleanup_and_insert_cmd.exit.do.body41_crit_edge: ; preds = %lbtf_cleanup_and_insert_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

lbtf_cleanup_and_insert_cmd.exit.do.body49_crit_edge: ; preds = %lbtf_cleanup_and_insert_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.body49.sink.split:                             ; preds = %do.body25.do.body49.sink.split_crit_edge, %do.body6.do.body49.sink.split_crit_edge
  %.str.59.sink = phi ptr [ @.str.56, %do.body6.do.body49.sink.split_crit_edge ], [ @.str.59, %do.body25.do.body49.sink.split_crit_edge ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.59.sink) #11
  br label %do.body49

do.body49:                                        ; preds = %do.body49.sink.split, %lbtf_cleanup_and_insert_cmd.exit.do.body49_crit_edge, %do.body25.do.body49_crit_edge, %do.body6.do.body49_crit_edge
  %ret.0 = phi i32 [ -1, %do.body6.do.body49_crit_edge ], [ -1, %do.body25.do.body49_crit_edge ], [ -1, %do.body49.sink.split ], [ 0, %lbtf_cleanup_and_insert_cmd.exit.do.body49_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %38 = load i32, ptr @lbtf_debug, align 4
  %and50 = and i32 %38, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 8194
  br i1 %cmp51, label %do.end55, label %do.body49.do.end60_crit_edge

do.body49.do.end60_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.54, i32 noundef %ret.0) #11
  br label %do.end60

do.end60:                                         ; preds = %do.end55, %do.body49.do.end60_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_free_cmd_buffer(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and)
  %cmp = icmp eq i32 %and, 8193
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cmd_array = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 11
  %1 = ptrtoint ptr %cmd_array to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd_array, align 4
  %cmp4 = icmp eq ptr %2, null
  br i1 %cmp4, label %do.body6, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %cmdbuf = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmdbuf, align 4
  tail call void @kfree(ptr noundef %4) #8
  %5 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cmdbuf, align 4
  %cmdbuf.1 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 1, i32 4
  %6 = ptrtoint ptr %cmdbuf.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmdbuf.1, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %cmdbuf.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cmdbuf.1, align 4
  %cmdbuf.2 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 2, i32 4
  %9 = ptrtoint ptr %cmdbuf.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmdbuf.2, align 4
  tail call void @kfree(ptr noundef %10) #8
  %11 = ptrtoint ptr %cmdbuf.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cmdbuf.2, align 4
  %cmdbuf.3 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 3, i32 4
  %12 = ptrtoint ptr %cmdbuf.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmdbuf.3, align 4
  tail call void @kfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %cmdbuf.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cmdbuf.3, align 4
  %cmdbuf.4 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 4, i32 4
  %15 = ptrtoint ptr %cmdbuf.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmdbuf.4, align 4
  tail call void @kfree(ptr noundef %16) #8
  %17 = ptrtoint ptr %cmdbuf.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cmdbuf.4, align 4
  %cmdbuf.5 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 5, i32 4
  %18 = ptrtoint ptr %cmdbuf.5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdbuf.5, align 4
  tail call void @kfree(ptr noundef %19) #8
  %20 = ptrtoint ptr %cmdbuf.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cmdbuf.5, align 4
  %cmdbuf.6 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 6, i32 4
  %21 = ptrtoint ptr %cmdbuf.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmdbuf.6, align 4
  tail call void @kfree(ptr noundef %22) #8
  %23 = ptrtoint ptr %cmdbuf.6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cmdbuf.6, align 4
  %cmdbuf.7 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 7, i32 4
  %24 = ptrtoint ptr %cmdbuf.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmdbuf.7, align 4
  tail call void @kfree(ptr noundef %25) #8
  %26 = ptrtoint ptr %cmdbuf.7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cmdbuf.7, align 4
  %cmdbuf.8 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 8, i32 4
  %27 = ptrtoint ptr %cmdbuf.8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmdbuf.8, align 4
  tail call void @kfree(ptr noundef %28) #8
  %29 = ptrtoint ptr %cmdbuf.8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cmdbuf.8, align 4
  %cmdbuf.9 = getelementptr %struct.cmd_ctrl_node, ptr %2, i32 9, i32 4
  %30 = ptrtoint ptr %cmdbuf.9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmdbuf.9, align 4
  tail call void @kfree(ptr noundef %31) #8
  %32 = ptrtoint ptr %cmdbuf.9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %cmdbuf.9, align 4
  %33 = ptrtoint ptr %cmd_array to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_array, align 4
  tail call void @kfree(ptr noundef %34) #8
  %35 = ptrtoint ptr %cmd_array to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %cmd_array, align 4
  br label %do.body25

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %36 = load i32, ptr @lbtf_debug, align 4
  %and7 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %do.body6.do.body25_crit_edge, label %do.end12

do.body6.do.body25_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #11
  br label %do.body25

do.body25:                                        ; preds = %do.end12, %do.body6.do.body25_crit_edge, %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %37 = load i32, ptr @lbtf_debug, align 4
  %and26 = and i32 %37, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 8194
  br i1 %cmp27, label %do.end31, label %do.body25.do.end36_crit_edge

do.body25.do.end36_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.64) #11
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.body25.do.end36_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_execute_next_command(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %and)
  %cmp = icmp eq i32 %and, 1048577
  br i1 %cmp, label %do.end, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.70) #11
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %driver_lock = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 15
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %cur_cmd = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 12
  %1 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end21, label %do.end17

do.end17:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call9) #8
  br label %do.body47

if.end21:                                         ; preds = %do.body5
  %cmdpendingq = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %cmdpendingq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %cmdpendingq, align 4
  %cmp.i = icmp eq ptr %4, %cmdpendingq
  %tobool28.not = icmp eq ptr %4, null
  %or.cond = or i1 %cmp.i, %tobool28.not
  br i1 %or.cond, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end21
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmdbuf, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %15 = load i32, ptr @lbtf_debug, align 4
  %and31 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, 0
  br i1 %cmp32.not, label %list_del.exit.do.end43_crit_edge, label %do.end37

list_del.exit.do.end43_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.end37:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %6, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv39 = zext i16 %18 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv39) #11
  br label %do.end43

do.end43:                                         ; preds = %do.end37, %list_del.exit.do.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call9) #8
  tail call fastcc void @lbtf_submit_command(ptr noundef %priv, ptr noundef nonnull %4)
  br label %do.body47

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call9) #8
  br label %do.body47

do.body47:                                        ; preds = %if.else, %do.end43, %do.end17
  %ret.0 = phi i32 [ -1, %do.end17 ], [ 0, %if.else ], [ 0, %do.end43 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %19 = load i32, ptr @lbtf_debug, align 4
  %and48 = and i32 %19, 1048578
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048578, i32 %and48)
  %cmp49 = icmp eq i32 %and48, 1048578
  br i1 %cmp49, label %do.end54, label %do.body47.do.end59_crit_edge

do.body47.do.end59_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end54:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.70) #11
  br label %do.end59

do.end59:                                         ; preds = %do.end54, %do.body47.do.end59_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbtf_submit_command(ptr noundef %priv, ptr noundef %cmdnode) unnamed_addr #3 align 64 {
entry:
  %newprompt.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and)
  %cmp = icmp eq i32 %and, 8193
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.103) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmdnode, i32 0, i32 4
  %1 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmdbuf, align 4
  %driver_lock = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 15
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %cur_cmd = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 12
  %3 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmdnode, ptr %cur_cmd, align 4
  %size = getelementptr inbounds %struct.cmd_header, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %size, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %7 = load i32, ptr @lbtf_debug, align 4
  %and16 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17.not = icmp eq i32 %and16, 0
  br i1 %cmp17.not, label %do.end3.do.end30_crit_edge, label %do.end22

do.end3.do.end30_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = zext i16 %6 to i32
  br label %do.end30

do.end22:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %2, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv24 = zext i16 %10 to i32
  %seqnum = getelementptr inbounds %struct.cmd_header, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %seqnum to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %seqnum, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv25 = zext i16 %13 to i32
  %conv26 = zext i16 %6 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %conv24, i32 noundef %conv25, i32 noundef %conv26) #11
  br label %do.end30

do.end30:                                         ; preds = %do.end22, %do.end3.do.end30_crit_edge
  %conv32.pre-phi = phi i32 [ %.pre, %do.end3.do.end30_crit_edge ], [ %conv26, %do.end22 ]
  %14 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdbuf, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newprompt.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end30.lbtf_deb_hex.exit_crit_edge, label %land.lhs.true.i

do.end30.lbtf_deb_hex.exit_crit_edge:             ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_deb_hex.exit

land.lhs.true.i:                                  ; preds = %do.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %16 = load i32, ptr @lbtf_debug, align 4
  %17 = and i32 %16, 2113536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113536, i32 %17)
  %.not.i = icmp eq i32 %17, 2113536
  br i1 %.not.i, label %if.then.i, label %land.lhs.true.i.lbtf_deb_hex.exit_crit_edge

land.lhs.true.i.lbtf_deb_hex.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_deb_hex.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %newprompt.i, i32 noundef 32, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.107) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lbtf_deb_hex.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lbtf_submit_command, %if.then9.i)) #8
          to label %lbtf_deb_hex.exit [label %if.then9.i], !srcloc !284

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %15, i32 noundef %conv32.pre-phi, i1 noundef zeroext true) #8
  br label %lbtf_deb_hex.exit

lbtf_deb_hex.exit:                                ; preds = %if.then9.i, %if.then.i, %land.lhs.true.i.lbtf_deb_hex.exit_crit_edge, %do.end30.lbtf_deb_hex.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newprompt.i) #8
  %ops = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call33 = tail call i32 %21(ptr noundef %priv, i8 noundef zeroext 1, ptr noundef %2, i16 noundef zeroext %6) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %lbtf_deb_hex.exit.if.end41_crit_edge, label %do.end38

lbtf_deb_hex.exit.if.end41_crit_edge:             ; preds = %lbtf_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end38:                                         ; preds = %lbtf_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %call33) #11
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %lbtf_deb_hex.exit.if.end41_crit_edge
  %timeo.0 = phi i32 [ 100, %do.end38 ], [ 500, %lbtf_deb_hex.exit.if.end41_crit_edge ]
  %command_timer = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, %timeo.0
  %call42 = tail call i32 @mod_timer(ptr noundef %command_timer, i32 noundef %add) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %23 = load i32, ptr @lbtf_debug, align 4
  %and44 = and i32 %23, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and44)
  %cmp45 = icmp eq i32 %and44, 8194
  br i1 %cmp45, label %do.end50, label %if.end41.do.end55_crit_edge

if.end41.do.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.103) #11
  br label %do.end55

do.end55:                                         ; preds = %do.end50, %if.end41.do.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__lbtf_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr nocapture noundef readonly %in_cmd, i32 noundef %in_cmd_size, ptr noundef %callback, i32 noundef %callback_arg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and)
  %cmp = icmp eq i32 %and, 8193
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.119) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %surpriseremoved = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 36
  %1 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %surpriseremoved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %3 = load i32, ptr @lbtf_debug, align 4
  br i1 %tobool.not, label %if.end18, label %do.body5

do.body5:                                         ; preds = %do.end3
  %and6 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %do.body5.do.body62_crit_edge, label %do.end11

do.body5.do.body62_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #11
  br label %do.body62

if.end18:                                         ; preds = %do.end3
  %and.i = and i32 %3, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 8193
  br i1 %cmp.i, label %do.end.i, label %if.end18.do.end3.i_crit_edge

if.end18.do.end3.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.132) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end18.do.end3.i_crit_edge
  %tobool.not.i = icmp eq ptr %priv, null
  br i1 %tobool.not.i, label %do.end3.i.do.body22_crit_edge, label %do.body7.i

do.end3.i.do.body22_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

do.body7.i:                                       ; preds = %do.end3.i
  %driver_lock.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 15
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #8
  %cmdfreeq.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %cmdfreeq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cmdfreeq.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %cmdfreeq.i
  br i1 %cmp.i.not.i, label %do.body21.i, label %if.then18.i

if.then18.i:                                      ; preds = %do.body7.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then18.i.list_del.exit.i_crit_edge

if.then18.i.list_del.exit.i_crit_edge:            ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then18.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end34.i

do.body21.i:                                      ; preds = %do.body7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %14 = load i32, ptr @lbtf_debug, align 4
  %and22.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %cmp23.not.i = icmp eq i32 %and22.i, 0
  br i1 %cmp23.not.i, label %do.body21.i.if.end34.i_crit_edge, label %do.end28.i

do.body21.i.if.end34.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

do.end28.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #11
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end28.i, %do.body21.i.if.end34.i_crit_edge, %list_del.exit.i
  %tempnode.0.i = phi ptr [ %5, %list_del.exit.i ], [ null, %do.end28.i ], [ null, %do.body21.i.if.end34.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call11.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %15 = load i32, ptr @lbtf_debug, align 4
  %and37.i = and i32 %15, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and37.i)
  %cmp38.i = icmp eq i32 %and37.i, 8194
  br i1 %cmp38.i, label %do.end43.i, label %if.end34.i.lbtf_get_cmd_ctrl_node.exit_crit_edge

if.end34.i.lbtf_get_cmd_ctrl_node.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_get_cmd_ctrl_node.exit

do.end43.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.132) #11
  br label %lbtf_get_cmd_ctrl_node.exit

lbtf_get_cmd_ctrl_node.exit:                      ; preds = %do.end43.i, %if.end34.i.lbtf_get_cmd_ctrl_node.exit_crit_edge
  %cmp20 = icmp eq ptr %tempnode.0.i, null
  br i1 %cmp20, label %lbtf_get_cmd_ctrl_node.exit.do.body22_crit_edge, label %if.end36

lbtf_get_cmd_ctrl_node.exit.do.body22_crit_edge:  ; preds = %lbtf_get_cmd_ctrl_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

do.body22:                                        ; preds = %lbtf_get_cmd_ctrl_node.exit.do.body22_crit_edge, %do.end3.i.do.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %16 = load i32, ptr @lbtf_debug, align 4
  %and23 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24.not = icmp eq i32 %and23, 0
  br i1 %cmp24.not, label %do.body22.do.end33_crit_edge, label %do.end28

do.body22.do.end33_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #11
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %do.body22.do.end33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_wq to i32))
  %17 = load ptr, ptr @lbtf_wq, align 4
  %cmd_work = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 5
  %call.i94 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %cmd_work) #8
  br label %do.body62

if.end36:                                         ; preds = %lbtf_get_cmd_ctrl_node.exit
  %callback37 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %tempnode.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %callback37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %callback, ptr %callback37, align 4
  %callback_arg38 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %tempnode.0.i, i32 0, i32 3
  %19 = ptrtoint ptr %callback_arg38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %callback_arg, ptr %callback_arg38, align 4
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %tempnode.0.i, i32 0, i32 4
  %20 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmdbuf, align 4
  %22 = call ptr @memcpy(ptr %21, ptr %in_cmd, i32 %in_cmd_size)
  %seqnum = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 10
  %23 = ptrtoint ptr %seqnum to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %seqnum, align 4
  %inc = add i16 %24, 1
  store i16 %inc, ptr %seqnum, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %command)
  %26 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdbuf, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %25, ptr %27, align 1
  %conv = trunc i32 %in_cmd_size to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %30 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmdbuf, align 4
  %size = getelementptr inbounds %struct.cmd_header, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %29, ptr %size, align 1
  %33 = ptrtoint ptr %seqnum to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %seqnum, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmdbuf, align 4
  %seqnum44 = getelementptr inbounds %struct.cmd_header, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %seqnum44 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %35, ptr %seqnum44, align 1
  %39 = load ptr, ptr %cmdbuf, align 4
  %result = getelementptr inbounds %struct.cmd_header, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %result to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 0, ptr %result, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %41 = load i32, ptr @lbtf_debug, align 4
  %and47 = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %cmp48.not = icmp eq i32 %and47, 0
  br i1 %cmp48.not, label %if.end36.do.end59_crit_edge, label %do.end53

if.end36.do.end59_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end53:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %conv55 = zext i16 %command to i32
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %conv55) #11
  br label %do.end59

do.end59:                                         ; preds = %do.end53, %if.end36.do.end59_crit_edge
  %cmdwaitqwoken = getelementptr inbounds %struct.cmd_ctrl_node, ptr %tempnode.0.i, i32 0, i32 5
  %42 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %cmdwaitqwoken, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %43 = load i32, ptr @lbtf_debug, align 4
  %and.i95 = and i32 %43, 8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %and.i95)
  %cmp.i96 = icmp eq i32 %and.i95, 8193
  br i1 %cmp.i96, label %do.end.i98, label %do.end59.if.end17.i_crit_edge

do.end59.if.end17.i_crit_edge:                    ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

do.end.i98:                                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.138) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i98, %do.end59.if.end17.i_crit_edge
  %44 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmdbuf, align 4
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool18.not.i = icmp eq i16 %47, 0
  br i1 %tobool18.not.i, label %do.body20.i, label %if.end32.i

do.body20.i:                                      ; preds = %if.end17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %48 = load i32, ptr @lbtf_debug, align 4
  %and21.i = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp22.not.i = icmp eq i32 %and21.i, 0
  br i1 %cmp22.not.i, label %do.body20.i.do.body59.i_crit_edge, label %do.end26.i

do.body20.i.do.body59.i_crit_edge:                ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59.i

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #11
  br label %do.body59.i

if.end32.i:                                       ; preds = %if.end17.i
  %result.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %tempnode.0.i, i32 0, i32 1
  %49 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %result.i, align 4
  %call38.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #8
  %cmdpendingq.i = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 14
  %prev.i.i102 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 14, i32 1
  %50 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i102, align 4
  %call.i.i.i103 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %tempnode.0.i, ptr noundef %51, ptr noundef %cmdpendingq.i) #8
  br i1 %call.i.i.i103, label %if.end.i.i.i104, label %if.end32.i.list_add_tail.exit.i_crit_edge

if.end32.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i104:                                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %tempnode.0.i, ptr %prev.i.i102, align 4
  %53 = ptrtoint ptr %tempnode.0.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %cmdpendingq.i, ptr %tempnode.0.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %tempnode.0.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %tempnode.0.i, ptr %51, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i104, %if.end32.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call38.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %56 = load i32, ptr @lbtf_debug, align 4
  %and45.i = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %cmp46.not.i = icmp eq i32 %and45.i, 0
  br i1 %cmp46.not.i, label %list_add_tail.exit.i.do.body59.i_crit_edge, label %do.end51.i

list_add_tail.exit.i.do.body59.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59.i

do.end51.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cmdbuf, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %58, align 1
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #8
  %conv54.i = zext i16 %61 to i32
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %conv54.i) #11
  br label %do.body59.i

do.body59.i:                                      ; preds = %do.end51.i, %list_add_tail.exit.i.do.body59.i_crit_edge, %do.end26.i, %do.body20.i.do.body59.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %62 = load i32, ptr @lbtf_debug, align 4
  %and60.i = and i32 %62, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and60.i)
  %cmp61.i = icmp eq i32 %and60.i, 8194
  br i1 %cmp61.i, label %do.end66.i, label %do.body59.i.lbtf_queue_cmd.exit_crit_edge

do.body59.i.lbtf_queue_cmd.exit_crit_edge:        ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbtf_queue_cmd.exit

do.end66.i:                                       ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #10
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.138) #11
  br label %lbtf_queue_cmd.exit

lbtf_queue_cmd.exit:                              ; preds = %do.end66.i, %do.body59.i.lbtf_queue_cmd.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_wq to i32))
  %63 = load ptr, ptr @lbtf_wq, align 4
  %cmd_work60 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 5
  %call.i105 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %63, ptr noundef %cmd_work60) #8
  br label %do.body62

do.body62:                                        ; preds = %lbtf_queue_cmd.exit, %do.end33, %do.end11, %do.body5.do.body62_crit_edge
  %cmdnode.0 = phi ptr [ inttoptr (i32 -105 to ptr), %do.end33 ], [ %tempnode.0.i, %lbtf_queue_cmd.exit ], [ inttoptr (i32 -2 to ptr), %do.end11 ], [ inttoptr (i32 -2 to ptr), %do.body5.do.body62_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %64 = load i32, ptr @lbtf_debug, align 4
  %and63 = and i32 %64, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and63)
  %cmp64 = icmp eq i32 %and63, 8194
  br i1 %cmp64, label %do.end69, label %do.body62.do.end74_crit_edge

do.body62.do.end74_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

do.end69:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.119, ptr noundef nonnull %cmdnode.0) #11
  br label %do.end74

do.end74:                                         ; preds = %do.end69, %do.body62.do.end74_crit_edge
  ret ptr %cmdnode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_cmd_response_rx(ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_response_rxed = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %cmd_response_rxed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %cmd_response_rxed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_wq to i32))
  %1 = load ptr, ptr @lbtf_wq, align 4
  %cmd_work = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %cmd_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_process_rx_command(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.91) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %lock = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %driver_lock = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 15
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %cur_cmd = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 12
  %1 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end3.done_crit_edge, label %if.end16

do.end3.done_crit_edge:                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end16:                                         ; preds = %do.end3
  %cmd_resp_buff = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 3
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmdbuf, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = ptrtoint ptr %cmd_resp_buff to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %cmd_resp_buff, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %result19 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %result19 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %result19, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %13 = load i32, ptr @lbtf_debug, align 4
  %and21 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.end16.do.end35_crit_edge, label %do.end27

if.end16.do.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %conv29 = zext i16 %9 to i32
  %seqnum = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %seqnum to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %seqnum, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv30 = zext i16 %16 to i32
  %size = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %size, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv31 = zext i16 %19 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %conv31) #11
  br label %do.end35

do.end35:                                         ; preds = %do.end27, %if.end16.do.end35_crit_edge
  %seqnum36 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %seqnum36 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %seqnum36, align 1
  %22 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_cmd, align 4
  %cmdbuf39 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %cmdbuf39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmdbuf39, align 4
  %seqnum40 = getelementptr inbounds %struct.cmd_header, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %seqnum40 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %seqnum40, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %27)
  %cmp42.not = icmp eq i16 %21, %27
  %28 = or i16 %6, 128
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %28)
  %cmp49.not = icmp eq i16 %8, %28
  %or.cond178 = select i1 %cmp42.not, i1 %cmp49.not, i1 false
  br i1 %or.cond178, label %if.end53, label %do.end35.done_crit_edge

do.end35.done_crit_edge:                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end53:                                         ; preds = %do.end35
  %29 = ptrtoint ptr %result19 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %result19, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %30)
  %cmp56 = icmp eq i16 %30, 1024
  br i1 %cmp56, label %if.end53.done_crit_edge, label %if.end60

if.end53.done_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end60:                                         ; preds = %if.end53
  %command_timer = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 16
  %call61 = tail call i32 @del_timer(ptr noundef %command_timer) #8
  %cmd_timed_out = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 18
  %31 = ptrtoint ptr %cmd_timed_out to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cmd_timed_out, align 4
  %nr_retries = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 17
  %32 = ptrtoint ptr %nr_retries to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool62.not = icmp eq i32 %33, 0
  br i1 %tobool62.not, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %nr_retries to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %nr_retries, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %conv66 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp67.not = icmp ne i16 %11, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %tobool71.not = icmp sgt i16 %9, -1
  %or.cond = select i1 %cmp67.not, i1 true, i1 %tobool71.not
  br i1 %or.cond, label %if.then72, label %if.end82

if.then72:                                        ; preds = %if.end65
  %35 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.151)
  switch i16 %9, label %if.then72.sw.epilog_crit_edge [
    i16 -32765, label %if.then72.do.end76_crit_edge
    i16 -32763, label %if.then72.do.end76_crit_edge179
  ]

if.then72.do.end76_crit_edge179:                  ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

if.then72.do.end76_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76

if.then72.sw.epilog_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end76:                                         ; preds = %if.then72.do.end76_crit_edge, %if.then72.do.end76_crit_edge179
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end76, %if.then72.sw.epilog_crit_edge
  %36 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur_cmd, align 4
  tail call void @lbtf_complete_command(ptr noundef %priv, ptr noundef %37, i32 noundef %conv66)
  br label %done

if.end82:                                         ; preds = %if.end65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call9) #8
  %38 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_cmd, align 4
  %tobool85.not = icmp eq ptr %39, null
  br i1 %tobool85.not, label %if.end82.do.body95_crit_edge, label %land.lhs.true

if.end82.do.body95_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

land.lhs.true:                                    ; preds = %if.end82
  %callback = getelementptr inbounds %struct.cmd_ctrl_node, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %callback, align 4
  %tobool87.not = icmp eq ptr %41, null
  br i1 %tobool87.not, label %land.lhs.true.do.body95_crit_edge, label %if.then88

land.lhs.true.do.body95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

if.then88:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %callback_arg = getelementptr inbounds %struct.cmd_ctrl_node, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %callback_arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %callback_arg, align 4
  %call92 = tail call i32 %41(ptr noundef %priv, i32 noundef %43, ptr noundef %cmd_resp_buff) #8
  br label %do.body95

do.body95:                                        ; preds = %if.then88, %land.lhs.true.do.body95_crit_edge, %if.end82.do.body95_crit_edge
  %ret.0 = phi i32 [ %call92, %if.then88 ], [ 0, %land.lhs.true.do.body95_crit_edge ], [ 0, %if.end82.do.body95_crit_edge ]
  %call103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %44 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_cmd, align 4
  %tobool109.not = icmp eq ptr %45, null
  br i1 %tobool109.not, label %do.body95.done_crit_edge, label %if.then110

do.body95.done_crit_edge:                         ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then110:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lbtf_complete_command(ptr noundef %priv, ptr noundef nonnull %45, i32 noundef 0)
  br label %done

done:                                             ; preds = %if.then110, %do.body95.done_crit_edge, %sw.epilog, %if.end53.done_crit_edge, %do.end35.done_crit_edge, %do.end3.done_crit_edge
  %call103.sink = phi i32 [ %call9, %sw.epilog ], [ %call9, %do.end3.done_crit_edge ], [ %call9, %do.end35.done_crit_edge ], [ %call9, %if.end53.done_crit_edge ], [ %call103, %if.then110 ], [ %call103, %do.body95.done_crit_edge ]
  %ret.1 = phi i32 [ -1, %sw.epilog ], [ -1, %do.end3.done_crit_edge ], [ -1, %do.end35.done_crit_edge ], [ -1, %if.end53.done_crit_edge ], [ %ret.0, %if.then110 ], [ %ret.0, %do.body95.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call103.sink) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %46 = load i32, ptr @lbtf_debug, align 4
  %and117 = and i32 %46, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and117)
  %cmp118 = icmp eq i32 %and117, 16386
  br i1 %cmp118, label %do.end123, label %done.do.end128_crit_edge

done.do.end128_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

do.end123:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.91, i32 noundef %ret.1) #11
  br label %do.end128

do.end128:                                        ; preds = %do.end123, %done.do.end128_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !190, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !209, !211, !212, !213, !215, !216, !218, !220, !221, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__ksymtab_lbtf_cmd_copyback, !1, !"__ksymtab_lbtf_cmd_copyback", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 52, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 85, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lbtf_update_hw_spec._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @lbtf_update_hw_spec._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 102, i32 2}
!10 = !{ptr @lbtf_update_hw_spec._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @lbtf_update_hw_spec._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 109, i32 2}
!14 = !{ptr @lbtf_update_hw_spec._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @lbtf_update_hw_spec._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 127, i32 3}
!18 = !{ptr @lbtf_update_hw_spec._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @lbtf_update_hw_spec._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 137, i32 2}
!22 = !{ptr @lbtf_update_hw_spec._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @lbtf_update_hw_spec._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 154, i32 2}
!26 = !{ptr @lbtf_set_channel._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lbtf_set_channel._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 161, i32 2}
!30 = !{ptr @lbtf_set_channel._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lbtf_set_channel._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 170, i32 2}
!34 = !{ptr @lbtf_beacon_set._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lbtf_beacon_set._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lbtf_beacon_set._entry.20, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 173, i32 3}
!38 = !{ptr @lbtf_beacon_set._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @lbtf_beacon_set._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 183, i32 2}
!41 = !{ptr @lbtf_beacon_set._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 191, i32 2}
!44 = !{ptr @lbtf_beacon_ctrl._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @lbtf_beacon_ctrl._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @lbtf_beacon_ctrl._entry.25, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 200, i32 2}
!48 = !{ptr @lbtf_beacon_ctrl._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 320, i32 2}
!51 = !{ptr @lbtf_cmd_set_mac_multicast_addr._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lbtf_cmd_set_mac_multicast_addr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 327, i32 2}
!55 = !{ptr @lbtf_cmd_set_mac_multicast_addr._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @lbtf_cmd_set_mac_multicast_addr._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @lbtf_cmd_set_mac_multicast_addr._entry.31, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 334, i32 2}
!59 = !{ptr @lbtf_cmd_set_mac_multicast_addr._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 341, i32 2}
!62 = !{ptr @lbtf_set_mode._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lbtf_set_mode._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 345, i32 2}
!66 = !{ptr @lbtf_set_mode._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lbtf_set_mode._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @lbtf_set_mode._entry.37, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 348, i32 2}
!70 = !{ptr @lbtf_set_mode._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 354, i32 2}
!73 = !{ptr @lbtf_set_bssid._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @lbtf_set_bssid._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @lbtf_set_bssid._entry.40, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 362, i32 2}
!77 = !{ptr @lbtf_set_bssid._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 368, i32 2}
!80 = !{ptr @lbtf_set_mac_address._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lbtf_set_mac_address._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @lbtf_set_mac_address._entry.43, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 376, i32 2}
!84 = !{ptr @lbtf_set_mac_address._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 385, i32 2}
!87 = !{ptr @lbtf_set_radio_control._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @lbtf_set_radio_control._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 410, i32 2}
!91 = !{ptr @lbtf_set_radio_control._entry.46, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @lbtf_set_radio_control._entry_ptr.48, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @lbtf_set_radio_control._entry.49, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 415, i32 2}
!95 = !{ptr @lbtf_set_radio_control._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 422, i32 2}
!98 = !{ptr @lbtf_set_mac_control._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @lbtf_set_mac_control._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @lbtf_set_mac_control._entry.52, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 431, i32 2}
!102 = !{ptr @lbtf_set_mac_control._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 448, i32 2}
!105 = !{ptr @lbtf_allocate_cmd_buffer._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @lbtf_allocate_cmd_buffer._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 454, i32 3}
!109 = !{ptr @lbtf_allocate_cmd_buffer._entry.55, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lbtf_allocate_cmd_buffer._entry_ptr.57, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 464, i32 4}
!113 = !{ptr @lbtf_allocate_cmd_buffer._entry.58, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @lbtf_allocate_cmd_buffer._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @lbtf_allocate_cmd_buffer.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 471, i32 3}
!117 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @lbtf_allocate_cmd_buffer._entry.62, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 478, i32 2}
!120 = !{ptr @lbtf_allocate_cmd_buffer._entry_ptr.63, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 494, i32 2}
!123 = !{ptr @lbtf_free_cmd_buffer._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @lbtf_free_cmd_buffer._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 498, i32 3}
!127 = !{ptr @lbtf_free_cmd_buffer._entry.65, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @lbtf_free_cmd_buffer._entry_ptr.67, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @lbtf_free_cmd_buffer._entry.68, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 515, i32 2}
!131 = !{ptr @lbtf_free_cmd_buffer._entry_ptr.69, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 570, i32 2}
!134 = !{ptr @lbtf_execute_next_command._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @lbtf_execute_next_command._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 575, i32 3}
!138 = !{ptr @lbtf_execute_next_command._entry.71, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @lbtf_execute_next_command._entry_ptr.73, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 590, i32 3}
!142 = !{ptr @lbtf_execute_next_command._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @lbtf_execute_next_command._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @lbtf_execute_next_command._entry.77, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 599, i32 2}
!146 = !{ptr @lbtf_execute_next_command._entry_ptr.78, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 656, i32 2}
!149 = !{ptr @lbtf_cmd_async._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @lbtf_cmd_async._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @lbtf_cmd_async._entry.80, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 658, i32 2}
!153 = !{ptr @lbtf_cmd_async._entry_ptr.81, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 671, i32 2}
!156 = !{ptr @__lbtf_cmd._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @__lbtf_cmd._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 684, i32 3}
!160 = !{ptr @__lbtf_cmd._entry.83, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @__lbtf_cmd._entry_ptr.85, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 692, i32 3}
!164 = !{ptr @__lbtf_cmd._entry.86, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @__lbtf_cmd._entry_ptr.88, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @__lbtf_cmd._entry.89, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 699, i32 2}
!168 = !{ptr @__lbtf_cmd._entry_ptr.90, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @__ksymtab___lbtf_cmd, !170, !"__ksymtab___lbtf_cmd", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 702, i32 1}
!171 = !{ptr @__ksymtab_lbtf_cmd_response_rx, !172, !"__ksymtab_lbtf_cmd_response_rx", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 710, i32 1}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 720, i32 2}
!175 = !{ptr @lbtf_process_rx_command._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @lbtf_process_rx_command._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 736, i32 2}
!179 = !{ptr @lbtf_process_rx_command._entry.92, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @lbtf_process_rx_command._entry_ptr.94, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.96, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 773, i32 4}
!183 = !{ptr @lbtf_process_rx_command._entry.95, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @lbtf_process_rx_command._entry_ptr.97, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @lbtf_process_rx_command._entry.98, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 800, i32 2}
!187 = !{ptr @lbtf_process_rx_command._entry_ptr.99, !186, !"_entry_ptr", i1 false, i1 false}
!188 = distinct !{null, !189, !"lbtf_region_code_to_index", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 23, i32 12}
!190 = !{ptr @channel_ranges, !191, !"channel_ranges", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 14, i32 35}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 278, i32 2}
!194 = !{ptr @__lbtf_cleanup_and_insert_cmd._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @__lbtf_cleanup_and_insert_cmd._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @__lbtf_cleanup_and_insert_cmd._entry.101, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 291, i32 2}
!198 = !{ptr @__lbtf_cleanup_and_insert_cmd._entry_ptr.102, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 242, i32 2}
!201 = !{ptr @lbtf_submit_command._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @lbtf_submit_command._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 251, i32 2}
!205 = !{ptr @lbtf_submit_command._entry.104, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @lbtf_submit_command._entry_ptr.106, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.107, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 253, i32 29}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 259, i32 3}
!211 = !{ptr @lbtf_submit_command._entry.108, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @lbtf_submit_command._entry_ptr.110, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @lbtf_submit_command._entry.111, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 268, i32 2}
!215 = !{ptr @lbtf_submit_command._entry_ptr.112, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/marvell/libertas_tf/deb_defs.h", i32 96, i32 42}
!218 = !{ptr @.str.114, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/marvell/libertas_tf/deb_defs.h", i32 97, i32 3}
!220 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.116, !219, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.117, !219, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @lbtf_deb_hex.__UNIQUE_ID_ddebug348, !219, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!224 = !{ptr @.str.118, !219, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.119, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 611, i32 2}
!227 = !{ptr @__lbtf_cmd_async._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @__lbtf_cmd_async._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.121, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 614, i32 3}
!231 = !{ptr @__lbtf_cmd_async._entry.120, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @__lbtf_cmd_async._entry_ptr.122, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 621, i32 3}
!235 = !{ptr @__lbtf_cmd_async._entry.123, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @__lbtf_cmd_async._entry_ptr.125, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.127, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 642, i32 2}
!239 = !{ptr @__lbtf_cmd_async._entry.126, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @__lbtf_cmd_async._entry_ptr.128, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.130, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 649, i32 2}
!243 = !{ptr @__lbtf_cmd_async._entry.129, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @__lbtf_cmd_async._entry_ptr.131, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.132, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 531, i32 2}
!247 = !{ptr @lbtf_get_cmd_ctrl_node._entry, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @lbtf_get_cmd_ctrl_node._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.134, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 543, i32 3}
!251 = !{ptr @lbtf_get_cmd_ctrl_node._entry.133, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @lbtf_get_cmd_ctrl_node._entry_ptr.135, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @lbtf_get_cmd_ctrl_node._entry.136, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 549, i32 2}
!255 = !{ptr @lbtf_get_cmd_ctrl_node._entry_ptr.137, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.138, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 208, i32 2}
!258 = !{ptr @lbtf_queue_cmd._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @lbtf_queue_cmd._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.140, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 211, i32 3}
!262 = !{ptr @lbtf_queue_cmd._entry.139, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @lbtf_queue_cmd._entry_ptr.141, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.143, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 216, i32 3}
!266 = !{ptr @lbtf_queue_cmd._entry.142, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @lbtf_queue_cmd._entry_ptr.144, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.146, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 225, i32 2}
!270 = !{ptr @lbtf_queue_cmd._entry.145, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @lbtf_queue_cmd._entry_ptr.147, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @lbtf_queue_cmd._entry.148, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/marvell/libertas_tf/cmd.c", i32 229, i32 2}
!274 = !{ptr @lbtf_queue_cmd._entry_ptr.149, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{i64 2148178097, i64 2148178102, i64 2148178115, i64 2148178159, i64 2148178193, i64 2148178214}
