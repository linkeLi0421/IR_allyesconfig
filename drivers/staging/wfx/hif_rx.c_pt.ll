; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/hif_rx.c_pt.bc'
source_filename = "../drivers/staging/wfx/hif_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.132 = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.136 = type { i32, ptr, i8 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hif_msg = type { i16, i8, i8, [0 x i8] }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.125, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.125 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.126] }
%struct.anon.126 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.hif_cnf_multi_transmit = type { i8, [3 x i8], [0 x %struct.hif_cnf_tx] }
%struct.hif_cnf_tx = type { i32, i32, i8, i8, i8, i8, i32, i32 }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }
%struct.hif_ind_scan_cmpl = type { i32, i8, i8, i16 }
%struct.hif_ind_suspend_resume_tx = type { i8, i8, i16 }
%struct.hif_ind_event = type { i32, %union.anon.134 }
%union.anon.134 = type { i32 }
%struct.hif_ind_generic = type <{ i32, %union.anon.135 }>
%union.anon.135 = type { %struct.hif_tx_power_loop_info, [278 x i8] }
%struct.hif_ind_error = type { i32, [0 x i8] }
%struct.hif_ind_exception = type { i32, [0 x i8] }

@hif_handlers = internal constant { [12 x %struct.anon.132], [32 x i8] } { [12 x %struct.anon.132] [%struct.anon.132 { i32 4, ptr @hif_tx_confirm }, %struct.anon.132 { i32 30, ptr @hif_multi_tx_confirm }, %struct.anon.132 { i32 225, ptr @hif_startup_indication }, %struct.anon.132 { i32 226, ptr @hif_wakeup_indication }, %struct.anon.132 { i32 143, ptr @hif_join_complete_indication }, %struct.anon.132 { i32 137, ptr @hif_pm_mode_complete_indication }, %struct.anon.132 { i32 134, ptr @hif_scan_complete_indication }, %struct.anon.132 { i32 140, ptr @hif_suspend_resume_indication }, %struct.anon.132 { i32 133, ptr @hif_event_indication }, %struct.anon.132 { i32 227, ptr @hif_generic_indication }, %struct.anon.132 { i32 228, ptr @hif_error_indication }, %struct.anon.132 { i32 224, ptr @hif_exception_indication }], [32 x i8] zeroinitializer }, align 32
@wfx_handle_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported HIF indication: ID %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wfx_handle_rx\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/wfx/hif_rx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_handle_rx._entry_ptr = internal global ptr @wfx_handle_rx._entry, section ".printk_index", align 4
@wfx_handle_rx._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 413, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unexpected HIF confirmation: ID %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@wfx_handle_rx._entry_ptr.7 = internal global ptr @wfx_handle_rx._entry.5, section ".printk_index", align 4
@hif_receive_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 113, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ignore rx data for non-existent vif %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hif_receive_indication\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hif_receive_indication._entry_ptr = internal global ptr @hif_receive_indication._entry, section ".printk_index", align 4
@wdev_to_wvif.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wdev_to_wvif\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/staging/wfx/wfx.h\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"requesting non-existent vif: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data locking error\00", [45 x i8] zeroinitializer }, align 32
@hif_generic_confirm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 30, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unexpected confirmation: 0x%.2x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hif_generic_confirm\00", [44 x i8] zeroinitializer }, align 32
@hif_generic_confirm._entry_ptr = internal global ptr @hif_generic_confirm._entry, section ".printk_index", align 4
@hif_generic_confirm._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 37, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"chip response mismatch request: 0x%.2x vs 0x%.2x\0A\00", [46 x i8] zeroinitializer }, align 32
@hif_generic_confirm._entry_ptr.20 = internal global ptr @hif_generic_confirm._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"corrupted message\00", [46 x i8] zeroinitializer }, align 32
@hif_startup_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"received invalid startup indication\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hif_startup_indication\00", [41 x i8] zeroinitializer }, align 32
@hif_startup_indication._entry_ptr = internal global ptr @hif_startup_indication._entry, section ".printk_index", align 4
@hif_wakeup_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 98, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unexpected wake-up indication\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hif_wakeup_indication\00", [42 x i8] zeroinitializer }, align 32
@hif_wakeup_indication._entry_ptr = internal global ptr @hif_wakeup_indication._entry, section ".printk_index", align 4
@hif_join_complete_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 196, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: received event for non-existent vif\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hif_join_complete_indication\00", [35 x i8] zeroinitializer }, align 32
@hif_join_complete_indication._entry_ptr = internal global ptr @hif_join_complete_indication._entry, section ".printk_index", align 4
@hif_join_complete_indication._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 199, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unattended JoinCompleteInd\0A\00", [36 x i8] zeroinitializer }, align 32
@hif_join_complete_indication._entry_ptr.30 = internal global ptr @hif_join_complete_indication._entry.28, section ".printk_index", align 4
@hif_pm_mode_complete_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.31, ptr @.str.2, i32 164, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hif_pm_mode_complete_indication\00", [32 x i8] zeroinitializer }, align 32
@hif_pm_mode_complete_indication._entry_ptr = internal global ptr @hif_pm_mode_complete_indication._entry, section ".printk_index", align 4
@hif_scan_complete_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.32, ptr @.str.2, i32 180, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hif_scan_complete_indication\00", [35 x i8] zeroinitializer }, align 32
@hif_scan_complete_indication._entry_ptr = internal global ptr @hif_scan_complete_indication._entry, section ".printk_index", align 4
@hif_suspend_resume_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.33, ptr @.str.2, i32 214, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hif_suspend_resume_indication\00", [34 x i8] zeroinitializer }, align 32
@hif_suspend_resume_indication._entry_ptr = internal global ptr @hif_suspend_resume_indication._entry, section ".printk_index", align 4
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"misunderstood indication\00", [39 x i8] zeroinitializer }, align 32
@hif_event_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.35, ptr @.str.2, i32 130, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hif_event_indication\00", [43 x i8] zeroinitializer }, align 32
@hif_event_indication._entry_ptr = internal global ptr @hif_event_indication._entry, section ".printk_index", align 4
@hif_event_indication.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ignore BSSREGAINED indication\0A\00", [33 x i8] zeroinitializer }, align 32
@hif_event_indication._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 147, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error while processing power save request: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@hif_event_indication._entry_ptr.39 = internal global ptr @hif_event_indication._entry.37, section ".printk_index", align 4
@hif_event_indication._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.2, i32 151, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unhandled event indication: %.2x\0A\00", [62 x i8] zeroinitializer }, align 32
@hif_event_indication._entry_ptr.42 = internal global ptr @hif_event_indication._entry.40, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hif_generic_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 243, ptr @.str.45, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"firmware says: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hif_generic_indication\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hif_generic_indication._entry_ptr = internal global ptr @hif_generic_indication._entry, section ".printk_index", align 4
@hif_generic_indication._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 250, ptr @.str.45, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Rx test ongoing. Temperature: %d degrees C\0A\00", [52 x i8] zeroinitializer }, align 32
@hif_generic_indication._entry_ptr.48 = internal global ptr @hif_generic_indication._entry.46, section ".printk_index", align 4
@hif_generic_indication._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.2, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"generic_indication: unknown indication type: %#.8x\0A\00", [44 x i8] zeroinitializer }, align 32
@hif_generic_indication._entry_ptr.51 = internal global ptr @hif_generic_indication._entry.49, section ".printk_index", align 4
@hif_errors = internal constant { [18 x %struct.anon.136], [40 x i8] } { [18 x %struct.anon.136] [%struct.anon.136 { i32 0, ptr @.str.61, i8 0 }, %struct.anon.136 { i32 1, ptr @.str.62, i8 0 }, %struct.anon.136 { i32 5, ptr @.str.63, i8 0 }, %struct.anon.136 { i32 16, ptr @.str.64, i8 0 }, %struct.anon.136 { i32 4, ptr @.str.65, i8 1 }, %struct.anon.136 { i32 6, ptr @.str.66, i8 1 }, %struct.anon.136 { i32 7, ptr @.str.67, i8 0 }, %struct.anon.136 { i32 3, ptr @.str.68, i8 0 }, %struct.anon.136 { i32 9, ptr @.str.69, i8 0 }, %struct.anon.136 { i32 11, ptr @.str.70, i8 0 }, %struct.anon.136 { i32 17, ptr @.str.71, i8 0 }, %struct.anon.136 { i32 12, ptr @.str.72, i8 0 }, %struct.anon.136 { i32 14, ptr @.str.73, i8 0 }, %struct.anon.136 { i32 13, ptr @.str.74, i8 0 }, %struct.anon.136 { i32 15, ptr @.str.75, i8 0 }, %struct.anon.136 { i32 8, ptr @.str.76, i8 0 }, %struct.anon.136 { i32 2, ptr @.str.77, i8 0 }, %struct.anon.136 { i32 10, ptr @.str.78, i8 0 }], [40 x i8] zeroinitializer }, align 32
@hif_error_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"asynchronous error: %s: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hif_error_indication\00", [43 x i8] zeroinitializer }, align 32
@hif_error_indication._entry_ptr = internal global ptr @hif_error_indication._entry, section ".printk_index", align 4
@hif_error_indication._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"asynchronous error: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@hif_error_indication._entry_ptr.56 = internal global ptr @hif_error_indication._entry.54, section ".printk_index", align 4
@hif_error_indication._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"asynchronous error: unknown: %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@hif_error_indication._entry_ptr.59 = internal global ptr @hif_error_indication._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hif: \00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rollback status\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"debug feature enabled\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PDS version is not supported\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PDS ask for an unknown test mode\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"out-of-range power supply voltage\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"out-of-range temperature\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"secure link does not expect request during key exchange\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"secure link session key is invalid\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"secure link overflow\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"secure link messages list does not match message encryption\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"secure link not yet configured\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bus clock is too slow (<1kHz)\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HIF message too large\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HIF messages queue is full\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HIF bus\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"secure link does not support multi-tx confirmations\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"secure link session key is outdated\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"secure link params (nonce or tag) mismatch\00", [53 x i8] zeroinitializer }, align 32
@hif_exception_indication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"firmware assert %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hif_exception_indication\00", [39 x i8] zeroinitializer }, align 32
@hif_exception_indication._entry_ptr = internal global ptr @hif_exception_indication._entry, section ".printk_index", align 4
@hif_exception_indication._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"firmware exception\0A\00", [44 x i8] zeroinitializer }, align 32
@hif_exception_indication._entry_ptr.83 = internal global ptr @hif_exception_indication._entry.81, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 8, i64 4, i64 30, i64 133, i64 134, i64 137, i64 140, i64 143, i64 224, i64 225, i64 226, i64 227, i64 228]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"hif_handlers\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 362, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 409, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 412, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 112, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [29 x i8] c"../drivers/staging/wfx/wfx.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 98, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 27, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 30, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 35, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 68, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 80, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 98, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 196, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 199, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 164, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 180, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 214, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 222, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 130, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 143, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 146, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 150, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 243, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 249, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 263, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"hif_errors\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 273, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 326, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 329, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 332, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 333, i32 28 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 275, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 277, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 279, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 281, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 283, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 285, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 287, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 289, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 291, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 293, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 295, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 297, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 299, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 302, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 304, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 306, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 308, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 310, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 347, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [32 x i8] c"../drivers/staging/wfx/hif_rx.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 350, i32 3 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @hif_error_indication._entry, ptr @hif_error_indication._entry.54, ptr @hif_error_indication._entry.57, ptr @hif_error_indication._entry_ptr, ptr @hif_error_indication._entry_ptr.56, ptr @hif_error_indication._entry_ptr.59, ptr @hif_event_indication._entry, ptr @hif_event_indication._entry.37, ptr @hif_event_indication._entry.40, ptr @hif_event_indication._entry_ptr, ptr @hif_event_indication._entry_ptr.39, ptr @hif_event_indication._entry_ptr.42, ptr @hif_exception_indication._entry, ptr @hif_exception_indication._entry.81, ptr @hif_exception_indication._entry_ptr, ptr @hif_exception_indication._entry_ptr.83, ptr @hif_generic_confirm._entry, ptr @hif_generic_confirm._entry.18, ptr @hif_generic_confirm._entry_ptr, ptr @hif_generic_confirm._entry_ptr.20, ptr @hif_generic_indication._entry, ptr @hif_generic_indication._entry.46, ptr @hif_generic_indication._entry.49, ptr @hif_generic_indication._entry_ptr, ptr @hif_generic_indication._entry_ptr.48, ptr @hif_generic_indication._entry_ptr.51, ptr @hif_join_complete_indication._entry, ptr @hif_join_complete_indication._entry.28, ptr @hif_join_complete_indication._entry_ptr, ptr @hif_join_complete_indication._entry_ptr.30, ptr @hif_pm_mode_complete_indication._entry, ptr @hif_pm_mode_complete_indication._entry_ptr, ptr @hif_receive_indication._entry, ptr @hif_receive_indication._entry_ptr, ptr @hif_scan_complete_indication._entry, ptr @hif_scan_complete_indication._entry_ptr, ptr @hif_startup_indication._entry, ptr @hif_startup_indication._entry_ptr, ptr @hif_suspend_resume_indication._entry, ptr @hif_suspend_resume_indication._entry_ptr, ptr @hif_wakeup_indication._entry, ptr @hif_wakeup_indication._entry_ptr, ptr @wfx_handle_rx._entry, ptr @wfx_handle_rx._entry.5, ptr @wfx_handle_rx._entry_ptr, ptr @wfx_handle_rx._entry_ptr.7, ptr @hif_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @hif_errors, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_handlers to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_handle_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_handle_rx._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_receive_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_generic_confirm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_generic_confirm._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_startup_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_wakeup_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_join_complete_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_join_complete_indication._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_pm_mode_complete_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_scan_complete_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_suspend_resume_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_event_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_event_indication._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_event_indication._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_generic_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_generic_indication._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_generic_indication._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_errors to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_error_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_error_indication._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_error_indication._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_exception_indication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_exception_indication._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_handle_rx(ptr noundef %wdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %id = getelementptr inbounds %struct.hif_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %3)
  %cmp = icmp eq i8 %3, -124
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %body = getelementptr inbounds %struct.hif_msg, ptr %1, i32 0, i32 3
  tail call fastcc void @hif_receive_indication(ptr noundef %wdev, ptr noundef %1, ptr noundef %body, ptr noundef %skb)
  br label %cleanup

if.end:                                           ; preds = %entry
  %hif_cmd = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15
  %call2 = tail call zeroext i1 @mutex_is_locked(ptr noundef %hif_cmd) #4
  br i1 %call2, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %buf_send = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 3
  %4 = ptrtoint ptr %buf_send to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_send, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true5

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true5:                                   ; preds = %land.lhs.true
  %id8 = getelementptr inbounds %struct.hif_msg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %3)
  %cmp10 = icmp eq i8 %7, %3
  br i1 %cmp10, label %if.then12, label %land.lhs.true5.if.end16_crit_edge

land.lhs.true5.if.end16_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true5
  %body13 = getelementptr inbounds %struct.hif_msg, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %body13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %body13, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 1
  %conv.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %1, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #4
  %conv2.i = zext i16 %15 to i32
  %sub.i = add nsw i32 %conv2.i, -4
  %call3.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %hif_cmd) #4
  br i1 %call3.i, label %if.then12.if.end.i_crit_edge, label %do.end.i, !prof !172

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 27, i32 noundef 9, ptr noundef nonnull @.str.15) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then12.if.end.i_crit_edge
  %16 = ptrtoint ptr %buf_send to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf_send, align 4
  %tobool24.not.i = icmp eq ptr %17, null
  br i1 %tobool24.not.i, label %do.end28.i, label %if.end29.i

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #7
  br label %free

if.end29.i:                                       ; preds = %if.end.i
  %id32.i = getelementptr inbounds %struct.hif_msg, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %id32.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id32.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %21)
  %cmp.not.i = icmp eq i8 %12, %21
  br i1 %cmp.not.i, label %if.end44.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv33.i = zext i8 %21 to i32
  %dev39.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %22 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev39.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv33.i) #7
  br label %free

if.end44.i:                                       ; preds = %if.end29.i
  %buf_recv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 4
  %24 = ptrtoint ptr %buf_recv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf_recv.i, align 4
  %tobool46.not.i = icmp eq ptr %25, null
  br i1 %tobool46.not.i, label %if.end44.i.if.end57.i_crit_edge, label %if.then47.i

if.end44.i.if.end57.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

if.then47.i:                                      ; preds = %if.end44.i
  %len_recv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 5
  %26 = ptrtoint ptr %len_recv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len_recv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub.i)
  %cmp49.not.i = icmp uge i32 %27, %sub.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %15)
  %cmp51.i = icmp ugt i16 %15, 4
  %or.cond.i = select i1 %cmp49.not.i, i1 %cmp51.i, i1 false
  br i1 %or.cond.i, label %if.then53.i, label %if.then47.i.if.end57.i_crit_edge

if.then47.i.if.end57.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

if.then53.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #6
  %28 = call ptr @memcpy(ptr %25, ptr %body13, i32 %sub.i)
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %if.then47.i.if.end57.i_crit_edge, %if.end44.i.if.end57.i_crit_edge
  %status.0.i = phi i32 [ %10, %if.then53.i ], [ %10, %if.end44.i.if.end57.i_crit_edge ], [ -5, %if.then47.i.if.end57.i_crit_edge ]
  %ret.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 6
  %29 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %status.0.i, ptr %ret.i, align 4
  %done.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 2
  tail call void @complete(ptr noundef %done.i) #4
  br label %free

if.end16:                                         ; preds = %land.lhs.true5.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %30 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %for.inc.11 [
    i8 4, label %if.end16.if.then24_crit_edge
    i8 30, label %if.then24.fold.split
    i8 -31, label %if.then24.fold.split69
    i8 -30, label %if.then24.fold.split70
    i8 -113, label %if.then24.fold.split71
    i8 -119, label %if.then24.fold.split72
    i8 -122, label %if.then24.fold.split73
    i8 -116, label %if.then24.fold.split74
    i8 -123, label %if.then24.fold.split75
    i8 -29, label %if.then24.fold.split76
    i8 -28, label %if.then24.fold.split77
    i8 -32, label %if.then24.fold.split78
  ]

if.end16.if.then24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split69:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split70:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split71:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split72:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split73:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split74:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split75:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split76:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split77:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24.fold.split78:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %if.then24.fold.split78, %if.then24.fold.split77, %if.then24.fold.split76, %if.then24.fold.split75, %if.then24.fold.split74, %if.then24.fold.split73, %if.then24.fold.split72, %if.then24.fold.split71, %if.then24.fold.split70, %if.then24.fold.split69, %if.then24.fold.split, %if.end16.if.then24_crit_edge
  %i.067.lcssa = phi i32 [ 0, %if.end16.if.then24_crit_edge ], [ 1, %if.then24.fold.split ], [ 2, %if.then24.fold.split69 ], [ 3, %if.then24.fold.split70 ], [ 4, %if.then24.fold.split71 ], [ 5, %if.then24.fold.split72 ], [ 6, %if.then24.fold.split73 ], [ 7, %if.then24.fold.split74 ], [ 8, %if.then24.fold.split75 ], [ 9, %if.then24.fold.split76 ], [ 10, %if.then24.fold.split77 ], [ 11, %if.then24.fold.split78 ]
  %handler = getelementptr [12 x %struct.anon.132], ptr @hif_handlers, i32 0, i32 %i.067.lcssa, i32 1
  %31 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handler, align 4
  %body27 = getelementptr inbounds %struct.hif_msg, ptr %1, i32 0, i32 3
  %call29 = tail call i32 %32(ptr noundef %wdev, ptr noundef %1, ptr noundef %body27) #4
  br label %free

for.inc.11:                                       ; preds = %if.end16
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  %dev37 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %33 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev37, align 4
  br i1 %tobool32.not, label %do.end36, label %do.end

do.end:                                           ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %free

do.end36:                                         ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.6, i32 noundef %conv) #7
  br label %free

free:                                             ; preds = %do.end36, %do.end, %if.then24, %if.end57.i, %do.end38.i, %do.end28.i
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hif_receive_indication(ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %hif, ptr noundef %buf, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hif_receive_indication, %if.then3.i)) #4
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !173

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %conv) #4
  br label %do.end

if.end4.i:                                        ; preds = %entry
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #4, !srcloc !174
  %and.i = and i32 %3, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %5, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wdev_to_wvif.exit

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %wdev_to_wvif.exit.do.end_crit_edge, label %if.end

wdev_to_wvif.exit.do.end_crit_edge:               ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %wdev_to_wvif.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.then3.i
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load2 = load i8, ptr %interface, align 1
  %bf.lshr3 = lshr i8 %bf.load2, 5
  %bf.clear4 = and i8 %bf.lshr3, 3
  %conv5 = zext i8 %bf.clear4 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv5) #7
  br label %cleanup

if.end:                                           ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #4
  tail call void @wfx_rx_cb(ptr noundef nonnull %retval.0.i, ptr noundef %buf, ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_rx_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_tx_confirm(ptr noundef %wdev, ptr nocapture noundef readnone %hif, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wfx_tx_confirm_cb(ptr noundef %wdev, ptr noundef %buf) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_multi_tx_confirm(ptr noundef %wdev, ptr nocapture noundef readnone %hif, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.end, label %entry.for.body.preheader_crit_edge, !prof !175

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.21) #4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %.pr = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp2230.not = icmp eq i8 %.pr, 0
  br i1 %cmp2230.not, label %if.end.for.end_crit_edge, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.hif_cnf_multi_transmit, ptr %buf, i32 0, i32 2, i32 %i.031
  tail call void @wfx_tx_confirm_cb(ptr noundef %wdev, ptr noundef %arrayidx) #4
  %inc = add nuw nsw i32 %i.031, 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %conv21 = zext i8 %4 to i32
  %cmp22 = icmp ult i32 %inc, %conv21
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_startup_indication(ptr noundef %wdev, ptr nocapture noundef readnone %hif, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %firmware_type = getelementptr inbounds %struct.hif_ind_startup, ptr %buf, i32 0, i32 18
  %2 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %firmware_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ugt i8 %3, 4
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %hw_caps = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9
  %6 = call ptr @memcpy(ptr %hw_caps, ptr %buf, i32 192)
  %hardware_id = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %hardware_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hardware_id, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #4
  %10 = ptrtoint ptr %hardware_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %hardware_id, align 2
  %num_inp_ch_bufs = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 4
  %11 = ptrtoint ptr %num_inp_ch_bufs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_inp_ch_bufs, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #4
  %14 = ptrtoint ptr %num_inp_ch_bufs to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %num_inp_ch_bufs, align 2
  %size_inp_ch_buf = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 5
  %15 = ptrtoint ptr %size_inp_ch_buf to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %size_inp_ch_buf, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #4
  %18 = ptrtoint ptr %size_inp_ch_buf to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %size_inp_ch_buf, align 2
  %supported_rate_mask = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 9, i32 21
  %19 = ptrtoint ptr %supported_rate_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %supported_rate_mask, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %22 = ptrtoint ptr %supported_rate_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %supported_rate_mask, align 4
  %firmware_ready = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 8
  tail call void @complete(ptr noundef %firmware_ready) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_wakeup_indication(ptr nocapture noundef readonly %wdev, ptr nocapture noundef readnone %hif, ptr nocapture noundef readnone %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_wakeup = getelementptr inbounds %struct.wfx_platform_data, ptr %wdev, i32 0, i32 2
  %0 = ptrtoint ptr %gpio_wakeup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_wakeup, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.24) #7
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_join_complete_indication(ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %hif, ptr nocapture noundef readnone %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hif_join_complete_indication, %if.then3.i)) #4
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !173

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %conv) #4
  br label %do.end

if.end4.i:                                        ; preds = %entry
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #4, !srcloc !174
  %and.i = and i32 %3, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %5, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wdev_to_wvif.exit

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %wdev_to_wvif.exit.do.end_crit_edge, label %do.end3

wdev_to_wvif.exit.do.end_crit_edge:               ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %wdev_to_wvif.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.then3.i
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #7
  br label %cleanup

do.end3:                                          ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev4 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.29) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %do.end
  %retval.0 = phi i32 [ 0, %do.end3 ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_pm_mode_complete_indication(ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %hif, ptr nocapture noundef readnone %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hif_pm_mode_complete_indication, %if.then3.i)) #4
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !173

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %conv) #4
  br label %do.end

if.end4.i:                                        ; preds = %entry
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #4, !srcloc !174
  %and.i = and i32 %3, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %5, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wdev_to_wvif.exit

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %wdev_to_wvif.exit.do.end_crit_edge, label %if.end

wdev_to_wvif.exit.do.end_crit_edge:               ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %wdev_to_wvif.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.then3.i
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31) #7
  br label %cleanup

if.end:                                           ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  %set_pm_mode_complete = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i, i32 0, i32 19
  tail call void @complete(ptr noundef %set_pm_mode_complete) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_scan_complete_indication(ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %hif, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hif_scan_complete_indication, %if.then3.i)) #4
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !173

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %conv) #4
  br label %do.end

if.end4.i:                                        ; preds = %entry
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #4, !srcloc !174
  %and.i = and i32 %3, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %5, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wdev_to_wvif.exit

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %wdev_to_wvif.exit.do.end_crit_edge, label %if.end

wdev_to_wvif.exit.do.end_crit_edge:               ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %wdev_to_wvif.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.then3.i
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.32) #7
  br label %cleanup

if.end:                                           ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  %num_channels_completed = getelementptr inbounds %struct.hif_ind_scan_cmpl, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %num_channels_completed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_channels_completed, align 1
  %conv1 = zext i8 %9 to i32
  tail call void @wfx_scan_complete(ptr noundef nonnull %retval.0.i, i32 noundef %conv1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_suspend_resume_indication(ptr noundef %wdev, ptr nocapture noundef readonly %hif, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %buf, align 1
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load1 = load i8, ptr %interface, align 1
  %bf.lshr2 = lshr i8 %bf.load1, 5
  %bf.clear3 = and i8 %bf.lshr2, 3
  %conv = zext i8 %bf.clear3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear3)
  %cmp.i = icmp ugt i8 %bf.clear3, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hif_suspend_resume_indication, %if.then3.i)) #4
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !173

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %conv) #4
  br label %do.end

if.end4.i:                                        ; preds = %if.then
  %5 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #4, !srcloc !174
  %and.i = and i32 %5, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %7, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %7, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wdev_to_wvif.exit

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %tobool4.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool4.not, label %wdev_to_wvif.exit.do.end_crit_edge, label %if.end

wdev_to_wvif.exit.do.end_crit_edge:               ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %wdev_to_wvif.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.then3.i
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.33) #7
  br label %cleanup

if.end:                                           ; preds = %wdev_to_wvif.exit
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6)
  %tobool8.not = icmp sgt i8 %bf.load6, -1
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @wfx_suspend_resume_mc(ptr noundef nonnull %retval.0.i, i32 noundef 1) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @wfx_suspend_resume_mc(ptr noundef nonnull %retval.0.i, i32 noundef 0) #4
  br label %cleanup

if.else11:                                        ; preds = %entry
  %peer_sta_set = getelementptr inbounds %struct.hif_ind_suspend_resume_tx, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %peer_sta_set to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %peer_sta_set, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool12.not = icmp eq i16 %12, 0
  br i1 %tobool12.not, label %if.else11.if.end30_crit_edge, label %do.end24, !prof !172

if.else11.if.end30_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

do.end24:                                         ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 222, i32 noundef 9, ptr noundef nonnull @.str.34) #4
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %if.else11.if.end30_crit_edge
  %interface38 = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %13 = ptrtoint ptr %interface38 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load39 = load i8, ptr %interface38, align 1
  %14 = and i8 %bf.load39, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %cmp.not = icmp eq i8 %14, 64
  br i1 %cmp.not, label %if.end30.if.end65_crit_edge, label %do.end59, !prof !172

if.end30.if.end65_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

do.end59:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.34) #4
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end30.if.end65_crit_edge
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load73 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load73)
  %tobool75.not = icmp sgt i8 %bf.load73, -1
  br i1 %tobool75.not, label %if.else77, label %if.then76

if.then76:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @wfx_suspend_hot_dev(ptr noundef %wdev, i32 noundef 1) #4
  br label %cleanup

if.else77:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @wfx_suspend_hot_dev(ptr noundef %wdev, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else77, %if.then76, %if.else, %if.then9, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then76 ], [ 0, %if.else77 ], [ 0, %if.then9 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_event_indication(ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %hif, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.hif_msg, ptr %hif, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp.i = icmp ugt i8 %bf.clear, 1
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hif_event_indication, %if.then3.i)) #4
          to label %wdev_to_wvif.exit [label %if.then3.i], !srcloc !173

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdev_to_wvif.__UNIQUE_ID_ddebug348, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %conv) #4
  br label %do.end

if.end4.i:                                        ; preds = %entry
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 2) #4, !srcloc !174
  %and.i = and i32 %3, %conv
  %arrayidx.i = getelementptr %struct.wfx_dev, ptr %wdev, i32 0, i32 3, i32 %and.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %5, null
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 19
  br i1 %tobool12.not.i, label %if.end4.i.do.end_crit_edge, label %if.end4.i.wdev_to_wvif.exit_crit_edge

if.end4.i.wdev_to_wvif.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wdev_to_wvif.exit

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

wdev_to_wvif.exit:                                ; preds = %if.end4.i.wdev_to_wvif.exit_crit_edge, %do.body.i
  %retval.0.i38 = phi ptr [ %drv_priv.i, %if.end4.i.wdev_to_wvif.exit_crit_edge ], [ null, %do.body.i ]
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %buf, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %tobool.not = icmp eq ptr %retval.0.i38, null
  br i1 %tobool.not, label %wdev_to_wvif.exit.do.end_crit_edge, label %if.end

wdev_to_wvif.exit.do.end_crit_edge:               ; preds = %wdev_to_wvif.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %wdev_to_wvif.exit.do.end_crit_edge, %if.end4.i.do.end_crit_edge, %if.then3.i
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.35) #7
  br label %cleanup

if.end:                                           ; preds = %wdev_to_wvif.exit
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %8, label %do.end24 [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 4, label %do.end19
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %event_data = getelementptr inbounds %struct.hif_ind_event, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %event_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %event_data, align 1
  tail call void @wfx_event_report_rssi(ptr noundef nonnull %retval.0.i38, i8 noundef zeroext %13) #4
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %beacon_loss_work = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i38, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %beacon_loss_work, i32 noundef 0) #4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %beacon_loss_work4 = getelementptr inbounds %struct.wfx_vif, ptr %retval.0.i38, i32 0, i32 7
  %call5 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %beacon_loss_work4) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hif_event_indication.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hif_event_indication, %if.then11)) #4
          to label %cleanup [label %if.then11], !srcloc !173

if.then11:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %dev12 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hif_event_indication.__UNIQUE_ID_ddebug351, ptr noundef %16, ptr noundef nonnull @.str.36) #4
  br label %cleanup

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev20 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev20, align 4
  %event_data21 = getelementptr inbounds %struct.hif_ind_event, ptr %buf, i32 0, i32 1
  %19 = ptrtoint ptr %event_data21 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %event_data21, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.38, i32 noundef %21) #7
  br label %cleanup

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev25 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %22 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.41, i32 noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %do.end19, %if.then11, %sw.bb3, %sw.bb1, %sw.bb, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then11 ], [ 0, %do.end24 ], [ 0, %do.end19 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 0, %sw.bb3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_generic_indication(ptr noundef %wdev, ptr nocapture noundef readnone %hif, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %2, label %do.end16 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %do.end
    i32 2, label %sw.bb3
    i32 3, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %data = getelementptr inbounds %struct.hif_ind_generic, ptr %buf, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef %data) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %rx_stats_lock = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %rx_stats_lock, i32 noundef 0) #4
  %call = tail call zeroext i1 @wfx_api_older_than(ptr noundef %wdev, i32 noundef 1, i32 noundef 4) #4
  br i1 %call, label %sw.bb3.if.end_crit_edge, label %do.end6

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end6:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %dev7 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  %current_temp = getelementptr inbounds %struct.hif_ind_generic, ptr %buf, i32 0, i32 1, i32 1, i32 277
  %8 = ptrtoint ptr %current_temp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_temp, align 1
  %conv = sext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %do.end6, %sw.bb3.if.end_crit_edge
  %rx_stats = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 21
  %data9 = getelementptr inbounds %struct.hif_ind_generic, ptr %buf, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %rx_stats, ptr %data9, i32 290)
  tail call void @mutex_unlock(ptr noundef %rx_stats_lock) #4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tx_power_loop_info_lock = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %tx_power_loop_info_lock, i32 noundef 0) #4
  %tx_power_loop_info = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 23
  %data12 = getelementptr inbounds %struct.hif_ind_generic, ptr %buf, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %tx_power_loop_info, ptr %data12, i32 12)
  tail call void @mutex_unlock(ptr noundef %tx_power_loop_info_lock) #4
  br label %cleanup

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev17 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.50, i32 noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %sw.bb11, %if.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end16 ], [ 0, %sw.bb11 ], [ 0, %if.end ], [ 0, %do.end ], [ %2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_error_indication(ptr nocapture noundef %wdev, ptr noundef %hif, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  %data = getelementptr inbounds %struct.hif_ind_error, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv = sext i8 %3 to i32
  %4 = call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 8)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %4, label %for.inc.17 [
    i32 0, label %entry.do.end14_crit_edge
    i32 1, label %entry.do.end14_crit_edge57
    i32 5, label %do.end14.fold.split43
    i32 16, label %do.end14.fold.split44
    i32 4, label %entry.do.end_crit_edge
    i32 6, label %do.end.fold.split
    i32 7, label %do.end14.fold.split45
    i32 3, label %do.end14.fold.split46
    i32 9, label %do.end14.fold.split47
    i32 11, label %do.end14.fold.split48
    i32 17, label %do.end14.fold.split49
    i32 12, label %do.end14.fold.split50
    i32 14, label %do.end14.fold.split51
    i32 13, label %entry.do.end14_crit_edge58
    i32 15, label %do.end14.fold.split53
    i32 8, label %do.end14.fold.split54
    i32 2, label %do.end14.fold.split55
    i32 10, label %do.end14.fold.split56
  ]

entry.do.end14_crit_edge58:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

entry.do.end14_crit_edge57:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

for.inc.17:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %1)
  %dev23 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %7 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.58, i32 noundef %6) #7
  br label %if.end24

do.end.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %do.end.fold.split, %entry.do.end_crit_edge
  %i.039.lcssa = phi i32 [ %4, %entry.do.end_crit_edge ], [ 5, %do.end.fold.split ]
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %str = getelementptr [18 x %struct.anon.136], ptr @hif_errors, i32 0, i32 %i.039.lcssa, i32 1
  %11 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %str, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.52, ptr noundef %12, i32 noundef %conv) #7
  br label %if.end24

do.end14.fold.split43:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split44:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split45:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split46:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split47:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split48:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split49:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split50:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split51:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split53:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split54:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split55:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14.fold.split56:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

do.end14:                                         ; preds = %do.end14.fold.split56, %do.end14.fold.split55, %do.end14.fold.split54, %do.end14.fold.split53, %do.end14.fold.split51, %do.end14.fold.split50, %do.end14.fold.split49, %do.end14.fold.split48, %do.end14.fold.split47, %do.end14.fold.split46, %do.end14.fold.split45, %do.end14.fold.split44, %do.end14.fold.split43, %entry.do.end14_crit_edge, %entry.do.end14_crit_edge57, %entry.do.end14_crit_edge58
  %i.039.lcssa.ph = phi i32 [ %4, %entry.do.end14_crit_edge ], [ 2, %do.end14.fold.split43 ], [ 3, %do.end14.fold.split44 ], [ 6, %do.end14.fold.split45 ], [ 7, %do.end14.fold.split46 ], [ 8, %do.end14.fold.split47 ], [ 9, %do.end14.fold.split48 ], [ 10, %do.end14.fold.split49 ], [ 11, %do.end14.fold.split50 ], [ 12, %do.end14.fold.split51 ], [ 14, %do.end14.fold.split53 ], [ 15, %do.end14.fold.split54 ], [ 16, %do.end14.fold.split55 ], [ 17, %do.end14.fold.split56 ], [ %4, %entry.do.end14_crit_edge57 ], [ %4, %entry.do.end14_crit_edge58 ]
  %dev15 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  %str17 = getelementptr [18 x %struct.anon.136], ptr @hif_errors, i32 0, i32 %i.039.lcssa.ph, i32 1
  %15 = ptrtoint ptr %str17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %str17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.55, ptr noundef %16) #7
  br label %if.end24

if.end24:                                         ; preds = %do.end14, %do.end, %for.inc.17
  %17 = ptrtoint ptr %hif to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %hif, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv25 = zext i16 %19 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %hif, i32 noundef %conv25, i1 noundef zeroext false) #4
  %chip_frozen = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 13
  %20 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %chip_frozen, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_exception_indication(ptr nocapture noundef %wdev, ptr noundef %hif, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %1)
  %cmp = icmp eq i32 %1, 67108864
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.hif_ind_exception, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %6) #7
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.82) #7
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  %7 = ptrtoint ptr %hif to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %hif, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %hif, i32 noundef %conv, i1 noundef zeroext false) #4
  %chip_frozen = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 13
  %10 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %chip_frozen, align 1
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_tx_confirm_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_scan_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_suspend_resume_mc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_suspend_hot_dev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_event_report_rssi(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_api_older_than(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !161, !162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/hif_rx.c", i32 409, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wfx_handle_rx._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wfx_handle_rx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/hif_rx.c", i32 412, i32 3}
!10 = !{ptr @wfx_handle_rx._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wfx_handle_rx._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/wfx/hif_rx.c", i32 112, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @hif_receive_indication._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @hif_receive_indication._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/wfx/wfx.h", i32 98, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wdev_to_wvif.__UNIQUE_ID_ddebug348, !19, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/wfx/hif_rx.c", i32 27, i32 2}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/wfx/hif_rx.c", i32 30, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hif_generic_confirm._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hif_generic_confirm._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/wfx/hif_rx.c", i32 35, i32 3}
!33 = !{ptr @hif_generic_confirm._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hif_generic_confirm._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @hif_handlers, !36, !"hif_handlers", i1 false, i1 false}
!36 = !{!"../drivers/staging/wfx/hif_rx.c", i32 362, i32 3}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/wfx/hif_rx.c", i32 68, i32 2}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/wfx/hif_rx.c", i32 80, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hif_startup_indication._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @hif_startup_indication._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/wfx/hif_rx.c", i32 98, i32 3}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hif_wakeup_indication._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hif_wakeup_indication._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/wfx/hif_rx.c", i32 196, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hif_join_complete_indication._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @hif_join_complete_indication._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/wfx/hif_rx.c", i32 199, i32 2}
!56 = !{ptr @hif_join_complete_indication._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hif_join_complete_indication._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/wfx/hif_rx.c", i32 164, i32 3}
!60 = !{ptr @hif_pm_mode_complete_indication._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hif_pm_mode_complete_indication._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/wfx/hif_rx.c", i32 180, i32 3}
!64 = !{ptr @hif_scan_complete_indication._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hif_scan_complete_indication._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/wfx/hif_rx.c", i32 214, i32 4}
!68 = !{ptr @hif_suspend_resume_indication._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hif_suspend_resume_indication._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/wfx/hif_rx.c", i32 222, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/wfx/hif_rx.c", i32 130, i32 3}
!74 = !{ptr @hif_event_indication._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hif_event_indication._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/wfx/hif_rx.c", i32 143, i32 3}
!78 = !{ptr @hif_event_indication.__UNIQUE_ID_ddebug351, !77, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/wfx/hif_rx.c", i32 146, i32 3}
!81 = !{ptr @hif_event_indication._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @hif_event_indication._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/wfx/hif_rx.c", i32 150, i32 3}
!85 = !{ptr @hif_event_indication._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @hif_event_indication._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/wfx/hif_rx.c", i32 243, i32 3}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hif_generic_indication._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @hif_generic_indication._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/wfx/hif_rx.c", i32 249, i32 4}
!95 = !{ptr @hif_generic_indication._entry.46, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @hif_generic_indication._entry_ptr.48, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/wfx/hif_rx.c", i32 263, i32 3}
!99 = !{ptr @hif_generic_indication._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @hif_generic_indication._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/wfx/hif_rx.c", i32 326, i32 4}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @hif_error_indication._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @hif_error_indication._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/wfx/hif_rx.c", i32 329, i32 4}
!108 = !{ptr @hif_error_indication._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @hif_error_indication._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/wfx/hif_rx.c", i32 332, i32 3}
!112 = !{ptr @hif_error_indication._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @hif_error_indication._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/wfx/hif_rx.c", i32 333, i32 28}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/wfx/hif_rx.c", i32 275, i32 3}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/wfx/hif_rx.c", i32 277, i32 3}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/wfx/hif_rx.c", i32 279, i32 3}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/wfx/hif_rx.c", i32 281, i32 3}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/wfx/hif_rx.c", i32 283, i32 3}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/wfx/hif_rx.c", i32 285, i32 3}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/wfx/hif_rx.c", i32 287, i32 3}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/wfx/hif_rx.c", i32 289, i32 3}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/wfx/hif_rx.c", i32 291, i32 3}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/wfx/hif_rx.c", i32 293, i32 3}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/wfx/hif_rx.c", i32 295, i32 3}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/wfx/hif_rx.c", i32 297, i32 3}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/wfx/hif_rx.c", i32 299, i32 3}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/wfx/hif_rx.c", i32 302, i32 3}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/wfx/hif_rx.c", i32 304, i32 3}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/wfx/hif_rx.c", i32 306, i32 3}
!148 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/wfx/hif_rx.c", i32 308, i32 3}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/wfx/hif_rx.c", i32 310, i32 3}
!152 = !{ptr @hif_errors, !153, !"hif_errors", i1 false, i1 false}
!153 = !{!"../drivers/staging/wfx/hif_rx.c", i32 273, i32 3}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/wfx/hif_rx.c", i32 347, i32 3}
!156 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @hif_exception_indication._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @hif_exception_indication._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/wfx/hif_rx.c", i32 350, i32 3}
!161 = !{ptr @hif_exception_indication._entry.81, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @hif_exception_indication._entry_ptr.83, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2148840615, i64 2148840620, i64 2148840633, i64 2148840677, i64 2148840711, i64 2148840732}
!174 = !{i64 806805, i64 806822}
!175 = !{!"branch_weights", i32 1, i32 2000}
