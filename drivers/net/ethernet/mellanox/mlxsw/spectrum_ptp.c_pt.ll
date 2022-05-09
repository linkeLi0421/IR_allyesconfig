; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mlxsw_sp_ptp_port_stat = type { [32 x i8], i32 }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlxsw_sp1_ptp_shaper_params = type { i32, i32, i8, i8, i8, i8, i8, i32, i32 }
%struct.mlxsw_sp_ptp_clock = type { ptr, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, i32, %struct.delayed_work }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.169, %struct.anon.170, %struct.mlxsw_sp_port_mapping, %struct.anon.171, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.173, i32, i32, ptr, i64 }
%struct.anon.169 = type { i8 }
%struct.anon.170 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.171 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.anon.173 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp1_ptp_key = type { i16, i8, i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_ptp_state = type { ptr, %struct.rhltable, %struct.spinlock, %struct.delayed_work, i32 }
%struct.rhltable = type { %struct.rhashtable }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp1_ptp_unmatched = type { %struct.mlxsw_sp1_ptp_key, %struct.rhlist_head, %struct.callback_head, ptr, i64, i32 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }

@mlxsw_sp1_ptp_clock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&clock->lock\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_clock_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&clock->overflow_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_clock_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&clock->overflow_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_clock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"mlxsw_sp_clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @mlxsw_sp1_ptp_adjfine, ptr null, ptr null, ptr @mlxsw_sp1_ptp_adjtime, ptr null, ptr @mlxsw_sp1_ptp_gettimex, ptr null, ptr @mlxsw_sp1_ptp_settime, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 293, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ptp_clock_register failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_sp1_ptp_clock_init\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_clock_init._entry_ptr = internal global ptr @mlxsw_sp1_ptp_clock_init._entry, section ".printk_index", align 4
@mlxsw_sp1_ptp_got_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ptp_state->unmatched_lock\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_unmatched_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 0, i16 8, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&ptp_state->ht_gc_dw)->work)\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&ptp_state->ht_gc_dw)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set up PTP shaper\0A\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_sp_ptp_port_stats = internal constant { [4 x %struct.mlxsw_sp_ptp_port_stat], [48 x i8] } { [4 x %struct.mlxsw_sp_ptp_port_stat] [%struct.mlxsw_sp_ptp_port_stat { [32 x i8] c"ptp_rx_gcd_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.mlxsw_sp_ptp_port_stat { [32 x i8] c"ptp_rx_gcd_timestamps\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.mlxsw_sp_ptp_port_stat { [32 x i8] c"ptp_tx_gcd_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.mlxsw_sp_ptp_port_stat { [32 x i8] c"ptp_tx_gcd_timestamps\00\00\00\00\00\00\00\00\00\00\00", i32 24 }], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_reg_mtutc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28587, i16 28, ptr @.str.25 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 35, ptr null, ptr null }, align 1
@.str.16 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_mtutc_operation\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_mtutc_freq_adjustment\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_mtutc_utc_sec\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mtutc\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_mtpps = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28589, i16 60, ptr @.str.34 }, [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_mtpps_pin\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_mtpps_pin_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_mtpps_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_mtpps_time_stamp\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mtpps\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_got_piece.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.42 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.45 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.46 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ptp_shaper_params = internal constant { [4 x %struct.mlxsw_sp1_ptp_shaper_params], [32 x i8] } { [4 x %struct.mlxsw_sp1_ptp_shaper_params] [%struct.mlxsw_sp1_ptp_shaper_params { i32 100, i32 0, i8 4, i8 12, i8 9, i8 1, i8 1, i32 -313, i32 313 }, %struct.mlxsw_sp1_ptp_shaper_params { i32 1000, i32 1, i8 0, i8 12, i8 6, i8 0, i8 1, i32 -35, i32 35 }, %struct.mlxsw_sp1_ptp_shaper_params { i32 10000, i32 2, i8 0, i8 2, i8 14, i8 1, i8 1, i32 -11, i32 11 }, %struct.mlxsw_sp1_ptp_shaper_params { i32 25000, i32 3, i8 0, i8 0, i8 11, i8 1, i8 1, i32 -14, i32 14 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_reg_qpsc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16411, i16 40, ptr @.str.67 }, [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_qpsc_port_speed\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_qpsc_shaper_time_exp\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_qpsc_shaper_time_mantissa\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_qpsc_shaper_inc\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_qpsc_shaper_bs\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_qpsc_ptsc_we\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reg_qpsc_port_to_shaper_credits\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_qpsc_ing_timestamp_inc\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_qpsc_egr_timestamp_inc\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qpsc\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_mtptpt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28526, i16 8, ptr @.str.72 }, [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_mtptpt_trap_id\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_mtptpt_message_type\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mtptpt\00", [25 x i8] zeroinitializer }, align 32
@mlxsw_reg_mogcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28538, i16 32, ptr @.str.73 }, [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mogcr\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_mogcr_ptp_iftc\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_mogcr_ptp_eftc\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_reg_mtpppc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28528, i16 40, ptr @.str.82 }, [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reg_mtpppc_ing_timestamp_message_type\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reg_mtpppc_egr_timestamp_message_type\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mtpppc\00", [25 x i8] zeroinitializer }, align 32
@mlxsw_reg_qeec = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16397, i16 32, ptr @.str.91 }, [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_qeec_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_qeec_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_qeec_element_hierarchy\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_qeec_ptps\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qeec\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to increase parsing depth\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 10000, i64 25000]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 10000, i64 25000]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 261, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 286, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"mlxsw_sp1_ptp_clock_info\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 227, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 293, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 826, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [34 x i8] c"mlxsw_sp1_ptp_unmatched_ht_params\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 55, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 854, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1043, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"mlxsw_sp_ptp_port_stats\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1107, i32 44 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mtutc\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 33, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10539, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10547, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10553, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10528, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mtpps\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10498, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10490, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10479, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10508, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10472, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 695, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 594, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 755, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 723, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [28 x i8] c"mlxsw_sp1_ptp_shaper_params\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 739, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_qpsc\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4205, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4213, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4221, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4228, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4236, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4242, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4250, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4260, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4270, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 4192, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_mtptpt\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 11220, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 11228, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 11209, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mogcr\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10925, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10934, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 10943, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_mtpppc\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 11074, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 11083, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 11065, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_qeec\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3775, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3791, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3826, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3767, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 980, i32 35 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_ptp_clock_init._entry, ptr @mlxsw_sp1_ptp_clock_init._entry_ptr, ptr @mlxsw_sp1_ptp_clock_init.__key, ptr @.str, ptr @mlxsw_sp1_ptp_clock_init.__key.1, ptr @.str.2, ptr @mlxsw_sp1_ptp_clock_init.__key.3, ptr @.str.4, ptr @mlxsw_sp1_ptp_clock_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mlxsw_sp1_ptp_init.__key, ptr @.str.10, ptr @mlxsw_sp1_ptp_unmatched_ht_params, ptr @mlxsw_sp1_ptp_init.__key.11, ptr @.str.12, ptr @mlxsw_sp1_ptp_init.__key.13, ptr @.str.14, ptr @.str.15, ptr @mlxsw_sp_ptp_port_stats, ptr @mlxsw_reg_mtutc, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @mlxsw_reg_mtpps, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.48, ptr @mlxsw_sp1_ptp_shaper_params, ptr @mlxsw_reg_qpsc, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @mlxsw_reg_mtptpt, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @mlxsw_reg_mogcr, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @mlxsw_reg_mtpppc, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @mlxsw_reg_qeec, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_clock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_clock_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_clock_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_unmatched_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_ptp_port_stats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtutc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtpps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ptp_shaper_params to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qpsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtptpt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mogcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtpppc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qeec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp1_ptp_clock_init(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 336) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlxsw_sp1_ptp_clock_init.__key, i16 noundef signext 3) #14
  %cycles = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %cycles to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_sp1_ptp_read_frc, ptr %cycles, align 8
  %shift = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 29, ptr %shift, align 4
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 7736778637850651009, i64 536870912078128) #18, !srcloc !192
  %4 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 7736778637850651009, i64 536870912078128, i64 %3) #18, !srcloc !193
  %div1651.i.i = lshr i64 %4, 16
  %extract.t.i.i = trunc i64 %div1651.i.i to i32
  %mult = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %extract.t.i.i, ptr %mult, align 8
  %nominal_c_mult = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %nominal_c_mult to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %extract.t.i.i, ptr %nominal_c_mult, align 8
  %mask = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %mask, align 8
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call7.i.i, align 8
  %tc = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 3
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cycles, i64 noundef %call.i) #14
  %11 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mult, align 8
  %conv = zext i32 %12 to i64
  %call17 = tail call i64 @div64_u64(i64 noundef 9223372036854775807, i64 noundef %conv) #14
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mask, align 8
  %15 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %14, i64 6148914691236517205) #18, !srcloc !194
  %16 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %14, i64 %15) #18, !srcloc !193
  %17 = tail call i64 @llvm.umin.i64(i64 %call17, i64 %16)
  %18 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mult, align 8
  %conv.i = zext i32 %19 to i64
  %mul.i = mul i64 %17, %conv.i
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shift, align 4
  %sh_prom.i = zext i32 %21 to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %call24 = tail call i32 @nsecs_to_jiffies(i64 noundef %shr.i) #14
  %overflow_period = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %overflow_period to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call24, ptr %overflow_period, align 4
  %overflow_work = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %overflow_work, i32 noundef 0) #14
  %23 = ptrtoint ptr %overflow_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %overflow_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlxsw_sp1_ptp_clock_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry33 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %24 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry33, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mlxsw_sp1_ptp_clock_overflow, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlxsw_sp1_ptp_clock_init.__key.3) #14
  %call45 = tail call i32 @mlxsw_core_schedule_dw(ptr noundef %overflow_work, i32 noundef 0) #14
  %ptp_info = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 6
  %27 = call ptr @memcpy(ptr %ptp_info, ptr @mlxsw_sp1_ptp_clock_info, i32 108)
  %call47 = tail call ptr @ptp_clock_register(ptr noundef %ptp_info, ptr noundef %dev) #14
  %ptp = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call47, ptr %ptp, align 4
  %cmp.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %call47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %29) #19
  %call58 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %overflow_work) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call47, %if.then50 ], [ %call7.i.i, %do.body.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp1_ptp_read_frc(ptr nocapture noundef readonly %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cc, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @mlxsw_core_read_frc_h(ptr noundef %1) #14
  %call121.i = tail call i32 @mlxsw_core_read_frc_l(ptr noundef %1) #14
  %call2.i = tail call i32 @mlxsw_core_read_frc_h(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call.i, %call2.i
  br i1 %cmp.not.i, label %entry.__mlxsw_sp1_ptp_read_frc.exit_crit_edge, label %ptp_read_system_prets.exit16.thread.i

entry.__mlxsw_sp1_ptp_read_frc.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mlxsw_sp1_ptp_read_frc.exit

ptp_read_system_prets.exit16.thread.i:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call332.i = tail call i32 @mlxsw_core_read_frc_l(ptr noundef %1) #14
  br label %__mlxsw_sp1_ptp_read_frc.exit

__mlxsw_sp1_ptp_read_frc.exit:                    ; preds = %ptp_read_system_prets.exit16.thread.i, %entry.__mlxsw_sp1_ptp_read_frc.exit_crit_edge
  %call227.i = phi i32 [ %call.i, %entry.__mlxsw_sp1_ptp_read_frc.exit_crit_edge ], [ %call2.i, %ptp_read_system_prets.exit16.thread.i ]
  %frc_l.0.i = phi i32 [ %call121.i, %entry.__mlxsw_sp1_ptp_read_frc.exit_crit_edge ], [ %call332.i, %ptp_read_system_prets.exit16.thread.i ]
  %conv.i = zext i32 %frc_l.0.i to i64
  %conv4.i = zext i32 %call227.i to i64
  %shl.i = shl nuw i64 %conv4.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %mask = getelementptr inbounds %struct.cyclecounter, ptr %cc, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mask, align 8
  %and = and i64 %or.i, %3
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_ptp_clock_overflow(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -228
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tc = getelementptr i8, ptr %work, i32 -160
  %call1 = tail call i64 @timecounter_read(ptr noundef %tc) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %overflow_period = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %overflow_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overflow_period, align 4
  %call3 = tail call i32 @mlxsw_core_schedule_dw(ptr noundef %work, i32 noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_schedule_dw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_ptp_clock_fini(ptr noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %clock, i32 0, i32 5
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %call = tail call i32 @ptp_clock_unregister(ptr noundef %1) #14
  %overflow_work = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %clock, i32 0, i32 8
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %overflow_work) #14
  tail call void @kfree(ptr noundef %clock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_ptp_got_timestamp(ptr noundef %mlxsw_sp, i1 noundef zeroext %ingress, i16 noundef zeroext %local_port, i8 noundef zeroext %message_type, i8 noundef zeroext %domain_number, i16 noundef zeroext %sequence_id, i64 noundef %timestamp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i32 @mlxsw_core_max_ports(ptr noundef %1) #14
  %conv = zext i16 %local_port to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp ugt i32 %call, %conv
  br i1 %cmp.not, label %if.end40, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @mlxsw_sp1_ptp_got_timestamp.__already_done, align 1
  br i1 %.b75, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !195

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mlxsw_sp1_ptp_got_timestamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 576, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end40:                                         ; preds = %entry
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %5, null
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %ing_types = getelementptr inbounds %struct.mlxsw_sp_port, ptr %5, i32 0, i32 17, i32 2
  %egr_types = getelementptr inbounds %struct.mlxsw_sp_port, ptr %5, i32 0, i32 17, i32 3
  %cond.in.in = select i1 %ingress, ptr %ing_types, ptr %egr_types
  %6 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %cond.in = load i16, ptr %cond.in.in, align 2
  %conv50 = zext i8 %message_type to i32
  %shl = shl nuw i32 1, %conv50
  %7 = and i16 %cond.in, 255
  %conv51 = zext i16 %7 to i32
  %and = and i32 %shl, %conv51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end43.cleanup_crit_edge, label %if.end54

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %key.sroa.7.6.insert.ext = zext i8 %domain_number to i32
  %key.sroa.7.6.insert.shift = shl nuw nsw i32 %key.sroa.7.6.insert.ext, 8
  %key.sroa.7.4.insert.ext = zext i16 %sequence_id to i32
  %key.sroa.7.4.insert.shift = shl nuw i32 %key.sroa.7.4.insert.ext, 16
  %key.sroa.7.4.insert.insert = or i32 %key.sroa.7.4.insert.shift, %key.sroa.7.6.insert.shift
  %key.sroa.7.7.insert.ext = zext i1 %ingress to i32
  %key.sroa.7.7.insert.insert = or i32 %key.sroa.7.4.insert.insert, %key.sroa.7.7.insert.ext
  %key.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i32 %conv50, 8
  %key.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %conv, 16
  %key.sroa.0.sroa.0.0.insert.insert = or i32 %key.sroa.0.sroa.6.0.insert.shift, %key.sroa.0.sroa.0.0.insert.shift
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %key.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %key.sroa.7.7.insert.insert, 1
  tail call fastcc void @mlxsw_sp1_ptp_got_piece(ptr noundef %mlxsw_sp, [2 x i32] %.fca.1.insert, ptr noundef null, i64 noundef %timestamp)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end43.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_max_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp1_ptp_got_piece(ptr noundef %mlxsw_sp, [2 x i32] %key.coerce, ptr noundef %skb, i64 noundef %timestamp) unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.mlxsw_sp1_ptp_key, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %key.coerce.fca.0.extract = extractvalue [2 x i32] %key.coerce, 0
  %key.sroa.0.0.extract.shift = lshr i32 %key.coerce.fca.0.extract, 16
  %key.sroa.0.0.extract.trunc = trunc i32 %key.sroa.0.0.extract.shift to i16
  %key.coerce.fca.1.extract = extractvalue [2 x i32] %key.coerce, 1
  %0 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !196
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ptp_state = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 20
  %4 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_state, align 4
  %unmatched_lock = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %unmatched_lock) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i)
  %6 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %key.coerce.fca.0.extract, ptr %key.i, align 4
  %key.coerce.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %key.i, i32 0, i32 1
  %7 = ptrtoint ptr %key.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %key.coerce.fca.1.extract, ptr %key.coerce.fca.1.gep.i, align 4
  %8 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_state, align 4
  %unmatched_ht.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %unmatched_ht.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %unmatched_ht.i, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %unmatched_ht.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i.i_crit_edge:      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 594, ptr noundef nonnull @.str.38) #14
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %9, i32 0, i32 1, i32 0, i32 3, i32 3
  %key_offset.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %9, i32 0, i32 1, i32 0, i32 3, i32 2
  %key_len.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %9, i32 0, i32 1, i32 0, i32 3, i32 1
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %11, %do.end12.i.i.i ], [ %34, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %13, -559038729
  %add33.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %key.coerce.fca.1.extract
  %add36.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %key.coerce.fca.0.extract
  %xor37.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #14
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i, %add36.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #14
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #14
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #14
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #14
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #14
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #14
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %14 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %15, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !195

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %18 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %18, 1
  %19 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !197
  %20 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 369, ptr noundef nonnull @.str.38) #14
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %22 = ptrtoint ptr %21 to i32
  %and.i.i95.i.i.i = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %23 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.preheader.i, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i.i

for.body.i.i.preheader.i:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %24 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %25 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %26 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %29 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.preheader.i
  %he.0108.i.i.i = phi ptr [ %31, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %23, %for.body.i.i.preheader.i ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr nonnull %key.i, i32 %conv3.i.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %rhltable_lookup.exit.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %30 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %and.i.i.i.i = and i32 %32, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %23, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %31, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %19
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %unmatched_ht.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.39, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned.39, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 614, ptr noundef nonnull @.str.38) #14
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.if.else14.thread_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !195

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart.i.i.i

do.end60.i.i.i.if.else14.thread_crit_edge:        ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else14.thread

rhltable_lookup.exit.i:                           ; preds = %for.body.i.i.i
  %tobool.not17.i = icmp eq ptr %he.0108.i.i.i, null
  br i1 %tobool.not17.i, label %rhltable_lookup.exit.i.if.else14.thread_crit_edge, label %rhltable_lookup.exit.i.for.body.i_crit_edge

rhltable_lookup.exit.i.for.body.i_crit_edge:      ; preds = %rhltable_lookup.exit.i
  br label %for.body.i

rhltable_lookup.exit.i.if.else14.thread_crit_edge: ; preds = %rhltable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else14.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rhltable_lookup.exit.i.for.body.i_crit_edge
  %tmp.019.i = phi ptr [ %36, %for.body.i.for.body.i_crit_edge ], [ %he.0108.i.i.i, %rhltable_lookup.exit.i.for.body.i_crit_edge ]
  %length.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %rhltable_lookup.exit.i.for.body.i_crit_edge ]
  %inc.i = add i32 %length.018.i, 1
  %next.i = getelementptr inbounds %struct.rhlist_head, ptr %tmp.019.i, i32 0, i32 1
  %35 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %next.i, align 4
  %tobool.not.i126 = icmp eq ptr %36, null
  br i1 %tobool.not.i126, label %mlxsw_sp1_ptp_unmatched_lookup.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.else14.thread:                                 ; preds = %rhltable_lookup.exit.i.if.else14.thread_crit_edge, %do.end60.i.i.i.if.else14.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i)
  %tobool.not156 = icmp eq ptr %skb, null
  br label %if.then15

mlxsw_sp1_ptp_unmatched_lookup.exit:              ; preds = %for.body.i
  %add.ptr.le.i = getelementptr i8, ptr %tmp.019.i, i32 -8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i)
  %tobool.not = icmp eq ptr %skb, null
  %tobool1.not = icmp eq ptr %add.ptr.le.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %mlxsw_sp1_ptp_unmatched_lookup.exit.if.else_crit_edge, label %land.lhs.true2

mlxsw_sp1_ptp_unmatched_lookup.exit.if.else_crit_edge: ; preds = %mlxsw_sp1_ptp_unmatched_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true2:                                   ; preds = %mlxsw_sp1_ptp_unmatched_lookup.exit
  %timestamp3 = getelementptr i8, ptr %tmp.019.i, i32 24
  %37 = ptrtoint ptr %timestamp3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %timestamp3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool4.not = icmp eq i64 %38, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.else_crit_edge, label %if.end25.thread180

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end25.thread180:                               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  %skb5 = getelementptr i8, ptr %tmp.019.i, i32 16
  %39 = ptrtoint ptr %skb5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %skb, ptr %skb5, align 8
  br label %if.then27

if.else:                                          ; preds = %land.lhs.true2.if.else_crit_edge, %mlxsw_sp1_ptp_unmatched_lookup.exit.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %timestamp)
  %tobool6.not = icmp eq i64 %timestamp, 0
  %or.cond120 = select i1 %tobool6.not, i1 true, i1 %tobool1.not
  br i1 %or.cond120, label %if.else.if.else14_crit_edge, label %land.lhs.true9

if.else.if.else14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else14

land.lhs.true9:                                   ; preds = %if.else
  %skb10 = getelementptr i8, ptr %tmp.019.i, i32 16
  %40 = ptrtoint ptr %skb10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb10, align 8
  %tobool11.not = icmp eq ptr %41, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else14_crit_edge, label %if.end25

land.lhs.true9.if.else14_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true9.if.else14_crit_edge, %if.else.if.else14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %cmp = icmp slt i32 %inc.i, 100
  br i1 %cmp, label %if.else14.if.then15_crit_edge, label %land.lhs.true19.critedge

if.else14.if.then15_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.then15:                                        ; preds = %if.else14.if.then15_crit_edge, %if.else14.thread
  %tobool.not161169174 = phi i1 [ %tobool.not156, %if.else14.thread ], [ %tobool.not, %if.else14.if.then15_crit_edge ]
  %42 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptp_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i127 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2848, i32 noundef 48) #17
  %tobool.not.i128 = icmp eq ptr %call7.i.i.i127, null
  br i1 %tobool.not.i128, label %if.then15.mlxsw_sp1_ptp_unmatched_save.exit_crit_edge, label %if.end.i

if.then15.mlxsw_sp1_ptp_unmatched_save.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp1_ptp_unmatched_save.exit

if.end.i:                                         ; preds = %if.then15
  %45 = ptrtoint ptr %call7.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %key.coerce.fca.0.extract, ptr %call7.i.i.i127, align 8
  %key.sroa.2.0.key2.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i127, i32 4
  %46 = ptrtoint ptr %key.sroa.2.0.key2.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %key.coerce.fca.1.extract, ptr %key.sroa.2.0.key2.sroa_idx.i, align 4
  %skb3.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call7.i.i.i127, i32 0, i32 3
  %47 = ptrtoint ptr %skb3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %skb, ptr %skb3.i, align 8
  %timestamp4.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call7.i.i.i127, i32 0, i32 4
  %48 = ptrtoint ptr %timestamp4.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %timestamp, ptr %timestamp4.i, align 8
  %49 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptp_state, align 4
  %gc_cycle.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %gc_cycle.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gc_cycle.i, align 4
  %add.i = add i32 %52, 2
  %gc_cycle6.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call7.i.i.i127, i32 0, i32 5
  %53 = ptrtoint ptr %gc_cycle6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %gc_cycle6.i, align 8
  %unmatched_ht.i131 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1
  %ht_node.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call7.i.i.i127, i32 0, i32 1
  %head_offset.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %55 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ht_node.i, i32 %idx.neg.i.i.i
  %56 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !196
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i.i.i, label %if.end.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end.i.rcu_read_lock.exit.i.i.i.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #14
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.end.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %60 = ptrtoint ptr %unmatched_ht.i131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %unmatched_ht.i131, align 4
  %call.i.i.i.i132 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %unmatched_ht.i131) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i132)
  %tobool.not.i.i.i.i133 = icmp eq i32 %call.i.i.i.i132, 0
  br i1 %tobool.not.i.i.i.i133, label %lor.lhs.false.i.i.i.i, label %rcu_read_lock.exit.i.i.i.i.do.end12.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %rcu_read_lock.exit.i.i.i.i
  %call5.i.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i32 %call5.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %land.lhs.true.i.i.i.i134, label %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i.i

land.lhs.true.i.i.i.i134:                         ; preds = %lor.lhs.false.i.i.i.i
  %call7.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %land.lhs.true.i.i.i.i134.do.end12.i.i.i.i_crit_edge, label %land.lhs.true9.i.i.i.i

land.lhs.true.i.i.i.i134.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i134
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i.i

land.lhs.true9.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i134
  %.b3.i.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b3.i.i.i.i, label %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, label %if.then.i.i.i.i135

land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge: ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i.i

if.then.i.i.i.i135:                               ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 715, ptr noundef nonnull @.str.38) #14
  br label %do.end12.i.i.i.i

do.end12.i.i.i.i:                                 ; preds = %if.then.i.i.i.i135, %land.lhs.true9.i.i.i.i.do.end12.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i134.do.end12.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.do.end12.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.i.do.end12.i.i.i.i_crit_edge
  %62 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %63 to i32
  %idx.neg.i.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %ht_node.i, i32 %idx.neg.i.i.i.i.i.i
  %hash_rnd.i.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %hash_rnd.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hash_rnd.i.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i.i = add i32 %65, -559038729
  %arrayidx32.i.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 1
  %66 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i.i.i = add i32 %67, %add1.i.i.i.i.i.i.i.i
  %68 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i.i = add i32 %69, %add1.i.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i.i, i32 14) #14
  %sub39.i.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i.i, i32 11) #14
  %sub42.i.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i.i, i32 25) #14
  %sub45.i.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i.i, i32 16) #14
  %sub48.i.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i.i, i32 4) #14
  %sub51.i.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i.i, i32 14) #14
  %sub54.i.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i.i, i32 24) #14
  %sub57.i.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i.i
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %61, align 128
  %sub.i.i.i.i.i.i.i = add i32 %71, -1
  %and.i3.i.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i.i
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %61, i32 0, i32 1
  %72 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i5.i.i.i.i, label %cond.false.i8.i.i.i.i, label %cond.true.i7.i.i.i.i, !prof !195

cond.true.i7.i.i.i.i:                             ; preds = %do.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i6.i.i.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %unmatched_ht.i131, ptr noundef %61, i32 noundef %and.i3.i.i.i.i.i.i) #14
  br label %rht_bucket_insert.exit.i.i.i.i

cond.false.i8.i.i.i.i:                            ; preds = %do.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %61, i32 0, i32 8, i32 %and.i3.i.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i.i

rht_bucket_insert.exit.i.i.i.i:                   ; preds = %cond.false.i8.i.i.i.i, %cond.true.i7.i.i.i.i
  %cond.i9.i.i.i.i = phi ptr [ %call.i6.i.i.i.i, %cond.true.i7.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i8.i.i.i.i ]
  %tobool17.not.i.i.i.i = icmp eq ptr %cond.i9.i.i.i.i, null
  br i1 %tobool17.not.i.i.i.i, label %rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge, label %if.end19.i.i.i.i

rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %rht_bucket_insert.exit.i.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %61, ptr noundef nonnull %cond.i9.i.i.i.i) #14
  %future_tbl.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %61, i32 0, i32 5
  %74 = ptrtoint ptr %future_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %future_tbl.i.i.i.i, align 4
  %tobool25.not.i.i.i.i = icmp eq ptr %75, null
  br i1 %tobool25.not.i.i.i.i, label %if.end30.i.i.i.i, label %if.end19.i.i.i.i.slow_path.i.i.i.i_crit_edge, !prof !195

if.end19.i.i.i.i.slow_path.i.i.i.i_crit_edge:     ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i.i.i

slow_path.i.i.i.i:                                ; preds = %rht_grow_above_100.exit.i.i.i.i.slow_path.i.i.i.i_crit_edge, %for.end.i.i.i.i.slow_path.i.i.i.i_crit_edge, %if.end19.i.i.i.i.slow_path.i.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %61, ptr noundef nonnull %cond.i9.i.i.i.i) #14
  %call.i11.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i11.i.i.i.i, label %slow_path.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i14.i.i.i.i

slow_path.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge: ; preds = %slow_path.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i.i.i

land.lhs.true.i14.i.i.i.i:                        ; preds = %slow_path.i.i.i.i
  %call1.i12.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i.i.i)
  %tobool.not.i13.i.i.i.i = icmp eq i32 %call1.i12.i.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i.i, label %land.lhs.true.i14.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i16.i.i.i.i

land.lhs.true.i14.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i.i.i

land.lhs.true2.i16.i.i.i.i:                       ; preds = %land.lhs.true.i14.i.i.i.i
  %.b4.i15.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i.i.i, label %land.lhs.true2.i16.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, label %if.then.i17.i.i.i.i

land.lhs.true2.i16.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i.i.i

if.then.i17.i.i.i.i:                              ; preds = %land.lhs.true2.i16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.48) #14
  br label %rcu_read_unlock.exit.i.i.i.i

rcu_read_unlock.exit.i.i.i.i:                     ; preds = %if.then.i17.i.i.i.i, %land.lhs.true2.i16.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, %land.lhs.true.i14.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge, %slow_path.i.i.i.i.rcu_read_unlock.exit.i.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %76 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i.i18.i.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i18.i.i.i.i to ptr
  %preempt_count.i.i.i.i19.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i.i.i, align 4
  %sub.i.i.i20.i.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i20.i.i.i.i, ptr %preempt_count.i.i.i.i19.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call29.i.i.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %unmatched_ht.i131, ptr noundef %add.ptr.i.i.i, ptr noundef %ht_node.i) #14
  br label %rhltable_insert.exit.i

if.end30.i.i.i.i:                                 ; preds = %if.end19.i.i.i.i
  %call.i21.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %61, i32 noundef %and.i3.i.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i.i.i)
  %tobool.not.i22.i.i.i.i = icmp eq i32 %call.i21.i.i.i.i, 0
  br i1 %tobool.not.i22.i.i.i.i, label %land.lhs.true.i24.i.i.i.i, label %if.end30.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge

if.end30.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge:  ; preds = %if.end30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true.i24.i.i.i.i:                        ; preds = %if.end30.i.i.i.i
  %call1.i23.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i23.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i24.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i24.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i24.i.i.i.i
  %.b7.i.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %if.then.i25.i.i.i.i

land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i.i.i

if.then.i25.i.i.i.i:                              ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 377, ptr noundef nonnull @.str.41) #14
  br label %rht_ptr.exit.i.i.i.i

rht_ptr.exit.i.i.i.i:                             ; preds = %if.then.i25.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %land.lhs.true.i24.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %if.end30.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge
  %80 = ptrtoint ptr %cond.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cond.i9.i.i.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  %and.i.i.i.i.i.i = and i32 %82, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %83 = ptrtoint ptr %cond.i9.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %83, 1
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  %and.i87.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i.i.i.i)
  %tobool.i.not88.i.i.i.i = icmp eq i32 %and.i87.i.i.i.i, 0
  br i1 %tobool.i.not88.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %rht_ptr.exit.i.i.i.i.if.end152.i.i.i.i_crit_edge

rht_ptr.exit.i.i.i.i.if.end152.i.i.i.i_crit_edge: ; preds = %rht_ptr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %rht_ptr.exit.i.i.i.i
  %84 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  %tobool35.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %key_offset.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 3, i32 2
  %key_len.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 3, i32 1
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %pprev.091.i.i.i.i = phi ptr [ null, %for.body.lr.ph.i.i.i.i ], [ %head.090.i.i.i.i, %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %head.090.i.i.i.i = phi ptr [ %84, %for.body.lr.ph.i.i.i.i ], [ %97, %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %elasticity.089.i.i.i.i = phi i32 [ 16, %for.body.lr.ph.i.i.i.i ], [ %dec.i.i.i.i, %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dec.i.i.i.i = add i32 %elasticity.089.i.i.i.i, -1
  br i1 %tobool35.not.i.i.i.i, label %for.body.i.i.i.i.do.body136.i.i.i.i_crit_edge, label %lor.lhs.false36.i.i.i.i

for.body.i.i.i.i.do.body136.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i.i.i

lor.lhs.false36.i.i.i.i:                          ; preds = %for.body.i.i.i.i
  %85 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i29.i.i.i.i = zext i16 %86 to i32
  %idx.neg.i30.i.i.i.i = sub nsw i32 0, %conv.i29.i.i.i.i
  %add.ptr.i31.i.i.i.i = getelementptr i8, ptr %head.090.i.i.i.i, i32 %idx.neg.i30.i.i.i.i
  %87 = ptrtoint ptr %key_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %key_offset.i.i.i.i.i, align 4
  %conv.i32.i.i.i.i = zext i16 %88 to i32
  %add.ptr.i33.i.i.i.i = getelementptr i8, ptr %add.ptr.i31.i.i.i.i, i32 %conv.i32.i.i.i.i
  %89 = ptrtoint ptr %key_len.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %key_len.i.i.i.i.i, align 2
  %conv3.i.i.i.i.i = zext i16 %90 to i32
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %add.ptr.i33.i.i.i.i, ptr nonnull %add.ptr.i.i.i, i32 %conv3.i.i.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool44.not.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %tobool44.not.i.i.i.i, label %if.end46.i.i.i.i, label %lor.lhs.false36.i.i.i.i.do.body136.i.i.i.i_crit_edge

lor.lhs.false36.i.i.i.i.do.body136.i.i.i.i_crit_edge: ; preds = %lor.lhs.false36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body136.i.i.i.i

if.end46.i.i.i.i:                                 ; preds = %lor.lhs.false36.i.i.i.i
  %next61.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call7.i.i.i127, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %next61.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %head.090.i.i.i.i, ptr %next61.i.i.i.i, align 4
  %call69.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %61, i32 noundef %and.i3.i.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i.i.i)
  %tobool70.not.i.i.i.i = icmp eq i32 %call69.i.i.i.i, 0
  br i1 %tobool70.not.i.i.i.i, label %land.lhs.true71.i.i.i.i, label %if.end46.i.i.i.i.do.end79.i.i.i.i_crit_edge

if.end46.i.i.i.i.do.end79.i.i.i.i_crit_edge:      ; preds = %if.end46.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79.i.i.i.i

land.lhs.true71.i.i.i.i:                          ; preds = %if.end46.i.i.i.i
  %call72.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i.i.i)
  %tobool73.not.i.i.i.i = icmp eq i32 %call72.i.i.i.i, 0
  br i1 %tobool73.not.i.i.i.i, label %land.lhs.true71.i.i.i.i.do.end79.i.i.i.i_crit_edge, label %land.lhs.true74.i.i.i.i

land.lhs.true71.i.i.i.i.do.end79.i.i.i.i_crit_edge: ; preds = %land.lhs.true71.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79.i.i.i.i

land.lhs.true74.i.i.i.i:                          ; preds = %land.lhs.true71.i.i.i.i
  %.b2812.i.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.40, align 1
  br i1 %.b2812.i.i.i.i, label %land.lhs.true74.i.i.i.i.do.end79.i.i.i.i_crit_edge, label %if.then76.i.i.i.i

land.lhs.true74.i.i.i.i.do.end79.i.i.i.i_crit_edge: ; preds = %land.lhs.true74.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79.i.i.i.i

if.then76.i.i.i.i:                                ; preds = %land.lhs.true74.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned.40, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 755, ptr noundef nonnull @.str.41) #14
  br label %do.end79.i.i.i.i

do.end79.i.i.i.i:                                 ; preds = %if.then76.i.i.i.i, %land.lhs.true74.i.i.i.i.do.end79.i.i.i.i_crit_edge, %land.lhs.true71.i.i.i.i.do.end79.i.i.i.i_crit_edge, %if.end46.i.i.i.i.do.end79.i.i.i.i_crit_edge
  %92 = ptrtoint ptr %head.090.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.090.i.i.i.i, align 4
  %94 = ptrtoint ptr %ht_node.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %93, ptr %ht_node.i, align 8
  %tobool95.not.i.i.i.i = icmp eq ptr %pprev.091.i.i.i.i, null
  br i1 %tobool95.not.i.i.i.i, label %if.else133.i.i.i.i, label %do.body97.i.i.i.i

do.body97.i.i.i.i:                                ; preds = %do.end79.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %95 = ptrtoint ptr %pprev.091.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %ht_node.i, ptr %pprev.091.i.i.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %61, ptr noundef nonnull %cond.i9.i.i.i.i) #14
  br label %out.i.i.i.i

if.else133.i.i.i.i:                               ; preds = %do.end79.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_assign_unlock(ptr noundef %61, ptr noundef nonnull %cond.i9.i.i.i.i, ptr noundef %ht_node.i) #14
  br label %out.i.i.i.i

do.body136.i.i.i.i:                               ; preds = %lor.lhs.false36.i.i.i.i.do.body136.i.i.i.i_crit_edge, %for.body.i.i.i.i.do.body136.i.i.i.i_crit_edge
  %call137.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %61, i32 noundef %and.i3.i.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i.i)
  %tobool138.not.i.i.i.i = icmp eq i32 %call137.i.i.i.i, 0
  br i1 %tobool138.not.i.i.i.i, label %land.lhs.true139.i.i.i.i, label %do.body136.i.i.i.i.do.end147.i.i.i.i_crit_edge

do.body136.i.i.i.i.do.end147.i.i.i.i_crit_edge:   ; preds = %do.body136.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i.i.i

land.lhs.true139.i.i.i.i:                         ; preds = %do.body136.i.i.i.i
  %call140.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i.i)
  %tobool141.not.i.i.i.i = icmp eq i32 %call140.i.i.i.i, 0
  br i1 %tobool141.not.i.i.i.i, label %land.lhs.true139.i.i.i.i.do.end147.i.i.i.i_crit_edge, label %land.lhs.true142.i.i.i.i

land.lhs.true139.i.i.i.i.do.end147.i.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i.i.i

land.lhs.true142.i.i.i.i:                         ; preds = %land.lhs.true139.i.i.i.i
  %.b2821.i.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.42, align 1
  br i1 %.b2821.i.i.i.i, label %land.lhs.true142.i.i.i.i.do.end147.i.i.i.i_crit_edge, label %if.then144.i.i.i.i

land.lhs.true142.i.i.i.i.do.end147.i.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i.i.i

if.then144.i.i.i.i:                               ; preds = %land.lhs.true142.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned.42, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 732, ptr noundef nonnull @.str.41) #14
  br label %do.end147.i.i.i.i

do.end147.i.i.i.i:                                ; preds = %if.then144.i.i.i.i, %land.lhs.true142.i.i.i.i.do.end147.i.i.i.i_crit_edge, %land.lhs.true139.i.i.i.i.do.end147.i.i.i.i_crit_edge, %do.body136.i.i.i.i.do.end147.i.i.i.i_crit_edge
  %96 = ptrtoint ptr %head.090.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.090.i.i.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  %and.i.i.i.i.i136 = and i32 %98, 1
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i136, 0
  br i1 %tobool.i.not.i.i.i.i, label %do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.end.i.i.i.i

do.end147.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %do.end147.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %do.end147.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp slt i32 %dec.i.i.i.i, 1
  br i1 %phi.cmp.i.i.i.i, label %for.end.i.i.i.i.slow_path.i.i.i.i_crit_edge, label %for.end.i.i.i.i.if.end152.i.i.i.i_crit_edge

for.end.i.i.i.i.if.end152.i.i.i.i_crit_edge:      ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i.i.i

for.end.i.i.i.i.slow_path.i.i.i.i_crit_edge:      ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i.i.i

if.end152.i.i.i.i:                                ; preds = %for.end.i.i.i.i.if.end152.i.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.i.if.end152.i.i.i.i_crit_edge
  %nelems.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 8
  %call.i.i.i39.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #14
  %99 = ptrtoint ptr %nelems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %nelems.i.i.i.i.i, align 4
  %max_elems.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 2
  %101 = ptrtoint ptr %max_elems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_elems.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp.i.not.i.i.i.i = icmp ult i32 %100, %102
  br i1 %cmp.i.not.i.i.i.i, label %if.end162.i.i.i.i, label %out_unlock.i.i.i.i, !prof !195

if.end162.i.i.i.i:                                ; preds = %if.end152.i.i.i.i
  %call.i.i.i41.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #14
  %103 = ptrtoint ptr %nelems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %nelems.i.i.i.i.i, align 4
  %105 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %61, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp.i42.i.i.i.i = icmp ugt i32 %104, %106
  br i1 %cmp.i42.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.i, label %if.end162.i.i.i.i.if.end171.i.i.i.i_crit_edge

if.end162.i.i.i.i.if.end171.i.i.i.i_crit_edge:    ; preds = %if.end162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i.i.i

rht_grow_above_100.exit.i.i.i.i:                  ; preds = %if.end162.i.i.i.i
  %max_size.i.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 3, i32 4
  %107 = ptrtoint ptr %max_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_size.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i43.i.i.i.i = icmp eq i32 %108, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp4.i.i.i.i.i = icmp ult i32 %106, %108
  %spec.select.i.i.i.i.i = select i1 %tobool.not.i43.i.i.i.i, i1 true, i1 %cmp4.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.i.slow_path.i.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.i.if.end171.i.i.i.i_crit_edge, !prof !201

rht_grow_above_100.exit.i.i.i.i.if.end171.i.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i.i.i

rht_grow_above_100.exit.i.i.i.i.slow_path.i.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i.i.i

if.end171.i.i.i.i:                                ; preds = %rht_grow_above_100.exit.i.i.i.i.if.end171.i.i.i.i_crit_edge, %if.end162.i.i.i.i.if.end171.i.i.i.i_crit_edge
  %call.i44.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %61, i32 noundef %and.i3.i.i.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i.i.i)
  %tobool.not.i45.i.i.i.i = icmp eq i32 %call.i44.i.i.i.i, 0
  br i1 %tobool.not.i45.i.i.i.i, label %land.lhs.true.i48.i.i.i.i, label %if.end171.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge

if.end171.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge: ; preds = %if.end171.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit56.i.i.i.i

land.lhs.true.i48.i.i.i.i:                        ; preds = %if.end171.i.i.i.i
  %call1.i46.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i.i.i)
  %tobool2.not.i47.i.i.i.i = icmp eq i32 %call1.i46.i.i.i.i, 0
  br i1 %tobool2.not.i47.i.i.i.i, label %land.lhs.true.i48.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge, label %land.lhs.true3.i50.i.i.i.i

land.lhs.true.i48.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit56.i.i.i.i

land.lhs.true3.i50.i.i.i.i:                       ; preds = %land.lhs.true.i48.i.i.i.i
  %.b7.i49.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i.i.i, label %land.lhs.true3.i50.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge, label %if.then.i51.i.i.i.i

land.lhs.true3.i50.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit56.i.i.i.i

if.then.i51.i.i.i.i:                              ; preds = %land.lhs.true3.i50.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 377, ptr noundef nonnull @.str.41) #14
  br label %rht_ptr.exit56.i.i.i.i

rht_ptr.exit56.i.i.i.i:                           ; preds = %if.then.i51.i.i.i.i, %land.lhs.true3.i50.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge, %land.lhs.true.i48.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge, %if.end171.i.i.i.i.rht_ptr.exit56.i.i.i.i_crit_edge
  %109 = ptrtoint ptr %cond.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cond.i9.i.i.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  %and.i.i52.i.i.i.i = and i32 %111, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i.i.i)
  %tobool.not.i.i53.i.i.i.i = icmp eq i32 %and.i.i52.i.i.i.i, 0
  %cond.i.i55.i.i.i.i = select i1 %tobool.not.i.i53.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i52.i.i.i.i
  %112 = inttoptr i32 %cond.i.i55.i.i.i.i to ptr
  %113 = ptrtoint ptr %ht_node.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %112, ptr %ht_node.i, align 8
  %next198.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call7.i.i.i127, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %next198.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr null, ptr %next198.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %115 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i.i, ptr %nelems.i.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i.i) #14, !srcloc !202
  tail call fastcc void @rht_assign_unlock(ptr noundef %61, ptr noundef nonnull %cond.i9.i.i.i.i, ptr noundef %ht_node.i) #14
  %call.i.i.i58.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i.i, i32 noundef 4) #14
  %116 = ptrtoint ptr %nelems.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %nelems.i.i.i.i.i, align 4
  %118 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %61, align 128
  %div8.i.i.i.i.i = lshr i32 %119, 2
  %mul.i.i.i.i.i = mul nuw i32 %div8.i.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %mul.i.i.i.i.i)
  %cmp.i59.i.i.i.i = icmp ugt i32 %117, %mul.i.i.i.i.i
  br i1 %cmp.i59.i.i.i.i, label %rht_grow_above_75.exit.i.i.i.i, label %rht_ptr.exit56.i.i.i.i.out.i.i.i.i_crit_edge

rht_ptr.exit56.i.i.i.i.out.i.i.i.i_crit_edge:     ; preds = %rht_ptr.exit56.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i.i.i

rht_grow_above_75.exit.i.i.i.i:                   ; preds = %rht_ptr.exit56.i.i.i.i
  %max_size.i60.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 3, i32 4
  %120 = ptrtoint ptr %max_size.i60.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_size.i60.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i61.i.i.i.i = icmp eq i32 %121, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp4.i62.i.i.i.i = icmp ult i32 %119, %121
  %spec.select.i63.i.i.i.i = select i1 %tobool.not.i61.i.i.i.i, i1 true, i1 %cmp4.i62.i.i.i.i
  br i1 %spec.select.i63.i.i.i.i, label %if.then207.i.i.i.i, label %rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i.i.i

if.then207.i.i.i.i:                               ; preds = %rht_grow_above_75.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %43, i32 0, i32 1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %122 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %122, ptr noundef %run_work.i.i.i.i) #14
  br label %out.i.i.i.i

out.i.i.i.i:                                      ; preds = %out_unlock.i.i.i.i, %if.then207.i.i.i.i, %rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge, %rht_ptr.exit56.i.i.i.i.out.i.i.i.i_crit_edge, %if.else133.i.i.i.i, %do.body97.i.i.i.i, %rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge
  %data.2.i.i.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.i.out.i.i.i.i_crit_edge ], [ null, %if.then207.i.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.i.out.i.i.i.i_crit_edge ], [ null, %if.else133.i.i.i.i ], [ null, %do.body97.i.i.i.i ], [ null, %rht_ptr.exit56.i.i.i.i.out.i.i.i.i_crit_edge ]
  %call.i66.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i66.i.i.i.i, label %out.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge, label %land.lhs.true.i69.i.i.i.i

out.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge: ; preds = %out.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit76.i.i.i.i

land.lhs.true.i69.i.i.i.i:                        ; preds = %out.i.i.i.i
  %call1.i67.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i.i.i)
  %tobool.not.i68.i.i.i.i = icmp eq i32 %call1.i67.i.i.i.i, 0
  br i1 %tobool.not.i68.i.i.i.i, label %land.lhs.true.i69.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge, label %land.lhs.true2.i71.i.i.i.i

land.lhs.true.i69.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit76.i.i.i.i

land.lhs.true2.i71.i.i.i.i:                       ; preds = %land.lhs.true.i69.i.i.i.i
  %.b4.i70.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i.i.i, label %land.lhs.true2.i71.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge, label %if.then.i72.i.i.i.i

land.lhs.true2.i71.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit76.i.i.i.i

if.then.i72.i.i.i.i:                              ; preds = %land.lhs.true2.i71.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.48) #14
  br label %rcu_read_unlock.exit76.i.i.i.i

rcu_read_unlock.exit76.i.i.i.i:                   ; preds = %if.then.i72.i.i.i.i, %land.lhs.true2.i71.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge, %land.lhs.true.i69.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge, %out.i.i.i.i.rcu_read_unlock.exit76.i.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %123 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i.i73.i.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i.i.i73.i.i.i.i to ptr
  %preempt_count.i.i.i.i74.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i.i.i, align 4
  %sub.i.i.i75.i.i.i.i = add i32 %126, -1
  store volatile i32 %sub.i.i.i75.i.i.i.i, ptr %preempt_count.i.i.i.i74.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %rhltable_insert.exit.i

out_unlock.i.i.i.i:                               ; preds = %if.end152.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_unlock(ptr noundef %61, ptr noundef nonnull %cond.i9.i.i.i.i) #14
  br label %out.i.i.i.i

rhltable_insert.exit.i:                           ; preds = %rcu_read_unlock.exit76.i.i.i.i, %rcu_read_unlock.exit.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %call29.i.i.i.i, %rcu_read_unlock.exit.i.i.i.i ], [ %data.2.i.i.i.i, %rcu_read_unlock.exit76.i.i.i.i ]
  %tobool8.not.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool8.not.i, label %rhltable_insert.exit.i.if.end72.critedge_crit_edge, label %if.then9.i

rhltable_insert.exit.i.if.end72.critedge_crit_edge: ; preds = %rhltable_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.critedge

if.then9.i:                                       ; preds = %rhltable_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i127) #14
  br label %mlxsw_sp1_ptp_unmatched_save.exit

mlxsw_sp1_ptp_unmatched_save.exit:                ; preds = %if.then9.i, %if.then15.mlxsw_sp1_ptp_unmatched_save.exit_crit_edge
  br i1 %tobool.not161169174, label %mlxsw_sp1_ptp_unmatched_save.exit.if.end72.critedge_crit_edge, label %mlxsw_sp1_ptp_unmatched_save.exit.if.then21_crit_edge

mlxsw_sp1_ptp_unmatched_save.exit.if.then21_crit_edge: ; preds = %mlxsw_sp1_ptp_unmatched_save.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21

mlxsw_sp1_ptp_unmatched_save.exit.if.end72.critedge_crit_edge: ; preds = %mlxsw_sp1_ptp_unmatched_save.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.critedge

land.lhs.true19.critedge:                         ; preds = %if.else14
  br i1 %tobool.not, label %land.lhs.true19.critedge.if.end72.critedge_crit_edge, label %land.lhs.true19.critedge.if.then21_crit_edge

land.lhs.true19.critedge.if.then21_crit_edge:     ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21

land.lhs.true19.critedge.if.end72.critedge_crit_edge: ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.critedge

if.then21:                                        ; preds = %land.lhs.true19.critedge.if.then21_crit_edge, %mlxsw_sp1_ptp_unmatched_save.exit.if.then21_crit_edge
  %127 = and i32 %key.coerce.fca.1.extract, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool22.not = icmp eq i32 %127, 0
  %128 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mlxsw_sp, align 4
  %arrayidx.i = getelementptr ptr, ptr %129, i32 %key.sroa.0.0.extract.shift
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i137 = icmp eq ptr %131, null
  br i1 %tobool.not.i137, label %if.then21.if.then.i139_crit_edge, label %land.lhs.true.i138

if.then21.if.then.i139_crit_edge:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i139

land.lhs.true.i138:                               ; preds = %if.then21
  %132 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 8
  %tobool1.not.i = icmp eq ptr %134, null
  br i1 %tobool1.not.i, label %land.lhs.true.i138.if.end.i140_crit_edge, label %lor.lhs.false.i

land.lhs.true.i138.if.end.i140_crit_edge:         ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i140

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i138
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %131, align 8
  %cmp.i = icmp eq ptr %134, %136
  br i1 %cmp.i, label %lor.lhs.false.i.if.end.i140_crit_edge, label %lor.lhs.false.i.if.then.i139_crit_edge

lor.lhs.false.i.if.then.i139_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i139

lor.lhs.false.i.if.end.i140_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i140

if.then.i139:                                     ; preds = %lor.lhs.false.i.if.then.i139_crit_edge, %if.then21.if.then.i139_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %if.end72.critedge

if.end.i140:                                      ; preds = %lor.lhs.false.i.if.end.i140_crit_edge, %land.lhs.true.i138.if.end.i140_crit_edge
  br i1 %tobool22.not, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mlxsw_sp_rx_listener_no_mark_func(ptr noundef %skb, i16 noundef zeroext %key.sroa.0.0.extract.trunc, ptr noundef %mlxsw_sp) #14
  br label %if.end72.critedge

if.else.i:                                        ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %if.end72.critedge

if.end25:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp13 = getelementptr i8, ptr %tmp.019.i, i32 24
  %137 = ptrtoint ptr %timestamp13 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %timestamp, ptr %timestamp13, align 8
  br label %if.then27

if.then27:                                        ; preds = %if.end25, %if.end25.thread180
  %138 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ptp_state, align 4
  %unmatched_ht.i142 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %139, i32 0, i32 1
  %call.i144 = tail call fastcc i32 @rhltable_remove(ptr noundef %unmatched_ht.i142, ptr noundef nonnull %tmp.019.i, [7 x i32] [i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0]) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool29.not = icmp eq i32 %call.i144, 0
  br i1 %tobool29.not, label %if.then27.if.then71_crit_edge, label %land.rhs

if.then27.if.then71_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then71

land.rhs:                                         ; preds = %if.then27
  %.b119 = load i1, ptr @mlxsw_sp1_ptp_got_piece.__already_done, align 1
  br i1 %.b119, label %land.rhs.if.then71_crit_edge, label %if.then37, !prof !195

land.rhs.if.then71_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then71

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mlxsw_sp1_ptp_got_piece.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 515, i32 noundef 9, ptr noundef null) #14
  br label %if.then71

if.then71:                                        ; preds = %if.then37, %land.rhs.if.then71_crit_edge, %if.then27.if.then71_crit_edge
  %140 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ptp_state, align 4
  %unmatched_lock69.c124 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %141, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %unmatched_lock69.c124) #14
  tail call fastcc void @mlxsw_sp1_ptp_unmatched_finish(ptr noundef %mlxsw_sp, ptr noundef nonnull %add.ptr.le.i)
  br label %if.end72

if.end72.critedge:                                ; preds = %if.else.i, %if.then3.i, %if.then.i139, %land.lhs.true19.critedge.if.end72.critedge_crit_edge, %mlxsw_sp1_ptp_unmatched_save.exit.if.end72.critedge_crit_edge, %rhltable_insert.exit.i.if.end72.critedge_crit_edge
  %142 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ptp_state, align 4
  %unmatched_lock69.c125 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %143, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %unmatched_lock69.c125) #14
  br label %if.end72

if.end72:                                         ; preds = %if.end72.critedge, %if.then71
  %call.i145 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i145, label %if.end72.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i148

if.end72.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i148:                               ; preds = %if.end72
  %call1.i146 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i146)
  %tobool.not.i147 = icmp eq i32 %call1.i146, 0
  br i1 %tobool.not.i147, label %land.lhs.true.i148.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i150

land.lhs.true.i148.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i150:                              ; preds = %land.lhs.true.i148
  %.b4.i149 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i149, label %land.lhs.true2.i150.rcu_read_unlock.exit_crit_edge, label %if.then.i151

land.lhs.true2.i150.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i150
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i151:                                     ; preds = %land.lhs.true2.i150
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.48) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i151, %land.lhs.true2.i150.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i148.rcu_read_unlock.exit_crit_edge, %if.end72.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %144 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i.i152 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i.i152 to ptr
  %preempt_count.i.i.i.i153 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i.i153, align 4
  %sub.i.i.i = add i32 %147, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i153, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_ptp_receive(ptr noundef %mlxsw_sp, ptr noundef %skb, i16 noundef zeroext %local_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %mac_header.i, align 2
  tail call fastcc void @mlxsw_sp1_ptp_got_packet(ptr noundef %mlxsw_sp, ptr noundef %skb, i16 noundef zeroext %local_port, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp1_ptp_got_packet(ptr noundef %mlxsw_sp, ptr noundef %skb, i16 noundef zeroext %local_port, i1 noundef zeroext %ingress) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.immediate_crit_edge, label %if.end

entry.immediate_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %immediate

if.end:                                           ; preds = %entry
  %ing_types = getelementptr inbounds %struct.mlxsw_sp_port, ptr %3, i32 0, i32 17, i32 2
  %egr_types = getelementptr inbounds %struct.mlxsw_sp_port, ptr %3, i32 0, i32 17, i32 3
  %cond.in.in = select i1 %ingress, ptr %ing_types, ptr %egr_types
  %4 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %cond.in = load i16, ptr %cond.in.in, align 2
  %conv4 = trunc i16 %cond.in to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool5.not = icmp eq i8 %conv4, 0
  br i1 %tobool5.not, label %if.end.immediate_crit_edge, label %if.end7

if.end.immediate_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %immediate

if.end7:                                          ; preds = %if.end
  %call.i = tail call i32 @ptp_classify_raw(ptr noundef %skb) #14
  %and.i = and i32 %call.i, 15
  %and.off.i = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off.i)
  %switch.i = icmp ult i32 %and.off.i, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.end7.immediate_crit_edge

if.end7.immediate_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %immediate

sw.epilog.i:                                      ; preds = %if.end7
  %call1.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %call.i) #14
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.immediate_crit_edge, label %if.end.i

sw.epilog.i.immediate_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %immediate

if.end.i:                                         ; preds = %sw.epilog.i
  %and.i.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !195

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %control.i.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i, i32 0, i32 10
  %5 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %control.i.i, align 1
  br label %if.end14

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call1.i, align 1
  %9 = and i8 %8, 15
  br label %if.end14

if.end14:                                         ; preds = %if.else.i.i, %if.then.i.i
  %msgtype.0.i.i = phi i8 [ %6, %if.then.i.i ], [ %9, %if.else.i.i ]
  %conv16 = zext i8 %msgtype.0.i.i to i32
  %shl = shl nuw i32 1, %conv16
  %conv4.mask = and i16 %cond.in, 255
  %conv17 = zext i16 %conv4.mask to i32
  %and = and i32 %shl, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end14.immediate_crit_edge, label %if.end20

if.end14.immediate_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %immediate

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %sequence_id.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i, i32 0, i32 9
  %10 = ptrtoint ptr %sequence_id.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %sequence_id.i, align 1
  %domain_number.i = getelementptr inbounds %struct.ptp_header, ptr %call1.i, i32 0, i32 3
  %12 = ptrtoint ptr %domain_number.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %domain_number.i, align 1
  %key.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i32 %conv16, 8
  %key.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %idxprom, 16
  %key.sroa.0.sroa.0.0.insert.insert = or i32 %key.sroa.0.sroa.6.0.insert.shift, %key.sroa.0.sroa.0.0.insert.shift
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %key.sroa.0.sroa.0.0.insert.insert, 0
  %key.sroa.8.sroa.7.0.insert.ext = zext i1 %ingress to i32
  %key.sroa.8.sroa.6.0.insert.ext = zext i8 %13 to i32
  %key.sroa.8.sroa.6.0.insert.shift = shl nuw nsw i32 %key.sroa.8.sroa.6.0.insert.ext, 8
  %key.sroa.8.sroa.6.0.insert.insert = or i32 %key.sroa.8.sroa.6.0.insert.shift, %key.sroa.8.sroa.7.0.insert.ext
  %key.sroa.8.sroa.0.0.insert.ext = zext i16 %11 to i32
  %key.sroa.8.sroa.0.0.insert.shift = shl nuw i32 %key.sroa.8.sroa.0.0.insert.ext, 16
  %key.sroa.8.sroa.0.0.insert.insert = or i32 %key.sroa.8.sroa.6.0.insert.insert, %key.sroa.8.sroa.0.0.insert.shift
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %key.sroa.8.sroa.0.0.insert.insert, 1
  tail call fastcc void @mlxsw_sp1_ptp_got_piece(ptr noundef %mlxsw_sp, [2 x i32] %.fca.1.insert, ptr noundef %skb, i64 noundef 0)
  br label %cleanup

immediate:                                        ; preds = %if.end14.immediate_crit_edge, %sw.epilog.i.immediate_crit_edge, %if.end7.immediate_crit_edge, %if.end.immediate_crit_edge, %entry.immediate_crit_edge
  %14 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mlxsw_sp, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i36 = icmp eq ptr %17, null
  br i1 %tobool.not.i36, label %immediate.if.then.i_crit_edge, label %land.lhs.true.i

immediate.if.then.i_crit_edge:                    ; preds = %immediate
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %immediate
  %18 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i37_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.end.i37_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i37

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 8
  %cmp.i = icmp eq ptr %20, %22
  br i1 %cmp.i, label %lor.lhs.false.i.if.end.i37_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i.if.end.i37_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i37

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %immediate.if.then.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %cleanup

if.end.i37:                                       ; preds = %lor.lhs.false.i.if.end.i37_crit_edge, %land.lhs.true.i.if.end.i37_crit_edge
  br i1 %ingress, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mlxsw_sp_rx_listener_no_mark_func(ptr noundef %skb, i16 noundef zeroext %local_port, ptr noundef %mlxsw_sp) #14
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then3.i, %if.then.i, %if.end20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_ptp_transmitted(ptr noundef %mlxsw_sp, ptr noundef %skb, i16 noundef zeroext %local_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp1_ptp_got_packet(ptr noundef %mlxsw_sp, ptr noundef %skb, i16 noundef zeroext %local_port, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp1_ptp_init(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  %qpsc_pl.i = alloca [40 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qpsc_pl.i) #14
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %arrayidx.i.i39.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 1
  %arrayidx.i.i67.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 1
  %arrayidx.i.i95.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 2
  %arrayidx.i.i123.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 3
  %arrayidx.i.i150.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 4
  %arrayidx.i.i178.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 4
  %arrayidx.i.i206.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 8
  %arrayidx.i.i234.i.i = getelementptr inbounds i32, ptr %qpsc_pl.i, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.059.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %port_speed.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 1
  %0 = ptrtoint ptr %port_speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_speed.i, align 4
  %shaper_time_exp.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 2
  %2 = ptrtoint ptr %shaper_time_exp.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shaper_time_exp.i, align 4
  %shaper_time_mantissa.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 3
  %4 = ptrtoint ptr %shaper_time_mantissa.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shaper_time_mantissa.i, align 1
  %shaper_inc.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 4
  %6 = ptrtoint ptr %shaper_inc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shaper_inc.i, align 2
  %shaper_bs.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 5
  %8 = ptrtoint ptr %shaper_bs.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shaper_bs.i, align 1
  %port_to_shaper_credits.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 6
  %10 = ptrtoint ptr %port_to_shaper_credits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_to_shaper_credits.i, align 4
  %ing_timestamp_inc.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 7
  %12 = ptrtoint ptr %ing_timestamp_inc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ing_timestamp_inc.i, align 4
  %egr_timestamp_inc.i = getelementptr [4 x %struct.mlxsw_sp1_ptp_shaper_params], ptr @mlxsw_sp1_ptp_shaper_params, i32 0, i32 %i.059.i, i32 8
  %14 = ptrtoint ptr %egr_timestamp_inc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %egr_timestamp_inc.i, align 4
  %16 = call ptr @memset(ptr %qpsc_pl.i, i32 0, i32 40)
  %and6.i.i.i.i = and i32 %1, 15
  %17 = ptrtoint ptr %qpsc_pl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qpsc_pl.i, align 4
  %and7.i.i.i.i = and i32 %18, -16
  %or.i.i.i.i = or i32 %and6.i.i.i.i, %and7.i.i.i.i
  store i32 %or.i.i.i.i, ptr %qpsc_pl.i, align 4
  %conv1.i.i = zext i8 %3 to i32
  %spec.select.i.i33.i.i = shl nuw nsw i32 %conv1.i.i, 16
  %and6.i.i38.i.i = and i32 %spec.select.i.i33.i.i, 983040
  %19 = ptrtoint ptr %arrayidx.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i39.i.i, align 4
  %and7.i.i41.i.i = and i32 %20, -983072
  %or.i.i42.i.i = or i32 %and6.i.i38.i.i, %and7.i.i41.i.i
  %21 = and i8 %5, 31
  %and6.i.i66.i.i = zext i8 %21 to i32
  %or.i.i70.i.i = or i32 %or.i.i42.i.i, %and6.i.i66.i.i
  %22 = ptrtoint ptr %arrayidx.i.i67.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i70.i.i, ptr %arrayidx.i.i67.i.i, align 4
  %23 = and i8 %7, 31
  %and6.i.i94.i.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %arrayidx.i.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i95.i.i, align 4
  %and7.i.i97.i.i = and i32 %25, -32
  %or.i.i98.i.i = or i32 %and7.i.i97.i.i, %and6.i.i94.i.i
  store i32 %or.i.i98.i.i, ptr %arrayidx.i.i95.i.i, align 4
  %26 = and i8 %9, 63
  %and6.i.i122.i.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %arrayidx.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i123.i.i, align 4
  %and7.i.i125.i.i = and i32 %28, -64
  %or.i.i126.i.i = or i32 %and7.i.i125.i.i, %and6.i.i122.i.i
  store i32 %or.i.i126.i.i, ptr %arrayidx.i.i123.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i150.i.i, align 4
  %conv5.i.i = zext i8 %11 to i32
  %or.i.i153.i.i = and i32 %30, 2147483392
  %and7.i.i180.i.i = or i32 %or.i.i153.i.i, %conv5.i.i
  %or.i.i181.i.i = or i32 %and7.i.i180.i.i, -2147483648
  %31 = ptrtoint ptr %arrayidx.i.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i.i181.i.i, ptr %arrayidx.i.i178.i.i, align 4
  %32 = ptrtoint ptr %arrayidx.i.i206.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %13, ptr %arrayidx.i.i206.i.i, align 4
  %33 = ptrtoint ptr %arrayidx.i.i234.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %15, ptr %arrayidx.i.i234.i.i, align 4
  %34 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %35, ptr noundef nonnull @mlxsw_reg_qpsc, ptr noundef nonnull %qpsc_pl.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %inc.i = add nuw nsw i32 %i.059.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %mlxsw_sp1_ptp_shaper_params_set.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

mlxsw_sp1_ptp_shaper_params_set.exit:             ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qpsc_pl.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %mlxsw_sp1_ptp_shaper_params_set.exit
  call void @__sanitizer_cov_trace_pc() #16
  %36 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp1_ptp_shaper_params_set.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 380) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mlxsw_sp, ptr %call7.i.i, align 8
  %unmatched_lock = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %unmatched_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlxsw_sp1_ptp_init.__key, i16 noundef signext 3) #14
  %unmatched_ht = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 1
  %call9 = call i32 @rhltable_init(ptr noundef %unmatched_ht, ptr noundef nonnull @mlxsw_sp1_ptp_unmatched_ht_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.err_hashtable_init_crit_edge

if.end6.err_hashtable_init_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hashtable_init

if.end12:                                         ; preds = %if.end6
  %call13 = call fastcc i32 @mlxsw_sp_ptp_mtptpt_set(ptr noundef %mlxsw_sp, i32 noundef 0, i16 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_mtptpt_set_crit_edge

if.end12.err_mtptpt_set_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_mtptpt_set

if.end16:                                         ; preds = %if.end12
  %call18 = call fastcc i32 @mlxsw_sp_ptp_mtptpt_set(ptr noundef %mlxsw_sp, i32 noundef 1, i16 noundef zeroext -16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.err_mtptpt1_set_crit_edge

if.end16.err_mtptpt1_set_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_mtptpt1_set

if.end21:                                         ; preds = %if.end16
  %call22 = call fastcc i32 @mlxsw_sp1_ptp_set_fifo_clr_on_trap(ptr noundef %mlxsw_sp, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body27, label %err_fifo_clr

do.body27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %ht_gc_dw = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 3
  call void @__init_work(ptr noundef %ht_gc_dw, i32 noundef 0) #14
  %39 = ptrtoint ptr %ht_gc_dw to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %ht_gc_dw, align 4
  %lockdep_map = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @mlxsw_sp1_ptp_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry34 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %40 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry34, ptr %entry34, align 8
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mlxsw_sp1_ptp_ht_gc, ptr %func, align 8
  %timer = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @mlxsw_sp1_ptp_init.__key.13) #14
  %call46 = call i32 @mlxsw_core_schedule_dw(ptr noundef %ht_gc_dw, i32 noundef 500) #14
  br label %cleanup

err_fifo_clr:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %call47 = call fastcc i32 @mlxsw_sp_ptp_mtptpt_set(ptr noundef %mlxsw_sp, i32 noundef 1, i16 noundef zeroext 0)
  br label %err_mtptpt1_set

err_mtptpt1_set:                                  ; preds = %err_fifo_clr, %if.end16.err_mtptpt1_set_crit_edge
  %err.0 = phi i32 [ %call18, %if.end16.err_mtptpt1_set_crit_edge ], [ %call22, %err_fifo_clr ]
  %call48 = call fastcc i32 @mlxsw_sp_ptp_mtptpt_set(ptr noundef %mlxsw_sp, i32 noundef 0, i16 noundef zeroext 0)
  br label %err_mtptpt_set

err_mtptpt_set:                                   ; preds = %err_mtptpt1_set, %if.end12.err_mtptpt_set_crit_edge
  %err.1 = phi i32 [ %call13, %if.end12.err_mtptpt_set_crit_edge ], [ %err.0, %err_mtptpt1_set ]
  call void @rhashtable_free_and_destroy(ptr noundef %unmatched_ht, ptr noundef null, ptr noundef null) #14
  br label %err_hashtable_init

err_hashtable_init:                               ; preds = %err_mtptpt_set, %if.end6.err_hashtable_init_crit_edge
  %err.2 = phi i32 [ %call9, %if.end6.err_hashtable_init_crit_edge ], [ %err.1, %err_mtptpt_set ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %43 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_hashtable_init, %do.body27, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %36, %if.then ], [ %43, %err_hashtable_init ], [ %call7.i.i, %do.body27 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhltable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_ptp_mtptpt_set(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %trap_id, i16 noundef zeroext %message_type) unnamed_addr #0 align 64 {
entry:
  %mtptpt_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mtptpt_pl) #14
  %0 = ptrtoint ptr %mtptpt_pl to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mtptpt_pl, align 8
  %and6.i.i.i = and i32 %trap_id, 15
  store i32 %and6.i.i.i, ptr %mtptpt_pl, align 8
  %conv1.i = zext i16 %message_type to i32
  %arrayidx.i.i28.i = getelementptr inbounds i32, ptr %mtptpt_pl, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i28.i, align 4
  %and7.i.i30.i = and i32 %2, -65536
  %or.i.i31.i = or i32 %and7.i.i30.i, %conv1.i
  store i32 %or.i.i31.i, ptr %arrayidx.i.i28.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %4, ptr noundef nonnull @mlxsw_reg_mtptpt, ptr noundef nonnull %mtptpt_pl) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mtptpt_pl) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp1_ptp_set_fifo_clr_on_trap(ptr nocapture noundef readonly %mlxsw_sp, i1 noundef zeroext %clr) unnamed_addr #0 align 64 {
entry:
  %mogcr_pl = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mogcr_pl) #14
  %0 = call ptr @memset(ptr %mogcr_pl, i32 0, i32 32)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %1 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %2, ptr noundef nonnull @mlxsw_reg_mogcr, ptr noundef nonnull %mogcr_pl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i1 %clr to i32
  %spec.select.i.i = select i1 %clr, i32 2, i32 0
  %3 = ptrtoint ptr %mogcr_pl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mogcr_pl, align 4
  %and7.i.i = and i32 %4, -4
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %or.i.i40 = or i32 %or.i.i, %conv
  store i32 %or.i.i40, ptr %mogcr_pl, align 4
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %call8 = call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_mogcr, ptr noundef nonnull %mogcr_pl) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mogcr_pl) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_ptp_ht_gc(ptr noundef %work) #0 align 64 {
entry:
  %iter = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #14
  %0 = call ptr @memset(ptr %iter, i32 255, i32 36)
  %add.ptr = getelementptr i8, ptr %work, i32 -276
  %gc_cycle1 = getelementptr i8, ptr %work, i32 100
  %1 = ptrtoint ptr %gc_cycle1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gc_cycle1, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %gc_cycle1, align 4
  %unmatched_ht = getelementptr i8, ptr %work, i32 -272
  call void @rhashtable_walk_enter(ptr noundef %unmatched_ht, ptr noundef nonnull %iter) #14
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter) #14
  %call214 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #14
  %tobool.not15 = icmp eq ptr %call214, null
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %unmatched_lock.i = getelementptr i8, ptr %work, i32 -44
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call216 = phi ptr [ %call214, %while.body.lr.ph ], [ %call2, %while.cond.backedge.while.body_crit_edge ]
  %cmp.i = icmp ugt ptr %call216, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %gc_cycle4 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call216, i32 0, i32 5
  %3 = ptrtoint ptr %gc_cycle4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gc_cycle4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not = icmp ugt i32 %4, %2
  br i1 %cmp.not, label %if.end.while.cond.backedge_crit_edge, label %if.then5

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then5:                                         ; preds = %if.end
  call fastcc void @local_bh_disable() #14
  call void @_raw_spin_lock(ptr noundef %unmatched_lock.i) #14
  %ht_node.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call216, i32 0, i32 1
  %call.i13 = call fastcc i32 @rhltable_remove(ptr noundef %unmatched_ht, ptr noundef %ht_node.i, [7 x i32] [i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0]) #14
  call void @_raw_spin_unlock(ptr noundef %unmatched_lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.mlxsw_sp1_ptp_ht_gc_collect.exit_crit_edge

if.then5.mlxsw_sp1_ptp_ht_gc_collect.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp1_ptp_ht_gc_collect.exit

if.end.i:                                         ; preds = %if.then5
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %call216 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call216, align 8
  %idxprom.i = zext i16 %10 to i32
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then3.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %ingress.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_key, ptr %call216, i32 0, i32 4
  %13 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ingress.i, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  %stats6.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %12, i32 0, i32 17, i32 4
  %tx_gcd.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %12, i32 0, i32 17, i32 4, i32 1
  %cond.i = select i1 %tobool5.not.i, ptr %tx_gcd.i, ptr %stats6.i
  %skb.i = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %call216, i32 0, i32 3
  %15 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb.i, align 8
  %tobool9.not.i = icmp eq ptr %16, null
  %timestamps.i = getelementptr inbounds %struct.mlxsw_sp_ptp_port_dir_stats, ptr %cond.i, i32 0, i32 1
  %cond.sink32.i = select i1 %tobool9.not.i, ptr %timestamps.i, ptr %cond.i
  %17 = ptrtoint ptr %cond.sink32.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cond.sink32.i, align 8
  %inc.i = add i64 %18, 1
  store i64 %inc.i, ptr %cond.sink32.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then3.i, %if.end.i.if.end13.i_crit_edge
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  call fastcc void @mlxsw_sp1_ptp_unmatched_finish(ptr noundef %20, ptr noundef nonnull %call216) #14
  br label %mlxsw_sp1_ptp_ht_gc_collect.exit

mlxsw_sp1_ptp_ht_gc_collect.exit:                 ; preds = %if.end13.i, %if.then5.mlxsw_sp1_ptp_ht_gc_collect.exit_crit_edge
  call fastcc void @local_bh_enable() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %mlxsw_sp1_ptp_ht_gc_collect.exit, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call2 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #14
  call void @rhashtable_walk_exit(ptr noundef nonnull %iter) #14
  %call7 = call i32 @mlxsw_core_schedule_dw(ptr noundef %work, i32 noundef 500) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_ptp_fini(ptr noundef %ptp_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptp_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_state, align 4
  %ht_gc_dw = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %ptp_state, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ht_gc_dw) #14
  %call2 = tail call fastcc i32 @mlxsw_sp1_ptp_mtpppc_set(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %call3 = tail call fastcc i32 @mlxsw_sp1_ptp_set_fifo_clr_on_trap(ptr noundef %1, i1 noundef zeroext false)
  %call4 = tail call fastcc i32 @mlxsw_sp_ptp_mtptpt_set(ptr noundef %1, i32 noundef 1, i16 noundef zeroext 0)
  %call5 = tail call fastcc i32 @mlxsw_sp_ptp_mtptpt_set(ptr noundef %1, i32 noundef 0, i16 noundef zeroext 0)
  %unmatched_ht = getelementptr inbounds %struct.mlxsw_sp_ptp_state, ptr %ptp_state, i32 0, i32 1
  tail call void @rhashtable_free_and_destroy(ptr noundef %unmatched_ht, ptr noundef nonnull @mlxsw_sp1_ptp_unmatched_free_fn, ptr noundef null) #14
  tail call void @kfree(ptr noundef %ptp_state) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp1_ptp_mtpppc_set(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %ing_types, i16 noundef zeroext %egr_types) unnamed_addr #0 align 64 {
entry:
  %mtpppc_pl = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mtpppc_pl) #14
  %0 = call ptr @memset(ptr %mtpppc_pl, i32 0, i32 40)
  %conv1.i = zext i16 %ing_types to i32
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mtpppc_pl, i32 2
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %2, -65536
  %or.i.i.i = or i32 %and7.i.i.i, %conv1.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %conv2.i = zext i16 %egr_types to i32
  %arrayidx.i.i29.i = getelementptr inbounds i32, ptr %mtpppc_pl, i32 3
  %3 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i29.i, align 4
  %and7.i.i31.i = and i32 %4, -65536
  %or.i.i32.i = or i32 %and7.i.i31.i, %conv2.i
  store i32 %or.i.i32.i, ptr %arrayidx.i.i29.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_mtpppc, ptr noundef nonnull %mtpppc_pl) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mtpppc_pl) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_ptp_unmatched_free_fn(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %tobool2.not = icmp eq ptr %ptr, null
  br i1 %tobool2.not, label %do.body.if.end5_crit_edge, label %do.end

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %rcu = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %ptr, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 16 to ptr)) #14
  br label %if.end5

if.end5:                                          ; preds = %do.end, %do.body.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp1_ptp_hwtstamp_get(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef writeonly %config) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hwtstamp_config = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 1
  %0 = call ptr @memcpy(ptr %config, ptr %hwtstamp_config, i32 12)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_ptp_shaper_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1024
  %ing_types.i = getelementptr i8, ptr %work, i32 112
  %0 = ptrtoint ptr %ing_types.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ing_types.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %mlxsw_sp1_ptp_hwtstamp_enabled.exit, label %if.end

mlxsw_sp1_ptp_hwtstamp_enabled.exit:              ; preds = %entry
  %egr_types.i = getelementptr i8, ptr %work, i32 114
  %2 = ptrtoint ptr %egr_types.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %egr_types.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool3.i.not = icmp eq i16 %3, 0
  br i1 %tobool3.i.not, label %mlxsw_sp1_ptp_hwtstamp_enabled.exit.cleanup_crit_edge, label %mlxsw_sp1_ptp_hwtstamp_enabled.exit.i

mlxsw_sp1_ptp_hwtstamp_enabled.exit.cleanup_crit_edge: ; preds = %mlxsw_sp1_ptp_hwtstamp_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #14
  %4 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %speed.i, align 4, !annotation !204
  br label %if.end.i

mlxsw_sp1_ptp_hwtstamp_enabled.exit.i:            ; preds = %mlxsw_sp1_ptp_hwtstamp_enabled.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #14
  %5 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %speed.i, align 4, !annotation !204
  %6 = ptrtoint ptr %egr_types.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %egr_types.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.i.not.i = icmp eq i16 %7, 0
  br i1 %tobool3.i.not.i, label %if.then.i, label %mlxsw_sp1_ptp_hwtstamp_enabled.exit.i.if.end.i_crit_edge

mlxsw_sp1_ptp_hwtstamp_enabled.exit.i.if.end.i_crit_edge: ; preds = %mlxsw_sp1_ptp_hwtstamp_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %mlxsw_sp1_ptp_hwtstamp_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call fastcc i32 @mlxsw_sp1_ptp_port_shaper_set(ptr noundef %add.ptr, i1 noundef zeroext false) #14
  br label %mlxsw_sp1_ptp_port_shaper_check.exit

if.end.i:                                         ; preds = %mlxsw_sp1_ptp_hwtstamp_enabled.exit.i.if.end.i_crit_edge, %if.end
  %call2.i = call i32 @mlxsw_sp_port_speed_get(ptr noundef %add.ptr, ptr noundef nonnull %speed.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i9 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i9, label %for.cond.preheader.i, label %mlxsw_sp1_ptp_port_shaper_check.exit.thread

mlxsw_sp1_ptp_port_shaper_check.exit.thread:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #14
  br label %if.then3

for.cond.preheader.i:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.cond.3.i [
    i32 100, label %for.cond.preheader.i.for.end.i_crit_edge
    i32 1000, label %for.cond.preheader.i.for.end.i_crit_edge12
    i32 10000, label %for.cond.preheader.i.for.end.i_crit_edge13
    i32 25000, label %for.cond.preheader.i.for.end.i_crit_edge14
  ]

for.cond.preheader.i.for.end.i_crit_edge14:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.preheader.i.for.end.i_crit_edge13:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.preheader.i.for.end.i_crit_edge12:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.3.i, %for.cond.preheader.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge12, %for.cond.preheader.i.for.end.i_crit_edge13, %for.cond.preheader.i.for.end.i_crit_edge14
  %cmp.lcssa.i = phi i1 [ true, %for.cond.preheader.i.for.end.i_crit_edge ], [ false, %for.cond.3.i ], [ true, %for.cond.preheader.i.for.end.i_crit_edge12 ], [ true, %for.cond.preheader.i.for.end.i_crit_edge13 ], [ true, %for.cond.preheader.i.for.end.i_crit_edge14 ]
  %call9.i = call fastcc i32 @mlxsw_sp1_ptp_port_shaper_set(ptr noundef %add.ptr, i1 noundef zeroext %cmp.lcssa.i) #14
  br label %mlxsw_sp1_ptp_port_shaper_check.exit

mlxsw_sp1_ptp_port_shaper_check.exit:             ; preds = %for.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call9.i, %for.end.i ], [ %call1.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %mlxsw_sp1_ptp_port_shaper_check.exit.cleanup_crit_edge, label %mlxsw_sp1_ptp_port_shaper_check.exit.if.then3_crit_edge

mlxsw_sp1_ptp_port_shaper_check.exit.if.then3_crit_edge: ; preds = %mlxsw_sp1_ptp_port_shaper_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

mlxsw_sp1_ptp_port_shaper_check.exit.cleanup_crit_edge: ; preds = %mlxsw_sp1_ptp_port_shaper_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %mlxsw_sp1_ptp_port_shaper_check.exit.if.then3_crit_edge, %mlxsw_sp1_ptp_port_shaper_check.exit.thread
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.15) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %mlxsw_sp1_ptp_port_shaper_check.exit.cleanup_crit_edge, %mlxsw_sp1_ptp_hwtstamp_enabled.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp1_ptp_hwtstamp_set(ptr noundef %mlxsw_sp_port, ptr nocapture noundef %config) local_unnamed_addr #0 align 64 {
entry:
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_filter1.i = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %rx_filter1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_filter1.i, align 4
  %tx_type2.i = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %tx_type2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_type2.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %3, label %sw.default.i [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb3.i
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %entry.cleanup_crit_edge44
  ]

entry.cleanup_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb3.i, %entry.sw.epilog.i_crit_edge
  %tobool3.i.not.i = phi i1 [ false, %sw.bb3.i ], [ true, %entry.sw.epilog.i_crit_edge ]
  %egr_types.0.i = phi i16 [ 255, %sw.bb3.i ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %5 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %1, label %sw.default11.i [
    i32 0, label %sw.epilog.i.if.end_crit_edge
    i32 4, label %sw.epilog.i.sw.bb6.i_crit_edge
    i32 7, label %sw.epilog.i.sw.bb6.i_crit_edge45
    i32 10, label %sw.epilog.i.sw.bb6.i_crit_edge46
    i32 13, label %sw.epilog.i.sw.bb6.i_crit_edge47
    i32 5, label %sw.epilog.i.sw.bb7.i_crit_edge
    i32 8, label %sw.epilog.i.sw.bb7.i_crit_edge48
    i32 11, label %sw.epilog.i.sw.bb7.i_crit_edge49
    i32 14, label %sw.epilog.i.sw.bb7.i_crit_edge50
    i32 3, label %sw.epilog.i.sw.bb8.i_crit_edge
    i32 6, label %sw.epilog.i.sw.bb8.i_crit_edge51
    i32 9, label %sw.epilog.i.sw.bb8.i_crit_edge52
    i32 12, label %sw.epilog.i.sw.bb8.i_crit_edge53
    i32 1, label %sw.bb9.i
    i32 2, label %sw.epilog.i.cleanup_crit_edge
    i32 15, label %sw.epilog.i.cleanup_crit_edge54
  ]

sw.epilog.i.cleanup_crit_edge54:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.i.sw.bb8.i_crit_edge53:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8.i

sw.epilog.i.sw.bb8.i_crit_edge52:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8.i

sw.epilog.i.sw.bb8.i_crit_edge51:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8.i

sw.epilog.i.sw.bb8.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb8.i

sw.epilog.i.sw.bb7.i_crit_edge50:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge49:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge48:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7.i

sw.epilog.i.sw.bb6.i_crit_edge47:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6.i

sw.epilog.i.sw.bb6.i_crit_edge46:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6.i

sw.epilog.i.sw.bb6.i_crit_edge45:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6.i

sw.epilog.i.sw.bb6.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6.i

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.bb6.i:                                         ; preds = %sw.epilog.i.sw.bb6.i_crit_edge, %sw.epilog.i.sw.bb6.i_crit_edge45, %sw.epilog.i.sw.bb6.i_crit_edge46, %sw.epilog.i.sw.bb6.i_crit_edge47
  br label %if.end

sw.bb7.i:                                         ; preds = %sw.epilog.i.sw.bb7.i_crit_edge, %sw.epilog.i.sw.bb7.i_crit_edge48, %sw.epilog.i.sw.bb7.i_crit_edge49, %sw.epilog.i.sw.bb7.i_crit_edge50
  br label %if.end

sw.bb8.i:                                         ; preds = %sw.epilog.i.sw.bb8.i_crit_edge, %sw.epilog.i.sw.bb8.i_crit_edge51, %sw.epilog.i.sw.bb8.i_crit_edge52, %sw.epilog.i.sw.bb8.i_crit_edge53
  br label %if.end

sw.bb9.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.default11.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.epilog.i.if.end_crit_edge
  %tobool.not.i.i = phi i1 [ false, %sw.bb9.i ], [ false, %sw.bb8.i ], [ false, %sw.bb7.i ], [ false, %sw.bb6.i ], [ true, %sw.epilog.i.if.end_crit_edge ]
  %ing_types.0.i = phi i16 [ 255, %sw.bb9.i ], [ 15, %sw.bb8.i ], [ 2, %sw.bb7.i ], [ 1, %sw.bb6.i ], [ 0, %sw.epilog.i.if.end_crit_edge ]
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %6 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp1.i, align 8
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.i, align 4
  %call106.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call106.i)
  %cmp107.i = icmp ugt i32 %call106.i, 1
  br i1 %cmp107.i, label %if.end.for.body.i_crit_edge, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.0112.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end.for.body.i_crit_edge ]
  %orig_egr_types.0111.i = phi i16 [ %orig_egr_types.1103.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %orig_ing_types.0110.i = phi i16 [ %orig_ing_types.1102.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %egr_types.addr.0109.i = phi i16 [ %egr_types.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %egr_types.0.i, %if.end.for.body.i_crit_edge ]
  %ing_types.addr.0108.i = phi i16 [ %ing_types.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %ing_types.0.i, %if.end.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.0112.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %ing_types2.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %13, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %ing_types2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ing_types2.i, align 8
  %or91.i = or i16 %15, %orig_ing_types.0110.i
  %egr_types6.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %13, i32 0, i32 17, i32 3
  %16 = ptrtoint ptr %egr_types6.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %egr_types6.i, align 2
  %or992.i = or i16 %17, %orig_egr_types.0111.i
  %cmp12.not.i = icmp eq ptr %13, %mlxsw_sp_port
  br i1 %cmp12.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then14.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %or1989.i = or i16 %15, %ing_types.addr.0108.i
  %or2590.i = or i16 %17, %egr_types.addr.0109.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %orig_egr_types.1103.i = phi i16 [ %or992.i, %if.then14.i ], [ %or992.i, %if.end.i.for.inc.i_crit_edge ], [ %orig_egr_types.0111.i, %for.body.i.for.inc.i_crit_edge ]
  %orig_ing_types.1102.i = phi i16 [ %or91.i, %if.then14.i ], [ %or91.i, %if.end.i.for.inc.i_crit_edge ], [ %orig_ing_types.0110.i, %for.body.i.for.inc.i_crit_edge ]
  %ing_types.addr.1.i = phi i16 [ %or1989.i, %if.then14.i ], [ %ing_types.addr.0108.i, %if.end.i.for.inc.i_crit_edge ], [ %ing_types.addr.0108.i, %for.body.i.for.inc.i_crit_edge ]
  %egr_types.addr.1.i = phi i16 [ %or2590.i, %if.then14.i ], [ %egr_types.addr.0109.i, %if.end.i.for.inc.i_crit_edge ], [ %egr_types.addr.0109.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.0112.i, 1
  %18 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core.i, align 4
  %call.i = tail call i32 @mlxsw_core_max_ports(ptr noundef %19) #14
  %cmp.i = icmp ult i32 %inc.i, %call.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %ing_types.addr.0.lcssa.i = phi i16 [ %ing_types.0.i, %if.end.for.end.i_crit_edge ], [ %ing_types.addr.1.i, %for.inc.i.for.end.i_crit_edge ]
  %egr_types.addr.0.lcssa.i = phi i16 [ %egr_types.0.i, %if.end.for.end.i_crit_edge ], [ %egr_types.addr.1.i, %for.inc.i.for.end.i_crit_edge ]
  %orig_ing_types.0.lcssa.i = phi i16 [ 0, %if.end.for.end.i_crit_edge ], [ %orig_ing_types.1102.i, %for.inc.i.for.end.i_crit_edge ]
  %orig_egr_types.0.lcssa.i = phi i16 [ 0, %if.end.for.end.i_crit_edge ], [ %orig_egr_types.1103.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ing_types.addr.0.lcssa.i)
  %tobool29.not.i = icmp ne i16 %ing_types.addr.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %egr_types.addr.0.lcssa.i)
  %tobool31.not.i = icmp ne i16 %egr_types.addr.0.lcssa.i, 0
  %or.cond93.i = select i1 %tobool29.not.i, i1 true, i1 %tobool31.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %orig_ing_types.0.lcssa.i)
  %tobool34.not.i = icmp eq i16 %orig_ing_types.0.lcssa.i, 0
  %or.cond94.i = select i1 %or.cond93.i, i1 %tobool34.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %orig_egr_types.0.lcssa.i)
  %tobool37.not.i = icmp eq i16 %orig_egr_types.0.lcssa.i, 0
  %or.cond95.i = select i1 %or.cond94.i, i1 %tobool37.not.i, i1 false
  br i1 %or.cond95.i, label %if.then38.i, label %for.end.i.if.end43.i_crit_edge

for.end.i.if.end43.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.then38.i:                                      ; preds = %for.end.i
  %call39.i = tail call i32 @mlxsw_sp_parsing_depth_inc(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then38.i.if.end43.i_crit_edge, label %mlxsw_sp1_ptp_mtpppc_update.exit.thread

if.then38.i.if.end43.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

mlxsw_sp1_ptp_mtpppc_update.exit.thread:          ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mlxsw_sp_port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.92) #19
  br label %cleanup

if.end43.i:                                       ; preds = %if.then38.i.if.end43.i_crit_edge, %for.end.i.if.end43.i_crit_edge
  %or.cond97.i = select i1 %tobool34.not.i, i1 %tobool37.not.i, i1 false
  %or.cond105.i = select i1 %or.cond93.i, i1 true, i1 %or.cond97.i
  br i1 %or.cond105.i, label %if.end43.i.mlxsw_sp1_ptp_mtpppc_update.exit_crit_edge, label %if.then55.i

if.end43.i.mlxsw_sp1_ptp_mtpppc_update.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp1_ptp_mtpppc_update.exit

if.then55.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mlxsw_sp_parsing_depth_dec(ptr noundef %7) #14
  br label %mlxsw_sp1_ptp_mtpppc_update.exit

mlxsw_sp1_ptp_mtpppc_update.exit:                 ; preds = %if.then55.i, %if.end43.i.mlxsw_sp1_ptp_mtpppc_update.exit_crit_edge
  %22 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mlxsw_sp1.i, align 8
  %call58.i = tail call fastcc i32 @mlxsw_sp1_ptp_mtpppc_set(ptr noundef %23, i16 noundef zeroext %ing_types.addr.0.lcssa.i, i16 noundef zeroext %egr_types.addr.0.lcssa.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool2.not = icmp eq i32 %call58.i, 0
  br i1 %tobool2.not, label %if.end4, label %mlxsw_sp1_ptp_mtpppc_update.exit.cleanup_crit_edge

mlxsw_sp1_ptp_mtpppc_update.exit.cleanup_crit_edge: ; preds = %mlxsw_sp1_ptp_mtpppc_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %mlxsw_sp1_ptp_mtpppc_update.exit
  %hwtstamp_config = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 1
  %24 = call ptr @memcpy(ptr %hwtstamp_config, ptr %config, i32 12)
  %ing_types6 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %ing_types6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %ing_types.0.i, ptr %ing_types6, align 8
  %egr_types8 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 3
  %26 = ptrtoint ptr %egr_types8 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %egr_types.0.i, ptr %egr_types8, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #14
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %speed.i, align 4, !annotation !204
  %or.cond = and i1 %tobool3.i.not.i, %tobool.not.i.i
  br i1 %or.cond, label %if.then.i, label %if.end.i30

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call fastcc i32 @mlxsw_sp1_ptp_port_shaper_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false) #14
  br label %mlxsw_sp1_ptp_port_shaper_check.exit

if.end.i30:                                       ; preds = %if.end4
  %call2.i = call i32 @mlxsw_sp_port_speed_get(ptr noundef %mlxsw_sp_port, ptr noundef nonnull %speed.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i29 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i29, label %for.cond.preheader.i, label %mlxsw_sp1_ptp_port_shaper_check.exit.thread

mlxsw_sp1_ptp_port_shaper_check.exit.thread:      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i30
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %29, label %for.cond.3.i [
    i32 100, label %for.cond.preheader.i.for.end.i31_crit_edge
    i32 1000, label %for.cond.preheader.i.for.end.i31_crit_edge55
    i32 10000, label %for.cond.preheader.i.for.end.i31_crit_edge56
    i32 25000, label %for.cond.preheader.i.for.end.i31_crit_edge57
  ]

for.cond.preheader.i.for.end.i31_crit_edge57:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i31

for.cond.preheader.i.for.end.i31_crit_edge56:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i31

for.cond.preheader.i.for.end.i31_crit_edge55:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i31

for.cond.preheader.i.for.end.i31_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i31

for.cond.3.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i31

for.end.i31:                                      ; preds = %for.cond.3.i, %for.cond.preheader.i.for.end.i31_crit_edge, %for.cond.preheader.i.for.end.i31_crit_edge55, %for.cond.preheader.i.for.end.i31_crit_edge56, %for.cond.preheader.i.for.end.i31_crit_edge57
  %cmp.lcssa.i = phi i1 [ true, %for.cond.preheader.i.for.end.i31_crit_edge ], [ false, %for.cond.3.i ], [ true, %for.cond.preheader.i.for.end.i31_crit_edge55 ], [ true, %for.cond.preheader.i.for.end.i31_crit_edge56 ], [ true, %for.cond.preheader.i.for.end.i31_crit_edge57 ]
  %call9.i = call fastcc i32 @mlxsw_sp1_ptp_port_shaper_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %cmp.lcssa.i) #14
  br label %mlxsw_sp1_ptp_port_shaper_check.exit

mlxsw_sp1_ptp_port_shaper_check.exit:             ; preds = %for.end.i31, %if.then.i
  %retval.0.i32 = phi i32 [ %call9.i, %for.end.i31 ], [ %call1.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i32)
  %tobool10.not = icmp eq i32 %retval.0.i32, 0
  br i1 %tobool10.not, label %if.end12, label %mlxsw_sp1_ptp_port_shaper_check.exit.cleanup_crit_edge

mlxsw_sp1_ptp_port_shaper_check.exit.cleanup_crit_edge: ; preds = %mlxsw_sp1_ptp_port_shaper_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %mlxsw_sp1_ptp_port_shaper_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %rx_filter1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %1, ptr %rx_filter1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %mlxsw_sp1_ptp_port_shaper_check.exit.cleanup_crit_edge, %mlxsw_sp1_ptp_port_shaper_check.exit.thread, %mlxsw_sp1_ptp_mtpppc_update.exit.cleanup_crit_edge, %mlxsw_sp1_ptp_mtpppc_update.exit.thread, %sw.default11.i, %sw.epilog.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge54, %sw.default.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge44
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call58.i, %mlxsw_sp1_ptp_mtpppc_update.exit.cleanup_crit_edge ], [ %retval.0.i32, %mlxsw_sp1_ptp_port_shaper_check.exit.cleanup_crit_edge ], [ %call39.i, %mlxsw_sp1_ptp_mtpppc_update.exit.thread ], [ %call2.i, %mlxsw_sp1_ptp_port_shaper_check.exit.thread ], [ -34, %sw.epilog.i.cleanup_crit_edge ], [ -34, %sw.epilog.i.cleanup_crit_edge54 ], [ -34, %entry.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge44 ], [ -22, %sw.default11.i ], [ -22, %sw.default.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp1_ptp_get_ts_info(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %clock = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 19
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 4
  %ptp = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp, align 4
  %call = tail call i32 @ptp_clock_index(ptr noundef %3) #14
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %phc_index, align 4
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 69, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp1_get_stats_count() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_get_stats_strings(ptr nocapture noundef %p) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %2 = call ptr @memcpy(ptr %1, ptr @mlxsw_sp_ptp_port_stats, i32 32)
  %3 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  store ptr %add.ptr, ptr %p, align 4
  %4 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([4 x %struct.mlxsw_sp_ptp_port_stat], ptr @mlxsw_sp_ptp_port_stats, i32 0, i32 1), i32 32)
  %5 = load ptr, ptr %p, align 4
  %add.ptr.1 = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr.1, ptr %p, align 4
  %6 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([4 x %struct.mlxsw_sp_ptp_port_stat], ptr @mlxsw_sp_ptp_port_stats, i32 0, i32 2), i32 32)
  %7 = load ptr, ptr %p, align 4
  %add.ptr.2 = getelementptr i8, ptr %7, i32 32
  store ptr %add.ptr.2, ptr %p, align 4
  %8 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([4 x %struct.mlxsw_sp_ptp_port_stat], ptr @mlxsw_sp_ptp_port_stats, i32 0, i32 3), i32 32)
  %9 = load ptr, ptr %p, align 4
  %add.ptr.3 = getelementptr i8, ptr %9, i32 32
  store ptr %add.ptr.3, ptr %p, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp1_get_stats(ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef writeonly %data, i32 noundef %data_index) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 4
  %add.ptr = getelementptr i64, ptr %data, i32 %data_index
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats1, align 8
  %incdec.ptr = getelementptr i64, ptr %add.ptr, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %add.ptr, align 8
  %add.ptr3.1 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %add.ptr3.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr3.1, align 8
  %incdec.ptr.1 = getelementptr i64, ptr %incdec.ptr, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %incdec.ptr, align 8
  %add.ptr3.2 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 4, i32 1
  %6 = ptrtoint ptr %add.ptr3.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.2, align 8
  %incdec.ptr.2 = getelementptr i64, ptr %incdec.ptr.1, i32 1
  %8 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %incdec.ptr.1, align 8
  %add.ptr3.3 = getelementptr %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 17, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %add.ptr3.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr3.3, align 8
  %11 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %incdec.ptr.2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @__mlxsw_sp1_ptp_read_frc(ptr nocapture noundef readonly %clock, ptr noundef %sts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 8
  %call = tail call i32 @mlxsw_core_read_frc_h(ptr noundef %1) #14
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %ptp_read_system_postts.exit, label %ptp_read_system_postts.exit.thread

ptp_read_system_postts.exit:                      ; preds = %entry
  %call121 = tail call i32 @mlxsw_core_read_frc_l(ptr noundef %1) #14
  %call2 = tail call i32 @mlxsw_core_read_frc_h(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call2)
  %cmp.not = icmp eq i32 %call, %call2
  br i1 %cmp.not, label %ptp_read_system_postts.exit.if.end_crit_edge, label %ptp_read_system_prets.exit16.thread

ptp_read_system_postts.exit.if.end_crit_edge:     ; preds = %ptp_read_system_postts.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ptp_read_system_postts.exit.thread:               ; preds = %entry
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #14
  %call1 = tail call i32 @mlxsw_core_read_frc_l(ptr noundef %1) #14
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #14
  %call224 = tail call i32 @mlxsw_core_read_frc_h(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call224)
  %cmp.not25 = icmp eq i32 %call, %call224
  br i1 %cmp.not25, label %ptp_read_system_postts.exit.thread.if.end_crit_edge, label %if.then.i19

ptp_read_system_postts.exit.thread.if.end_crit_edge: ; preds = %ptp_read_system_postts.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ptp_read_system_prets.exit16.thread:              ; preds = %ptp_read_system_postts.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call332 = tail call i32 @mlxsw_core_read_frc_l(ptr noundef %1) #14
  br label %if.end

if.then.i19:                                      ; preds = %ptp_read_system_postts.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #14
  %call3 = tail call i32 @mlxsw_core_read_frc_l(ptr noundef %1) #14
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i19, %ptp_read_system_prets.exit16.thread, %ptp_read_system_postts.exit.thread.if.end_crit_edge, %ptp_read_system_postts.exit.if.end_crit_edge
  %call227 = phi i32 [ %call, %ptp_read_system_postts.exit.if.end_crit_edge ], [ %call, %ptp_read_system_postts.exit.thread.if.end_crit_edge ], [ %call2, %ptp_read_system_prets.exit16.thread ], [ %call224, %if.then.i19 ]
  %frc_l.0 = phi i32 [ %call121, %ptp_read_system_postts.exit.if.end_crit_edge ], [ %call1, %ptp_read_system_postts.exit.thread.if.end_crit_edge ], [ %call332, %ptp_read_system_prets.exit16.thread ], [ %call3, %if.then.i19 ]
  %conv = zext i32 %frc_l.0 to i64
  %conv4 = zext i32 %call227 to i64
  %shl = shl nuw i64 %conv4, 32
  %or = or i64 %shl, %conv
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_read_frc_h(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_read_frc_l(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ptp_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  %mtutc_pl.i = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %scaled_ppm, 1
  %conv.i = sext i32 %add.i to i64
  %mul.i = mul nsw i64 %conv.i, 125
  %shr.i = ashr i64 %mul.i, 13
  %conv1.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp = icmp slt i32 %conv1.i, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %conv1.i, i1 true)
  %nominal_c_mult = getelementptr i8, ptr %ptp, i32 -8
  %1 = ptrtoint ptr %nominal_c_mult to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nominal_c_mult, align 8
  %conv = zext i32 %2 to i64
  %conv131 = zext i32 %0 to i64
  %mul = mul nuw nsw i64 %conv, %conv131
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #18, !srcloc !205
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !206
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div158.i.i32 = lshr i64 %asmresult10.i.i.i, 29
  %conv3 = trunc i64 %div158.i.i32 to i32
  %lock = getelementptr i8, ptr %ptp, i32 -116
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tc = getelementptr i8, ptr %ptp, i32 -48
  %call4 = tail call i64 @timecounter_read(ptr noundef %tc) #14
  %5 = ptrtoint ptr %nominal_c_mult to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nominal_c_mult, align 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub6 = sub i32 %6, %conv3
  %mult.c30 = getelementptr i8, ptr %ptp, i32 -56
  %7 = ptrtoint ptr %mult.c30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub6, ptr %mult.c30, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %sub11 = sub nsw i32 0, %0
  br label %cond.end13

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %6, %conv3
  %mult.c = getelementptr i8, ptr %ptp, i32 -56
  %8 = ptrtoint ptr %mult.c to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %mult.c, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false, %cond.true
  %cond14 = phi i32 [ %sub11, %cond.true ], [ %conv1.i, %cond.false ]
  %add.ptr = getelementptr i8, ptr %ptp, i32 -120
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mtutc_pl.i) #14
  %11 = call ptr @memset(ptr %mtutc_pl.i, i32 255, i32 28)
  call fastcc void @mlxsw_reg_mtutc_pack(ptr noundef nonnull %mtutc_pl.i, i32 noundef 3, i32 noundef %cond14, i32 noundef 0) #14
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %10, ptr noundef nonnull @mlxsw_reg_mtutc, ptr noundef nonnull %mtutc_pl.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtutc_pl.i) #14
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -120
  %lock = getelementptr i8, ptr %ptp, i32 -116
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tc = getelementptr i8, ptr %ptp, i32 -48
  %nsec.i = getelementptr i8, ptr %ptp, i32 -32
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  %call = tail call i64 @timecounter_read(ptr noundef %tc) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %call3 = tail call fastcc i32 @mlxsw_sp1_ptp_phc_settime(ptr noundef %add.ptr, i64 noundef %call)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ptp_gettimex(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp3 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -120
  %lock = getelementptr i8, ptr %ptp, i32 -116
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %call = tail call fastcc i64 @__mlxsw_sp1_ptp_read_frc(ptr noundef %add.ptr, ptr noundef %sts)
  %tc = getelementptr i8, ptr %ptp, i32 -48
  %call1 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %call) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp3) #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp3, i64 noundef %call1) #14
  %0 = call ptr @memcpy(ptr %ts, ptr %tmp3, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
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
  %add.ptr = getelementptr i8, ptr %ptp, i32 -120
  %lock = getelementptr i8, ptr %ptp, i32 -116
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tc = getelementptr i8, ptr %ptp, i32 -48
  %cycles = getelementptr i8, ptr %ptp, i32 -72
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cycles, i64 noundef %retval.0.i) #14
  %call2 = tail call i64 @timecounter_read(ptr noundef %tc) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %call4 = tail call fastcc i32 @mlxsw_sp1_ptp_phc_settime(ptr noundef %add.ptr, i64 noundef %call2)
  ret i32 %call4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mtutc_pack(ptr nocapture noundef %payload, i32 noundef %oper, i32 noundef %freq_adj, i32 noundef %utc_sec) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memset(ptr %payload, i32 0, i32 28)
  %and6.i.i = and i32 %oper, 15
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -16
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %payload, align 4
  %arrayidx.i.i28 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %freq_adj, ptr %arrayidx.i.i28, align 4
  %arrayidx.i.i56 = getelementptr i32, ptr %payload, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %utc_sec, ptr %arrayidx.i.i56, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp1_ptp_phc_settime(ptr noundef %clock, i64 noundef %nsec) unnamed_addr #0 align 64 {
entry:
  %mtutc_pl = alloca [28 x i8], align 1
  %mtpps_pl = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mtutc_pl) #14
  %2 = call ptr @memset(ptr %mtutc_pl, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %mtpps_pl) #14
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %nsec, i32 0) #18, !srcloc !205
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %nsec, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !206
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div158.i.i26 = lshr i64 %asmresult10.i.i.i, 29
  %add = add nuw nsw i64 %div158.i.i26, 1
  %mul = mul i64 %add, 1000000000
  %lock = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %clock, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tc = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %clock, i32 0, i32 3
  %5 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tc, align 8
  %shift.i = getelementptr inbounds %struct.cyclecounter, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift.i, align 4
  %sh_prom.i = zext i32 %8 to i64
  %shl.i = shl i64 %mul, %sh_prom.i
  %mult.i = getelementptr inbounds %struct.cyclecounter, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mult.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !195

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %10
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %mlxsw_sp1_ptp_ns2cycles.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %shl.i) #18, !srcloc !207
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %11, 1
  br label %mlxsw_sp1_ptp_ns2cycles.exit

mlxsw_sp1_ptp_ns2cycles.exit:                     ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %12 = call ptr @memset(ptr %mtpps_pl, i32 0, i32 60)
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mtpps_pl, i32 8
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = and i32 %14, 2147479552
  %arrayidx.i.i57.i = getelementptr inbounds i32, ptr %mtpps_pl, i32 8
  %or.i.i60.i = or i32 %or.i.i.i, -2147483129
  %15 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i60.i, ptr %arrayidx.i.i57.i, align 4
  %arrayidx.i.i82.i = getelementptr inbounds i64, ptr %mtpps_pl, i32 5
  %16 = ptrtoint ptr %arrayidx.i.i82.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %dividend.addr.0.i.i.i, ptr %arrayidx.i.i82.i, align 8
  %call4 = call i32 @mlxsw_reg_write(ptr noundef %1, ptr noundef nonnull @mlxsw_reg_mtpps, ptr noundef nonnull %mtpps_pl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %mlxsw_sp1_ptp_ns2cycles.exit.cleanup_crit_edge

mlxsw_sp1_ptp_ns2cycles.exit.cleanup_crit_edge:   ; preds = %mlxsw_sp1_ptp_ns2cycles.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp1_ptp_ns2cycles.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i64 %add to i32
  call fastcc void @mlxsw_reg_mtutc_pack(ptr noundef nonnull %mtutc_pl, i32 noundef 0, i32 noundef 0, i32 noundef %conv)
  %call7 = call i32 @mlxsw_reg_write(ptr noundef %1, ptr noundef nonnull @mlxsw_reg_mtutc, ptr noundef nonnull %mtutc_pl) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlxsw_sp1_ptp_ns2cycles.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call4, %mlxsw_sp1_ptp_ns2cycles.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %mtpps_pl) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtutc_pl) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp1_ptp_unmatched_finish(ptr noundef %mlxsw_sp, ptr noundef %unmatched) unnamed_addr #0 align 64 {
entry:
  %hwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %unmatched, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %timestamp = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %unmatched, i32 0, i32 4
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %if.then6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %unmatched to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %unmatched, align 8
  %.elt31 = getelementptr inbounds [2 x i32], ptr %unmatched, i32 0, i32 1
  %5 = ptrtoint ptr %.elt31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack32 = load i32, ptr %.elt31, align 4
  %key.sroa.0.0.extract.shift.i = lshr i32 %.unpack, 16
  %key.sroa.0.0.extract.trunc.i = trunc i32 %key.sroa.0.0.extract.shift.i to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwtstamps.i) #14
  %clock.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 19
  %6 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock.i, align 4
  %lock.i = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %8 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock.i, align 4
  %tc.i = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %9, i32 0, i32 3
  %call.i = tail call i64 @timecounter_cyc2time(ptr noundef %tc.i, i64 noundef %3) #14
  %10 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock.i, align 4
  %lock3.i = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock3.i) #14
  %12 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %hwtstamps.i, align 8
  %13 = and i32 %.unpack32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mlxsw_sp, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %15, i32 %key.sroa.0.0.extract.shift.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then.if.then.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.then.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %18 = getelementptr inbounds %struct.anon.51, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %tobool1.not.i.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 8
  %cmp.i.i = icmp eq ptr %20, %22
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then.if.then.i.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %mlxsw_sp1_packet_timestamp.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call.i, ptr %hwtstamps.i.i.i, align 8
  tail call void @mlxsw_sp_rx_listener_no_mark_func(ptr noundef nonnull %1, i16 noundef zeroext %key.sroa.0.0.extract.trunc.i, ptr noundef %mlxsw_sp) #14
  br label %mlxsw_sp1_packet_timestamp.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @skb_tstamp_tx(ptr noundef nonnull %1, ptr noundef nonnull %hwtstamps.i) #14
  call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %mlxsw_sp1_packet_timestamp.exit

mlxsw_sp1_packet_timestamp.exit:                  ; preds = %if.else.i.i, %if.then3.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwtstamps.i) #14
  br label %do.body

if.then6:                                         ; preds = %land.lhs.true
  %26 = ptrtoint ptr %unmatched to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %unmatched, align 8
  %ingress = getelementptr inbounds %struct.mlxsw_sp1_ptp_key, ptr %unmatched, i32 0, i32 4
  %28 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ingress, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool10.not = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mlxsw_sp, align 4
  %idxprom.i = zext i16 %27 to i32
  %arrayidx.i = getelementptr ptr, ptr %31, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i33 = icmp eq ptr %33, null
  br i1 %tobool.not.i33, label %if.then6.if.then.i_crit_edge, label %land.lhs.true.i

if.then6.if.then.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true.i:                                  ; preds = %if.then6
  %34 = getelementptr inbounds %struct.anon.51, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %33, align 8
  %cmp.i = icmp eq ptr %36, %38
  br i1 %cmp.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then6.if.then.i_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %do.body

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  br i1 %tobool10.not, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mlxsw_sp_rx_listener_no_mark_func(ptr noundef nonnull %1, i16 noundef zeroext %27, ptr noundef %mlxsw_sp) #14
  br label %do.body

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_tstamp_tx(ptr noundef nonnull %1, ptr noundef null) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %do.body

do.body:                                          ; preds = %if.else.i, %if.then3.i, %if.then.i, %mlxsw_sp1_packet_timestamp.exit, %entry.do.body_crit_edge
  %tobool12.not = icmp eq ptr %unmatched, null
  br i1 %tobool12.not, label %do.body.if.end15_crit_edge, label %do.end

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %rcu = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, ptr %unmatched, i32 0, i32 2
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 16 to ptr)) #14
  br label %if.end15

if.end15:                                         ; preds = %do.end, %do.body.if.end15_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !208
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !209

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !210
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !211
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !195

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !212
  %7 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !213
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !214
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !215
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #14
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !201

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #14, !srcloc !216
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !218
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %3 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !220
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !221
  %2 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_rx_listener_no_mark_func(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhltable_remove(ptr noundef %hlt, ptr noundef %list, [7 x i32] %params.coerce) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !196
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %hlt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlt, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %hlt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1076, ptr noundef nonnull @.str.38) #14
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %53, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %list, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !201

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #14
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #14
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i6.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i6.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !195

cond.true.i7.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket_var.exit.i.i

cond.false.i8.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #14
  %call.i11.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 377, ptr noundef nonnull @.str.41) #14
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i9.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i34.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.i.not35.i.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.i.not35.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread23.i_crit_edge

rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread23.i_crit_edge: ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast_one.exit.thread23.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i37.i = icmp eq ptr %27, %list
  br i1 %cmp.not.i37.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge

for.body.preheader.i.i.do.body.i.preheader.i_crit_edge: ; preds = %for.body.preheader.i.i
  br label %do.body.i.preheader.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %37, %list
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body.i.preheader.i_crit_edge

for.body.i.i.do.body.i.preheader.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.preheader.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

do.body.i.preheader.i:                            ; preds = %for.body.i.i.do.body.i.preheader.i_crit_edge, %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge
  %he.036.i38.i = phi ptr [ %37, %for.body.i.i.do.body.i.preheader.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %do.body.i.preheader.i
  %list.0.i.i = phi ptr [ %29, %do.end.i.i.do.body.i.i_crit_edge ], [ %he.036.i38.i, %do.body.i.preheader.i ]
  %next8.i.i = getelementptr inbounds %struct.rhlist_head, ptr %list.0.i.i, i32 0, i32 1
  %call10.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i4.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.lhs.true.i4.i:                               ; preds = %do.body.i.i
  %call12.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i4.i.do.end.i.i_crit_edge, label %land.lhs.true14.i.i

land.lhs.true.i4.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i4.i
  %.b5.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned, align 1
  br i1 %.b5.i.i, label %land.lhs.true14.i.i.do.end.i.i_crit_edge, label %if.then16.i.i

land.lhs.true14.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1020, ptr noundef nonnull @.str.41) #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then16.i.i, %land.lhs.true14.i.i.do.end.i.i_crit_edge, %land.lhs.true.i4.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %28 = ptrtoint ptr %next8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next8.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %29, null
  %cmp22.not.i.i = icmp eq ptr %29, %list
  %or.cond.i.i = or i1 %tobool21.not.i.i, %cmp22.not.i.i
  br i1 %or.cond.i.i, label %do.end23.i.i, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %do.end.i.i
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool21.not.i.i, label %do.body145.i.i, label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.end23.i.i
  br i1 %tobool147.not.i.i, label %land.lhs.true30.i.i, label %do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge

do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast_one.exit.i

land.lhs.true30.i.i:                              ; preds = %do.body27.i.i
  %call31.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, label %land.lhs.true33.i.i

land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast_one.exit.i

land.lhs.true33.i.i:                              ; preds = %land.lhs.true30.i.i
  %.b2284.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.44, align 1
  br i1 %.b2284.i.i, label %land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, label %if.then35.i.i

land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast_one.exit.i

if.then35.i.i:                                    ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.44, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1026, ptr noundef nonnull @.str.41) #14
  br label %__rhashtable_remove_fast_one.exit.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.037.i.lcssa.i = phi ptr [ %he.036.i38.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2293.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.45, align 1
  br i1 %.b2293.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.45, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1032, ptr noundef nonnull @.str.41) #14
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list, align 4
  %call71.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %land.lhs.true73.i.i, label %do.end65.i.i.do.end81.i.i_crit_edge

do.end65.i.i.do.end81.i.i_crit_edge:              ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end81.i.i

land.lhs.true73.i.i:                              ; preds = %do.end65.i.i
  %call74.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %land.lhs.true73.i.i.do.end81.i.i_crit_edge, label %land.lhs.true76.i.i

land.lhs.true73.i.i.do.end81.i.i_crit_edge:       ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end81.i.i

land.lhs.true76.i.i:                              ; preds = %land.lhs.true73.i.i
  %.b2302.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.46, align 1
  br i1 %.b2302.i.i, label %land.lhs.true76.i.i.do.end81.i.i_crit_edge, label %if.then78.i.i

land.lhs.true76.i.i.do.end81.i.i_crit_edge:       ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end81.i.i

if.then78.i.i:                                    ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.46, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1036, ptr noundef nonnull @.str.41) #14
  br label %do.end81.i.i

do.end81.i.i:                                     ; preds = %if.then78.i.i, %land.lhs.true76.i.i.do.end81.i.i_crit_edge, %land.lhs.true73.i.i.do.end81.i.i_crit_edge, %do.end65.i.i.do.end81.i.i_crit_edge
  %next83.i.i = getelementptr inbounds %struct.rhlist_head, ptr %list, i32 0, i32 1
  %32 = ptrtoint ptr %next83.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next83.i.i, align 4
  %tobool84.not.i.i = icmp eq ptr %33, null
  br i1 %tobool84.not.i.i, label %do.end81.i.i.if.end102.i.i_crit_edge, label %do.body91.i.i

do.end81.i.i.if.end102.i.i_crit_edge:             ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102.i.i

do.body91.i.i:                                    ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %31, ptr %33, align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %do.body91.i.i, %do.end81.i.i.if.end102.i.i_crit_edge
  %obj.addr.1.i.i = phi ptr [ %33, %do.body91.i.i ], [ %31, %do.end81.i.i.if.end102.i.i_crit_edge ]
  %tobool103.not.i.i = icmp eq ptr %pprev.037.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !222
  %35 = ptrtoint ptr %pprev.037.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %obj.addr.1.i.i, ptr %pprev.037.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #14
  br label %unlocked.i.i

if.else142.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i, ptr noundef %obj.addr.1.i.i) #14
  br label %unlocked.i.i

do.body145.i.i:                                   ; preds = %do.end23.i.i
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2311.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.47, align 1
  br i1 %.b2311.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1004, ptr noundef nonnull @.str.41) #14
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %36 = ptrtoint ptr %he.036.i38.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %he.036.i38.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.__rhashtable_remove_fast_one.exit.thread23.i_crit_edge

do.end156.i.i.__rhashtable_remove_fast_one.exit.thread23.i_crit_edge: ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast_one.exit.thread23.i

unlocked.i.i:                                     ; preds = %if.else142.i.i, %do.body105.i.i
  br i1 %tobool84.not.i.i, label %if.then160.i.i, label %unlocked.i.i.while.end.i_crit_edge

unlocked.i.i.while.end.i_crit_edge:               ; preds = %unlocked.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.then160.i.i:                                   ; preds = %unlocked.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #14
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !223
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool161.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i13.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %42 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %nelems.i.i, align 4
  %44 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %45, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %43, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 5
  %46 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i14.i.i = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i14.i.i)
  %cmp2.i.i.i = icmp ugt i32 %45, %conv.i14.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !201

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i15.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %run_work.i.i) #14
  br label %while.end.i

__rhashtable_remove_fast_one.exit.thread23.i:     ; preds = %do.end156.i.i.__rhashtable_remove_fast_one.exit.thread23.i_crit_edge, %rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread23.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #14
  br label %land.rhs.i

__rhashtable_remove_fast_one.exit.i:              ; preds = %if.then35.i.i, %land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, %land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, %do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge
  %next40.i.i = getelementptr inbounds %struct.rhlist_head, ptr %29, i32 0, i32 1
  %49 = ptrtoint ptr %next40.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next40.i.i, align 4
  %51 = ptrtoint ptr %next8.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %next8.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #14
  br label %while.end.i

land.rhs.i:                                       ; preds = %__rhashtable_remove_fast_one.exit.thread23.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %52 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %hlt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.43, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned.43, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 1085, ptr noundef nonnull @.str.38) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %53, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %__rhashtable_remove_fast_one.exit.i, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge, %unlocked.i.i.while.end.i_crit_edge
  %retval.0.i17.i = phi i32 [ 0, %__rhashtable_remove_fast_one.exit.i ], [ 0, %unlocked.i.i.while.end.i_crit_edge ], [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i5.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i8.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i8.i:                               ; preds = %while.end.i
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.48) #14
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %54 = tail call i32 @llvm.read_register.i32(metadata !182) #14
  %and.i.i.i.i.i12.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %retval.0.i17.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp1_ptp_port_shaper_set(ptr nocapture noundef readonly %mlxsw_sp_port, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %qeec_pl = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %qeec_pl) #14
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %4 = call ptr @memset(ptr %qeec_pl, i32 0, i32 32)
  %conv1.i = zext i16 %3 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %5 = ptrtoint ptr %qeec_pl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qeec_pl, align 4
  %and7.i.i.i = and i32 %6, -16723969
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %7 = shl nuw nsw i32 %conv1.i, 4
  %and6.i26.i.i = and i32 %7, 12288
  %or.i30.i.i = or i32 %and6.i26.i.i, %or.i.i.i
  store i32 %or.i30.i.i, ptr %qeec_pl, align 4
  %arrayidx.i.i26.i = getelementptr inbounds i32, ptr %qeec_pl, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i26.i, align 4
  %and7.i.i28.i = and i32 %9, -983041
  store i32 %and7.i.i28.i, ptr %arrayidx.i.i26.i, align 4
  %spec.select.i.i48.i = select i1 %enable, i32 536870912, i32 0
  %arrayidx.i.i54.i = getelementptr inbounds i32, ptr %qeec_pl, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i54.i, align 4
  %and7.i.i56.i = and i32 %11, -536870913
  %or.i.i57.i = or i32 %spec.select.i.i48.i, %and7.i.i56.i
  store i32 %or.i.i57.i, ptr %arrayidx.i.i54.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_qeec, ptr noundef nonnull %qeec_pl) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %qeec_pl) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_speed_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_parsing_depth_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_parsing_depth_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !168, !169, !171, !172, !174, !175, !177, !178, !180}
!llvm.named.register.sp = !{!182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @mlxsw_sp1_ptp_clock_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 261, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlxsw_sp1_ptp_clock_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 286, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlxsw_sp1_ptp_clock_init.__key.3, !4, !"__key", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 293, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlxsw_sp1_ptp_clock_init._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlxsw_sp1_ptp_clock_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 576, i32 6}
!18 = !{ptr @mlxsw_sp1_ptp_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 826, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlxsw_sp1_ptp_init.__key.11, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 854, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mlxsw_sp1_ptp_init.__key.13, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 1043, i32 34}
!28 = !{ptr @mlxsw_sp1_ptp_clock_info, !29, !"mlxsw_sp1_ptp_clock_info", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 227, i32 36}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__mlxsw_item_offset._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @__mlxsw_item_offset._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10539, i32 1}
!38 = distinct !{null, !37, !"mlxsw_reg_mtutc_operation_item", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10547, i32 1}
!41 = distinct !{null, !40, !"mlxsw_reg_mtutc_freq_adjustment_item", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10553, i32 1}
!44 = distinct !{null, !43, !"mlxsw_reg_mtutc_utc_sec_item", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10528, i32 1}
!47 = !{ptr @mlxsw_reg_mtutc, !46, !"mlxsw_reg_mtutc", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10498, i32 1}
!50 = distinct !{null, !49, !"mlxsw_reg_mtpps_pin_item", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10490, i32 1}
!53 = distinct !{null, !52, !"mlxsw_reg_mtpps_pin_mode_item", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10479, i32 1}
!56 = distinct !{null, !55, !"mlxsw_reg_mtpps_enable_item", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10508, i32 1}
!59 = distinct !{null, !58, !"mlxsw_reg_mtpps_time_stamp_item", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10472, i32 1}
!62 = !{ptr @mlxsw_reg_mtpps, !61, !"mlxsw_reg_mtpps", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 515, i32 3}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mlxsw_sp1_ptp_shaper_params, !104, !"mlxsw_sp1_ptp_shaper_params", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 739, i32 1}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4205, i32 1}
!107 = distinct !{null, !106, !"mlxsw_reg_qpsc_port_speed_item", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4213, i32 1}
!110 = distinct !{null, !109, !"mlxsw_reg_qpsc_shaper_time_exp_item", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4221, i32 1}
!113 = distinct !{null, !112, !"mlxsw_reg_qpsc_shaper_time_mantissa_item", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4228, i32 1}
!116 = distinct !{null, !115, !"mlxsw_reg_qpsc_shaper_inc_item", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4236, i32 1}
!119 = distinct !{null, !118, !"mlxsw_reg_qpsc_shaper_bs_item", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4242, i32 1}
!122 = distinct !{null, !121, !"mlxsw_reg_qpsc_ptsc_we_item", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4250, i32 1}
!125 = distinct !{null, !124, !"mlxsw_reg_qpsc_port_to_shaper_credits_item", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4260, i32 1}
!128 = distinct !{null, !127, !"mlxsw_reg_qpsc_ing_timestamp_inc_item", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4270, i32 1}
!131 = distinct !{null, !130, !"mlxsw_reg_qpsc_egr_timestamp_inc_item", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4192, i32 1}
!134 = !{ptr @mlxsw_reg_qpsc, !133, !"mlxsw_reg_qpsc", i1 false, i1 false}
!135 = !{ptr @mlxsw_sp1_ptp_unmatched_ht_params, !136, !"mlxsw_sp1_ptp_unmatched_ht_params", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 55, i32 39}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11220, i32 1}
!139 = distinct !{null, !138, !"mlxsw_reg_mtptpt_trap_id_item", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11228, i32 1}
!142 = distinct !{null, !141, !"mlxsw_reg_mtptpt_message_type_item", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11209, i32 1}
!145 = !{ptr @mlxsw_reg_mtptpt, !144, !"mlxsw_reg_mtptpt", i1 false, i1 false}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10925, i32 1}
!148 = !{ptr @mlxsw_reg_mogcr, !147, !"mlxsw_reg_mogcr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10934, i32 1}
!151 = distinct !{null, !150, !"mlxsw_reg_mogcr_ptp_iftc_item", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10943, i32 1}
!154 = distinct !{null, !153, !"mlxsw_reg_mogcr_ptp_eftc_item", i1 false, i1 false}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11074, i32 1}
!157 = distinct !{null, !156, !"mlxsw_reg_mtpppc_ing_timestamp_message_type_item", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11083, i32 1}
!160 = distinct !{null, !159, !"mlxsw_reg_mtpppc_egr_timestamp_message_type_item", i1 false, i1 false}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11065, i32 1}
!163 = !{ptr @mlxsw_reg_mtpppc, !162, !"mlxsw_reg_mtpppc", i1 false, i1 false}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3775, i32 1}
!166 = distinct !{null, !165, !"mlxsw_reg_qeec_local_port_item", i1 false, i1 false}
!167 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!168 = distinct !{null, !165, !"mlxsw_reg_qeec_lp_msb_item", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3791, i32 1}
!171 = distinct !{null, !170, !"mlxsw_reg_qeec_element_hierarchy_item", i1 false, i1 false}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3826, i32 1}
!174 = distinct !{null, !173, !"mlxsw_reg_qeec_ptps_item", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3767, i32 1}
!177 = !{ptr @mlxsw_reg_qeec, !176, !"mlxsw_reg_qeec", i1 false, i1 false}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 980, i32 35}
!180 = !{ptr @mlxsw_sp_ptp_port_stats, !181, !"mlxsw_sp_ptp_port_stats", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ptp.c", i32 1107, i32 44}
!182 = !{!"sp"}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 858615, i64 858642}
!193 = !{i64 859125, i64 859152, i64 859186, i64 859207}
!194 = !{i64 858785, i64 858812}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{i64 2149333380}
!197 = !{i64 2154908838}
!198 = !{i64 2154912272}
!199 = !{i64 2149333646}
!200 = !{i64 2154941118}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2148505866, i64 2148505892, i64 2148505921, i64 2148505955, i64 2148505986, i64 2148506009}
!203 = !{i8 0, i8 2}
!204 = !{!"auto-init"}
!205 = !{i64 858902, i64 858929, i64 858951, i64 858979}
!206 = !{i64 859310, i64 859337, i64 859370, i64 859391, i64 859418, i64 859444}
!207 = !{i64 2148344446, i64 2148344726, i64 2148345060, i64 2148345394}
!208 = !{i64 2152639893}
!209 = !{!"branch_weights", i32 2146410443, i32 1073205}
!210 = !{i64 2148514724, i64 2148514756, i64 2148514785, i64 2148514819, i64 2148514850, i64 2148514873}
!211 = !{i64 2148603805}
!212 = !{i64 2152640053}
!213 = !{i64 2152640330}
!214 = !{i64 2152640172}
!215 = !{i64 2152640535}
!216 = !{i64 2152641598, i64 2152642090, i64 2152641635, i64 2152641691, i64 2152641725, i64 2152641749, i64 2152641790, i64 2152641811, i64 2152641839, i64 2152641873}
!217 = !{i64 2148602692}
!218 = !{i64 2148513111, i64 2148513143, i64 2148513172, i64 2148513206, i64 2148513237, i64 2148513260}
!219 = !{i64 2152642993}
!220 = !{i64 2154901911}
!221 = !{i64 2154904210}
!222 = !{i64 2154976214}
!223 = !{i64 2148508331, i64 2148508357, i64 2148508386, i64 2148508420, i64 2148508451, i64 2148508474}
