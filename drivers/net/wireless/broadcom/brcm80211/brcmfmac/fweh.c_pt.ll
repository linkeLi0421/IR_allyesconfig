; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmf_fweh_event_name = type { i32, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_fweh_queue_item = type <{ %struct.list_head, i32, i8, [6 x i8], %struct.brcmf_event_msg_be, i8, i32, [0 x i8] }>
%struct.brcmf_event_msg_be = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_if_event = type { i8, i8, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.anon.103 = type { i64, i64, i8 }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_event = type { %struct.ethhdr, %struct.brcm_ethhdr, %struct.brcmf_event_msg_be }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.brcm_ethhdr = type { i16, i16, i8, [3 x i8], i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@fweh_event_names = internal constant { [72 x %struct.brcmf_fweh_event_name], [128 x i8] } { [72 x %struct.brcmf_fweh_event_name] [%struct.brcmf_fweh_event_name { i32 0, ptr @.str.15 }, %struct.brcmf_fweh_event_name { i32 1, ptr @.str.16 }, %struct.brcmf_fweh_event_name { i32 2, ptr @.str.17 }, %struct.brcmf_fweh_event_name { i32 3, ptr @.str.18 }, %struct.brcmf_fweh_event_name { i32 4, ptr @.str.19 }, %struct.brcmf_fweh_event_name { i32 5, ptr @.str.20 }, %struct.brcmf_fweh_event_name { i32 6, ptr @.str.21 }, %struct.brcmf_fweh_event_name { i32 7, ptr @.str.22 }, %struct.brcmf_fweh_event_name { i32 8, ptr @.str.23 }, %struct.brcmf_fweh_event_name { i32 9, ptr @.str.24 }, %struct.brcmf_fweh_event_name { i32 10, ptr @.str.25 }, %struct.brcmf_fweh_event_name { i32 11, ptr @.str.26 }, %struct.brcmf_fweh_event_name { i32 12, ptr @.str.27 }, %struct.brcmf_fweh_event_name { i32 13, ptr @.str.28 }, %struct.brcmf_fweh_event_name { i32 14, ptr @.str.29 }, %struct.brcmf_fweh_event_name { i32 15, ptr @.str.30 }, %struct.brcmf_fweh_event_name { i32 16, ptr @.str.31 }, %struct.brcmf_fweh_event_name { i32 17, ptr @.str.32 }, %struct.brcmf_fweh_event_name { i32 18, ptr @.str.33 }, %struct.brcmf_fweh_event_name { i32 19, ptr @.str.34 }, %struct.brcmf_fweh_event_name { i32 20, ptr @.str.35 }, %struct.brcmf_fweh_event_name { i32 21, ptr @.str.36 }, %struct.brcmf_fweh_event_name { i32 22, ptr @.str.37 }, %struct.brcmf_fweh_event_name { i32 23, ptr @.str.38 }, %struct.brcmf_fweh_event_name { i32 24, ptr @.str.39 }, %struct.brcmf_fweh_event_name { i32 25, ptr @.str.40 }, %struct.brcmf_fweh_event_name { i32 26, ptr @.str.41 }, %struct.brcmf_fweh_event_name { i32 27, ptr @.str.42 }, %struct.brcmf_fweh_event_name { i32 28, ptr @.str.43 }, %struct.brcmf_fweh_event_name { i32 29, ptr @.str.44 }, %struct.brcmf_fweh_event_name { i32 30, ptr @.str.45 }, %struct.brcmf_fweh_event_name { i32 31, ptr @.str.46 }, %struct.brcmf_fweh_event_name { i32 32, ptr @.str.47 }, %struct.brcmf_fweh_event_name { i32 33, ptr @.str.48 }, %struct.brcmf_fweh_event_name { i32 34, ptr @.str.49 }, %struct.brcmf_fweh_event_name { i32 35, ptr @.str.50 }, %struct.brcmf_fweh_event_name { i32 36, ptr @.str.51 }, %struct.brcmf_fweh_event_name { i32 37, ptr @.str.52 }, %struct.brcmf_fweh_event_name { i32 38, ptr @.str.53 }, %struct.brcmf_fweh_event_name { i32 39, ptr @.str.54 }, %struct.brcmf_fweh_event_name { i32 40, ptr @.str.55 }, %struct.brcmf_fweh_event_name { i32 41, ptr @.str.56 }, %struct.brcmf_fweh_event_name { i32 44, ptr @.str.57 }, %struct.brcmf_fweh_event_name { i32 45, ptr @.str.58 }, %struct.brcmf_fweh_event_name { i32 46, ptr @.str.59 }, %struct.brcmf_fweh_event_name { i32 47, ptr @.str.60 }, %struct.brcmf_fweh_event_name { i32 48, ptr @.str.61 }, %struct.brcmf_fweh_event_name { i32 49, ptr @.str.62 }, %struct.brcmf_fweh_event_name { i32 50, ptr @.str.63 }, %struct.brcmf_fweh_event_name { i32 51, ptr @.str.64 }, %struct.brcmf_fweh_event_name { i32 52, ptr @.str.65 }, %struct.brcmf_fweh_event_name { i32 54, ptr @.str.66 }, %struct.brcmf_fweh_event_name { i32 55, ptr @.str.67 }, %struct.brcmf_fweh_event_name { i32 56, ptr @.str.68 }, %struct.brcmf_fweh_event_name { i32 58, ptr @.str.69 }, %struct.brcmf_fweh_event_name { i32 59, ptr @.str.70 }, %struct.brcmf_fweh_event_name { i32 60, ptr @.str.71 }, %struct.brcmf_fweh_event_name { i32 61, ptr @.str.72 }, %struct.brcmf_fweh_event_name { i32 62, ptr @.str.73 }, %struct.brcmf_fweh_event_name { i32 63, ptr @.str.74 }, %struct.brcmf_fweh_event_name { i32 64, ptr @.str.75 }, %struct.brcmf_fweh_event_name { i32 65, ptr @.str.76 }, %struct.brcmf_fweh_event_name { i32 66, ptr @.str.77 }, %struct.brcmf_fweh_event_name { i32 69, ptr @.str.78 }, %struct.brcmf_fweh_event_name { i32 70, ptr @.str.79 }, %struct.brcmf_fweh_event_name { i32 71, ptr @.str.80 }, %struct.brcmf_fweh_event_name { i32 72, ptr @.str.81 }, %struct.brcmf_fweh_event_name { i32 73, ptr @.str.82 }, %struct.brcmf_fweh_event_name { i32 74, ptr @.str.83 }, %struct.brcmf_fweh_event_name { i32 75, ptr @.str.84 }, %struct.brcmf_fweh_event_name { i32 92, ptr @.str.85 }, %struct.brcmf_fweh_event_name { i32 127, ptr @.str.86 }], [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@brcmf_fweh_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&fweh->event_work)\00", [59 x i8] zeroinitializer }, align 32
@brcmf_fweh_attach.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&fweh->evt_q_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c\00", [40 x i8] zeroinitializer }, align 32
@brcmf_fweh_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 326, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: event code %d already registered\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcmf_fweh_register\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_fweh_register._entry_ptr = internal global ptr @brcmf_fweh_register._entry, section ".printk_index", align 4
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"event handler registered for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.brcmf_fweh_unregister = private unnamed_addr constant [22 x i8] c"brcmf_fweh_unregister\00", align 1
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"event handler cleared for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.brcmf_fweh_activate_events = private unnamed_addr constant [27 x i8] c"brcmf_fweh_activate_events\00", align 1
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enable event %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enable event IF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event_msgs\00", [21 x i8] zeroinitializer }, align 32
@brcmf_fweh_activate_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.brcmf_fweh_activate_events, ptr @.str.4, i32 376, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Set event_msgs error (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_fweh_activate_events._entry_ptr = internal global ptr @brcmf_fweh_activate_events._entry, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SET_SSID\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JOIN\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"START\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUTH\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUTH_IND\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DEAUTH\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEAUTH_IND\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ASSOC\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASSOC_IND\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REASSOC\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REASSOC_IND\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISASSOC\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DISASSOC_IND\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QUIET_START\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUIET_END\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BEACON_RX\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINK\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NDIS_LINK\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ROAM\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TXFAIL\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PMKID_CACHE\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RETROGRADE_TSF\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PRUNE\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUTOAUTH\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EAPOL_MSG\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCAN_COMPLETE\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADDTS_IND\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DELTS_IND\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCNSENT_IND\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BCNRX_MSG\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCNLOST_MSG\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ROAM_PREP\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PFN_NET_FOUND\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PFN_NET_LOST\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RESET_COMPLETE\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JOIN_START\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ROAM_START\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ASSOC_START\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IBSS_ASSOC\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RADIO\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PSM_WATCHDOG\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PROBREQ_MSG\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SCAN_CONFIRM_IND\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PSK_SUP\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"COUNTRY_CODE_CHANGED\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EXCEEDED_MEDIUM_TIME\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ICV_ERROR\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNICAST_DECODE_ERROR\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MULTICAST_DECODE_ERROR\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TRACE\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IF\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"P2P_DISC_LISTEN_COMPLETE\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSSI\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXTLOG_MSG\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACTION_FRAME\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ACTION_FRAME_COMPLETE\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PRE_ASSOC_IND\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PRE_REASSOC_IND\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CHANNEL_ADOPTED\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AP_STARTED\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DFS_AP_STOP\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DFS_AP_RESUME\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ESCAN_RESULT\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ACTION_FRAME_OFF_CHAN_COMPLETE\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PROBERESP_MSG\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"P2P_PROBEREQ_MSG\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DCS_REQUEST\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIFO_CREDIT_MAP\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ACTION_FRAME_RX\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TDLS_PEER_EVENT\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BCMC_CREDIT_SUPPORT\00", [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_fweh_event_worker = private unnamed_addr constant [24 x i8] c"brcmf_fweh_event_worker\00", align 1
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"event %s (%u) ifidx %u bsscfg %u addr %pM\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  version %u flags %u status %u reason %u\0A\00", [53 x i8] zeroinitializer }, align 32
@brcmf_msg_level = external dso_local local_unnamed_addr global i32, align 4
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event payload, len=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmf_fweh_event_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.brcmf_fweh_event_worker, ptr @.str.4, i32 266, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: event handler failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_fweh_event_worker._entry_ptr = internal global ptr @brcmf_fweh_event_worker._entry, section ".printk_index", align 4
@__tracepoint_brcmf_hexdump = external dso_local global %struct.tracepoint, align 4
@.str.91 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", [34 x i8] zeroinitializer }, align 32
@trace_brcmf_hexdump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.brcmf_fweh_handle_if_event = private unnamed_addr constant [27 x i8] c"brcmf_fweh_handle_if_event\00", align 1
@.str.94 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"action: %u ifidx: %u bsscfgidx: %u flags: %u role: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event can be ignored\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmf_fweh_handle_if_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @__func__.brcmf_fweh_handle_if_event, ptr @.str.4, i32 151, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: invalid interface index: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmf_fweh_handle_if_event._entry_ptr = internal global ptr @brcmf_fweh_handle_if_event._entry, section ".printk_index", align 4
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adding %s (%pM)\0A\00", [47 x i8] zeroinitializer }, align 32
@brcmf_fweh_call_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 111, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: unhandled event %d ignored\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"brcmf_fweh_call_event_handler\00", [34 x i8] zeroinitializer }, align 32
@brcmf_fweh_call_event_handler._entry_ptr = internal global ptr @brcmf_fweh_call_event_handler._entry, section ".printk_index", align 4
@brcmf_fweh_call_event_handler._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 113, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: no interface object\0A\00", [39 x i8] zeroinitializer }, align 32
@brcmf_fweh_call_event_handler._entry_ptr.102 = internal global ptr @brcmf_fweh_call_event_handler._entry.100, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 54, i64 92]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"fweh_event_names\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 52, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 69, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 293, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 294, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 310, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 326, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 330, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 344, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 363, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 370, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 373, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 376, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 53, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 227, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 246, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 248, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 265, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant [65 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 65, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 108, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 133, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 147, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 151, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 158, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 111, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 113, i32 3 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @brcmf_fweh_activate_events._entry, ptr @brcmf_fweh_activate_events._entry_ptr, ptr @brcmf_fweh_call_event_handler._entry, ptr @brcmf_fweh_call_event_handler._entry.100, ptr @brcmf_fweh_call_event_handler._entry_ptr, ptr @brcmf_fweh_call_event_handler._entry_ptr.102, ptr @brcmf_fweh_event_worker._entry, ptr @brcmf_fweh_event_worker._entry_ptr, ptr @brcmf_fweh_handle_if_event._entry, ptr @brcmf_fweh_handle_if_event._entry_ptr, ptr @brcmf_fweh_register._entry, ptr @brcmf_fweh_register._entry_ptr, ptr @fweh_event_names, ptr @.str, ptr @brcmf_fweh_attach.__key, ptr @.str.1, ptr @brcmf_fweh_attach.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fweh_event_names to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_attach.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_activate_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_event_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_handle_if_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_call_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fweh_call_event_handler._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_fweh_event_name(i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %code)
  %cmp2 = icmp eq i32 %1, %code
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 72
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ @.str, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_fweh_p2pdev_setup(ptr nocapture noundef readonly %ifp, i1 noundef zeroext %ongoing) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ongoing to i8
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %fweh = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fweh to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %fweh, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fweh_attach(ptr noundef %drvr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %event_work = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1
  tail call void @__init_work(ptr noundef %event_work, i32 noundef 0) #10
  %0 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @brcmf_fweh_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry5 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1, i32 1
  %1 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @brcmf_fweh_event_worker, ptr %func, align 4
  %evt_q_lock = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %evt_q_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @brcmf_fweh_attach.__key.2, i16 noundef signext 3) #10
  %event_q = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 3
  %4 = ptrtoint ptr %event_q to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %event_q, ptr %event_q, align 4
  %prev.i16 = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %event_q, ptr %prev.i16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_fweh_event_worker(ptr noundef %work) #3 align 64 {
entry:
  %emsg = alloca %struct.brcmf_event_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %emsg) #10
  %0 = call ptr @memset(ptr %emsg, i32 255, i32 48)
  %add.ptr3 = getelementptr i8, ptr %work, i32 -8580
  %evt_q_lock.i = getelementptr i8, ptr %work, i32 44
  %call2.i139 = call i32 @_raw_spin_lock_irqsave(ptr noundef %evt_q_lock.i) #10
  %event_q.i = getelementptr i8, ptr %work, i32 88
  %1 = ptrtoint ptr %event_q.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %event_q.i, align 4
  %cmp.i.not.i140 = icmp eq ptr %2, %event_q.i
  br i1 %cmp.i.not.i140, label %entry.brcmf_fweh_dequeue_event.exit.thread_crit_edge, label %if.then.i.lr.ph

entry.brcmf_fweh_dequeue_event.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_dequeue_event.exit.thread

if.then.i.lr.ph:                                  ; preds = %entry
  %flags12 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 1
  %event_code = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 2
  %status14 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 3
  %reason15 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 4
  %auth_type16 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 5
  %datalen17 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 6
  %addr18 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 7
  %ifname = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 8
  %ifidx26 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 9
  %bsscfgidx28 = getelementptr inbounds %struct.brcmf_event_msg, ptr %emsg, i32 0, i32 10
  %iflist = getelementptr i8, ptr %work, i32 -8420
  %fweh.i = getelementptr i8, ptr %work, i32 -4
  %proto.i.i = getelementptr i8, ptr %work, i32 -8576
  %arrayidx66.i = getelementptr i8, ptr %work, i32 312
  %wiphy.i154.i = getelementptr i8, ptr %work, i32 -8572
  %config.i = getelementptr i8, ptr %work, i32 -8564
  br label %if.then.i

brcmf_fweh_dequeue_event.exit.thread:             ; preds = %event_free.brcmf_fweh_dequeue_event.exit.thread_crit_edge, %entry.brcmf_fweh_dequeue_event.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i139, %entry.brcmf_fweh_dequeue_event.exit.thread_crit_edge ], [ %call2.i, %event_free.brcmf_fweh_dequeue_event.exit.thread_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %evt_q_lock.i, i32 noundef %call2.i.lcssa) #10
  br label %while.end

if.then.i:                                        ; preds = %event_free.if.then.i_crit_edge, %if.then.i.lr.ph
  %3 = phi ptr [ %2, %if.then.i.lr.ph ], [ %144, %event_free.if.then.i_crit_edge ]
  %call2.i141 = phi i32 [ %call2.i139, %if.then.i.lr.ph ], [ %call2.i, %event_free.if.then.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.brcmf_fweh_dequeue_event.exit_crit_edge

if.then.i.brcmf_fweh_dequeue_event.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_dequeue_event.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %brcmf_fweh_dequeue_event.exit

brcmf_fweh_dequeue_event.exit:                    ; preds = %if.end.i.i.i, %if.then.i.brcmf_fweh_dequeue_event.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %evt_q_lock.i, i32 noundef %call2.i141) #10
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %brcmf_fweh_dequeue_event.exit.while.end_crit_edge, label %do.body

brcmf_fweh_dequeue_event.exit.while.end_crit_edge: ; preds = %brcmf_fweh_dequeue_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body:                                          ; preds = %brcmf_fweh_dequeue_event.exit
  %code = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body
  %i.08.i = phi i32 [ 0, %do.body ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp2.i = icmp eq i32 %15, %13
  br i1 %cmp2.i, label %if.then.i124, label %for.inc.i

if.then.i124:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i, i32 1
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  br label %brcmf_fweh_event_name.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 72
  br i1 %exitcond.not.i, label %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.brcmf_fweh_event_name.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_event_name.exit

brcmf_fweh_event_name.exit:                       ; preds = %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, %if.then.i124
  %retval.0.i = phi ptr [ %17, %if.then.i124 ], [ @.str, %for.inc.i.brcmf_fweh_event_name.exit_crit_edge ]
  %emsg6 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4
  %ifidx = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 9
  %18 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ifidx, align 1
  %conv = zext i8 %19 to i32
  %bsscfgidx = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 10
  %20 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bsscfgidx, align 1
  %conv8 = zext i8 %21 to i32
  %addr = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 7
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_fweh_event_worker, ptr noundef nonnull @.str.87, ptr noundef %retval.0.i, i32 noundef %13, i32 noundef %conv, i32 noundef %conv8, ptr noundef %addr) #10
  %22 = ptrtoint ptr %emsg6 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %emsg6, align 1
  %24 = ptrtoint ptr %emsg to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %emsg, align 4
  %flags = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %flags, align 1
  %27 = ptrtoint ptr %flags12 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %flags12, align 2
  %28 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code, align 4
  %30 = ptrtoint ptr %event_code to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %event_code, align 4
  %status = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %status, align 1
  %33 = ptrtoint ptr %status14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %status14, align 4
  %reason = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %reason to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %reason, align 1
  %36 = ptrtoint ptr %reason15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %reason15, align 4
  %auth_type = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 5
  %37 = ptrtoint ptr %auth_type to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %auth_type, align 1
  %39 = ptrtoint ptr %auth_type16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %auth_type16, align 4
  %datalen = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %datalen to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %datalen, align 1
  %42 = ptrtoint ptr %datalen17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %datalen17, align 4
  %43 = call ptr @memcpy(ptr %addr18, ptr %addr, i32 6)
  %ifname23 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 4, i32 8
  %44 = call ptr @memcpy(ptr %ifname, ptr %ifname23, i32 16)
  %45 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ifidx, align 1
  %47 = ptrtoint ptr %ifidx26 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %ifidx26, align 2
  %48 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bsscfgidx, align 1
  %50 = ptrtoint ptr %bsscfgidx28 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %bsscfgidx28, align 1
  %conv31 = zext i16 %23 to i32
  %conv33 = zext i16 %26 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_fweh_event_worker, ptr noundef nonnull @.str.88, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %32, i32 noundef %35) #10
  %data = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 0, i32 7
  %51 = ptrtoint ptr %datalen17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %datalen17, align 4
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 64)
  call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %53)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %54 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %brcmf_fweh_event_name.exit.do.end58_crit_edge, label %if.then

brcmf_fweh_event_name.exit.do.end58_crit_edge:    ; preds = %brcmf_fweh_event_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

if.then:                                          ; preds = %brcmf_fweh_event_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %datalen17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %datalen17, align 4
  %57 = call i32 @llvm.umin.i32(i32 %56, i32 64)
  call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %57, ptr noundef nonnull @.str.89, i32 noundef %56) #10
  br label %do.end58

do.end58:                                         ; preds = %if.then, %brcmf_fweh_event_name.exit.do.end58_crit_edge
  %58 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %code, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %59, label %if.else [
    i32 54, label %if.then62
    i32 92, label %do.end58.if.end73_crit_edge
  ]

do.end58.if.end73_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then62:                                        ; preds = %do.end58
  %action.i = getelementptr inbounds %struct.brcmf_if_event, ptr %data, i32 0, i32 1
  %61 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %action.i, align 1
  %conv.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %data, align 1
  %conv1.i = zext i8 %64 to i32
  %bsscfgidx.i = getelementptr inbounds %struct.brcmf_if_event, ptr %data, i32 0, i32 3
  %65 = ptrtoint ptr %bsscfgidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bsscfgidx.i, align 1
  %conv2.i = zext i8 %66 to i32
  %flags.i = getelementptr inbounds %struct.brcmf_if_event, ptr %data, i32 0, i32 2
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags.i, align 1
  %conv3.i = zext i8 %68 to i32
  %role.i = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %3, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %role.i, align 1
  %conv4.i = zext i8 %70 to i32
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_fweh_handle_if_event, ptr noundef nonnull @.str.94, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #10
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %flags.i, align 1
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i, label %if.then62.if.end.i_crit_edge, label %land.rhs.i

if.then62.if.end.i_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then62
  %74 = ptrtoint ptr %role.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %role.i, align 1
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %75, label %land.rhs.i.do.body23.i_crit_edge [
    i8 4, label %land.rhs.i.if.end.i_crit_edge
    i8 0, label %land.end17.i
  ]

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i.do.body23.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i

land.end17.i:                                     ; preds = %land.rhs.i
  %77 = ptrtoint ptr %fweh.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fweh.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool15.not.i = icmp eq i8 %78, 0
  br i1 %tobool15.not.i, label %land.end17.i.do.body23.i_crit_edge, label %land.end17.i.if.end.i_crit_edge

land.end17.i.if.end.i_crit_edge:                  ; preds = %land.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.end17.i.do.body23.i_crit_edge:               ; preds = %land.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i

do.body23.i:                                      ; preds = %land.end17.i.do.body23.i_crit_edge, %land.rhs.i.do.body23.i_crit_edge
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_fweh_handle_if_event, ptr noundef nonnull @.str.95) #10
  br label %event_free

if.end.i:                                         ; preds = %land.end17.i.if.end.i_crit_edge, %land.rhs.i.if.end.i_crit_edge, %if.then62.if.end.i_crit_edge
  %79 = xor i1 %tobool.not.i, true
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %81)
  %cmp28.i = icmp ugt i8 %81, 15
  br i1 %cmp28.i, label %do.end34.i, label %if.end39.i

do.end34.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv27.i = zext i8 %81 to i32
  %82 = ptrtoint ptr %wiphy.i154.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy.i154.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.brcmf_fweh_handle_if_event, i32 noundef %conv27.i) #13
  br label %event_free

if.end39.i:                                       ; preds = %if.end.i
  %84 = ptrtoint ptr %bsscfgidx.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bsscfgidx.i, align 1
  %idxprom.i = zext i8 %85 to i32
  %arrayidx.i125 = getelementptr %struct.brcmf_pub, ptr %add.ptr3, i32 0, i32 9, i32 %idxprom.i
  %86 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i125, align 4
  %88 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp43.i = icmp eq i8 %89, 1
  br i1 %cmp43.i, label %do.body46.i, label %if.end39.i.if.end75.i_crit_edge

if.end39.i.if.end75.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

do.body46.i:                                      ; preds = %if.end39.i
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_fweh_handle_if_event, ptr noundef nonnull @.str.97, ptr noundef %ifname, ptr noundef %addr18) #10
  %90 = ptrtoint ptr %bsscfgidx.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bsscfgidx.i, align 1
  %conv51.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %data, align 1
  %conv53.i = zext i8 %93 to i32
  %call.i = call ptr @brcmf_add_if(ptr noundef %add.ptr3, i32 noundef %conv51.i, i32 noundef %conv53.i, i1 noundef zeroext %79, ptr noundef %ifname, ptr noundef %addr18) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body46.i.event_free_crit_edge, label %if.end61.i

do.body46.i.event_free_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %event_free

if.end61.i:                                       ; preds = %do.body46.i
  br i1 %tobool.not.i, label %if.then63.i, label %if.end61.i.if.end64.i_crit_edge

if.end61.i.if.end64.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then63.i:                                      ; preds = %if.end61.i
  %94 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %proto.i.i, align 4
  %add_if.i.i = getelementptr inbounds %struct.brcmf_proto, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %add_if.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add_if.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i, label %if.then63.i.if.end64.i_crit_edge, label %if.end.i.i

if.then63.i.if.end64.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.end.i.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %97(ptr noundef %call.i) #10
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end.i.i, %if.then63.i.if.end64.i_crit_edge, %if.end61.i.if.end64.i_crit_edge
  %98 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx66.i, align 4
  %tobool67.not.i = icmp eq ptr %99, null
  br i1 %tobool67.not.i, label %if.then68.i, label %if.end64.i.if.end75.i_crit_edge

if.end64.i.if.end75.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

if.then68.i:                                      ; preds = %if.end64.i
  %call69.i = call i32 @brcmf_net_attach(ptr noundef %call.i, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %if.then68.i.event_free_crit_edge, label %if.then68.i.if.end75.i_crit_edge

if.then68.i.if.end75.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

if.then68.i.event_free_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %event_free

if.end75.i:                                       ; preds = %if.then68.i.if.end75.i_crit_edge, %if.end64.i.if.end75.i_crit_edge, %if.end39.i.if.end75.i_crit_edge
  %ifp.0.i = phi ptr [ %call.i, %if.end64.i.if.end75.i_crit_edge ], [ %call.i, %if.then68.i.if.end75.i_crit_edge ], [ %87, %if.end39.i.if.end75.i_crit_edge ]
  %tobool76.not.i = icmp eq ptr %ifp.0.i, null
  br i1 %tobool76.not.i, label %brcmf_fweh_call_event_handler.exit175.i, label %land.lhs.true77.i

land.lhs.true77.i:                                ; preds = %if.end75.i
  %100 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %101)
  %cmp80.i = icmp eq i8 %101, 3
  br i1 %cmp80.i, label %if.then82.i, label %if.then.i151.i

if.then82.i:                                      ; preds = %land.lhs.true77.i
  %102 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %proto.i.i, align 4
  %reset_if.i.i = getelementptr inbounds %struct.brcmf_proto, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %reset_if.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reset_if.i.i, align 4
  %tobool.not.i145.i = icmp eq ptr %105, null
  br i1 %tobool.not.i145.i, label %if.then82.i.if.then.i.i_crit_edge, label %if.end.i146.i

if.then82.i.if.then.i.i_crit_edge:                ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end.i146.i:                                    ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %105(ptr noundef nonnull %ifp.0.i) #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i146.i, %if.then82.i.if.then.i.i_crit_edge
  %106 = ptrtoint ptr %event_code to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %event_code, align 4
  %108 = ptrtoint ptr %ifp.0.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ifp.0.i, align 4
  %arrayidx.i.i = getelementptr %struct.brcmf_pub, ptr %109, i32 0, i32 14, i32 4, i32 %107
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %111, null
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 %111(ptr noundef nonnull %ifp.0.i, ptr noundef nonnull %emsg, ptr noundef %data) #10
  br label %land.lhs.true86.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %wiphy.i154.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wiphy.i154.i, align 4
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %113, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %107) #13
  br label %land.lhs.true86.i

if.then.i151.i:                                   ; preds = %land.lhs.true77.i
  %114 = ptrtoint ptr %event_code to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %event_code, align 4
  %116 = ptrtoint ptr %ifp.0.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ifp.0.i, align 4
  %arrayidx.i149.i = getelementptr %struct.brcmf_pub, ptr %117, i32 0, i32 14, i32 4, i32 %115
  %118 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i149.i, align 4
  %tobool3.not.i150.i = icmp eq ptr %119, null
  br i1 %tobool3.not.i150.i, label %do.end.i156.i, label %if.then4.i153.i

if.then4.i153.i:                                  ; preds = %if.then.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i152.i = call i32 %119(ptr noundef nonnull %ifp.0.i, ptr noundef nonnull %emsg, ptr noundef %data) #10
  br label %land.lhs.true86.i

do.end.i156.i:                                    ; preds = %if.then.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %wiphy.i154.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wiphy.i154.i, align 4
  %dev.i155.i = getelementptr inbounds %struct.wiphy, ptr %121, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i155.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %115) #13
  br label %land.lhs.true86.i

land.lhs.true86.i:                                ; preds = %do.end.i156.i, %if.then4.i153.i, %do.end.i.i, %if.then4.i.i
  %122 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp89.i = icmp eq i8 %123, 2
  br i1 %cmp89.i, label %if.then91.i, label %land.lhs.true86.i.event_free_crit_edge

land.lhs.true86.i.event_free_crit_edge:           ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %event_free

if.then91.i:                                      ; preds = %land.lhs.true86.i
  %124 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config.i, align 4
  %call92.i = call zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef %125) #10
  br i1 %call92.i, label %if.then91.i.event_free_crit_edge, label %if.then95.i

if.then91.i.event_free_crit_edge:                 ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %event_free

if.then95.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @brcmf_remove_interface(ptr noundef nonnull %ifp.0.i, i1 noundef zeroext false) #10
  br label %event_free

brcmf_fweh_call_event_handler.exit175.i:          ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %wiphy.i154.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wiphy.i154.i, align 4
  %dev16.i172.i = getelementptr inbounds %struct.wiphy, ptr %127, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i172.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99) #13
  br label %event_free

if.else:                                          ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %bsscfgidx28 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bsscfgidx28, align 1
  %idxprom = zext i8 %129 to i32
  %arrayidx72 = getelementptr [16 x ptr], ptr %iflist, i32 0, i32 %idxprom
  br label %if.end73

if.end73:                                         ; preds = %if.else, %do.end58.if.end73_crit_edge
  %ifp.0.in = phi ptr [ %arrayidx72, %if.else ], [ %iflist, %do.end58.if.end73_crit_edge ]
  %130 = ptrtoint ptr %ifp.0.in to i32
  call void @__asan_load4_noabort(i32 %130)
  %ifp.0 = load ptr, ptr %ifp.0.in, align 4
  %tobool.not.i126 = icmp eq ptr %ifp.0, null
  br i1 %tobool.not.i126, label %do.end14.i, label %if.then.i128

if.then.i128:                                     ; preds = %if.end73
  %131 = ptrtoint ptr %ifp.0 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ifp.0, align 4
  %arrayidx.i127 = getelementptr %struct.brcmf_pub, ptr %132, i32 0, i32 14, i32 4, i32 %59
  %133 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i127, align 4
  %tobool3.not.i = icmp eq ptr %134, null
  br i1 %tobool3.not.i, label %do.end.i, label %brcmf_fweh_call_event_handler.exit

do.end.i:                                         ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %wiphy.i154.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %wiphy.i154.i, align 4
  %dev.i131 = getelementptr inbounds %struct.wiphy, ptr %136, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i131, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %59) #13
  br label %do.end83

do.end14.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %wiphy.i154.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wiphy.i154.i, align 4
  %dev16.i = getelementptr inbounds %struct.wiphy, ptr %138, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99) #13
  br label %do.end83

brcmf_fweh_call_event_handler.exit:               ; preds = %if.then.i128
  %call.i129 = call i32 %134(ptr noundef nonnull %ifp.0, ptr noundef nonnull %emsg, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool78.not = icmp eq i32 %call.i129, 0
  br i1 %tobool78.not, label %brcmf_fweh_call_event_handler.exit.event_free_crit_edge, label %brcmf_fweh_call_event_handler.exit.do.end83_crit_edge

brcmf_fweh_call_event_handler.exit.do.end83_crit_edge: ; preds = %brcmf_fweh_call_event_handler.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

brcmf_fweh_call_event_handler.exit.event_free_crit_edge: ; preds = %brcmf_fweh_call_event_handler.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %event_free

do.end83:                                         ; preds = %brcmf_fweh_call_event_handler.exit.do.end83_crit_edge, %do.end14.i, %do.end.i
  %139 = ptrtoint ptr %wiphy.i154.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wiphy.i154.i, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %140, i32 0, i32 56
  %141 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %code, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.brcmf_fweh_event_worker, i32 noundef %142) #13
  br label %event_free

event_free:                                       ; preds = %do.end83, %brcmf_fweh_call_event_handler.exit.event_free_crit_edge, %brcmf_fweh_call_event_handler.exit175.i, %if.then95.i, %if.then91.i.event_free_crit_edge, %land.lhs.true86.i.event_free_crit_edge, %if.then68.i.event_free_crit_edge, %do.body46.i.event_free_crit_edge, %do.end34.i, %do.body23.i
  call void @kfree(ptr noundef nonnull %3) #10
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %evt_q_lock.i) #10
  %143 = ptrtoint ptr %event_q.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile ptr, ptr %event_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %144, %event_q.i
  br i1 %cmp.i.not.i, label %event_free.brcmf_fweh_dequeue_event.exit.thread_crit_edge, label %event_free.if.then.i_crit_edge

event_free.if.then.i_crit_edge:                   ; preds = %event_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

event_free.brcmf_fweh_dequeue_event.exit.thread_crit_edge: ; preds = %event_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_dequeue_event.exit.thread

while.end:                                        ; preds = %brcmf_fweh_dequeue_event.exit.while.end_crit_edge, %brcmf_fweh_dequeue_event.exit.thread
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %emsg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fweh_detach(ptr noundef %drvr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1, i32 2
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %event_work = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %event_work) #10
  %event_q = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %event_q, align 4
  %cmp.i.not = icmp eq ptr %3, %event_q
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %do.end, !prof !158

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 310, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %evt_handler = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 4
  %4 = call ptr @memset(ptr %evt_handler, i32 0, i32 556)
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fweh_register(ptr nocapture noundef %drvr, i32 noundef %code, ptr noundef %handler) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 4, i32 %code
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %code) #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %handler, ptr %arrayidx, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.08.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %code)
  %cmp2.i = icmp eq i32 %6, %code
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i, i32 1
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  br label %brcmf_fweh_event_name.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 72
  br i1 %exitcond.not.i, label %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.brcmf_fweh_event_name.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_event_name.exit

brcmf_fweh_event_name.exit:                       ; preds = %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %8, %if.then.i ], [ @.str, %for.inc.i.brcmf_fweh_event_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i) #10
  br label %return

return:                                           ; preds = %brcmf_fweh_event_name.exit, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %brcmf_fweh_event_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fweh_unregister(ptr nocapture noundef writeonly %drvr, i32 noundef %code) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.08.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %code)
  %cmp2.i = icmp eq i32 %1, %code
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  br label %brcmf_fweh_event_name.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 72
  br i1 %exitcond.not.i, label %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.brcmf_fweh_event_name.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_event_name.exit

brcmf_fweh_event_name.exit:                       ; preds = %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ @.str, %for.inc.i.brcmf_fweh_event_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fweh_unregister, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i) #10
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 4, i32 %code
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fweh_activate_events(ptr noundef %ifp) local_unnamed_addr #3 align 64 {
entry:
  %eventmask = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %eventmask) #10
  %2 = getelementptr inbounds [18 x i8], ptr %eventmask, i32 0, i32 6
  %3 = call ptr @memset(ptr %eventmask, i32 0, i32 18)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifp, align 4
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 14, i32 4, i32 %i.036
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.036)
  %cmp2.i = icmp eq i32 %9, %i.036
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr [72 x %struct.brcmf_fweh_event_name], ptr @fweh_event_names, i32 0, i32 %i.08.i, i32 1
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  br label %brcmf_fweh_event_name.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 72
  br i1 %exitcond.not.i, label %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.brcmf_fweh_event_name.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_event_name.exit

brcmf_fweh_event_name.exit:                       ; preds = %for.inc.i.brcmf_fweh_event_name.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %11, %if.then.i ], [ @.str, %for.inc.i.brcmf_fweh_event_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_fweh_activate_events, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i) #10
  %rem34 = and i32 %i.036, 7
  %shl = shl nuw nsw i32 1, %rem34
  %div.udiv40 = lshr i32 %i.036, 3
  %arrayidx4 = getelementptr i8, ptr %eventmask, i32 %div.udiv40
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %14 = trunc i32 %shl to i8
  %conv5 = or i8 %13, %14
  store i8 %conv5, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %brcmf_fweh_event_name.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 139
  br i1 %exitcond.not, label %do.body6, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body6:                                         ; preds = %for.inc
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_fweh_activate_events, ptr noundef nonnull @.str.12) #10
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %17 = or i8 %16, 64
  store i8 %17, ptr %2, align 1
  %call15 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.13, ptr noundef nonnull %eventmask, i32 noundef 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body6.if.end24_crit_edge, label %do.end21

do.body6.if.end24_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end21:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.brcmf_fweh_activate_events, i32 noundef %call15) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %do.body6.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %eventmask) #10
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fweh_process_event(ptr noundef %drvr, ptr nocapture noundef readonly %event_packet, i32 noundef %packet_len, i32 noundef %gfp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.brcmf_event, ptr %event_packet, i32 0, i32 2
  %event_type = getelementptr inbounds %struct.brcmf_event, ptr %event_packet, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %event_type to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %event_type, align 1
  %datalen3 = getelementptr inbounds %struct.brcmf_event, ptr %event_packet, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %datalen3 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %datalen3, align 1
  %arrayidx = getelementptr %struct.brcmf_event, ptr %event_packet, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 138, i32 %1)
  %cmp = icmp ugt i32 %1, 138
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %1)
  %cmp5.not = icmp eq i32 %1, 54
  br i1 %cmp5.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %arrayidx6 = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 4, i32 %1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %3)
  %cmp9 = icmp ugt i32 %3, 8192
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %3)
  %cmp9.old = icmp ugt i32 %3, 8192
  br i1 %cmp9.old, label %if.end8.cleanup_crit_edge, label %if.end8.lor.lhs.false_crit_edge

if.end8.lor.lhs.false_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge
  %add = add nuw nsw i32 %3, 72
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %packet_len)
  %cmp10 = icmp ugt i32 %add, %packet_len
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end8.i.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %lor.lhs.false
  %or.i = or i32 %gfp, 256
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %or.i) #14
  %tobool15.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end17

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end8.i.i
  %code18 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %code18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %code18, align 8
  %ifidx = getelementptr inbounds %struct.brcmf_event, ptr %event_packet, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ifidx, align 1
  %ifidx20 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %ifidx20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ifidx20, align 4
  %emsg = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %call9.i.i, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %emsg, ptr %msg, i32 48)
  %data22 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %call9.i.i, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %data22, ptr %arrayidx, i32 %3)
  %datalen23 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %call9.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %datalen23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %datalen23, align 4
  %ifaddr = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %call9.i.i, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %ifaddr, ptr %event_packet, i32 6)
  %evt_q_lock.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %evt_q_lock.i) #10
  %event_q.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 3
  %prev.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %15, ptr noundef %event_q.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i50, label %if.end17.brcmf_fweh_queue_event.exit_crit_edge

if.end17.brcmf_fweh_queue_event.exit_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %brcmf_fweh_queue_event.exit

if.end.i.i.i50:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %event_q.i, ptr %call9.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call9.i.i, ptr %15, align 4
  br label %brcmf_fweh_queue_event.exit

brcmf_fweh_queue_event.exit:                      ; preds = %if.end.i.i.i50, %if.end17.brcmf_fweh_queue_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %evt_q_lock.i, i32 noundef %call2.i) #10
  %event_work.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 14, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i10.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %event_work.i) #10
  br label %cleanup

cleanup:                                          ; preds = %brcmf_fweh_queue_event.exit, %if.end8.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 1), ptr blockaddress(@trace_brcmf_hexdump, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !159

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !147) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !158

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.93, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !147) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !160
  %call42 = tail call i32 @__traceiter_brcmf_hexdump(ptr noundef null, ptr noundef %data, i32 noundef %len) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !161
  %13 = tail call i32 @llvm.read_register.i32(metadata !147) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !147) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !158

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.93, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !147) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_brcmf_hexdump.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_brcmf_hexdump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.91, i32 noundef 79, ptr noundef nonnull @.str.92) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !163
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_dbg_hex_dump(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcmf_hexdump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_add_if(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_net_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_remove_interface(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !110, !111, !113, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !129, !130, !132, !134, !135, !136, !138, !140, !141, !142, !143, !145, !146}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 69, i32 9}
!2 = !{ptr @brcmf_fweh_attach.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 293, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @brcmf_fweh_attach.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 294, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 310, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 326, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @brcmf_fweh_register._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @brcmf_fweh_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 330, i32 2}
!19 = !{ptr @__func__.brcmf_fweh_unregister, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 344, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__func__.brcmf_fweh_activate_events, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 363, i32 4}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 370, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 373, i32 38}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 376, i32 3}
!31 = !{ptr @brcmf_fweh_activate_events._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @brcmf_fweh_activate_events._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 53, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.25, !34, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.26, !34, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.27, !34, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.28, !34, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.29, !34, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.30, !34, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.31, !34, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.32, !34, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.33, !34, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.34, !34, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.35, !34, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.36, !34, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.37, !34, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.38, !34, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.39, !34, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.40, !34, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.41, !34, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.42, !34, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.43, !34, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.44, !34, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.45, !34, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.46, !34, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.47, !34, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.48, !34, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.49, !34, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.50, !34, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.51, !34, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.52, !34, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.53, !34, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.54, !34, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.55, !34, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.56, !34, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.57, !34, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.58, !34, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.59, !34, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.60, !34, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.61, !34, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.62, !34, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.63, !34, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.64, !34, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.65, !34, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.66, !34, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.67, !34, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.68, !34, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.69, !34, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.70, !34, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.71, !34, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.72, !34, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.73, !34, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.74, !34, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.75, !34, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.76, !34, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.77, !34, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.78, !34, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.79, !34, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.80, !34, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.81, !34, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.82, !34, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.83, !34, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.84, !34, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.85, !34, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.86, !34, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @fweh_event_names, !107, !"fweh_event_names", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 52, i32 37}
!108 = !{ptr @__func__.brcmf_fweh_event_worker, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 227, i32 3}
!110 = !{ptr @.str.87, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.88, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 246, i32 3}
!113 = !{ptr @.str.89, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 248, i32 3}
!115 = !{ptr @.str.90, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 265, i32 4}
!117 = !{ptr @brcmf_fweh_event_worker._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @brcmf_fweh_event_worker._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h", i32 65, i32 1}
!121 = !{ptr @.str.91, !120, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!123 = !{ptr @.str.92, !120, !"<string literal>", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!126 = !{ptr @.str.93, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @__func__.brcmf_fweh_handle_if_event, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 133, i32 2}
!129 = !{ptr @.str.94, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.95, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 147, i32 3}
!132 = !{ptr @.str.96, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 151, i32 3}
!134 = !{ptr @brcmf_fweh_handle_if_event._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @brcmf_fweh_handle_if_event._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.97, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 158, i32 3}
!138 = !{ptr @.str.98, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 111, i32 4}
!140 = !{ptr @.str.99, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @brcmf_fweh_call_event_handler._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @brcmf_fweh_call_event_handler._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.101, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c", i32 113, i32 3}
!145 = !{ptr @brcmf_fweh_call_event_handler._entry.100, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @brcmf_fweh_call_event_handler._entry_ptr.102, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i8 0, i8 2}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{i64 2149048928, i64 2149048933, i64 2149048946, i64 2149048990, i64 2149049024, i64 2149049045}
!160 = !{i64 2157219761}
!161 = !{i64 2157219968}
!162 = !{i64 2149606247}
!163 = !{i64 2149607283}
