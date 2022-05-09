; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/hif_tx.c_pt.bc'
source_filename = "../drivers/staging/wfx/hif_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hif_msg = type { i16, i8, i8, [0 x i8] }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }
%struct.hif_cnf_read_mib = type { i32, i16, i16, [0 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.hif_req_start_scan_alt = type <{ i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, [2 x %struct.hif_ssid_def], [0 x i8] }>
%struct.hif_ssid_def = type { i32, [32 x i8] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.hif_req_join = type { i8, i8, i8, i8, [6 x i8], i16, i8, i8, i8, i8, i32, [32 x i8], i32, i32 }
%struct.hif_req_set_bss_params = type { i8, i8, i16, i32 }
%struct.hif_req_add_key = type { i8, i8, i8, i8, %union.anon.132 }
%union.anon.132 = type { %struct.hif_tkip_pairwise_key }
%struct.hif_tkip_pairwise_key = type { [6 x i8], [2 x i8], [16 x i8], [8 x i8], [8 x i8] }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.hif_req_set_pm_mode = type { i8, i8, i8, i8 }
%struct.hif_req_start = type { i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8], i32 }
%struct.hif_req_map_link = type { [6 x i8], i8, i8 }

@wfx_init_hif_cmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hif_cmd->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/wfx/hif_tx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data locking error\00", [45 x i8] zeroinitializer }, align 32
@wfx_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 90, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"chip is abnormally long to answer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wfx_cmd_send\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_cmd_send._entry_ptr = internal global ptr @wfx_cmd_send._entry, section ".printk_index", align 4
@wfx_cmd_send._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 95, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chip did not answer\0A\00", [43 x i8] zeroinitializer }, align 32
@wfx_cmd_send._entry_ptr.10 = internal global ptr @wfx_cmd_send._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@wfx_cmd_send._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 114, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"hardware request %s%s%s (%#.2x) on vif %d returned error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wfx_cmd_send._entry_ptr.14 = internal global ptr @wfx_cmd_send._entry.12, section ".printk_index", align 4
@wfx_cmd_send._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 117, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"hardware request %s%s%s (%#.2x) on vif %d returned status %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wfx_cmd_send._entry_ptr.18 = internal global ptr @wfx_cmd_send._entry.15, section ".printk_index", align 4
@hif_read_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 194, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: confirmation mismatch request\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hif_read_mib\00", [19 x i8] zeroinitializer }, align 32
@hif_read_mib._entry_ptr = internal global ptr @hif_read_mib._entry, section ".printk_index", align 4
@hif_read_mib._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"buffer is too small to receive %s (%zu < %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@hif_read_mib._entry_ptr.23 = internal global ptr @hif_read_mib._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid params\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"joining an unknown BSS\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"requested buffer is too large: %zu bytes\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid interface ID %d\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 22, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 52, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 63, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 90, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 95, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 110, i32 13 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 113, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 116, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 193, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 198, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 239, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 304, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 87, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 32, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [32 x i8] c"../drivers/staging/wfx/hif_tx.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 33, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @hif_read_mib._entry, ptr @hif_read_mib._entry.21, ptr @hif_read_mib._entry_ptr, ptr @hif_read_mib._entry_ptr.23, ptr @wfx_cmd_send._entry, ptr @wfx_cmd_send._entry.12, ptr @wfx_cmd_send._entry.15, ptr @wfx_cmd_send._entry.8, ptr @wfx_cmd_send._entry_ptr, ptr @wfx_cmd_send._entry_ptr.10, ptr @wfx_cmd_send._entry_ptr.14, ptr @wfx_cmd_send._entry_ptr.18, ptr @wfx_init_hif_cmd.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_hif_cmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_cmd_send._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_cmd_send._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_cmd_send._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_read_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_read_mib._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wfx_init_hif_cmd(ptr noundef %hif_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.wfx_hif_cmd, ptr %hif_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ready, align 4
  %wait.i = getelementptr inbounds %struct.wfx_hif_cmd, ptr %hif_cmd, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #6
  %done = getelementptr inbounds %struct.wfx_hif_cmd, ptr %hif_cmd, i32 0, i32 2
  %1 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %done, align 4
  %wait.i3 = getelementptr inbounds %struct.wfx_hif_cmd, ptr %hif_cmd, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i3, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #6
  tail call void @__mutex_init(ptr noundef %hif_cmd, ptr noundef nonnull @.str, ptr noundef nonnull @wfx_init_hif_cmd.__key) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_cmd_send(ptr noundef %wdev, ptr noundef %request, ptr noundef %reply, i32 noundef %reply_len, i1 noundef zeroext %no_reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.hif_msg, ptr %request, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  %conv = zext i8 %1 to i32
  %interface = getelementptr inbounds %struct.hif_msg, ptr %request, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %interface, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 3
  %conv1 = zext i8 %bf.clear to i32
  %chip_frozen = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 13
  %3 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chip_frozen, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hif_cmd = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %hif_cmd, i32 noundef 0) #6
  %buf_send = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 3
  %5 = ptrtoint ptr %buf_send to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_send, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !62

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %7 = ptrtoint ptr %buf_send to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %request, ptr %buf_send, align 4
  %buf_recv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 4
  %8 = ptrtoint ptr %buf_recv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reply, ptr %buf_recv, align 4
  %len_recv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 5
  %9 = ptrtoint ptr %len_recv to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %reply_len, ptr %len_recv, align 4
  %ready = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 1
  tail call void @complete(ptr noundef %ready) #6
  tail call void @wfx_bh_request_tx(ptr noundef %wdev) #6
  br i1 %no_reply, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 100) #6
  %10 = ptrtoint ptr %buf_send to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %buf_send, align 4
  tail call void @mutex_unlock(ptr noundef %hif_cmd) #6
  br label %cleanup

if.end36:                                         ; preds = %if.end18
  %poll_irq = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 12
  %11 = ptrtoint ptr %poll_irq to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %poll_irq, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool37.not = icmp eq i8 %12, 0
  br i1 %tobool37.not, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @wfx_bh_poll_irq(ptr noundef %wdev) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  %done = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 2
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool41.not = icmp eq i32 %call, 0
  br i1 %tobool41.not, label %if.end51, label %if.end39.if.else_crit_edge

if.end39.if.else_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end51:                                         ; preds = %if.end39
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.4) #9
  %15 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ready, align 4
  %call50 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 300) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool52.not = icmp eq i32 %call50, 0
  br i1 %tobool52.not, label %do.end56, label %if.end51.if.else_crit_edge

if.end51.if.else_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9) #9
  tail call void @wfx_pending_dump_old_frames(ptr noundef %wdev, i32 noundef 3000) #6
  %18 = ptrtoint ptr %chip_frozen to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %chip_frozen, align 1
  %19 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %done, align 4
  br label %if.end63

if.else:                                          ; preds = %if.end51.if.else_crit_edge, %if.end39.if.else_crit_edge
  %ret62 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 15, i32 6
  %20 = ptrtoint ptr %ret62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else, %do.end56
  %ret.1 = phi i32 [ %21, %if.else ], [ -110, %do.end56 ]
  %22 = ptrtoint ptr %buf_send to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %buf_send, align 4
  tail call void @mutex_unlock(ptr noundef %hif_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool68.not = icmp ne i32 %ret.1, 0
  %.off = add i8 %1, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %or.cond = select i1 %tobool68.not, i1 %switch, i1 false
  br i1 %or.cond, label %if.then72, label %if.end63.if.end75_crit_edge

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then72:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i16, ptr %request, i32 2
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %conv73 = zext i16 %24 to i32
  %call74 = tail call ptr @get_mib_name(i32 noundef %conv73) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end63.if.end75_crit_edge
  %mib_name.0 = phi ptr [ %call74, %if.then72 ], [ @.str.1, %if.end63.if.end75_crit_edge ]
  %mib_sep.0 = phi ptr [ @.str.11, %if.then72 ], [ @.str.1, %if.end63.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp76 = icmp slt i32 %ret.1, 0
  br i1 %cmp76, label %if.end84.thread, label %if.end84

if.end84.thread:                                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %dev82 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %25 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev82, align 4
  %call83 = tail call ptr @get_hif_name(i32 noundef %conv) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef %call83, ptr noundef nonnull %mib_sep.0, ptr noundef %mib_name.0, i32 noundef %conv, i32 noundef %conv1, i32 noundef %ret.1) #9
  br label %cleanup

if.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp85.not = icmp eq i32 %ret.1, 0
  br i1 %cmp85.not, label %if.end84.cleanup_crit_edge, label %do.end90

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %dev91 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %27 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev91, align 4
  %call92 = tail call ptr @get_hif_name(i32 noundef %conv) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef %call92, ptr noundef nonnull %mib_sep.0, ptr noundef %mib_name.0, i32 noundef %conv, i32 noundef %conv1, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.end84.cleanup_crit_edge, %if.end84.thread, %if.then31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then31 ], [ -110, %entry.cleanup_crit_edge ], [ %ret.1, %do.end90 ], [ 0, %if.end84.cleanup_crit_edge ], [ %ret.1, %if.end84.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_request_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_poll_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_pending_dump_old_frames(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mib_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_hif_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_shutdown(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1024, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 50, ptr %id.i, align 2
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, 64
  store i8 %bf.set.i, ptr %interface.i, align 1
  %call1 = tail call i32 @wfx_cmd_send(ptr noundef %wdev, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext true)
  %gpio_wakeup = getelementptr inbounds %struct.wfx_platform_data, ptr %wdev, i32 0, i32 2
  %4 = ptrtoint ptr %gpio_wakeup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_wakeup, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 0) #6
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @control_reg_write(ptr noundef %wdev, i32 noundef 0) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @control_reg_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_configuration(ptr noundef %wdev, ptr nocapture noundef readonly %conf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 2
  %add.i = add i32 %len, 6
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 3
  %conv = trunc i32 %len to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %body.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %body.i, align 4
  %pds_data = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 1, i32 1
  %2 = call ptr @memcpy(ptr %pds_data, ptr %conf, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp23.i = icmp ugt i32 %add, 4095
  br i1 %cmp23.i, label %do.end39.i, label %if.end.wfx_fill_header.exit_crit_edge, !prof !63

if.end.wfx_fill_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %add) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end39.i, %if.end.wfx_fill_header.exit_crit_edge
  %3 = trunc i32 %add to i16
  %conv.i = add i16 %3, 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %5 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %call9.i.i.i, align 128
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %id.i, align 2
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, 64
  store i8 %bf.set.i, ptr %interface.i, align 1
  %call1 = tail call i32 @wfx_cmd_send(ptr noundef %wdev, ptr noundef nonnull %call9.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_reset(ptr nocapture noundef readonly %wvif, i1 noundef zeroext %reset_stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %body.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %body.i, align 4
  %bf.shl = select i1 %reset_stat, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %body.i, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end.wfx_fill_header.exit_crit_edge, !prof !63

if.end.wfx_fill_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end.wfx_fill_header.exit_crit_edge
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %7 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wvif, align 4
  %call2 = tail call i32 @wfx_cmd_send(ptr noundef %8, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_read_mib(ptr noundef %wdev, i32 noundef %vif_id, i16 noundef zeroext %mib_id, ptr nocapture noundef writeonly %val, i32 noundef %val_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %val_len, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %body.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %retval.0.i, null
  %tobool2.not = icmp eq ptr %call9.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %1 = tail call i16 @llvm.bswap.i16(i16 %mib_id)
  %2 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vif_id)
  %cmp.i45 = icmp eq i32 %vif_id, -1
  %spec.store.select.i = select i1 %cmp.i45, i32 2, i32 %vif_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end.wfx_fill_header.exit_crit_edge, !prof !63

if.end.wfx_fill_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end.wfx_fill_header.exit_crit_edge
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2048, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %call4 = tail call i32 @wfx_cmd_send(ptr noundef %wdev, ptr noundef %call7.i.i.i, ptr noundef nonnull %call9.i, i32 noundef %add, i1 noundef zeroext false)
  %6 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %wfx_fill_header.exit.if.else_crit_edge [
    i32 0, label %land.lhs.true
    i32 -12, label %do.end16
  ]

wfx_fill_header.exit.if.else_crit_edge:           ; preds = %wfx_fill_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %wfx_fill_header.exit
  %mib_id6 = getelementptr inbounds %struct.hif_cnf_read_mib, ptr %call9.i, i32 0, i32 1
  %7 = ptrtoint ptr %mib_id6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mib_id6, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %mib_id)
  %cmp.not = icmp eq i16 %9, %mib_id
  br i1 %cmp.not, label %if.then23, label %if.end10.thread

if.end10.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #9
  br label %if.else

do.end16:                                         ; preds = %wfx_fill_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  %conv18 = zext i16 %mib_id to i32
  %call19 = tail call ptr @get_mib_name(i32 noundef %conv18) #6
  %length = getelementptr inbounds %struct.hif_cnf_read_mib, ptr %call9.i, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv20 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef %call19, i32 noundef %val_len, i32 noundef %conv20) #9
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mib_data = getelementptr inbounds %struct.hif_cnf_read_mib, ptr %call9.i, i32 0, i32 3
  %length24 = getelementptr inbounds %struct.hif_cnf_read_mib, ptr %call9.i, i32 0, i32 2
  %17 = ptrtoint ptr %length24 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %length24, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv25 = zext i16 %19 to i32
  %20 = call ptr @memcpy(ptr %val, ptr %mib_data, i32 %conv25)
  br label %out

if.else:                                          ; preds = %do.end16, %if.end10.thread, %wfx_fill_header.exit.if.else_crit_edge
  %ret.049 = phi i32 [ -5, %if.end10.thread ], [ -12, %do.end16 ], [ %call4, %wfx_fill_header.exit.if.else_crit_edge ]
  %21 = call ptr @memset(ptr %val, i32 255, i32 %val_len)
  br label %out

out:                                              ; preds = %if.else, %if.then23, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.049, %if.else ], [ 0, %if.then23 ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #6
  tail call void @kfree(ptr noundef %call9.i) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_write_mib(ptr noundef %wdev, i32 noundef %vif_id, i16 noundef zeroext %mib_id, ptr nocapture noundef readonly %val, i32 noundef %val_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %val_len, 4
  %add.i = add i32 %val_len, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 3
  %0 = tail call i16 @llvm.bswap.i16(i16 %mib_id)
  %1 = ptrtoint ptr %body.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %body.i, align 4
  %conv = trunc i32 %val_len to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %length = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 1, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %length, align 2
  %mib_data = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 2
  %4 = call ptr @memcpy(ptr %mib_data, ptr %val, i32 %val_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vif_id)
  %cmp.i = icmp eq i32 %vif_id, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %vif_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp23.i = icmp ugt i32 %add, 4095
  br i1 %cmp23.i, label %do.end39.i, label %if.end.if.end45.i_crit_edge, !prof !63

if.end.if.end45.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

do.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %add) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end39.i, %if.end.if.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end45.i.wfx_fill_header.exit_crit_edge, !prof !63

if.end45.i.wfx_fill_header.exit_crit_edge:        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end45.i.wfx_fill_header.exit_crit_edge
  %5 = trunc i32 %add to i16
  %conv.i = add i16 %5, 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %call9.i.i.i, align 128
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %call2 = tail call i32 @wfx_cmd_send(ptr noundef %wdev, ptr noundef nonnull %call9.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_scan(ptr nocapture noundef readonly %wvif, ptr nocapture noundef readonly %req, i32 noundef %chan_start_idx, i32 noundef %chan_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %chan_num, 96
  %add.i = add i32 %chan_num, 100
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 3
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %chan_num)
  %cmp = icmp sgt i32 %chan_num, 14
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 239, i32 noundef 9, ptr noundef nonnull @.str.24) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp20 = icmp sgt i32 %1, 2
  br i1 %cmp20, label %do.end36, label %if.end.if.end42_crit_edge, !prof !63

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef nonnull @.str.24) #6
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %if.end.if.end42_crit_edge
  br i1 %tobool.not.i, label %if.end42.cleanup_crit_edge, label %for.cond.preheader

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end42
  %2 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp54139 = icmp sgt i32 %3, 0
  br i1 %cmp54139, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0140 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 13, i32 %i.0140
  %ssid = getelementptr %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 13, i32 %i.0140, i32 1
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %arrayidx55 = getelementptr %struct.cfg80211_ssid, ptr %5, i32 %i.0140
  %6 = call ptr @memcpy(ptr %ssid, ptr %arrayidx55, i32 32)
  %7 = load ptr, ptr %req, align 8
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %7, i32 %i.0140, i32 1
  %8 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ssid_len, align 1
  %conv = zext i8 %9 to i32
  %10 = shl nuw i32 %conv, 24
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0140, 1
  %12 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_ssids, align 4
  %cmp54 = icmp slt i32 %inc, %13
  br i1 %cmp54, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_of_ssids = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 8
  %14 = ptrtoint ptr %num_of_ssids to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %num_of_ssids, align 2
  %maintain_current_bss = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %maintain_current_bss to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %bf.load = load i16, ptr %maintain_current_bss, align 1
  %bf.set64 = or i16 %bf.load, -32640
  store i16 %bf.set64, ptr %maintain_current_bss, align 1
  %arrayidx65 = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %chan_start_idx
  %16 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx65, align 4
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_power, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %tx_power_level = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 12
  %21 = ptrtoint ptr %tx_power_level to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tx_power_level, align 4
  %conv66 = trunc i32 %chan_num to i8
  %num_of_channels = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 9
  %22 = ptrtoint ptr %num_of_channels to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv66, ptr %num_of_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan_num)
  %cmp68141 = icmp sgt i32 %chan_num, 0
  br i1 %cmp68141, label %for.end.for.body70_crit_edge, label %for.end.for.end78_crit_edge

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end78

for.end.for.body70_crit_edge:                     ; preds = %for.end
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.end.for.body70_crit_edge
  %i.1142 = phi i32 [ %inc77, %for.body70.for.body70_crit_edge ], [ 0, %for.end.for.body70_crit_edge ]
  %add72 = add i32 %i.1142, %chan_start_idx
  %arrayidx73 = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %add72
  %23 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx73, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hw_value, align 2
  %conv74 = trunc i16 %26 to i8
  %arrayidx75 = getelementptr %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 14, i32 %i.1142
  %27 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv74, ptr %arrayidx75, align 1
  %inc77 = add nuw nsw i32 %i.1142, 1
  %exitcond.not = icmp eq i32 %inc77, %chan_num
  br i1 %exitcond.not, label %for.body70.for.end78_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.body70.for.end78_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end78

for.end78:                                        ; preds = %for.body70.for.end78_crit_edge, %for.end.for.end78_crit_edge
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 18
  %28 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %no_cck, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool79.not = icmp eq i8 %29, 0
  %spec.select = select i1 %tobool79.not, i8 0, i8 6
  %30 = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select, ptr %30, align 1
  %32 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx65, align 4
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %if.else87, label %for.end78.if.end90_crit_edge

for.end78.if.end90_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.else87:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #8
  %num_of_probe_requests = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 6
  %36 = ptrtoint ptr %num_of_probe_requests to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %num_of_probe_requests, align 4
  %probe_delay = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 7
  %37 = ptrtoint ptr %probe_delay to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 100, ptr %probe_delay, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %for.end78.if.end90_crit_edge
  %.sink144 = phi i32 [ 167772160, %if.else87 ], [ 838860800, %for.end78.if.end90_crit_edge ]
  %.sink143 = phi i32 [ 838860800, %if.else87 ], [ -1778384896, %for.end78.if.end90_crit_edge ]
  %38 = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 10
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink144, ptr %38, align 4
  %40 = getelementptr inbounds %struct.hif_req_start_scan_alt, ptr %retval.0.i, i32 0, i32 11
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink143, ptr %40, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i = icmp eq i32 %43, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp23.i = icmp ugt i32 %add, 4095
  br i1 %cmp23.i, label %do.end39.i, label %if.end90.if.end45.i_crit_edge, !prof !63

if.end90.if.end45.i_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

do.end39.i:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %add) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end39.i, %if.end90.if.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end45.i.wfx_fill_header.exit_crit_edge, !prof !63

if.end45.i.wfx_fill_header.exit_crit_edge:        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end45.i.wfx_fill_header.exit_crit_edge
  %44 = trunc i32 %add to i16
  %conv.i = add i16 %44, 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %46 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %call9.i.i.i, align 128
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 7, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %49 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wvif, align 4
  %call91 = tail call i32 @wfx_cmd_send(ptr noundef %50, ptr noundef nonnull %call9.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %if.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ %call91, %wfx_fill_header.exit ], [ -12, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_stop_scan(ptr nocapture noundef readonly %wvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i = icmp eq i32 %2, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end.wfx_fill_header.exit_crit_edge, !prof !63

if.end.wfx_fill_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end.wfx_fill_header.exit_crit_edge
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1024, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %6 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wvif, align 4
  %call1 = tail call i32 @wfx_cmd_send(ptr noundef %7, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_join(ptr nocapture noundef readonly %wvif, ptr nocapture noundef readonly %conf, ptr nocapture noundef readonly %channel, ptr noundef readonly %ssid, i32 noundef %ssidlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %body.i
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %1 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %beacon_int, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 301, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 24
  %3 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %basic_rates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool22.not = icmp eq i32 %4, 0
  br i1 %tobool22.not, label %do.end40, label %if.end.if.end46_crit_edge, !prof !63

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #6
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %ssidlen)
  %cmp = icmp ugt i32 %ssidlen, 32
  br i1 %cmp, label %if.end76.thread, label %if.end76, !prof !63

if.end76.thread:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 303, i32 noundef 9, ptr noundef null) #6
  %ibss_joined180 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 11
  br label %if.end110

if.end76:                                         ; preds = %if.end46
  %ibss_joined = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 11
  %5 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ibss_joined, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool85.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssidlen)
  %tobool86.not = icmp eq i32 %ssidlen, 0
  %spec.select = and i1 %tobool86.not, %tobool85.not
  br i1 %spec.select, label %do.end104, label %if.end76.if.end110_crit_edge, !prof !63

if.end76.if.end110_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.end104:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 304, i32 noundef 9, ptr noundef nonnull @.str.25) #6
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end76.if.end110_crit_edge, %if.end76.thread
  %ibss_joined184 = phi ptr [ %ibss_joined180, %if.end76.thread ], [ %ibss_joined, %do.end104 ], [ %ibss_joined, %if.end76.if.end110_crit_edge ]
  br i1 %tobool.not.i, label %if.end110.cleanup_crit_edge, label %if.end120

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end120:                                        ; preds = %if.end110
  %7 = ptrtoint ptr %ibss_joined184 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ibss_joined184, align 8, !range !61
  %9 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %retval.0.i, align 4
  %bf.value = xor i8 %8, -1
  %bf.shl = shl i8 %bf.value, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %retval.0.i, align 4
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 15
  %10 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_short_preamble, align 1, !range !61
  %short_preamble = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 6
  %12 = ptrtoint ptr %short_preamble to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load127 = load i8, ptr %short_preamble, align 4
  %bf.shl129 = shl nuw i8 %11, 7
  %bf.clear130 = and i8 %bf.load127, 127
  %bf.set131 = or i8 %bf.clear130, %bf.shl129
  store i8 %bf.set131, ptr %short_preamble, align 4
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %15 = trunc i32 %14 to i8
  %16 = lshr i8 %15, 1
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %probe_for_join = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 7
  %19 = ptrtoint ptr %probe_for_join to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %probe_for_join, align 1
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %20 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_value, align 2
  %conv136 = trunc i16 %21 to i8
  %channel_number = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %channel_number to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv136, ptr %channel_number, align 2
  %23 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %beacon_int, align 2
  %conv138 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv138)
  %beacon_interval = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 12
  %26 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %beacon_interval, align 4
  %27 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wvif, align 4
  %29 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %basic_rates, align 8
  %call140 = tail call i32 @wfx_rate_mask_to_hw(ptr noundef %28, i32 noundef %30) #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %call140)
  %basic_rate_set = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 13
  %32 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %basic_rate_set, align 4
  %bssid = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 4
  %33 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %conf, align 8
  %35 = call ptr @memcpy(ptr %bssid, ptr %34, i32 6)
  %tobool142.not = icmp eq ptr %ssid, null
  br i1 %tobool142.not, label %if.end120.if.end146_crit_edge, label %if.then143

if.end120.if.end146_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then143:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %ssidlen)
  %ssid_length = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 10
  %37 = ptrtoint ptr %ssid_length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ssid_length, align 4
  %ssid144 = getelementptr inbounds %struct.hif_req_join, ptr %retval.0.i, i32 0, i32 11
  %38 = call ptr @memcpy(ptr %ssid144, ptr %ssid, i32 %ssidlen)
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.end120.if.end146_crit_edge
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i = icmp eq i32 %40, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end146.wfx_fill_header.exit_crit_edge, !prof !63

if.end146.wfx_fill_header.exit_crit_edge:         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end146.wfx_fill_header.exit_crit_edge
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 16384, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 11, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %44 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wvif, align 4
  %call148 = tail call i32 @wfx_cmd_send(ptr noundef %45, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %if.end110.cleanup_crit_edge
  %retval.0 = phi i32 [ %call148, %wfx_fill_header.exit ], [ -12, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_rate_mask_to_hw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_bss_params(ptr nocapture noundef readonly %wvif, i32 noundef %aid, i32 noundef %beacon_lost_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %conv = trunc i32 %aid to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %aid1 = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 1, i32 1
  %2 = ptrtoint ptr %aid1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %aid1, align 2
  %conv2 = trunc i32 %beacon_lost_count to i8
  %beacon_lost_count3 = getelementptr inbounds %struct.hif_req_set_bss_params, ptr %body.i, i32 0, i32 1
  %3 = ptrtoint ptr %beacon_lost_count3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %beacon_lost_count3, align 1
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp eq i32 %5, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end.wfx_fill_header.exit_crit_edge, !prof !63

if.end.wfx_fill_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end.wfx_fill_header.exit_crit_edge
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3072, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 17, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %9 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wvif, align 4
  %call4 = tail call i32 @wfx_cmd_send(ptr noundef %10, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_add_key(ptr noundef %wdev, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %body.i, ptr %arg, i32 44)
  %call1 = tail call zeroext i1 @wfx_api_older_than(ptr noundef %wdev, i32 noundef 1, i32 noundef 5) #6
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %int_id = getelementptr inbounds %struct.hif_req_add_key, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %int_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %int_id, align 1
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 12288, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %id.i, align 2
  %5 = lshr i8 %bf.load, 1
  %bf.value.i = and i8 %5, 96
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 12288, ptr %call7.i.i.i, align 8
  %id.i9 = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id.i9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %id.i9, align 2
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %.sink = phi i8 [ 64, %if.else ], [ %bf.value.i, %if.then2 ]
  %interface.i10.sink = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %interface.i10.sink to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i11.sink = load i8, ptr %interface.i10.sink, align 1
  %bf.clear.i12 = and i8 %bf.load.i11.sink, -97
  %bf.set.i13 = or i8 %bf.clear.i12, %.sink
  store i8 %bf.set.i13, ptr %interface.i10.sink, align 1
  %call4 = tail call i32 @wfx_cmd_send(ptr noundef %wdev, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_api_older_than(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_remove_key(ptr noundef %wdev, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %conv = trunc i32 %idx to i8
  %1 = ptrtoint ptr %body.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %body.i, align 4
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2048, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %id.i, align 2
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, 64
  store i8 %bf.set.i, ptr %interface.i, align 1
  %call1 = tail call i32 @wfx_cmd_send(ptr noundef %wdev, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_edca_queue_params(ptr nocapture noundef readonly %wvif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end25

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %entry
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %arg, i32 0, i32 3
  %1 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %aifs, align 2
  %aifsn = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 1, i32 1
  %3 = ptrtoint ptr %aifsn to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %aifsn, align 2
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cw_min, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %cw_min27 = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 2
  %7 = ptrtoint ptr %cw_min27 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %cw_min27, align 8
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %arg, i32 0, i32 2
  %8 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cw_max, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %cw_max28 = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 2, i32 1
  %11 = ptrtoint ptr %cw_max28 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %cw_max28, align 2
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arg, align 2
  %mul = shl i16 %13, 5
  %14 = tail call i16 @llvm.bswap.i16(i16 %mul)
  %tx_op_limit = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 3
  %15 = ptrtoint ptr %tx_op_limit to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tx_op_limit, align 4
  %16 = trunc i16 %queue to i8
  %conv32 = sub i8 3, %16
  %17 = ptrtoint ptr %body.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv32, ptr %body.i, align 4
  %18 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wvif, align 4
  %call33 = tail call zeroext i1 @wfx_api_older_than(ptr noundef %19, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %queue)
  %cmp36 = icmp eq i16 %queue, 2
  %or.cond = and i1 %cmp36, %call33
  br i1 %or.cond, label %if.then38, label %if.end25.if.end40_crit_edge

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %body.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %body.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end25.if.end40_crit_edge
  %21 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wvif, align 4
  %call42 = tail call zeroext i1 @wfx_api_older_than(ptr noundef %22, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue)
  %cmp46 = icmp eq i16 %queue, 3
  %or.cond72 = and i1 %cmp46, %call42
  br i1 %or.cond72, label %if.then48, label %if.end40.if.end50_crit_edge

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %body.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %body.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end40.if.end50_crit_edge
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i = icmp eq i32 %25, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end50.wfx_fill_header.exit_crit_edge, !prof !63

if.end50.wfx_fill_header.exit_crit_edge:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end50.wfx_fill_header.exit_crit_edge
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 5120, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 19, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %29 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wvif, align 4
  %call52 = tail call i32 @wfx_cmd_send(ptr noundef %30, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_pm(ptr nocapture noundef readonly %wvif, i1 noundef zeroext %ps, i32 noundef %dynamic_ps_timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %body.i
  %tobool.not = icmp eq ptr %retval.0.i, null
  %brmerge = or i1 %tobool.not.i, %tobool.not
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  br i1 %ps, label %if.then5, label %if.end3.if.end13_crit_edge

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %if.end3
  %1 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %retval.0.i, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %retval.0.i, align 4
  %mul = shl i32 %dynamic_ps_timeout, 1
  %2 = tail call i32 @llvm.smin.i32(i32 %mul, i32 255)
  %3 = trunc i32 %2 to i8
  %fast_psm_idle_period = getelementptr inbounds %struct.hif_req_set_pm_mode, ptr %retval.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %fast_psm_idle_period to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %fast_psm_idle_period, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.then5.if.end13_crit_edge, label %if.then8

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set11 = or i8 %bf.load, -127
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set11, ptr %retval.0.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then5.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end13.wfx_fill_header.exit_crit_edge, !prof !63

if.end13.wfx_fill_header.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end13.wfx_fill_header.exit_crit_edge
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2048, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %11 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wvif, align 4
  %call14 = tail call i32 @wfx_cmd_send(ptr noundef %12, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_start(ptr nocapture noundef readonly %wvif, ptr nocapture noundef readonly %conf, ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %body.i
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %1 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %beacon_int, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 444, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 18
  %3 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dtim_period, align 8
  %dtim_period24 = getelementptr inbounds %struct.hif_req_start, ptr %retval.0.i, i32 0, i32 6
  %5 = ptrtoint ptr %dtim_period24 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %dtim_period24, align 4
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 15
  %6 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_short_preamble, align 1, !range !61
  %short_preamble = getelementptr inbounds %struct.hif_req_start, ptr %retval.0.i, i32 0, i32 7
  %8 = ptrtoint ptr %short_preamble to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %short_preamble, align 1
  %bf.shl = shl nuw i8 %7, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %short_preamble, align 1
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %channel, i32 0, i32 3
  %9 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_value, align 2
  %conv26 = trunc i16 %10 to i8
  %channel_number = getelementptr inbounds %struct.hif_req_start, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %channel_number to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv26, ptr %channel_number, align 2
  %12 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %beacon_int, align 2
  %conv28 = zext i16 %13 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv28)
  %beacon_interval = getelementptr inbounds %struct.hif_req_start, ptr %retval.0.i, i32 0, i32 5
  %15 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %beacon_interval, align 4
  %16 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wvif, align 4
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 24
  %18 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %basic_rates, align 8
  %call29 = tail call i32 @wfx_rate_mask_to_hw(ptr noundef %17, i32 noundef %19) #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %call29)
  %basic_rate_set = getelementptr inbounds %struct.hif_req_start, ptr %retval.0.i, i32 0, i32 11
  %21 = ptrtoint ptr %basic_rate_set to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %basic_rate_set, align 4
  %ssid_len = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 40
  %22 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ssid_len, align 8
  %conv30 = trunc i32 %23 to i8
  %ssid_length = getelementptr inbounds %struct.hif_req_start, ptr %retval.0.i, i32 0, i32 9
  %24 = ptrtoint ptr %ssid_length to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv30, ptr %ssid_length, align 1
  %ssid = getelementptr inbounds %struct.hif_req_start, ptr %retval.0.i, i32 0, i32 10
  %ssid31 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 39
  %25 = load i32, ptr %ssid_len, align 8
  %26 = call ptr @memcpy(ptr %ssid, ptr %ssid31, i32 %25)
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i = icmp eq i32 %28, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end23.wfx_fill_header.exit_crit_edge, !prof !63

if.end23.wfx_fill_header.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end23.wfx_fill_header.exit_crit_edge
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 14336, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 23, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %32 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wvif, align 4
  %call35 = tail call i32 @wfx_cmd_send(ptr noundef %33, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %wfx_fill_header.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_beacon_transmit(ptr nocapture noundef readonly %wvif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %conv = zext i1 %enable to i8
  %1 = ptrtoint ptr %body.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %body.i, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end.wfx_fill_header.exit_crit_edge, !prof !63

if.end.wfx_fill_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end.wfx_fill_header.exit_crit_edge
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %7 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wvif, align 4
  %call2 = tail call i32 @wfx_cmd_send(ptr noundef %8, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_map_link(ptr nocapture noundef readonly %wvif, i1 noundef zeroext %unmap, ptr noundef readonly %mac_addr, i32 noundef %sta_id, i1 noundef zeroext %mfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 3
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %body.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %mac_addr, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_addr, align 4
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %retval.0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %retval.0.i, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %mfpc = getelementptr inbounds %struct.hif_req_map_link, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %mfpc to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %mfpc, align 2
  %bf.shl = select i1 %mfp, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.shl14 = select i1 %unmap, i8 -128, i8 0
  %bf.set = or i8 %bf.shl, %bf.shl14
  %bf.set16 = or i8 %bf.set, %bf.clear
  store i8 %bf.set16, ptr %mfpc, align 2
  %conv17 = trunc i32 %sta_id to i8
  %peer_sta_id = getelementptr inbounds %struct.hif_req_map_link, ptr %retval.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %peer_sta_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv17, ptr %peer_sta_id, align 1
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i = icmp eq i32 %10, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end5.wfx_fill_header.exit_crit_edge, !prof !63

if.end5.wfx_fill_header.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end5.wfx_fill_header.exit_crit_edge
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3072, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 28, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %14 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wvif, align 4
  %call18 = tail call i32 @wfx_cmd_send(ptr noundef %15, ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_update_ie_beacon(ptr nocapture noundef readonly %wvif, ptr nocapture noundef readonly %ies, i32 noundef %ies_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %ies_len, 4
  %add.i = add i32 %ies_len, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %body.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %body.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %body.i, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %body.i, align 4
  %num_ies = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 1, i32 1
  %1 = ptrtoint ptr %num_ies to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %num_ies, align 2
  %ie = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 2
  %2 = call ptr @memcpy(ptr %ie, ptr %ies, i32 %ies_len)
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i = icmp eq i32 %4, -1
  %spec.store.select.i = select i1 %cmp.i, i32 2, i32 %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp23.i = icmp ugt i32 %add, 4095
  br i1 %cmp23.i, label %do.end39.i, label %if.end.if.end45.i_crit_edge, !prof !63

if.end.if.end45.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

do.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef %add) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end39.i, %if.end.if.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i)
  %cmp54.i = icmp sgt i32 %spec.store.select.i, 3
  br i1 %cmp54.i, label %do.end70.i, label %if.end45.i.wfx_fill_header.exit_crit_edge, !prof !63

if.end45.i.wfx_fill_header.exit_crit_edge:        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wfx_fill_header.exit

do.end70.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select.i) #6
  br label %wfx_fill_header.exit

wfx_fill_header.exit:                             ; preds = %do.end70.i, %if.end45.i.wfx_fill_header.exit_crit_edge
  %5 = trunc i32 %add to i16
  %conv.i = add i16 %5, 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %call9.i.i.i, align 128
  %id.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 27, ptr %id.i, align 2
  %conv85.i = trunc i32 %spec.store.select.i to i8
  %interface.i = getelementptr inbounds %struct.hif_msg, ptr %call9.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %interface.i, align 1
  %bf.value.i = shl i8 %conv85.i, 5
  %bf.shl.i = and i8 %bf.value.i, 96
  %bf.clear.i = and i8 %bf.load.i, -97
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %interface.i, align 1
  %10 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wvif, align 4
  %call1 = tail call i32 @wfx_cmd_send(ptr noundef %11, ptr noundef nonnull %call9.i.i.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wfx_fill_header.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %wfx_fill_header.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @wfx_init_hif_cmd.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/hif_tx.c", i32 22, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/wfx/hif_tx.c", i32 52, i32 25}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/wfx/hif_tx.c", i32 63, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/hif_tx.c", i32 90, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wfx_cmd_send._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @wfx_cmd_send._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/wfx/hif_tx.c", i32 95, i32 3}
!17 = !{ptr @wfx_cmd_send._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @wfx_cmd_send._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/wfx/hif_tx.c", i32 110, i32 13}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/wfx/hif_tx.c", i32 113, i32 3}
!23 = !{ptr @wfx_cmd_send._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @wfx_cmd_send._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/wfx/hif_tx.c", i32 116, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wfx_cmd_send._entry.15, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wfx_cmd_send._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/wfx/hif_tx.c", i32 193, i32 3}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hif_read_mib._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hif_read_mib._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/wfx/hif_tx.c", i32 198, i32 3}
!37 = !{ptr @hif_read_mib._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @hif_read_mib._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/wfx/hif_tx.c", i32 239, i32 2}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/wfx/hif_tx.c", i32 304, i32 2}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/wfx/hif_tx.c", i32 31, i32 2}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/wfx/hif_tx.c", i32 32, i32 2}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/wfx/hif_tx.c", i32 33, i32 2}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!"branch_weights", i32 1, i32 2000}
