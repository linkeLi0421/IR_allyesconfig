; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_ptp.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.ifreq = type { %union.anon.127, %union.anon.128 }
%union.anon.127 = type { [16 x i8] }
%union.anon.128 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_tagger_data = type { ptr, ptr, ptr, ptr }
%struct.sja1105_general_params_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_clock_request = type { i32, %union.anon.169 }
%union.anon.169 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.170, %struct.ptp_clock_time, i32, i32, %union.anon.171 }
%union.anon.170 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.171 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ptp_clock_event = type { i32, i32, %union.anon.172 }
%union.anon.172 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }

@sja1105_hwtstamp_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to change RX timestamping: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sja1105_hwtstamp_set\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/dsa/sja1105/sja1105_ptp.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sja1105_hwtstamp_set._entry_ptr = internal global ptr @sja1105_hwtstamp_set._entry, section ".printk_index", align 4
@__sja1105_ptp_gettimex._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read PTP clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__sja1105_ptp_gettimex\00", [41 x i8] zeroinitializer }, align 32
@__sja1105_ptp_gettimex._entry_ptr = internal global ptr @__sja1105_ptp_gettimex._entry, section ".printk_index", align 4
@__sja1105_ptp_settime._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 617, ptr @.str.3, ptr @.str.4 }, align 1
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to put PTPCLK in set mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__sja1105_ptp_settime\00", [42 x i8] zeroinitializer }, align 32
@__sja1105_ptp_settime._entry_ptr = internal global ptr @__sja1105_ptp_settime._entry, section ".printk_index", align 4
@__sja1105_ptp_adjtime._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 683, ptr @.str.3, ptr @.str.4 }, align 1
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to put PTPCLK in add mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__sja1105_ptp_adjtime\00", [42 x i8] zeroinitializer }, align 32
@__sja1105_ptp_adjtime._entry_ptr = internal global ptr @__sja1105_ptp_adjtime._entry, section ".printk_index", align 4
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SJA1105 PHC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@sja1105_ptp_pin = internal global { %struct.ptp_pin_desc, [32 x i8] } { %struct.ptp_pin_desc { [64 x i8] c"ptp_clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sja1105_ptp_clock_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&ptp_data->extts_timer)\00", [39 x i8] zeroinitializer }, align 32
@sja1105_ptp_txtstamp_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 995, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timed out polling for tstamp\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sja1105_ptp_txtstamp_skb\00", [39 x i8] zeroinitializer }, align 32
@sja1105_ptp_txtstamp_skb._entry_ptr = internal global ptr @sja1105_ptp_txtstamp_skb._entry, section ".printk_index", align 4
@sja1105_ptp_txtstamp_skb._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.14, ptr @.str.2, i32 1002, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sja1105_ptp_txtstamp_skb._entry_ptr.16 = internal global ptr @sja1105_ptp_txtstamp_skb._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sja1105_rxtstamp_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.20, ptr @.str.2, i32 391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sja1105_rxtstamp_work\00", [42 x i8] zeroinitializer }, align 32
@sja1105_rxtstamp_work._entry_ptr = internal global ptr @sja1105_rxtstamp_work._entry, section ".printk_index", align 4
@sja1105_extts_poll._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sja1105_extts_poll = private unnamed_addr constant [19 x i8] c"sja1105_extts_poll\00", align 1
@sja1105_extts_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.sja1105_extts_poll, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read PTPSYNCTS: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sja1105_extts_poll._entry_ptr = internal global ptr @sja1105_extts_poll._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@sja1105_ptp_reset.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1105\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sja1105_ptp_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Resetting PTP clock\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 23]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 23]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 23]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 64, i64 2617245708, i64 2650800910]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 64, i64 2617245708, i64 2650800910]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 119, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 565, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 617, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 683, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 932, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"sja1105_ptp_pin\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 919, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 959, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 995, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1002, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 156, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 391, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 362, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1984, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [41 x i8] c"../drivers/net/dsa/sja1105/sja1105_ptp.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 545, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__sja1105_ptp_adjtime._entry, ptr @__sja1105_ptp_adjtime._entry_ptr, ptr @__sja1105_ptp_gettimex._entry, ptr @__sja1105_ptp_gettimex._entry_ptr, ptr @__sja1105_ptp_settime._entry, ptr @__sja1105_ptp_settime._entry_ptr, ptr @sja1105_extts_poll._entry, ptr @sja1105_extts_poll._entry_ptr, ptr @sja1105_hwtstamp_set._entry, ptr @sja1105_hwtstamp_set._entry_ptr, ptr @sja1105_ptp_txtstamp_skb._entry, ptr @sja1105_ptp_txtstamp_skb._entry.15, ptr @sja1105_ptp_txtstamp_skb._entry_ptr, ptr @sja1105_ptp_txtstamp_skb._entry_ptr.16, ptr @sja1105_rxtstamp_work._entry, ptr @sja1105_rxtstamp_work._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @sja1105_ptp_pin, ptr @sja1105_ptp_clock_register.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.19, ptr @.str.20, ptr @sja1105_extts_poll._rs, ptr @.str.21, ptr @.str.22, ptr @skb_queue_head_init.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_hwtstamp_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_ptp_pin to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_ptp_clock_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_ptp_txtstamp_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_ptp_txtstamp_skb._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rxtstamp_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_extts_poll._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_extts_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_hwtstamp_set(ptr noundef %ds, i32 noundef %port, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_ops.i, align 4
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proto.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body6.i [
    i32 23, label %entry.sja1105_tagger_data.exit_crit_edge
    i32 13, label %entry.sja1105_tagger_data.exit_crit_edge62
  ]

entry.sja1105_tagger_data.exit_crit_edge62:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tagger_data.exit

entry.sja1105_tagger_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tagger_data.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dsa/sja1105.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

sja1105_tagger_data.exit:                         ; preds = %entry.sja1105_tagger_data.exit_crit_edge, %entry.sja1105_tagger_data.exit_crit_edge62
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %7 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tagger_data.i, align 4
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #7
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %config, align 4, !annotation !75
  %12 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !75
  %14 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !75
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %16 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sja1105_tagger_data.exit.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sja1105_tagger_data.exit.if.then11.i.i_crit_edge: ; preds = %sja1105_tagger_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sja1105_tagger_data.exit
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 12, i32 -1226833920) #10, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !77

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #7
  %19 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !78
  %and.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %17, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !77

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sja1105_tagger_data.exit.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %sja1105_tagger_data.exit.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %24, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %hwts_tx_en = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 7
  %26 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwts_tx_en, align 8
  %and = and i32 %27, %neg
  store i32 %and, ptr %hwts_tx_en, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl4 = shl nuw i32 1, %port
  %hwts_tx_en5 = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 7
  %28 = ptrtoint ptr %hwts_tx_en5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwts_tx_en5, align 8
  %or = or i32 %29, %shl4
  store i32 %or, ptr %hwts_tx_en5, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cond = icmp eq i32 %31, 0
  %rxtstamp_get_state = getelementptr inbounds %struct.sja1105_tagger_data, ptr %8, i32 0, i32 2
  %32 = ptrtoint ptr %rxtstamp_get_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxtstamp_get_state, align 4
  %call10 = call zeroext i1 %33(ptr noundef %ds) #7
  %cmp.not = xor i1 %cond, %call10
  br i1 %cmp.not, label %sw.epilog.if.then.i52_crit_edge, label %if.then13

sw.epilog.if.then.i52_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i52

if.then13:                                        ; preds = %sw.epilog
  %34 = xor i1 %cond, true
  %rxtstamp_set_state = getelementptr inbounds %struct.sja1105_tagger_data, ptr %8, i32 0, i32 3
  %35 = ptrtoint ptr %rxtstamp_set_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rxtstamp_set_state, align 4
  call void %36(ptr noundef %ds, i1 noundef zeroext false) #7
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %10, i32 0, i32 1, i32 16, i32 2
  %37 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entries.i, align 4
  %conv.i = zext i1 %34 to i64
  %send_meta1.i = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %send_meta1.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %send_meta1.i, align 8
  %send_meta0.i = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %38, i32 0, i32 11
  %40 = ptrtoint ptr %send_meta0.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv.i, ptr %send_meta0.i, align 8
  %clock.i = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 25, i32 4
  %41 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clock.i, align 4
  call void @ptp_cancel_worker_sync(ptr noundef %42) #7
  %skb_txtstamp_queue.i = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 25, i32 2
  call void @skb_queue_purge(ptr noundef %skb_txtstamp_queue.i) #7
  %skb_rxtstamp_queue.i = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 25, i32 1
  call void @skb_queue_purge(ptr noundef %skb_rxtstamp_queue.i) #7
  %call.i = call i32 @sja1105_static_config_reload(ptr noundef %10, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %do.end, label %if.end19

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str, i32 noundef %call.i) #11
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  br i1 %cond, label %if.end19.if.then.i52_crit_edge, label %if.then21

if.end19.if.then.i52_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i52

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %rxtstamp_set_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rxtstamp_set_state, align 4
  call void %46(ptr noundef %ds, i1 noundef zeroext true) #7
  br label %if.then.i52

if.then.i52:                                      ; preds = %if.then21, %if.end19.if.then.i52_crit_edge, %sw.epilog.if.then.i52_crit_edge
  %47 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i51 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i51, label %if.then.i52.cleanup_crit_edge, label %if.end.i.i55

if.then.i52.cleanup_crit_edge:                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i55:                                     ; preds = %if.then.i52
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 12, i32 -1226833920) #10, !srcloc !81
  %asmresult.i.i53 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i53)
  %cmp.i.i54 = icmp eq i32 %asmresult.i.i53, 0
  br i1 %cmp.i.i54, label %copy_to_user.exit, label %if.end.i.i55.cleanup_crit_edge

if.end.i.i55.cleanup_crit_edge:                   ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i56 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %config, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool27.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool27.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i55.cleanup_crit_edge, %if.then.i52.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -34, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i52.cleanup_crit_edge ], [ -14, %if.end.i.i55.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_hwtstamp_get(ptr noundef %ds, i32 noundef %port, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_ops.i, align 4
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proto.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %do.body6.i [
    i32 23, label %entry.sja1105_tagger_data.exit_crit_edge
    i32 13, label %entry.sja1105_tagger_data.exit_crit_edge15
  ]

entry.sja1105_tagger_data.exit_crit_edge15:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tagger_data.exit

entry.sja1105_tagger_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tagger_data.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dsa/sja1105.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

sja1105_tagger_data.exit:                         ; preds = %entry.sja1105_tagger_data.exit_crit_edge, %entry.sja1105_tagger_data.exit_crit_edge15
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %7 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tagger_data.i, align 4
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #7
  %11 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %12 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %config, align 4
  %hwts_tx_en = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 7
  %14 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwts_tx_en, align 8
  %16 = lshr i32 %15, %port
  %17 = and i32 %16, 1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %11, align 4
  %rxtstamp_get_state = getelementptr inbounds %struct.sja1105_tagger_data, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %rxtstamp_get_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxtstamp_get_state, align 4
  %call3 = tail call zeroext i1 %20(ptr noundef %ds) #7
  %storemerge12 = select i1 %call3, i32 9, i32 0
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge12, ptr %12, align 4
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %22 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sja1105_tagger_data.exit.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sja1105_tagger_data.exit.copy_to_user.exit.thread_crit_edge: ; preds = %sja1105_tagger_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sja1105_tagger_data.exit
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 12, i32 -1226833920) #10, !srcloc !81
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %config, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool9.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sja1105_tagger_data.exit.copy_to_user.exit.thread_crit_edge
  %25 = phi i32 [ -14, %sja1105_tagger_data.exit.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #7
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_get_ts_info(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %clock = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 4
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 69, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 513, ptr %rx_filters, align 4
  %7 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clock, align 4
  %call = tail call i32 @ptp_clock_index(ptr noundef %8) #7
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %phc_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105et_ptp_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  %valid = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %valid) #7
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %valid, align 8
  call void @sja1105_packing(ptr noundef %buf, ptr noundef nonnull %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #7
  %ptpstrtsch = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 2
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %ptpstrtsch, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #7
  %ptpstopsch = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 3
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %ptpstopsch, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #7
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #7
  %stopptpcp = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 1
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %stopptpcp, i32 noundef 27, i32 noundef 27, i32 noundef 4, i32 noundef %op) #7
  %resptp = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 4
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %resptp, i32 noundef 2, i32 noundef 2, i32 noundef 4, i32 noundef %op) #7
  %corrclk4ts = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 5
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %corrclk4ts, i32 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef %op) #7
  %ptpclkadd = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 6
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %ptpclkadd, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef %op) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %valid) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105pqrs_ptp_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  %valid = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %valid) #7
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %valid, align 8
  call void @sja1105_packing(ptr noundef %buf, ptr noundef nonnull %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #7
  %ptpstrtsch = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 2
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %ptpstrtsch, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #7
  %ptpstopsch = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 3
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %ptpstopsch, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #7
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #7
  %stopptpcp = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 1
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %stopptpcp, i32 noundef 27, i32 noundef 27, i32 noundef 4, i32 noundef %op) #7
  %resptp = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 4
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %resptp, i32 noundef 3, i32 noundef 3, i32 noundef 4, i32 noundef %op) #7
  %corrclk4ts = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 5
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %corrclk4ts, i32 noundef 2, i32 noundef 2, i32 noundef 4, i32 noundef %op) #7
  %ptpclkadd = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 6
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %ptpclkadd, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef %op) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %valid) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_ptp_commit(ptr nocapture noundef readonly %ds, ptr noundef %cmd, i32 noundef %rw) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %regs2 = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rw)
  %cmp = icmp eq i32 %rw, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ptp_cmd_packing = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %ptp_cmd_packing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_cmd_packing, align 4
  call void %8(ptr noundef nonnull %buf, ptr noundef %cmd, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptp_control = getelementptr inbounds %struct.sja1105_regs, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %ptp_control to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ptp_control, align 8
  %call = call i32 @sja1105_xfer_buf(ptr noundef %1, i32 noundef %rw, i64 noundef %10, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp5 = icmp eq i32 %rw, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %ptp_cmd_packing8 = getelementptr inbounds %struct.sja1105_info, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %ptp_cmd_packing8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_cmd_packing8, align 4
  call void %14(ptr noundef nonnull %buf, ptr noundef %cmd, i32 noundef 1) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_buf(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sja1105_rxtstamp(ptr noundef %ds, i32 noundef %port, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_ops.i, align 4
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proto.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %do.body6.i [
    i32 23, label %entry.sja1105_tagger_data.exit_crit_edge
    i32 13, label %entry.sja1105_tagger_data.exit_crit_edge10
  ]

entry.sja1105_tagger_data.exit_crit_edge10:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tagger_data.exit

entry.sja1105_tagger_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tagger_data.exit

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dsa/sja1105.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #7, !srcloc !74
  unreachable

sja1105_tagger_data.exit:                         ; preds = %entry.sja1105_tagger_data.exit_crit_edge, %entry.sja1105_tagger_data.exit_crit_edge10
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %7 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tagger_data.i, align 4
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 4
  %rxtstamp_get_state = getelementptr inbounds %struct.sja1105_tagger_data, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %rxtstamp_get_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxtstamp_get_state, align 4
  %call3 = tail call zeroext i1 %12(ptr noundef %ds) #7
  br i1 %call3, label %if.end, label %sja1105_tagger_data.exit.cleanup_crit_edge

sja1105_tagger_data.exit.cleanup_crit_edge:       ; preds = %sja1105_tagger_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sja1105_tagger_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %skb_rxtstamp_queue = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 25, i32 1
  tail call void @skb_queue_tail(ptr noundef %skb_rxtstamp_queue, ptr noundef %skb) #7
  %clock = getelementptr inbounds %struct.sja1105_private, ptr %10, i32 0, i32 25, i32 4
  %13 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clock, align 4
  %call4 = tail call i32 @ptp_schedule_worker(ptr noundef %14, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sja1105_tagger_data.exit.cleanup_crit_edge
  ret i1 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sja1110_rxtstamp(ptr nocapture noundef readnone %ds, i32 noundef %port, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 7
  %tstamp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %tstamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tstamp, align 8
  %mul.i = shl i64 %3, 3
  %4 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %mul.i, ptr %hwtstamps.i, align 8
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sja1105_port_rxtstamp(ptr noundef %ds, i32 noundef %port, ptr noundef %skb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %rxtstamp = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rxtstamp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxtstamp, align 8
  %call = tail call zeroext i1 %5(ptr noundef %ds, i32 noundef %port, ptr noundef %skb) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1110_process_meta_tstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %ts_id, i32 noundef %dir, i64 noundef %tstamp) local_unnamed_addr #0 align 64 {
entry:
  %shwt = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shwt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %skb_txtstamp_queue = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2
  %lock = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %skb.0.in = phi ptr [ %skb_txtstamp_queue, %if.end ], [ %skb.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %skb.0 = load ptr, ptr %skb.0.in, align 8
  %cmp6.not = icmp eq ptr %skb.0, %skb_txtstamp_queue
  br i1 %cmp6.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %do.end

for.body:                                         ; preds = %for.cond
  %ts_id7 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %ts_id7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ts_id7, align 8
  %cmp9.not = icmp eq i8 %4, %ts_id
  br i1 %cmp9.not, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.body
  %qlen.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2, i32 1
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %6, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %7 = ptrtoint ptr %skb.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb.0, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %skb.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.0, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %tobool.not = icmp eq ptr %skb.0, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end41, !prof !82

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 479, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i64 %tstamp, 3
  %13 = ptrtoint ptr %shwt to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul.i, ptr %shwt, align 8
  call void @skb_complete_tx_timestamp(ptr noundef nonnull %skb.0, ptr noundef nonnull %shwt) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shwt) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1110_txtstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_flags, align 1
  %8 = or i8 %7, 4
  store i8 %8, ptr %tx_flags, align 1
  %ts_id_lock = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %ts_id_lock) #7
  %ts_id5 = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %ts_id5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ts_id5, align 4
  %inc = add i8 %10, 1
  store i8 %inc, ptr %ts_id5, align 4
  %ts_id9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %ts_id9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ts_id9, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ts_id_lock) #7
  %skb_txtstamp_queue = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 25, i32 2
  tail call void @skb_queue_tail(ptr noundef %skb_txtstamp_queue, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_port_txtstamp(ptr noundef %ds, i32 noundef %port, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %hwts_tx_en = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwts_tx_en, align 8
  %shl = shl nuw i32 1, %port
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @skb_clone_sk(ptr noundef %skb) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %cb, align 8
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %txtstamp = getelementptr inbounds %struct.sja1105_info, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %txtstamp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txtstamp, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %8(ptr noundef %ds, i32 noundef %port, ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone_sk(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sja1105_ptp_gettimex(ptr nocapture noundef readonly %ds, ptr nocapture noundef writeonly %ns, ptr noundef %ptp_sts) local_unnamed_addr #0 align 64 {
entry:
  %ticks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks) #7
  %2 = ptrtoint ptr %ticks to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ticks, align 8, !annotation !75
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i, align 4
  %ptpclkval.i = getelementptr inbounds %struct.sja1105_regs, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %ptpclkval.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ptpclkval.i, align 8
  %call.i = call i32 @sja1105_xfer_u64(ptr noundef %1, i32 noundef 0, i64 noundef %8, ptr noundef nonnull %ticks, ptr noundef %ptp_sts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ticks, align 8
  %mul.i = shl i64 %12, 3
  %13 = ptrtoint ptr %ns to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul.i, ptr %ns, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sja1105_ptp_settime(ptr nocapture noundef readonly %ds, i64 noundef %ns, ptr noundef %ptp_sts) local_unnamed_addr #0 align 64 {
entry:
  %ticks.addr.i = alloca i64, align 8
  %buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %div.i = sdiv i64 %ns, 8
  %ptpclkadd.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 5, i32 6
  %2 = ptrtoint ptr %ptpclkadd.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ptpclkadd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.i = icmp eq i64 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %sja1105_ptp_mode_set.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sja1105_ptp_mode_set.exit:                        ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 5
  %4 = ptrtoint ptr %ptpclkadd.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %ptpclkadd.i, align 8
  %ds.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds.i, align 8
  %priv1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv1.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.sja1105_private, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info.i.i, align 4
  %regs2.i.i = getelementptr inbounds %struct.sja1105_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buf.i.i, align 4
  %ptp_cmd_packing.i.i = getelementptr inbounds %struct.sja1105_info, ptr %10, i32 0, i32 17
  %14 = ptrtoint ptr %ptp_cmd_packing.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptp_cmd_packing.i.i, align 4
  call void %15(ptr noundef nonnull %buf.i.i, ptr noundef %cmd.i, i32 noundef 0) #7
  %ptp_control.i.i = getelementptr inbounds %struct.sja1105_regs, ptr %12, i32 0, i32 10
  %16 = ptrtoint ptr %ptp_control.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptp_control.i.i, align 8
  %call.i.i = call i32 @sja1105_xfer_buf(ptr noundef %8, i32 noundef 1, i64 noundef %17, ptr noundef nonnull %buf.i.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %sja1105_ptp_mode_set.exit.if.end_crit_edge

sja1105_ptp_mode_set.exit.if.end_crit_edge:       ; preds = %sja1105_ptp_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %sja1105_ptp_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end:                                           ; preds = %sja1105_ptp_mode_set.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks.addr.i)
  %22 = ptrtoint ptr %ticks.addr.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %div.i, ptr %ticks.addr.i, align 8
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1.i, align 4
  %ptpclkval.i = getelementptr inbounds %struct.sja1105_regs, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %ptpclkval.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptpclkval.i, align 8
  %call.i = call i32 @sja1105_xfer_u64(ptr noundef %1, i32 noundef 1, i64 noundef %28, ptr noundef nonnull %ticks.addr.i, ptr noundef %ptp_sts) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks.addr.i)
  %ds5 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds5, align 8
  call void @sja1105_tas_clockstep(ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_tas_clockstep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sja1105_ptp_adjtime(ptr nocapture noundef readonly %ds, i64 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  %ticks.addr.i = alloca i64, align 8
  %buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %div.i = sdiv i64 %delta, 8
  %ptpclkadd.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 5, i32 6
  %2 = ptrtoint ptr %ptpclkadd.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ptpclkadd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %3)
  %cmp.i = icmp eq i64 %3, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %sja1105_ptp_mode_set.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sja1105_ptp_mode_set.exit:                        ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 5
  %4 = ptrtoint ptr %ptpclkadd.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %ptpclkadd.i, align 8
  %ds.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds.i, align 8
  %priv1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv1.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.sja1105_private, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info.i.i, align 4
  %regs2.i.i = getelementptr inbounds %struct.sja1105_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buf.i.i, align 4
  %ptp_cmd_packing.i.i = getelementptr inbounds %struct.sja1105_info, ptr %10, i32 0, i32 17
  %14 = ptrtoint ptr %ptp_cmd_packing.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptp_cmd_packing.i.i, align 4
  call void %15(ptr noundef nonnull %buf.i.i, ptr noundef %cmd.i, i32 noundef 0) #7
  %ptp_control.i.i = getelementptr inbounds %struct.sja1105_regs, ptr %12, i32 0, i32 10
  %16 = ptrtoint ptr %ptp_control.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptp_control.i.i, align 8
  %call.i.i = call i32 @sja1105_xfer_buf(ptr noundef %8, i32 noundef 1, i64 noundef %17, ptr noundef nonnull %buf.i.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %sja1105_ptp_mode_set.exit.if.end_crit_edge

sja1105_ptp_mode_set.exit.if.end_crit_edge:       ; preds = %sja1105_ptp_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %sja1105_ptp_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end:                                           ; preds = %sja1105_ptp_mode_set.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks.addr.i)
  %22 = ptrtoint ptr %ticks.addr.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %div.i, ptr %ticks.addr.i, align 8
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1.i, align 4
  %ptpclkval.i = getelementptr inbounds %struct.sja1105_regs, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %ptpclkval.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptpclkval.i, align 8
  %call.i = call i32 @sja1105_xfer_u64(ptr noundef %1, i32 noundef 1, i64 noundef %28, ptr noundef nonnull %ticks.addr.i, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks.addr.i)
  %ds5 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %ds5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds5, align 8
  call void @sja1105_tas_clockstep(ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_ptp_clock_register(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %caps = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %caps, align 8
  %.compoundliteral.sroa.2.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 1
  %3 = call ptr @memcpy(ptr %.compoundliteral.sroa.2.0.caps.sroa_idx, ptr @.str.11, i32 32)
  %.compoundliteral.sroa.3.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 2
  %4 = ptrtoint ptr %.compoundliteral.sroa.3.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32000000, ptr %.compoundliteral.sroa.3.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 3
  %5 = ptrtoint ptr %.compoundliteral.sroa.4.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %.compoundliteral.sroa.4.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.5.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 4
  %6 = ptrtoint ptr %.compoundliteral.sroa.5.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %.compoundliteral.sroa.5.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 5
  %7 = ptrtoint ptr %.compoundliteral.sroa.6.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %.compoundliteral.sroa.6.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.7.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 6
  %8 = ptrtoint ptr %.compoundliteral.sroa.7.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %.compoundliteral.sroa.7.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 7
  %9 = ptrtoint ptr %.compoundliteral.sroa.8.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %.compoundliteral.sroa.8.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.9.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 8
  %10 = ptrtoint ptr %.compoundliteral.sroa.9.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sja1105_ptp_pin, ptr %.compoundliteral.sroa.9.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.10.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 9
  %11 = ptrtoint ptr %.compoundliteral.sroa.10.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sja1105_ptp_adjfine, ptr %.compoundliteral.sroa.10.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.11.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 10
  %12 = ptrtoint ptr %.compoundliteral.sroa.11.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %.compoundliteral.sroa.11.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.12.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 11
  %13 = ptrtoint ptr %.compoundliteral.sroa.12.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %.compoundliteral.sroa.12.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.13.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 12
  %14 = ptrtoint ptr %.compoundliteral.sroa.13.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sja1105_ptp_adjtime, ptr %.compoundliteral.sroa.13.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.14.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 13
  %15 = ptrtoint ptr %.compoundliteral.sroa.14.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %.compoundliteral.sroa.14.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.15.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 14
  %16 = ptrtoint ptr %.compoundliteral.sroa.15.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sja1105_ptp_gettimex, ptr %.compoundliteral.sroa.15.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.16.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 15
  %17 = ptrtoint ptr %.compoundliteral.sroa.16.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %.compoundliteral.sroa.16.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.17.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 16
  %18 = ptrtoint ptr %.compoundliteral.sroa.17.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sja1105_ptp_settime, ptr %.compoundliteral.sroa.17.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.18.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 17
  %19 = ptrtoint ptr %.compoundliteral.sroa.18.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sja1105_ptp_enable, ptr %.compoundliteral.sroa.18.0.caps.sroa_idx, align 8
  %.compoundliteral.sroa.19.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 18
  %20 = ptrtoint ptr %.compoundliteral.sroa.19.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sja1105_ptp_verify_pin, ptr %.compoundliteral.sroa.19.0.caps.sroa_idx, align 4
  %.compoundliteral.sroa.20.0.caps.sroa_idx = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 3, i32 19
  %21 = ptrtoint ptr %.compoundliteral.sroa.20.0.caps.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sja1105_rxtstamp_work, ptr %.compoundliteral.sroa.20.0.caps.sroa_idx, align 8
  %skb_rxtstamp_queue = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 1
  %lock.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %22 = ptrtoint ptr %skb_rxtstamp_queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb_rxtstamp_queue, ptr %skb_rxtstamp_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %skb_rxtstamp_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 1, i32 1
  %24 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qlen.i.i, align 4
  %skb_txtstamp_queue = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2
  %lock.i22 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i22, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %25 = ptrtoint ptr %skb_txtstamp_queue to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skb_txtstamp_queue, ptr %skb_txtstamp_queue, align 4
  %prev.i.i23 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skb_txtstamp_queue, ptr %prev.i.i23, align 4
  %qlen.i.i24 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2, i32 1
  %27 = ptrtoint ptr %qlen.i.i24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %qlen.i.i24, align 4
  %28 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds, align 4
  %call = tail call ptr @ptp_clock_register(ptr noundef %caps, ptr noundef %29) #7
  %clock = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 4
  %30 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %clock, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ptp_data2 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25
  %corrclk4ts = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 5, i32 5
  %32 = ptrtoint ptr %corrclk4ts to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1, ptr %corrclk4ts, align 8
  %ptpclkadd = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 5, i32 6
  %33 = ptrtoint ptr %ptpclkadd to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %ptpclkadd, align 8
  tail call void @init_timer_key(ptr noundef %ptp_data2, ptr noundef nonnull @sja1105_ptp_extts_timer, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @sja1105_ptp_clock_register.__key) #7
  %call9 = tail call fastcc i32 @sja1105_ptp_reset(ptr noundef %ds)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %31, %if.then ], [ %call9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_ptp_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %clkrate32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr i8, ptr %ptp, i32 -644
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs4 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clkrate32) #7
  %conv = sext i32 %scaled_ppm to i64
  %mul = shl nsw i64 %conv, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #7
  %4 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %remainder.i, align 4, !annotation !75
  %call.i = call i64 @div_s64_rem(i64 noundef %mul, i32 noundef 15625, ptr noundef nonnull %remainder.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #7
  %add = add i64 %call.i, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp = icmp slt i64 %add, 0
  %sub = sub i64 -2147483648, %call.i
  %cond = select i1 %cmp, i64 %sub, i64 %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %cond)
  %cmp7 = icmp ugt i64 %cond, 4294967294
  br i1 %cmp7, label %do.end, label %entry.if.end_crit_edge, !prof !82

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 659, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr3 = getelementptr i8, ptr %ptp, i32 -1064
  %conv28 = trunc i64 %add to i32
  %5 = ptrtoint ptr %clkrate32 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv28, ptr %clkrate32, align 4
  %lock = getelementptr i8, ptr %ptp, i32 168
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %ptpclkrate = getelementptr inbounds %struct.sja1105_regs, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %ptpclkrate to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ptpclkrate, align 8
  %call29 = call i32 @sja1105_xfer_u32(ptr noundef %add.ptr3, i32 noundef 1, i64 noundef %7, ptr noundef nonnull %clkrate32, ptr noundef null) #7
  %ds = getelementptr i8, ptr %ptp, i32 -632
  %8 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds, align 8
  call void @sja1105_tas_adjfreq(ptr noundef %9) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkrate32) #7
  ret i32 %call29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %ptp, i32 168
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %ds = getelementptr i8, ptr %ptp, i32 -632
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %call = tail call i32 @__sja1105_ptp_adjtime(ptr noundef %1, i64 noundef %delta)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_ptp_gettimex(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %ptp_sts) #0 align 64 {
entry:
  %ticks.i = alloca i64, align 8
  %tmp4 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %ptp, i32 168
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %ds = getelementptr i8, ptr %ptp, i32 -632
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks.i) #7
  %4 = ptrtoint ptr %ticks.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ticks.i, align 8, !annotation !75
  %info.i.i = getelementptr inbounds %struct.sja1105_private, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i.i, align 4
  %regs1.i.i = getelementptr inbounds %struct.sja1105_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i.i, align 4
  %ptpclkval.i.i = getelementptr inbounds %struct.sja1105_regs, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %ptpclkval.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ptpclkval.i.i, align 8
  %call.i.i = call i32 @sja1105_xfer_u64(ptr noundef %3, i32 noundef 0, i64 noundef %10, ptr noundef nonnull %ticks.i, ptr noundef %ptp_sts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef %call.i.i) #11
  br label %__sja1105_ptp_gettimex.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %ticks.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ticks.i, align 8
  %mul.i.i = shl i64 %14, 3
  br label %__sja1105_ptp_gettimex.exit

__sja1105_ptp_gettimex.exit:                      ; preds = %if.end.i, %do.end.i
  %now.0 = phi i64 [ 0, %do.end.i ], [ %mul.i.i, %if.end.i ]
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp4) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp4, i64 noundef %now.0) #7
  %15 = call ptr @memcpy(ptr %ts, ptr %tmp4, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp4) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %lock = getelementptr i8, ptr %ptp, i32 168
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %ds = getelementptr i8, ptr %ptp, i32 -632
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 8
  %call4 = tail call i32 @__sja1105_ptp_settime(ptr noundef %5, i64 noundef %retval.0.i, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_ptp_enable(ptr noundef %ptp, ptr nocapture noundef readonly %req, i32 noundef %on) #0 align 64 {
entry:
  %ticks.i = alloca i64, align 8
  %remainder.i.i = alloca i32, align 4
  %buf.i.i = alloca [4 x i8], align 4
  %cmd.i = alloca %struct.sja1105_ptp_cmd, align 8
  %pin_start.i = alloca i64, align 8
  %pin_duration32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptp, i32 -1064
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %entry.if.end9_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then6
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %info.i = getelementptr i8, ptr %ptp, i32 -644
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %regs2.i = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs2.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmd.i) #7
  %cmd3.i = getelementptr i8, ptr %ptp, i32 112
  %8 = call ptr @memcpy(ptr %cmd.i, ptr %cmd3.i, i32 56)
  %index.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.sja1105_per_out_enable.exit_crit_edge

if.then.sja1105_per_out_enable.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_per_out_enable.exit

if.end.i:                                         ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.sja1105_per_out_enable.exit_crit_edge

if.end.i.sja1105_per_out_enable.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_per_out_enable.exit

if.end5.i:                                        ; preds = %if.end.i
  %lock.i = getelementptr i8, ptr %ptp, i32 168
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %entries.i.i = getelementptr i8, ptr %ptp, i32 -868
  %13 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entries.i.i, align 4
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.31)
  switch i64 %18, label %lor.lhs.false4.i.i [
    i64 2617245708, label %if.end5.i.if.end8.i_crit_edge
    i64 2650800910, label %if.end5.i.if.end8.i_crit_edge41
  ]

if.end5.i.if.end8.i_crit_edge41:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

lor.lhs.false4.i.i:                               ; preds = %if.end5.i
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i.i = icmp eq i64 %20, 0
  br i1 %tobool.not.i.i, label %sja1105_change_ptp_clk_pin_func.exit.i, label %lor.lhs.false4.i.i.if.end8.i_crit_edge

lor.lhs.false4.i.i.if.end8.i_crit_edge:           ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

sja1105_change_ptp_clk_pin_func.exit.i:           ; preds = %lor.lhs.false4.i.i
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %14, align 8
  %call.i.i = tail call i32 @sja1105_dynamic_config_write(ptr noundef %add.ptr3, i32 noundef 15, i32 noundef 0, ptr noundef %14, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %sja1105_change_ptp_clk_pin_func.exit.i.if.end8.i_crit_edge, label %sja1105_change_ptp_clk_pin_func.exit.i.out.i_crit_edge

sja1105_change_ptp_clk_pin_func.exit.i.out.i_crit_edge: ; preds = %sja1105_change_ptp_clk_pin_func.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sja1105_change_ptp_clk_pin_func.exit.i.if.end8.i_crit_edge: ; preds = %sja1105_change_ptp_clk_pin_func.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %sja1105_change_ptp_clk_pin_func.exit.i.if.end8.i_crit_edge, %lor.lhs.false4.i.i.if.end8.i_crit_edge, %if.end5.i.if.end8.i_crit_edge, %if.end5.i.if.end8.i_crit_edge41
  br i1 %tobool.not, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %period.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %period.i, align 8
  %nsec.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nsec.i, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %3, align 8
  %nsec15.i = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %nsec15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nsec15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %23)
  %cmp.i.i = icmp sgt i64 %23, 9223372035
  br i1 %cmp.i.i, label %if.then10.i.timespec64_to_ns.exit.i_crit_edge, label %if.end.i79.i

if.then10.i.timespec64_to_ns.exit.i_crit_edge:    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i

if.end.i79.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %23)
  %cmp2.i.i = icmp slt i64 %23, -9223372035
  br i1 %cmp2.i.i, label %if.end.i79.i.timespec64_to_ns.exit.i_crit_edge, label %if.end4.i.i

if.end.i79.i.timespec64_to_ns.exit.i_crit_edge:   ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i

if.end4.i.i:                                      ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul nsw i64 %23, 1000000000
  %conv.i.i = sext i32 %25 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  %phi.bo104105.i = lshr i64 %add.i.i, 4
  br label %timespec64_to_ns.exit.i

timespec64_to_ns.exit.i:                          ; preds = %if.end4.i.i, %if.end.i79.i.timespec64_to_ns.exit.i_crit_edge, %if.then10.i.timespec64_to_ns.exit.i_crit_edge
  %retval.0.i80.i = phi i64 [ %phi.bo104105.i, %if.end4.i.i ], [ 576460752303423487, %if.then10.i.timespec64_to_ns.exit.i_crit_edge ], [ 576460752303423488, %if.end.i79.i.timespec64_to_ns.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pin_start.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %27)
  %cmp.i81.i = icmp sgt i64 %27, 9223372035
  br i1 %cmp.i81.i, label %timespec64_to_ns.exit.i.timespec64_to_ns.exit90.i_crit_edge, label %if.end.i83.i

timespec64_to_ns.exit.i.timespec64_to_ns.exit90.i_crit_edge: ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit90.i

if.end.i83.i:                                     ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %27)
  %cmp2.i82.i = icmp slt i64 %27, -9223372035
  br i1 %cmp2.i82.i, label %if.end.i83.i.timespec64_to_ns.exit90.i_crit_edge, label %if.end4.i88.i

if.end.i83.i.timespec64_to_ns.exit90.i_crit_edge: ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit90.i

if.end4.i88.i:                                    ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i84.i = mul nsw i64 %27, 1000000000
  %conv.i86.i = sext i32 %29 to i64
  %add.i87.i = add i64 %mul.i84.i, %conv.i86.i
  br label %timespec64_to_ns.exit90.i

timespec64_to_ns.exit90.i:                        ; preds = %if.end4.i88.i, %if.end.i83.i.timespec64_to_ns.exit90.i_crit_edge, %timespec64_to_ns.exit.i.timespec64_to_ns.exit90.i_crit_edge
  %retval.0.i89.i = phi i64 [ %add.i87.i, %if.end4.i88.i ], [ 9223372036854775807, %timespec64_to_ns.exit.i.timespec64_to_ns.exit90.i_crit_edge ], [ -9223372036854775808, %if.end.i83.i.timespec64_to_ns.exit90.i_crit_edge ]
  %30 = ptrtoint ptr %pin_start.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %retval.0.i89.i, ptr %pin_start.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pin_duration32.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %retval.0.i80.i)
  %cmp19.i = icmp ugt i64 %retval.0.i80.i, 4294967295
  br i1 %cmp19.i, label %timespec64_to_ns.exit90.i.cleanup.thread.i_crit_edge, label %if.end21.i

timespec64_to_ns.exit90.i.cleanup.thread.i_crit_edge: ; preds = %timespec64_to_ns.exit90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end21.i:                                       ; preds = %timespec64_to_ns.exit90.i
  %conv.i = trunc i64 %retval.0.i80.i to i32
  %31 = ptrtoint ptr %pin_duration32.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %pin_duration32.i, align 4
  %ds.i = getelementptr i8, ptr %ptp, i32 -632
  %32 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds.i, align 8
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks.i) #7
  %36 = ptrtoint ptr %ticks.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %ticks.i, align 8, !annotation !75
  %info.i.i33 = getelementptr inbounds %struct.sja1105_private, ptr %35, i32 0, i32 8
  %37 = ptrtoint ptr %info.i.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info.i.i33, align 4
  %regs1.i.i = getelementptr inbounds %struct.sja1105_info, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs1.i.i, align 4
  %ptpclkval.i.i = getelementptr inbounds %struct.sja1105_regs, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %ptpclkval.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ptpclkval.i.i, align 8
  %call.i.i34 = call i32 @sja1105_xfer_u64(ptr noundef %35, i32 noundef 0, i64 noundef %42, ptr noundef nonnull %ticks.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i, label %__sja1105_ptp_gettimex.exit.thread, label %if.end26.i

__sja1105_ptp_gettimex.exit.thread:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.5, i32 noundef %call.i.i34) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks.i) #7
  br label %cleanup.thread.i

if.end26.i:                                       ; preds = %if.end21.i
  %45 = ptrtoint ptr %ticks.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ticks.i, align 8
  %mul.i.i35 = shl i64 %46, 3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks.i) #7
  %47 = ptrtoint ptr %pin_start.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pin_start.i, align 8
  %add.i = add i64 %mul.i.i35, 1000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %48)
  %cmp.not.i27 = icmp sgt i64 %add.i, %48
  br i1 %cmp.not.i27, label %if.end.i31, label %if.end26.i.future_base_time.exit_crit_edge

if.end26.i.future_base_time.exit_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %future_base_time.exit

if.end.i31:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = xor i64 %48, -1
  %add.i28 = add i64 %retval.0.i80.i, %sub.i
  %sub1.i = add i64 %add.i28, %add.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %49 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !75
  %call.i.i30 = call i64 @div_s64_rem(i64 noundef %sub1.i, i32 noundef %conv.i, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %mul.i = mul i64 %call.i.i30, %retval.0.i80.i
  %add2.i = add i64 %mul.i, %48
  br label %future_base_time.exit

future_base_time.exit:                            ; preds = %if.end.i31, %if.end26.i.future_base_time.exit_crit_edge
  %retval.0.i32 = phi i64 [ %add2.i, %if.end.i31 ], [ %48, %if.end26.i.future_base_time.exit_crit_edge ]
  %div.i91.i = sdiv i64 %retval.0.i32, 8
  %50 = ptrtoint ptr %pin_start.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %div.i91.i, ptr %pin_start.i, align 8
  %ptppinst.i = getelementptr inbounds %struct.sja1105_regs, ptr %7, i32 0, i32 8
  %51 = ptrtoint ptr %ptppinst.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptppinst.i, align 8
  %call29.i = call i32 @sja1105_xfer_u64(ptr noundef %add.ptr3, i32 noundef 1, i64 noundef %52, ptr noundef nonnull %pin_start.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %future_base_time.exit.cleanup.thread.i_crit_edge, label %if.end33.i

future_base_time.exit.cleanup.thread.i_crit_edge: ; preds = %future_base_time.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end33.i:                                       ; preds = %future_base_time.exit
  %ptppindur.i = getelementptr inbounds %struct.sja1105_regs, ptr %7, i32 0, i32 9
  %53 = ptrtoint ptr %ptppindur.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptppindur.i, align 8
  %call34.i = call i32 @sja1105_xfer_u32(ptr noundef %add.ptr3, i32 noundef 1, i64 noundef %54, ptr noundef nonnull %pin_duration32.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end33.i.cleanup.thread.i_crit_edge, label %if.then46.critedge.i

if.end33.i.cleanup.thread.i_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end33.i.cleanup.thread.i_crit_edge, %future_base_time.exit.cleanup.thread.i_crit_edge, %__sja1105_ptp_gettimex.exit.thread, %timespec64_to_ns.exit90.i.cleanup.thread.i_crit_edge
  %rc.0.ph.i = phi i32 [ %call29.i, %future_base_time.exit.cleanup.thread.i_crit_edge ], [ -34, %timespec64_to_ns.exit90.i.cleanup.thread.i_crit_edge ], [ %call34.i, %if.end33.i.cleanup.thread.i_crit_edge ], [ %call.i.i34, %__sja1105_ptp_gettimex.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin_duration32.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pin_start.i) #7
  br label %out.i

if.then46.critedge.i:                             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin_duration32.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pin_start.i) #7
  %55 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1, ptr %cmd.i, align 8
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %stopptpcp.i = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd.i, i32 0, i32 1
  %56 = ptrtoint ptr %stopptpcp.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1, ptr %stopptpcp.i, align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else.i, %if.then46.critedge.i
  %ds48.i = getelementptr i8, ptr %ptp, i32 -632
  %57 = ptrtoint ptr %ds48.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ds48.i, align 8
  %priv1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv1.i.i, align 4
  %info.i92.i = getelementptr inbounds %struct.sja1105_private, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %info.i92.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %info.i92.i, align 4
  %regs2.i.i = getelementptr inbounds %struct.sja1105_info, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %65 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %buf.i.i, align 4
  %ptp_cmd_packing.i.i = getelementptr inbounds %struct.sja1105_info, ptr %62, i32 0, i32 17
  %66 = ptrtoint ptr %ptp_cmd_packing.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptp_cmd_packing.i.i, align 4
  call void %67(ptr noundef nonnull %buf.i.i, ptr noundef nonnull %cmd.i, i32 noundef 0) #7
  %ptp_control.i.i = getelementptr inbounds %struct.sja1105_regs, ptr %64, i32 0, i32 10
  %68 = ptrtoint ptr %ptp_control.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ptp_control.i.i, align 8
  %call.i93.i = call i32 @sja1105_xfer_buf(ptr noundef %60, i32 noundef 1, i64 noundef %69, ptr noundef nonnull %buf.i.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  br label %out.i

out.i:                                            ; preds = %if.end47.i, %cleanup.thread.i, %sja1105_change_ptp_clk_pin_func.exit.i.out.i_crit_edge
  %rc.1.i = phi i32 [ %call.i.i, %sja1105_change_ptp_clk_pin_func.exit.i.out.i_crit_edge ], [ %call.i93.i, %if.end47.i ], [ %rc.0.ph.i, %cleanup.thread.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %sja1105_per_out_enable.exit

sja1105_per_out_enable.exit:                      ; preds = %out.i, %if.end.i.sja1105_per_out_enable.exit_crit_edge, %if.then.sja1105_per_out_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.1.i, %out.i ], [ -95, %if.then.sja1105_per_out_enable.exit_crit_edge ], [ -95, %if.end.i.sja1105_per_out_enable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd.i) #7
  br label %if.end9

if.then6:                                         ; preds = %entry
  %70 = getelementptr inbounds %struct.ptp_clock_request, ptr %req, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool7 = icmp ne i32 %on, 0
  %frombool.i = zext i1 %tobool7 to i8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.not.i15 = icmp eq i32 %72, 0
  br i1 %cmp.not.i15, label %if.end.i18, label %if.then6.if.end9_crit_edge

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i18:                                       ; preds = %if.then6
  %flags.i16 = getelementptr inbounds %struct.ptp_extts_request, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %74)
  %tobool.not.i17 = icmp ult i32 %74, 16
  br i1 %tobool.not.i17, label %if.end2.i, label %if.end.i18.if.end9_crit_edge

if.end.i18.if.end9_crit_edge:                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end2.i:                                        ; preds = %if.end.i18
  %75 = and i32 %74, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %75)
  %76 = icmp ne i32 %75, 9
  %and11.i = and i32 %74, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and11.i)
  %cmp12.not.i = icmp eq i32 %and11.i, 6
  %or.cond35.i = or i1 %76, %cmp12.not.i
  br i1 %or.cond35.i, label %if.end14.i, label %if.end2.i.if.end9_crit_edge

if.end2.i.if.end9_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end14.i:                                       ; preds = %if.end2.i
  %entries.i.i19 = getelementptr i8, ptr %ptp, i32 -868
  %77 = ptrtoint ptr %entries.i.i19 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %entries.i.i19, align 4
  %info.i.i = getelementptr i8, ptr %ptp, i32 -644
  %79 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %info.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %80, align 8
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.32)
  switch i64 %82, label %lor.lhs.false4.i.i21 [
    i64 2617245708, label %if.end14.i.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge
    i64 2650800910, label %if.end14.i.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge42
  ]

if.end14.i.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge42: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_change_ptp_clk_pin_func.exit.i23

if.end14.i.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_change_ptp_clk_pin_func.exit.i23

lor.lhs.false4.i.i21:                             ; preds = %if.end14.i
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %78, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %tobool.not.i.i20 = icmp eq i64 %84, 0
  br i1 %tobool.not.i.i20, label %lor.lhs.false4.i.i21.if.end17.i_crit_edge, label %lor.lhs.false4.i.i21.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge

lor.lhs.false4.i.i21.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge: ; preds = %lor.lhs.false4.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_change_ptp_clk_pin_func.exit.i23

lor.lhs.false4.i.i21.if.end17.i_crit_edge:        ; preds = %lor.lhs.false4.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

sja1105_change_ptp_clk_pin_func.exit.i23:         ; preds = %lor.lhs.false4.i.i21.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge, %if.end14.i.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge, %if.end14.i.sja1105_change_ptp_clk_pin_func.exit.i23_crit_edge42
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %78, align 8
  %call.i.i22 = tail call i32 @sja1105_dynamic_config_write(ptr noundef %add.ptr3, i32 noundef 15, i32 noundef 0, ptr noundef %78, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool15.not.i = icmp eq i32 %call.i.i22, 0
  br i1 %tobool15.not.i, label %sja1105_change_ptp_clk_pin_func.exit.i23.if.end17.i_crit_edge, label %sja1105_change_ptp_clk_pin_func.exit.i23.if.end9_crit_edge

sja1105_change_ptp_clk_pin_func.exit.i23.if.end9_crit_edge: ; preds = %sja1105_change_ptp_clk_pin_func.exit.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sja1105_change_ptp_clk_pin_func.exit.i23.if.end17.i_crit_edge: ; preds = %sja1105_change_ptp_clk_pin_func.exit.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %sja1105_change_ptp_clk_pin_func.exit.i23.if.end17.i_crit_edge, %lor.lhs.false4.i.i21.if.end17.i_crit_edge
  %ptp_data.i = getelementptr i8, ptr %ptp, i32 -160
  %extts_enabled.i = getelementptr i8, ptr %ptp, i32 260
  %86 = ptrtoint ptr %extts_enabled.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool.i, ptr %extts_enabled.i, align 4
  br i1 %tobool7, label %if.then21.i, label %if.else.i25

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %88 = add i32 %87, 16
  %mul.i.i24 = and i32 %88, -16
  %call.i36.i = tail call i32 @mod_timer(ptr noundef %ptp_data.i, i32 noundef %mul.i.i24) #7
  br label %if.end9

if.else.i25:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 @del_timer_sync(ptr noundef %ptp_data.i) #7
  br label %if.end9

if.end9:                                          ; preds = %if.else.i25, %if.then21.i, %sja1105_change_ptp_clk_pin_func.exit.i23.if.end9_crit_edge, %if.end2.i.if.end9_crit_edge, %if.end.i18.if.end9_crit_edge, %if.then6.if.end9_crit_edge, %sja1105_per_out_enable.exit, %entry.if.end9_crit_edge
  %rc.0 = phi i32 [ %retval.0.i, %sja1105_per_out_enable.exit ], [ -95, %entry.if.end9_crit_edge ], [ -95, %if.then6.if.end9_crit_edge ], [ -95, %if.end.i18.if.end9_crit_edge ], [ -95, %if.end2.i.if.end9_crit_edge ], [ %call.i.i22, %sja1105_change_ptp_clk_pin_func.exit.i23.if.end9_crit_edge ], [ 0, %if.else.i25 ], [ 0, %if.then21.i ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sja1105_ptp_verify_pin(ptr nocapture noundef readonly %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %chan, %pin
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %func, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 2, label %if.end.sw.epilog_crit_edge15
    i32 1, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge15:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr i8, ptr %ptp, i32 -644
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2617245708, i64 %6)
  %switch.selectcmp.case1 = icmp eq i64 %6, 2617245708
  call void @__sanitizer_cov_trace_const_cmp8(i64 2650800910, i64 %6)
  %switch.selectcmp.case2 = icmp eq i64 %6, 2650800910
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %7 = sext i1 %switch.selectcmp to i32
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %7, %sw.bb5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_rxtstamp_work(ptr noundef %ptp) #0 align 64 {
entry:
  %event.i = alloca %struct.ptp_clock_event, align 8
  %ptpsyncts.i = alloca i64, align 8
  %ticks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %ptp, i32 -1064
  %ds4 = getelementptr i8, ptr %ptp, i32 -632
  %0 = ptrtoint ptr %ds4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds4, align 8
  %lock = getelementptr i8, ptr %ptp, i32 168
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %skb_rxtstamp_queue = getelementptr i8, ptr %ptp, i32 -112
  %call40 = call ptr @skb_dequeue(ptr noundef %skb_rxtstamp_queue) #7
  %cmp.not41 = icmp eq ptr %call40, null
  br i1 %cmp.not41, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %info.i = getelementptr i8, ptr %ptp, i32 -644
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call42 = phi ptr [ %call40, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call42, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks) #7
  %4 = ptrtoint ptr %ticks to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ticks, align 8, !annotation !75
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1.i, align 4
  %ptpclkval.i = getelementptr inbounds %struct.sja1105_regs, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %ptpclkval.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ptpclkval.i, align 8
  %call.i = call i32 @sja1105_xfer_u64(ptr noundef %add.ptr3, i32 noundef 0, i64 noundef %10, ptr noundef nonnull %ticks, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef %call.i) #11
  call void @kfree_skb_reason(ptr noundef nonnull %call42, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  %13 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %hwtstamps.i, align 8
  %tstamp = getelementptr inbounds %struct.sk_buff, ptr %call42, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %tstamp to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tstamp, align 8
  %16 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ticks, align 8
  %18 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv1.i, align 4
  %info.i36 = getelementptr inbounds %struct.sja1105_private, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %info.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i36, align 4
  %ptp_ts_bits.i = getelementptr inbounds %struct.sja1105_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ptp_ts_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptp_ts_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %cmp.i = icmp slt i32 %23, 64
  br i1 %cmp.i, label %cond.true.i, label %if.end.sja1105_tstamp_reconstruct.exit_crit_edge

if.end.sja1105_tstamp_reconstruct.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tstamp_reconstruct.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = zext i32 %23 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i = xor i64 %notmask.i, -1
  br label %sja1105_tstamp_reconstruct.exit

sja1105_tstamp_reconstruct.exit:                  ; preds = %cond.true.i, %if.end.sja1105_tstamp_reconstruct.exit_crit_edge
  %cond.i = phi i64 [ %sub.i, %cond.true.i ], [ -1, %if.end.sja1105_tstamp_reconstruct.exit_crit_edge ]
  %neg.i = xor i64 %cond.i, -1
  %and.i = and i64 %17, %neg.i
  %or.i = or i64 %and.i, %15
  %and4.i = and i64 %cond.i, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i, i64 %15)
  %cmp5.not.i = icmp ugt i64 %and4.i, %15
  %sub6.i = select i1 %cmp5.not.i, i64 0, i64 %neg.i
  %ts_reconstructed.0.i = add i64 %sub6.i, %or.i
  %mul.i = shl i64 %ts_reconstructed.0.i, 3
  %24 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %mul.i, ptr %hwtstamps.i, align 8
  %call12 = call i32 @netif_rx_ni(ptr noundef nonnull %call42) #7
  br label %cleanup

cleanup:                                          ; preds = %sja1105_tstamp_reconstruct.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks) #7
  %call = call ptr @skb_dequeue(ptr noundef %skb_rxtstamp_queue) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %extts_enabled = getelementptr i8, ptr %ptp, i32 260
  %25 = ptrtoint ptr %extts_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %extts_enabled, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %while.end.if.end17_crit_edge, label %if.then16

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %while.end
  %info.i37 = getelementptr i8, ptr %ptp, i32 -644
  %27 = ptrtoint ptr %info.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info.i37, align 4
  %regs2.i = getelementptr inbounds %struct.sja1105_info, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs2.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event.i) #7
  %31 = getelementptr inbounds i8, ptr %event.i, i32 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptpsyncts.i) #7
  %33 = ptrtoint ptr %ptpsyncts.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %ptpsyncts.i, align 8
  %ptpsyncts3.i = getelementptr inbounds %struct.sja1105_regs, ptr %30, i32 0, i32 14
  %34 = ptrtoint ptr %ptpsyncts3.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ptpsyncts3.i, align 8
  %call.i38 = call i32 @sja1105_xfer_u64(ptr noundef %add.ptr3, i32 noundef 0, i64 noundef %35, ptr noundef nonnull %ptpsyncts.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %do.body.i, label %if.then16.if.end9.i_crit_edge

if.then16.if.end9.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

do.body.i:                                        ; preds = %if.then16
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @sja1105_extts_poll._rs, ptr noundef nonnull @__func__.sja1105_extts_poll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end9.i_crit_edge, label %do.end.i

do.body.i.if.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %ds4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds4, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.22, i32 noundef %call.i38) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %do.body.i.if.end9.i_crit_edge, %if.then16.if.end9.i_crit_edge
  %40 = ptrtoint ptr %ptpsyncts.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptpsyncts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool10.not.i = icmp eq i64 %41, 0
  br i1 %tobool10.not.i, label %if.end9.i.sja1105_extts_poll.exit_crit_edge, label %land.lhs.true.i

if.end9.i.sja1105_extts_poll.exit_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_extts_poll.exit

land.lhs.true.i:                                  ; preds = %if.end9.i
  %ptpsyncts11.i = getelementptr i8, ptr %ptp, i32 264
  %42 = ptrtoint ptr %ptpsyncts11.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ptpsyncts11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %41)
  %cmp12.not.i = icmp eq i64 %43, %41
  br i1 %cmp12.not.i, label %land.lhs.true.i.sja1105_extts_poll.exit_crit_edge, label %if.then13.i

land.lhs.true.i.sja1105_extts_poll.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_extts_poll.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %index.i = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i, i32 0, i32 1
  %44 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %index.i, align 4
  %45 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %event.i, align 8
  %mul.i.i = shl i64 %41, 3
  %46 = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %mul.i.i, ptr %46, align 8
  %clock.i = getelementptr i8, ptr %ptp, i32 108
  %48 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clock.i, align 4
  call void @ptp_clock_event(ptr noundef %49, ptr noundef nonnull %event.i) #7
  %50 = ptrtoint ptr %ptpsyncts.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptpsyncts.i, align 8
  %52 = ptrtoint ptr %ptpsyncts11.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %ptpsyncts11.i, align 8
  br label %sja1105_extts_poll.exit

sja1105_extts_poll.exit:                          ; preds = %if.then13.i, %land.lhs.true.i.sja1105_extts_poll.exit_crit_edge, %if.end9.i.sja1105_extts_poll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptpsyncts.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event.i) #7
  br label %if.end17

if.end17:                                         ; preds = %sja1105_extts_poll.exit, %while.end.if.end17_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_ptp_extts_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clock = getelementptr inbounds %struct.sja1105_ptp_data, ptr %t, i32 0, i32 4
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 4
  %call = tail call i32 @ptp_schedule_worker(ptr noundef %1, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = add i32 %2, 16
  %mul.i = and i32 %3, -16
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %mul.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_ptp_reset(ptr nocapture noundef readonly %ds) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 4
  %cmd = alloca %struct.sja1105_ptp_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmd) #7
  %cmd3 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 5
  %2 = call ptr @memcpy(ptr %cmd, ptr %cmd3, i32 56)
  %lock = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %resptp = getelementptr inbounds %struct.sja1105_ptp_cmd, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %resptp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1, ptr %resptp, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_ptp_reset.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_ptp_reset, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_ptp_reset.__UNIQUE_ID_ddebug520, ptr noundef %5, ptr noundef nonnull @.str.26) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i, align 4
  %regs2.i = getelementptr inbounds %struct.sja1105_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %buf.i, align 4
  %ptp_cmd_packing.i = getelementptr inbounds %struct.sja1105_info, ptr %9, i32 0, i32 17
  %13 = ptrtoint ptr %ptp_cmd_packing.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_cmd_packing.i, align 4
  call void %14(ptr noundef nonnull %buf.i, ptr noundef nonnull %cmd, i32 noundef 0) #7
  %ptp_control.i = getelementptr inbounds %struct.sja1105_regs, ptr %11, i32 0, i32 10
  %15 = ptrtoint ptr %ptp_control.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ptp_control.i, align 8
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %7, i32 noundef 1, i64 noundef %16, ptr noundef nonnull %buf.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %ds7 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %ds7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds7, align 8
  call void @sja1105_tas_clockstep(ptr noundef %18) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_ptp_clock_unregister(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %clock = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 4
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ptp_data2 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25
  %call3 = tail call i32 @del_timer_sync(ptr noundef %ptp_data2) #7
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock, align 4
  tail call void @ptp_cancel_worker_sync(ptr noundef %5) #7
  %skb_txtstamp_queue = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 2
  tail call void @skb_queue_purge(ptr noundef %skb_txtstamp_queue) #7
  %skb_rxtstamp_queue = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 1
  tail call void @skb_queue_purge(ptr noundef %skb_rxtstamp_queue) #7
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock, align 4
  %call6 = tail call i32 @ptp_clock_unregister(ptr noundef %7) #7
  %8 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_cancel_worker_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_ptp_txtstamp_skb(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %packed_buf.i = alloca [8 x i8], align 8
  %update.i = alloca i64, align 8
  %shwt = alloca %struct.skb_shared_hwtstamps, align 8
  %ticks = alloca i64, align 8
  %ts = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shwt) #7
  %2 = ptrtoint ptr %shwt to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %shwt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks) #7
  %3 = ptrtoint ptr %ticks to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %ticks, align 8, !annotation !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts) #7
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ts, align 8, !annotation !75
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_flags, align 1
  %9 = or i8 %8, 4
  store i8 %9, ptr %tx_flags, align 1
  %lock = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 25, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %10 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1, align 4
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info.i, align 4
  %regs2.i = getelementptr inbounds %struct.sja1105_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs2.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packed_buf.i) #7
  %16 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %packed_buf.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %update.i) #7
  %17 = ptrtoint ptr %update.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %update.i, align 8, !annotation !75
  %arrayidx.i = getelementptr %struct.sja1105_regs, ptr %15, i32 0, i32 16, i32 %port
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 10, %entry ], [ %dec.i, %if.end8.i.do.body.i_crit_edge ]
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  %ptpegr_ts_bytes.i = getelementptr inbounds %struct.sja1105_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ptpegr_ts_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptpegr_ts_bytes.i, align 4
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %11, i32 noundef 0, i64 noundef %19, ptr noundef nonnull %packed_buf.i, i32 noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.do.end_crit_edge, label %if.end.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %do.body.i
  %24 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info.i, align 4
  %ptpegr_ts_bytes6.i = getelementptr inbounds %struct.sja1105_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ptpegr_ts_bytes6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptpegr_ts_bytes6.i, align 4
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %update.i, i32 noundef 0, i32 noundef 0, i32 noundef %27) #7
  %28 = ptrtoint ptr %update.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %update.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool.not.i = icmp eq i64 %29, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end

if.end8.i:                                        ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #7
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.do.end_crit_edge, label %if.end8.i.do.body.i_crit_edge

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end8.i.do.end_crit_edge, %do.body.i.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %update.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packed_buf.i) #7
  %30 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13) #11
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %out

if.end:                                           ; preds = %if.end.i
  %32 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info.i, align 4
  %ptpegr_ts_bytes14.i = getelementptr inbounds %struct.sja1105_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ptpegr_ts_bytes14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptpegr_ts_bytes14.i, align 4
  %sub.i = shl i32 %35, 3
  %ptp_ts_bits.i = getelementptr inbounds %struct.sja1105_info, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %ptp_ts_bits.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptp_ts_bits.i, align 8
  %38 = sub i32 %sub.i, %37
  %sub20.i = add i32 %sub.i, -1
  %39 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %ts, align 8
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %ts, i32 noundef %sub20.i, i32 noundef %38, i32 noundef %35) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %update.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packed_buf.i) #7
  %info.i30 = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %info.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info.i30, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs1.i, align 4
  %ptpclkval.i = getelementptr inbounds %struct.sja1105_regs, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %ptpclkval.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ptpclkval.i, align 8
  %call.i31 = call i32 @sja1105_xfer_u64(ptr noundef %1, i32 noundef 0, i64 noundef %45, ptr noundef nonnull %ticks, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp7 = icmp slt i32 %call.i31, 0
  br i1 %cmp7, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.5, i32 noundef %call.i31) #11
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %out

if.end14:                                         ; preds = %if.end
  %48 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ticks, align 8
  %50 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ts, align 8
  %52 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv1, align 4
  %info.i33 = getelementptr inbounds %struct.sja1105_private, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %info.i33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info.i33, align 4
  %ptp_ts_bits.i34 = getelementptr inbounds %struct.sja1105_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ptp_ts_bits.i34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ptp_ts_bits.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %57)
  %cmp.i35 = icmp slt i32 %57, 64
  br i1 %cmp.i35, label %cond.true.i, label %if.end14.sja1105_tstamp_reconstruct.exit_crit_edge

if.end14.sja1105_tstamp_reconstruct.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sja1105_tstamp_reconstruct.exit

cond.true.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = zext i32 %57 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i36 = xor i64 %notmask.i, -1
  br label %sja1105_tstamp_reconstruct.exit

sja1105_tstamp_reconstruct.exit:                  ; preds = %cond.true.i, %if.end14.sja1105_tstamp_reconstruct.exit_crit_edge
  %cond.i = phi i64 [ %sub.i36, %cond.true.i ], [ -1, %if.end14.sja1105_tstamp_reconstruct.exit_crit_edge ]
  %neg.i = xor i64 %cond.i, -1
  %and.i = and i64 %49, %neg.i
  %or.i = or i64 %and.i, %51
  %and4.i = and i64 %cond.i, %49
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i, i64 %51)
  %cmp5.not.i = icmp ugt i64 %and4.i, %51
  %sub6.i = select i1 %cmp5.not.i, i64 0, i64 %neg.i
  %ts_reconstructed.0.i = add i64 %sub6.i, %or.i
  %58 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %ts_reconstructed.0.i, ptr %ts, align 8
  %mul.i = shl i64 %ts_reconstructed.0.i, 3
  %59 = ptrtoint ptr %shwt to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %mul.i, ptr %shwt, align 8
  call void @skb_complete_tx_timestamp(ptr noundef %skb, ptr noundef nonnull %shwt) #7
  br label %out

out:                                              ; preds = %sja1105_tstamp_reconstruct.exit, %do.end12, %do.end
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shwt) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_reload(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_u64(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_u32(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_tas_adjfreq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_dynamic_config_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_unpack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !45, !47, !48, !49, !51, !52, !53, !54, !55, !56, !58, !59, !61, !62, !63}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 119, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sja1105_hwtstamp_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sja1105_hwtstamp_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 565, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__sja1105_ptp_gettimex._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @__sja1105_ptp_gettimex._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 617, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__sja1105_ptp_settime._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @__sja1105_ptp_settime._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 683, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__sja1105_ptp_adjtime._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @__sja1105_ptp_adjtime._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 932, i32 12}
!25 = !{ptr @sja1105_ptp_clock_register.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 959, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 995, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sja1105_ptp_txtstamp_skb._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sja1105_ptp_txtstamp_skb._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sja1105_ptp_txtstamp_skb._entry.15, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 1002, i32 3}
!35 = !{ptr @sja1105_ptp_txtstamp_skb._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!43 = !{ptr @sja1105_ptp_pin, !44, !"sja1105_ptp_pin", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 919, i32 28}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 391, i32 4}
!47 = !{ptr @sja1105_rxtstamp_work._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sja1105_rxtstamp_work._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 362, i32 3}
!51 = !{ptr @sja1105_extts_poll._rs, !50, !"_rs", i1 false, i1 false}
!52 = !{ptr @__func__.sja1105_extts_poll, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sja1105_extts_poll._entry, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @sja1105_extts_poll._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @skb_queue_head_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/sja1105/sja1105_ptp.c", i32 545, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sja1105_ptp_reset.__UNIQUE_ID_ddebug520, !60, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2158128208, i64 2158128699, i64 2158128245, i64 2158128301, i64 2158128335, i64 2158128359, i64 2158128400, i64 2158128421, i64 2158128449, i64 2158128483}
!75 = !{!"auto-init"}
!76 = !{i64 2153352899, i64 2153352924}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 5848454}
!79 = !{i64 5848651}
!80 = !{i64 2153333884}
!81 = !{i64 2153353580, i64 2153353605}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i8 0, i8 2}
!84 = !{i64 2148359018, i64 2148359023, i64 2148359036, i64 2148359080, i64 2148359114, i64 2148359135}
