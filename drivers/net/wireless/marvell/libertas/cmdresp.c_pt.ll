; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/cmdresp.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/cmdresp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kfifo = type { %union.anon.124, [0 x i8] }
%union.anon.124 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.121, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.121 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.cmd_ctrl_node = type { %struct.list_head, i32, ptr, i32, ptr, i16, %struct.wait_queue_head }
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.cmd_ds_802_11_ps_mode = type { %struct.cmd_header, i16, i16, i16, i16, i16, i16 }

@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@lbs_mac_event_disconnected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017libertas cmd: disconnected, so exit PS mode\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lbs_mac_event_disconnected\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/marvell/libertas/cmdresp.c\00", [48 x i8] zeroinitializer }, align 32
@lbs_mac_event_disconnected._entry_ptr = internal global ptr @lbs_mac_event_disconnected._entry, section ".printk_index", align 4
@lbs_process_command_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libertas host: CMD_RESP: cur_cmd is NULL\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lbs_process_command_response\00", [35 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr = internal global ptr @lbs_process_command_response._entry, section ".printk_index", align 4
@lbs_process_command_response._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017libertas cmd: CMD_RESP: response 0x%04x, seq %d, size %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.7 = internal global ptr @lbs_process_command_response._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMD_RESP\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Received CMD_RESP with invalid sequence %d (expected %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid CMD_RESP %x to command %x!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Firmware returns DEFER to command %x. Will let it time out...\0A\00", [33 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017libertas host: CMD_RESP: PS_MODE cmd reply result 0x%x, action 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.14 = internal global ptr @lbs_process_command_response._entry.12, section ".printk_index", align 4
@lbs_process_command_response._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017libertas host: CMD_RESP: PS command failed with 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.17 = internal global ptr @lbs_process_command_response._entry.15, section ".printk_index", align 4
@lbs_process_command_response._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libertas host: CMD_RESP: ENTER_PS command response\0A\00", [42 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.20 = internal global ptr @lbs_process_command_response._entry.18, section ".printk_index", align 4
@lbs_process_command_response._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017libertas host: disconnected, invoking lbs_ps_wakeup\0A\00", [41 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.23 = internal global ptr @lbs_process_command_response._entry.21, section ".printk_index", align 4
@lbs_process_command_response._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas host: CMD_RESP: EXIT_PS command response\0A\00", [43 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.26 = internal global ptr @lbs_process_command_response._entry.24, section ".printk_index", align 4
@lbs_process_command_response._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017libertas host: CMD_RESP: PS action 0x%X\0A\00", [53 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.29 = internal global ptr @lbs_process_command_response._entry.27, section ".printk_index", align 4
@lbs_process_command_response._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017libertas host: CMD_RESP: error 0x%04x in command reply 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.32 = internal global ptr @lbs_process_command_response._entry.30, section ".printk_index", align 4
@lbs_process_command_response._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017libertas host: CMD_RESP: reset failed\0A\00", [55 x i8] zeroinitializer }, align 32
@lbs_process_command_response._entry_ptr.35 = internal global ptr @lbs_process_command_response._entry.33, section ".printk_index", align 4
@lbs_process_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libertas cmd: EVENT: link sensed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lbs_process_event\00", [46 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr = internal global ptr @lbs_process_event._entry, section ".printk_index", align 4
@lbs_process_event._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017libertas cmd: EVENT: deauthenticated\0A\00", [56 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.40 = internal global ptr @lbs_process_event._entry.38, section ".printk_index", align 4
@lbs_process_event._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017libertas cmd: EVENT: disassociated\0A\00", [58 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.43 = internal global ptr @lbs_process_event._entry.41, section ".printk_index", align 4
@lbs_process_event._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017libertas cmd: EVENT: link lost\0A\00", [62 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.46 = internal global ptr @lbs_process_event._entry.44, section ".printk_index", align 4
@lbs_process_event._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017libertas cmd: EVENT: ps sleep\0A\00", [63 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.49 = internal global ptr @lbs_process_event._entry.47, section ".printk_index", align 4
@lbs_process_event._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017libertas cmd: EVENT: in FULL POWER mode, ignoring PS_SLEEP\0A\00", [34 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.52 = internal global ptr @lbs_process_event._entry.50, section ".printk_index", align 4
@lbs_process_event._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.37, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017libertas cmd: EVENT: commands in queue, do not sleep\0A\00", [40 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.55 = internal global ptr @lbs_process_event._entry.53, section ".printk_index", align 4
@lbs_process_event._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.37, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libertas cmd: EVENT: host awake\0A\00", [61 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.58 = internal global ptr @lbs_process_event._entry.56, section ".printk_index", align 4
@lbs_process_event._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.37, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017libertas cmd: EVENT: ds awake\0A\00", [63 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.61 = internal global ptr @lbs_process_event._entry.59, section ".printk_index", align 4
@lbs_process_event._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.37, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017libertas cmd: EVENT: ps awake\0A\00", [63 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.64 = internal global ptr @lbs_process_event._entry.62, section ".printk_index", align 4
@lbs_process_event._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.37, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017libertas cmd: EVENT: In FULL POWER mode - ignore PS AWAKE\0A\00", [35 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.67 = internal global ptr @lbs_process_event._entry.65, section ".printk_index", align 4
@lbs_process_event._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.37, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017libertas cmd: waking up ...\0A\00", [33 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.70 = internal global ptr @lbs_process_event._entry.68, section ".printk_index", align 4
@lbs_process_event._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.37, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas cmd: EVENT: UNICAST MIC ERROR\0A\00", [54 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.73 = internal global ptr @lbs_process_event._entry.71, section ".printk_index", align 4
@lbs_process_event._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.37, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libertas cmd: EVENT: MULTICAST MIC ERROR\0A\00", [52 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.76 = internal global ptr @lbs_process_event._entry.74, section ".printk_index", align 4
@lbs_process_event._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.37, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libertas cmd: EVENT: MIB CHANGED\0A\00", [60 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.79 = internal global ptr @lbs_process_event._entry.77, section ".printk_index", align 4
@lbs_process_event._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.37, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017libertas cmd: EVENT: INIT DONE\0A\00", [62 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.82 = internal global ptr @lbs_process_event._entry.80, section ".printk_index", align 4
@lbs_process_event._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.37, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas cmd: EVENT: ADHOC beacon lost\0A\00", [54 x i8] zeroinitializer }, align 32
@lbs_process_event._entry_ptr.85 = internal global ptr @lbs_process_event._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EVENT: rssi low\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EVENT: snr low\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EVENT: max fail\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EVENT: rssi high\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EVENT: snr high\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"EVENT: MESH_AUTO_STARTED (ignoring)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EVENT: unknown event id %d\0A\00", [36 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.95, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lbs_deb_hex\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/marvell/libertas/defs.h\00", [51 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr = internal global ptr @lbs_deb_hex._entry, section ".printk_index", align 4
@lbs_deb_hex._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.94, ptr @.str.95, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libertas %s: \00", [18 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.98 = internal global ptr @lbs_deb_hex._entry.96, section ".printk_index", align 4
@lbs_deb_hex._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.94, ptr @.str.95, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.101 = internal global ptr @lbs_deb_hex._entry.99, section ".printk_index", align 4
@lbs_deb_hex._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.95, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.103 = internal global ptr @lbs_deb_hex._entry.102, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12288, i64 12544]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 32771, i64 32773]
@__sancov_gen_cov_switch_values.105 = internal global [21 x i64] [i64 19, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 14, i64 16, i64 17, i64 18, i64 25, i64 26, i64 27, i64 28, i64 29, i64 35]
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 60, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 77, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 88, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 90, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 94, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 103, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 114, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 132, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 137, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 151, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 157, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 170, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 172, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 184, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 192, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 229, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 233, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 238, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 243, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 248, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 252, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 257, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 267, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 280, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 287, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 290, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 304, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 310, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 315, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 320, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 323, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 326, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 329, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 332, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 335, i32 27 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 338, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 341, i32 27 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 346, i32 26 }
@___asan_gen_.317 = private constant [51 x i8] c"../drivers/net/wireless/marvell/libertas/cmdresp.c\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 350, i32 27 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 96, i32 6 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 97, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 99, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/marvell/libertas/defs.h\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 102, i32 3 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @lbs_deb_hex._entry, ptr @lbs_deb_hex._entry.102, ptr @lbs_deb_hex._entry.96, ptr @lbs_deb_hex._entry.99, ptr @lbs_deb_hex._entry_ptr, ptr @lbs_deb_hex._entry_ptr.101, ptr @lbs_deb_hex._entry_ptr.103, ptr @lbs_deb_hex._entry_ptr.98, ptr @lbs_mac_event_disconnected._entry, ptr @lbs_mac_event_disconnected._entry_ptr, ptr @lbs_process_command_response._entry, ptr @lbs_process_command_response._entry.12, ptr @lbs_process_command_response._entry.15, ptr @lbs_process_command_response._entry.18, ptr @lbs_process_command_response._entry.21, ptr @lbs_process_command_response._entry.24, ptr @lbs_process_command_response._entry.27, ptr @lbs_process_command_response._entry.30, ptr @lbs_process_command_response._entry.33, ptr @lbs_process_command_response._entry.5, ptr @lbs_process_command_response._entry_ptr, ptr @lbs_process_command_response._entry_ptr.14, ptr @lbs_process_command_response._entry_ptr.17, ptr @lbs_process_command_response._entry_ptr.20, ptr @lbs_process_command_response._entry_ptr.23, ptr @lbs_process_command_response._entry_ptr.26, ptr @lbs_process_command_response._entry_ptr.29, ptr @lbs_process_command_response._entry_ptr.32, ptr @lbs_process_command_response._entry_ptr.35, ptr @lbs_process_command_response._entry_ptr.7, ptr @lbs_process_event._entry, ptr @lbs_process_event._entry.38, ptr @lbs_process_event._entry.41, ptr @lbs_process_event._entry.44, ptr @lbs_process_event._entry.47, ptr @lbs_process_event._entry.50, ptr @lbs_process_event._entry.53, ptr @lbs_process_event._entry.56, ptr @lbs_process_event._entry.59, ptr @lbs_process_event._entry.62, ptr @lbs_process_event._entry.65, ptr @lbs_process_event._entry.68, ptr @lbs_process_event._entry.71, ptr @lbs_process_event._entry.74, ptr @lbs_process_event._entry.77, ptr @lbs_process_event._entry.80, ptr @lbs_process_event._entry.83, ptr @lbs_process_event._entry_ptr, ptr @lbs_process_event._entry_ptr.40, ptr @lbs_process_event._entry_ptr.43, ptr @lbs_process_event._entry_ptr.46, ptr @lbs_process_event._entry_ptr.49, ptr @lbs_process_event._entry_ptr.52, ptr @lbs_process_event._entry_ptr.55, ptr @lbs_process_event._entry_ptr.58, ptr @lbs_process_event._entry_ptr.61, ptr @lbs_process_event._entry_ptr.64, ptr @lbs_process_event._entry_ptr.67, ptr @lbs_process_event._entry_ptr.70, ptr @lbs_process_event._entry_ptr.73, ptr @lbs_process_event._entry_ptr.76, ptr @lbs_process_event._entry_ptr.79, ptr @lbs_process_event._entry_ptr.82, ptr @lbs_process_event._entry_ptr.85, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_mac_event_disconnected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_command_response._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_process_event._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_mac_event_disconnected(ptr noundef %priv, i1 noundef zeroext %locally_generated) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_status = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @msleep_interruptible(i32 noundef 1000) #5
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lbs_send_disconnect_notification(ptr noundef %priv, i1 noundef zeroext %locally_generated) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @netif_carrier_off(ptr noundef %11) #5
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #5
  %currenttxskb = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 84
  %12 = ptrtoint ptr %currenttxskb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %currenttxskb, align 4
  tail call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #5
  %14 = ptrtoint ptr %currenttxskb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %currenttxskb, align 4
  %tx_pending_len = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 81
  %15 = ptrtoint ptr %tx_pending_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_pending_len, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call8) #5
  %16 = ptrtoint ptr %connect_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %connect_status, align 4
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %17 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %psstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp14.not = icmp eq i32 %18, 0
  br i1 %cmp14.not, label %if.end3.cleanup_crit_edge, label %do.body17

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body17:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %19 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not = icmp eq i32 %and, 0
  br i1 %cmp18.not, label %do.body17.do.end28_crit_edge, label %do.end23

do.body17.do.end28_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %do.body17.do.end28_crit_edge
  %call29 = tail call i32 @lbs_set_ps_mode(ptr noundef %priv, i16 noundef zeroext 49, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_send_disconnect_notification(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_ps_mode(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_process_command_response(ptr noundef %priv, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 86
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #5
  %cur_cmd = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 61
  %0 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %if.end17

do.body5:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %do.body5.done_crit_edge, label %do.end11

do.body5.done_crit_edge:                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %done

if.end17:                                         ; preds = %entry
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmdbuf, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %data, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %result20 = getelementptr inbounds %struct.cmd_header, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %result20 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %result20, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %14 = load i32, ptr @lbs_debug, align 4
  %and22 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 0
  br i1 %cmp23.not, label %if.end17.do.end35_crit_edge, label %do.end28

if.end17.do.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35

do.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %conv30 = zext i16 %10 to i32
  %seqnum = getelementptr inbounds %struct.cmd_header, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %seqnum to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %seqnum, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv31 = zext i16 %17 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %len) #8
  br label %do.end35

do.end35:                                         ; preds = %do.end28, %if.end17.do.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp eq i32 %len, 0
  br i1 %tobool.not.i, label %do.end35.lbs_deb_hex.exit_crit_edge, label %land.lhs.true.i

do.end35.lbs_deb_hex.exit_crit_edge:              ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit

land.lhs.true.i:                                  ; preds = %do.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %18 = load i32, ptr @lbs_debug, align 4
  %19 = and i32 %18, 2113536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113536, i32 %19)
  %.not.i = icmp eq i32 %19, 2113536
  br i1 %.not.i, label %for.cond.preheader.i, label %land.lhs.true.i.lbs_deb_hex.exit_crit_edge

land.lhs.true.i.lbs_deb_hex.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lbs_deb_hex.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp.not1.i = icmp slt i32 %len, 1
  br i1 %cmp.not1.i, label %for.cond.preheader.i.do.end23.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.end23.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %buf.addr.04.i = phi ptr [ %incdec.ptr.i, %do.end18.i.for.body.i_crit_edge ], [ %data, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %do.end18.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %and5.i = and i32 %i.02.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 1
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02.i)
  %cmp8.not.i = icmp eq i32 %i.02.i, 1
  br i1 %cmp8.not.i, label %if.then7.i.do.end12.i_crit_edge, label %do.end.i

if.then7.i.do.end12.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12.i

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #8
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.then7.i.do.end12.i_crit_edge
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.8) #8
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %20 = ptrtoint ptr %buf.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.addr.04.i, align 1
  %conv.i = zext i8 %21 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %conv.i) #8
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.04.i, i32 1
  %inc.i = add i32 %i.02.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %len
  br i1 %cmp.not.i, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %for.cond.preheader.i.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #8
  br label %lbs_deb_hex.exit

lbs_deb_hex.exit:                                 ; preds = %do.end23.i, %land.lhs.true.i.lbs_deb_hex.exit_crit_edge, %do.end35.lbs_deb_hex.exit_crit_edge
  %seqnum36 = getelementptr inbounds %struct.cmd_header, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %seqnum36 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %seqnum36, align 1
  %24 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_cmd, align 4
  %cmdbuf39 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %cmdbuf39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdbuf39, align 4
  %seqnum40 = getelementptr inbounds %struct.cmd_header, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %seqnum40 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %seqnum40, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %29)
  %cmp42.not = icmp eq i16 %23, %29
  br i1 %cmp42.not, label %if.end52, label %if.then44

if.then44:                                        ; preds = %lbs_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv46 = zext i16 %32 to i32
  %33 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv50 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef %conv46, i32 noundef %conv50) #8
  br label %done

if.end52:                                         ; preds = %lbs_deb_hex.exit
  %conv53 = zext i16 %10 to i32
  %conv54 = zext i16 %7 to i32
  %or = or i32 %conv54, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv53)
  %cmp55.not = icmp eq i32 %or, %conv53
  call void @__sanitizer_cov_trace_const_cmp2(i16 4736, i16 %9)
  %cmp58.not = icmp eq i16 %9, 4736
  %or.cond = select i1 %cmp55.not, i1 true, i1 %cmp58.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %6)
  %cmp62.not = icmp eq i16 %6, 20480
  %or.cond385 = select i1 %or.cond, i1 true, i1 %cmp62.not
  br i1 %or.cond385, label %if.end69, label %if.then64

if.then64:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %conv53, i32 noundef %conv54) #8
  br label %done

if.end69:                                         ; preds = %if.end52
  %36 = ptrtoint ptr %result20 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %result20, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %37)
  %cmp72 = icmp eq i16 %37, 1024
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %data, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv77 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.11, i32 noundef %conv77) #8
  br label %done

if.end79:                                         ; preds = %if.end69
  %command_timer = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 64
  %call80 = tail call i32 @del_timer(ptr noundef %command_timer) #5
  %cmd_timed_out = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 65
  %43 = ptrtoint ptr %cmd_timed_out to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cmd_timed_out, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8576, i16 %9)
  %cmp82 = icmp eq i16 %9, 8576
  br i1 %cmp82, label %if.then84, label %if.end219

if.then84:                                        ; preds = %if.end79
  %action85 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %data, i32 0, i32 1
  %44 = ptrtoint ptr %action85 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %action85, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %47 = load i32, ptr @lbs_debug, align 4
  %and87 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %cmp88.not = icmp eq i32 %and87, 0
  br i1 %cmp88.not, label %if.then84.do.end100_crit_edge, label %do.end93

if.then84.do.end100_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end100

do.end93:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %conv95 = zext i16 %13 to i32
  %conv96 = zext i16 %46 to i32
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv95, i32 noundef %conv96) #8
  br label %do.end100

do.end100:                                        ; preds = %do.end93, %if.then84.do.end100_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool101.not = icmp eq i16 %12, 0
  br i1 %tobool101.not, label %if.else, label %do.body103

do.body103:                                       ; preds = %do.end100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %48 = load i32, ptr @lbs_debug, align 4
  %and104 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %cmp105.not = icmp eq i32 %and104, 0
  br i1 %cmp105.not, label %do.body103.do.end116_crit_edge, label %do.end110

do.body103.do.end116_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end116

do.end110:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  %conv112 = zext i16 %13 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv112) #8
  br label %do.end116

do.end116:                                        ; preds = %do.end110, %do.body103.do.end116_crit_edge
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %49 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %52)
  %cmp117 = icmp eq i32 %52, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %45)
  %cmp121 = icmp eq i16 %45, 12288
  %or.cond386 = select i1 %cmp117, i1 %cmp121, i1 false
  br i1 %or.cond386, label %if.then123, label %do.end116.if.end215_crit_edge

do.end116.if.end215_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

if.then123:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #7
  %psmode124 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 25
  %53 = ptrtoint ptr %psmode124 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %psmode124, align 4
  br label %if.end215

if.else:                                          ; preds = %do.end100
  %conv126 = zext i16 %46 to i32
  %54 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i16 %45, label %do.body199 [
    i16 12288, label %if.then129
    i16 12544, label %if.then182
  ]

if.then129:                                       ; preds = %if.else
  %needtowakeup = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 27
  %55 = ptrtoint ptr %needtowakeup to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %needtowakeup, align 4
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %56 = ptrtoint ptr %psstate to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %psstate, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %57 = load i32, ptr @lbs_debug, align 4
  %and131 = and i32 %57, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %cmp132.not = icmp eq i32 %and131, 0
  br i1 %cmp132.not, label %if.then129.do.end142_crit_edge, label %do.end137

if.then129.do.end142_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end142

do.end137:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #7
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %do.end142

do.end142:                                        ; preds = %do.end137, %if.then129.do.end142_crit_edge
  %connect_status = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 1
  %58 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp143.not = icmp eq i32 %59, 0
  br i1 %cmp143.not, label %do.end142.if.end215_crit_edge, label %do.body146

do.end142.if.end215_crit_edge:                    ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.body146:                                       ; preds = %do.end142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %60 = load i32, ptr @lbs_debug, align 4
  %and147 = and i32 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %cmp148.not = icmp eq i32 %and147, 0
  br i1 %cmp148.not, label %do.body146.do.end158_crit_edge, label %do.end153

do.body146.do.end158_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end158

do.end153:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %do.end158

do.end158:                                        ; preds = %do.end153, %do.body146.do.end158_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call161 = tail call i32 @lbs_set_ps_mode(ptr noundef %priv, i16 noundef zeroext 49, i1 noundef zeroext false) #5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call172 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #5
  br label %if.end215

if.then182:                                       ; preds = %if.else
  %needtowakeup183 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 27
  %61 = ptrtoint ptr %needtowakeup183 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %needtowakeup183, align 4
  %psstate184 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %62 = ptrtoint ptr %psstate184 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %psstate184, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %63 = load i32, ptr @lbs_debug, align 4
  %and186 = and i32 %63, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %cmp187.not = icmp eq i32 %and186, 0
  br i1 %cmp187.not, label %if.then182.if.end215_crit_edge, label %do.end192

if.then182.if.end215_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.end192:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #7
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #8
  br label %if.end215

do.body199:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %64 = load i32, ptr @lbs_debug, align 4
  %and200 = and i32 %64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %cmp201.not = icmp eq i32 %and200, 0
  br i1 %cmp201.not, label %do.body199.if.end215_crit_edge, label %do.end206

do.body199.if.end215_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.end206:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #7
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv126) #8
  br label %if.end215

if.end215:                                        ; preds = %do.end206, %do.body199.if.end215_crit_edge, %do.end192, %if.then182.if.end215_crit_edge, %do.end158, %do.end142.if.end215_crit_edge, %if.then123, %do.end116.if.end215_crit_edge
  %flags.0 = phi i32 [ %call2, %if.then123 ], [ %call2, %do.end116.if.end215_crit_edge ], [ %call172, %do.end158 ], [ %call2, %do.end142.if.end215_crit_edge ], [ %call2, %do.end192 ], [ %call2, %if.then182.if.end215_crit_edge ], [ %call2, %do.end206 ], [ %call2, %do.body199.if.end215_crit_edge ]
  %65 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur_cmd, align 4
  %conv217 = zext i16 %13 to i32
  tail call void @__lbs_complete_command(ptr noundef %priv, ptr noundef %66, i32 noundef %conv217) #5
  br label %done

if.end219:                                        ; preds = %if.end79
  %conv220 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp221.not = icmp ne i16 %12, 0
  %and224 = and i32 %conv53, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  %or.cond387 = select i1 %cmp221.not, i1 true, i1 %tobool225.not
  br i1 %or.cond387, label %do.body227, label %if.end259

do.body227:                                       ; preds = %if.end219
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %67 = load i32, ptr @lbs_debug, align 4
  %and228 = and i32 %67, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %cmp229.not = icmp eq i32 %and228, 0
  br i1 %cmp229.not, label %do.body227.do.end241_crit_edge, label %do.end234

do.body227.do.end241_crit_edge:                   ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end241

do.end234:                                        ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #7
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv220, i32 noundef %conv53) #8
  br label %do.end241

do.end241:                                        ; preds = %do.end234, %do.body227.do.end241_crit_edge
  %68 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %10, label %do.end241.sw.epilog_crit_edge [
    i16 -32765, label %do.end241.do.body243_crit_edge
    i16 -32763, label %do.end241.do.body243_crit_edge388
  ]

do.end241.do.body243_crit_edge388:                ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body243

do.end241.do.body243_crit_edge:                   ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body243

do.end241.sw.epilog_crit_edge:                    ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body243:                                       ; preds = %do.end241.do.body243_crit_edge, %do.end241.do.body243_crit_edge388
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %69 = load i32, ptr @lbs_debug, align 4
  %and244 = and i32 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %cmp245.not = icmp eq i32 %and244, 0
  br i1 %cmp245.not, label %do.body243.sw.epilog_crit_edge, label %do.end250

do.body243.sw.epilog_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end250:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end250, %do.body243.sw.epilog_crit_edge, %do.end241.sw.epilog_crit_edge
  %70 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur_cmd, align 4
  tail call void @__lbs_complete_command(ptr noundef %priv, ptr noundef %71, i32 noundef %conv220) #5
  br label %done

if.end259:                                        ; preds = %if.end219
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #5
  %72 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur_cmd, align 4
  %tobool262.not = icmp eq ptr %73, null
  br i1 %tobool262.not, label %if.end259.do.body273_crit_edge, label %land.lhs.true263

if.end259.do.body273_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body273

land.lhs.true263:                                 ; preds = %if.end259
  %callback = getelementptr inbounds %struct.cmd_ctrl_node, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %callback, align 4
  %tobool265.not = icmp eq ptr %75, null
  br i1 %tobool265.not, label %land.lhs.true263.do.body273_crit_edge, label %if.then266

land.lhs.true263.do.body273_crit_edge:            ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body273

if.then266:                                       ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #7
  %callback_arg = getelementptr inbounds %struct.cmd_ctrl_node, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %callback_arg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %callback_arg, align 4
  %call270 = tail call i32 %75(ptr noundef %priv, i32 noundef %77, ptr noundef %data) #5
  br label %do.body273

do.body273:                                       ; preds = %if.then266, %land.lhs.true263.do.body273_crit_edge, %if.end259.do.body273_crit_edge
  %ret.0 = phi i32 [ %call270, %if.then266 ], [ 0, %land.lhs.true263.do.body273_crit_edge ], [ 0, %if.end259.do.body273_crit_edge ]
  %call281 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #5
  %78 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur_cmd, align 4
  %tobool287.not = icmp eq ptr %79, null
  br i1 %tobool287.not, label %do.body273.done_crit_edge, label %if.then288

do.body273.done_crit_edge:                        ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then288:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__lbs_complete_command(ptr noundef %priv, ptr noundef nonnull %79, i32 noundef 0) #5
  br label %done

done:                                             ; preds = %if.then288, %do.body273.done_crit_edge, %sw.epilog, %if.end215, %if.then74, %if.then64, %if.then44, %do.end11, %do.body5.done_crit_edge
  %flags.0.sink = phi i32 [ %flags.0, %if.end215 ], [ %call2, %sw.epilog ], [ %call2, %if.then74 ], [ %call2, %if.then64 ], [ %call2, %if.then44 ], [ %call2, %do.end11 ], [ %call2, %do.body5.done_crit_edge ], [ %call281, %if.then288 ], [ %call281, %do.body273.done_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end215 ], [ -1, %sw.epilog ], [ -1, %if.then74 ], [ -1, %if.then64 ], [ -1, %if.then44 ], [ -1, %do.end11 ], [ -1, %do.body5.done_crit_edge ], [ %ret.0, %if.then288 ], [ %ret.0, %do.body273.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %flags.0.sink) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lbs_complete_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_process_event(ptr noundef %priv, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cmd_header, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #5
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cmd, align 8
  %1 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %event, label %sw.default [
    i32 4, label %do.body
    i32 8, label %do.body5
    i32 9, label %do.body18
    i32 3, label %do.body31
    i32 11, label %do.body44
    i32 18, label %do.body88
    i32 16, label %sw.bb105
    i32 10, label %do.body126
    i32 14, label %do.body172
    i32 13, label %do.body185
    i32 6, label %do.body198
    i32 7, label %do.body211
    i32 17, label %do.body224
    i32 25, label %sw.bb236
    i32 26, label %sw.bb237
    i32 27, label %sw.bb239
    i32 28, label %sw.bb241
    i32 29, label %sw.bb243
    i32 35, label %sw.bb245
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.sw.epilog_crit_edge, label %do.end

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %3 = load i32, ptr @lbs_debug, align 4
  %and6 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %do.body5.do.end16_crit_edge, label %do.end11

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #8
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body5.do.end16_crit_edge
  tail call void @lbs_mac_event_disconnected(ptr noundef %priv, i1 noundef zeroext false)
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %4 = load i32, ptr @lbs_debug, align 4
  %and19 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %do.body18.do.end29_crit_edge, label %do.end24

do.body18.do.end29_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #8
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.body18.do.end29_crit_edge
  tail call void @lbs_mac_event_disconnected(ptr noundef %priv, i1 noundef zeroext false)
  br label %sw.epilog

do.body31:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %5 = load i32, ptr @lbs_debug, align 4
  %and32 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33.not = icmp eq i32 %and32, 0
  br i1 %cmp33.not, label %do.body31.do.end42_crit_edge, label %do.end37

do.body31.do.end42_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #8
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %do.body31.do.end42_crit_edge
  tail call void @lbs_mac_event_disconnected(ptr noundef %priv, i1 noundef zeroext true)
  br label %sw.epilog

do.body44:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %6 = load i32, ptr @lbs_debug, align 4
  %and45 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp46.not = icmp eq i32 %and45, 0
  br i1 %cmp46.not, label %do.body44.do.end55_crit_edge, label %do.end50

do.body44.do.end55_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #8
  br label %do.end55

do.end55:                                         ; preds = %do.end50, %do.body44.do.end55_crit_edge
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %7 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %psstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp56 = icmp eq i32 %8, 0
  br i1 %cmp56, label %do.body58, label %if.end70

do.body58:                                        ; preds = %do.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %9 = load i32, ptr @lbs_debug, align 4
  %and59 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 0
  br i1 %cmp60.not, label %do.body58.sw.epilog_crit_edge, label %do.end64

do.body58.sw.epilog_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %sw.epilog

if.end70:                                         ; preds = %do.end55
  %cmdpendingq = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 63
  %10 = ptrtoint ptr %cmdpendingq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cmdpendingq, align 4
  %cmp.i.not = icmp eq ptr %11, %cmdpendingq
  br i1 %cmp.i.not, label %if.end85, label %do.body73

do.body73:                                        ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %12 = load i32, ptr @lbs_debug, align 4
  %and74 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %cmp75.not = icmp eq i32 %and74, 0
  br i1 %cmp75.not, label %do.body73.sw.epilog_crit_edge, label %do.end79

do.body73.sw.epilog_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #8
  br label %sw.epilog

if.end85:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %psstate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %psstate, align 4
  tail call void @lbs_ps_confirm_sleep(ptr noundef %priv) #5
  br label %sw.epilog

do.body88:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %14 = load i32, ptr @lbs_debug, align 4
  %and89 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %cmp90.not = icmp eq i32 %and89, 0
  br i1 %cmp90.not, label %do.body88.do.end99_crit_edge, label %do.end94

do.body88.do.end99_crit_edge:                     ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end99

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #8
  br label %do.end99

do.end99:                                         ; preds = %do.end94, %do.body88.do.end99_crit_edge
  %reset_deep_sleep_wakeup = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 52
  %15 = ptrtoint ptr %reset_deep_sleep_wakeup to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_deep_sleep_wakeup, align 4
  %tobool100.not = icmp eq ptr %16, null
  br i1 %tobool100.not, label %do.end99.if.end104_crit_edge, label %if.then101

do.end99.if.end104_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then101:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #7
  %call103 = tail call i32 %16(ptr noundef %priv) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %do.end99.if.end104_crit_edge
  %is_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 28
  %17 = ptrtoint ptr %is_deep_sleep to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %is_deep_sleep, align 4
  call void @lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext 68, ptr noundef nonnull %cmd, i32 noundef 8) #5
  %is_host_sleep_activated = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 37
  %18 = ptrtoint ptr %is_host_sleep_activated to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %is_host_sleep_activated, align 4
  %host_sleep_q = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 38
  call void @__wake_up(ptr noundef %host_sleep_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %sw.epilog

sw.bb105:                                         ; preds = %entry
  %reset_deep_sleep_wakeup106 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 52
  %19 = ptrtoint ptr %reset_deep_sleep_wakeup106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset_deep_sleep_wakeup106, align 4
  %tobool107.not = icmp eq ptr %20, null
  br i1 %tobool107.not, label %sw.bb105.do.body112_crit_edge, label %if.then108

sw.bb105.do.body112_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body112

if.then108:                                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #7
  %call110 = tail call i32 %20(ptr noundef %priv) #5
  br label %do.body112

do.body112:                                       ; preds = %if.then108, %sw.bb105.do.body112_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %21 = load i32, ptr @lbs_debug, align 4
  %and113 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114.not = icmp eq i32 %and113, 0
  br i1 %cmp114.not, label %do.body112.do.end123_crit_edge, label %do.end118

do.body112.do.end123_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end123

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #8
  br label %do.end123

do.end123:                                        ; preds = %do.end118, %do.body112.do.end123_crit_edge
  %is_deep_sleep124 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 28
  %22 = ptrtoint ptr %is_deep_sleep124 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %is_deep_sleep124, align 4
  %wakeup_dev_required = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 31
  %23 = ptrtoint ptr %wakeup_dev_required to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %wakeup_dev_required, align 4
  %ds_awake_q = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %ds_awake_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %sw.epilog

do.body126:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %24 = load i32, ptr @lbs_debug, align 4
  %and127 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %cmp128.not = icmp eq i32 %and127, 0
  br i1 %cmp128.not, label %do.body126.do.end137_crit_edge, label %do.end132

do.body126.do.end137_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end137

do.end132:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #8
  br label %do.end137

do.end137:                                        ; preds = %do.end132, %do.body126.do.end137_crit_edge
  %psstate138 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %25 = ptrtoint ptr %psstate138 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %psstate138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp139 = icmp eq i32 %26, 0
  br i1 %cmp139, label %do.body141, label %if.end153

do.body141:                                       ; preds = %do.end137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %27 = load i32, ptr @lbs_debug, align 4
  %and142 = and i32 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %cmp143.not = icmp eq i32 %and142, 0
  br i1 %cmp143.not, label %do.body141.sw.epilog_crit_edge, label %do.end147

do.body141.sw.epilog_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end147:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #7
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #8
  br label %sw.epilog

if.end153:                                        ; preds = %do.end137
  %28 = ptrtoint ptr %psstate138 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %psstate138, align 4
  %needtowakeup = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 27
  %29 = ptrtoint ptr %needtowakeup to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %needtowakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool155.not = icmp eq i8 %30, 0
  br i1 %tobool155.not, label %if.end153.sw.epilog_crit_edge, label %do.body157

if.end153.sw.epilog_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body157:                                       ; preds = %if.end153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %31 = load i32, ptr @lbs_debug, align 4
  %and158 = and i32 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %cmp159.not = icmp eq i32 %and158, 0
  br i1 %cmp159.not, label %do.body157.do.end168_crit_edge, label %do.end163

do.body157.do.end168_crit_edge:                   ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end168

do.end163:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #7
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #8
  br label %do.end168

do.end168:                                        ; preds = %do.end163, %do.body157.do.end168_crit_edge
  %call169 = tail call i32 @lbs_set_ps_mode(ptr noundef %priv, i16 noundef zeroext 49, i1 noundef zeroext false) #5
  br label %sw.epilog

do.body172:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %32 = load i32, ptr @lbs_debug, align 4
  %and173 = and i32 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %cmp174.not = icmp eq i32 %and173, 0
  br i1 %cmp174.not, label %do.body172.do.end183_crit_edge, label %do.end178

do.body172.do.end183_crit_edge:                   ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end183

do.end178:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #7
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #8
  br label %do.end183

do.end183:                                        ; preds = %do.end178, %do.body172.do.end183_crit_edge
  tail call void @lbs_send_mic_failureevent(ptr noundef %priv, i32 noundef 14) #5
  br label %sw.epilog

do.body185:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %33 = load i32, ptr @lbs_debug, align 4
  %and186 = and i32 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %cmp187.not = icmp eq i32 %and186, 0
  br i1 %cmp187.not, label %do.body185.do.end196_crit_edge, label %do.end191

do.body185.do.end196_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end196

do.end191:                                        ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #7
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #8
  br label %do.end196

do.end196:                                        ; preds = %do.end191, %do.body185.do.end196_crit_edge
  tail call void @lbs_send_mic_failureevent(ptr noundef %priv, i32 noundef 13) #5
  br label %sw.epilog

do.body198:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %34 = load i32, ptr @lbs_debug, align 4
  %and199 = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %cmp200.not = icmp eq i32 %and199, 0
  br i1 %cmp200.not, label %do.body198.sw.epilog_crit_edge, label %do.end204

do.body198.sw.epilog_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end204:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #8
  br label %sw.epilog

do.body211:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %35 = load i32, ptr @lbs_debug, align 4
  %and212 = and i32 %35, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %cmp213.not = icmp eq i32 %and212, 0
  br i1 %cmp213.not, label %do.body211.sw.epilog_crit_edge, label %do.end217

do.body211.sw.epilog_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end217:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #7
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #8
  br label %sw.epilog

do.body224:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %36 = load i32, ptr @lbs_debug, align 4
  %and225 = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %cmp226.not = icmp eq i32 %and225, 0
  br i1 %cmp226.not, label %do.body224.sw.epilog_crit_edge, label %do.end230

do.body224.sw.epilog_crit_edge:                   ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end230:                                        ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #7
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #8
  br label %sw.epilog

sw.bb236:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %38, ptr noundef nonnull @.str.86) #8
  br label %sw.epilog

sw.bb237:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %40, ptr noundef nonnull @.str.87) #8
  br label %sw.epilog

sw.bb239:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %42, ptr noundef nonnull @.str.88) #8
  br label %sw.epilog

sw.bb241:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %44, ptr noundef nonnull @.str.89) #8
  br label %sw.epilog

sw.bb243:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %46, ptr noundef nonnull @.str.90) #8
  br label %sw.epilog

sw.bb245:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %48, ptr noundef nonnull @.str.91) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %50, ptr noundef nonnull @.str.92, i32 noundef %event) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb245, %sw.bb243, %sw.bb241, %sw.bb239, %sw.bb237, %sw.bb236, %do.end230, %do.body224.sw.epilog_crit_edge, %do.end217, %do.body211.sw.epilog_crit_edge, %do.end204, %do.body198.sw.epilog_crit_edge, %do.end196, %do.end183, %do.end168, %if.end153.sw.epilog_crit_edge, %do.end147, %do.body141.sw.epilog_crit_edge, %do.end123, %if.end104, %if.end85, %do.end79, %do.body73.sw.epilog_crit_edge, %do.end64, %do.body58.sw.epilog_crit_edge, %do.end42, %do.end29, %do.end16, %do.end, %do.body.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_ps_confirm_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_cmd_async(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_send_mic_failureevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 60, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lbs_mac_event_disconnected._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lbs_mac_event_disconnected._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 77, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lbs_process_command_response._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @lbs_process_command_response._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 88, i32 2}
!13 = !{ptr @lbs_process_command_response._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @lbs_process_command_response._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 90, i32 27}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 94, i32 8}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 103, i32 26}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 114, i32 8}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 132, i32 3}
!25 = !{ptr @lbs_process_command_response._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @lbs_process_command_response._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 137, i32 4}
!29 = !{ptr @lbs_process_command_response._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lbs_process_command_response._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 151, i32 4}
!33 = !{ptr @lbs_process_command_response._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lbs_process_command_response._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 157, i32 5}
!37 = !{ptr @lbs_process_command_response._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lbs_process_command_response._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 170, i32 4}
!41 = !{ptr @lbs_process_command_response._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @lbs_process_command_response._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 172, i32 4}
!45 = !{ptr @lbs_process_command_response._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @lbs_process_command_response._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 184, i32 3}
!49 = !{ptr @lbs_process_command_response._entry.30, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @lbs_process_command_response._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 192, i32 4}
!53 = !{ptr @lbs_process_command_response._entry.33, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lbs_process_command_response._entry_ptr.35, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 229, i32 3}
!57 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lbs_process_event._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @lbs_process_event._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 233, i32 3}
!62 = !{ptr @lbs_process_event._entry.38, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lbs_process_event._entry_ptr.40, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.42, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 238, i32 3}
!66 = !{ptr @lbs_process_event._entry.41, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lbs_process_event._entry_ptr.43, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 243, i32 3}
!70 = !{ptr @lbs_process_event._entry.44, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lbs_process_event._entry_ptr.46, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 248, i32 3}
!74 = !{ptr @lbs_process_event._entry.47, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @lbs_process_event._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.51, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 252, i32 4}
!78 = !{ptr @lbs_process_event._entry.50, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lbs_process_event._entry_ptr.52, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.54, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 257, i32 4}
!82 = !{ptr @lbs_process_event._entry.53, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lbs_process_event._entry_ptr.55, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.57, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 267, i32 3}
!86 = !{ptr @lbs_process_event._entry.56, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @lbs_process_event._entry_ptr.58, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.60, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 280, i32 3}
!90 = !{ptr @lbs_process_event._entry.59, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @lbs_process_event._entry_ptr.61, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.63, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 287, i32 3}
!94 = !{ptr @lbs_process_event._entry.62, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @lbs_process_event._entry_ptr.64, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.66, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 290, i32 4}
!98 = !{ptr @lbs_process_event._entry.65, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @lbs_process_event._entry_ptr.67, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.69, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 304, i32 4}
!102 = !{ptr @lbs_process_event._entry.68, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @lbs_process_event._entry_ptr.70, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.72, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 310, i32 3}
!106 = !{ptr @lbs_process_event._entry.71, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @lbs_process_event._entry_ptr.73, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.75, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 315, i32 3}
!110 = !{ptr @lbs_process_event._entry.74, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @lbs_process_event._entry_ptr.76, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.78, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 320, i32 3}
!114 = !{ptr @lbs_process_event._entry.77, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @lbs_process_event._entry_ptr.79, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.81, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 323, i32 3}
!118 = !{ptr @lbs_process_event._entry.80, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @lbs_process_event._entry_ptr.82, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.84, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 326, i32 3}
!122 = !{ptr @lbs_process_event._entry.83, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @lbs_process_event._entry_ptr.85, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.86, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 329, i32 27}
!126 = !{ptr @.str.87, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 332, i32 27}
!128 = !{ptr @.str.88, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 335, i32 27}
!130 = !{ptr @.str.89, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 338, i32 27}
!132 = !{ptr @.str.90, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 341, i32 27}
!134 = !{ptr @.str.91, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 346, i32 26}
!136 = !{ptr @.str.92, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/marvell/libertas/cmdresp.c", i32 350, i32 27}
!138 = !{ptr @.str.93, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 96, i32 6}
!140 = !{ptr @.str.94, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.95, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @lbs_deb_hex._entry, !139, !"_entry", i1 false, i1 false}
!143 = !{ptr @lbs_deb_hex._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.97, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 97, i32 5}
!146 = !{ptr @lbs_deb_hex._entry.96, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @lbs_deb_hex._entry_ptr.98, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.100, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 99, i32 4}
!150 = !{ptr @lbs_deb_hex._entry.99, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @lbs_deb_hex._entry_ptr.101, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @lbs_deb_hex._entry.102, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 102, i32 3}
!154 = !{ptr @lbs_deb_hex._entry_ptr.103, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
