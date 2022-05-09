; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xgbe_mmc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_ext_stats = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.xgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xgbe_phy = type { %struct.ethtool_link_ksettings, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.xgbe_phy_data = type { i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32] }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amd,speed-set\00", [18 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid %s property\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_phy_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr = internal global ptr @xgbe_phy_init._entry, section ".printk_index", align 4
@xgbe_phy_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 703, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.7 = internal global ptr @xgbe_phy_init._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amd,serdes-blwc\00", [16 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.10 = internal global ptr @xgbe_phy_init._entry.9, section ".printk_index", align 4
@xgbe_phy_blwc = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 0], [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amd,serdes-cdr-rate\00", [44 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.13 = internal global ptr @xgbe_phy_init._entry.12, section ".printk_index", align 4
@xgbe_phy_cdr_rate = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 2, i32 7], [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd,serdes-pq-skew\00", [45 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.16 = internal global ptr @xgbe_phy_init._entry.15, section ".printk_index", align 4
@xgbe_phy_pq_skew = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 10, i32 10, i32 18], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amd,serdes-tx-amp\00", [46 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.19 = internal global ptr @xgbe_phy_init._entry.18, section ".printk_index", align 4
@xgbe_phy_tx_amp = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15, i32 15, i32 10], [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amd,serdes-dfe-tap-config\00", [38 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.22 = internal global ptr @xgbe_phy_init._entry.21, section ".printk_index", align 4
@xgbe_phy_dfe_tap_cfg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 3, i32 1], [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amd,serdes-dfe-tap-enable\00", [38 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.25 = internal global ptr @xgbe_phy_init._entry.24, section ".printk_index", align 4
@xgbe_phy_dfe_tap_ena = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 127], [20 x i8] zeroinitializer }, align 32
@xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_phy_kx_1000_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"1GbE KX mode set\0A\00", [46 x i8] zeroinitializer }, align 32
@xgbe_phy_complete_ratechange.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xgbe_phy_complete_ratechange\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SerDes rx/tx not ready (%#hx)\0A\00", [33 x i8] zeroinitializer }, align 32
@xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_phy_kx_2500_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"2.5GbE KX mode set\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_phy_kr_mode.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_phy_kr_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"10GbE KR mode set\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1000, i64 2500, i64 10000]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 689, i32 49 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 692, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 702, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 708, i32 46 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 714, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"xgbe_phy_blwc\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 168, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 723, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 729, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"xgbe_phy_cdr_rate\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 174, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 738, i32 46 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 744, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"xgbe_phy_pq_skew\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 180, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 753, i32 46 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 759, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"xgbe_phy_tx_amp\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 186, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 768, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 774, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"xgbe_phy_dfe_tap_cfg\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 192, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 783, i32 46 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 789, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"xgbe_phy_dfe_tap_ena\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 198, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 493, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 358, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 450, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [47 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 407, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @xgbe_phy_init._entry, ptr @xgbe_phy_init._entry.12, ptr @xgbe_phy_init._entry.15, ptr @xgbe_phy_init._entry.18, ptr @xgbe_phy_init._entry.21, ptr @xgbe_phy_init._entry.24, ptr @xgbe_phy_init._entry.6, ptr @xgbe_phy_init._entry.9, ptr @xgbe_phy_init._entry_ptr, ptr @xgbe_phy_init._entry_ptr.10, ptr @xgbe_phy_init._entry_ptr.13, ptr @xgbe_phy_init._entry_ptr.16, ptr @xgbe_phy_init._entry_ptr.19, ptr @xgbe_phy_init._entry_ptr.22, ptr @xgbe_phy_init._entry_ptr.25, ptr @xgbe_phy_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @xgbe_phy_blwc, ptr @.str.11, ptr @xgbe_phy_cdr_rate, ptr @.str.14, ptr @xgbe_phy_pq_skew, ptr @.str.17, ptr @xgbe_phy_tx_amp, ptr @.str.20, ptr @xgbe_phy_dfe_tap_cfg, ptr @.str.23, ptr @xgbe_phy_dfe_tap_ena, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_blwc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_cdr_rate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_pq_skew to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_tx_amp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_dfe_tap_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_dfe_tap_ena to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgbe_init_function_ptrs_phy_v1(ptr nocapture noundef writeonly %phy_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_impl1 = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11
  %0 = ptrtoint ptr %phy_impl1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgbe_phy_init, ptr %phy_impl1, align 4
  %exit = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgbe_phy_exit, ptr %exit, align 4
  %reset = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xgbe_phy_reset, ptr %reset, align 4
  %start = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 3
  %3 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgbe_phy_start, ptr %start, align 4
  %stop = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xgbe_phy_stop, ptr %stop, align 4
  %link_status = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xgbe_phy_link_status, ptr %link_status, align 4
  %valid_speed = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 6
  %6 = ptrtoint ptr %valid_speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xgbe_phy_valid_speed, ptr %valid_speed, align 4
  %use_mode = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 7
  %7 = ptrtoint ptr %use_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xgbe_phy_use_mode, ptr %use_mode, align 4
  %set_mode = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 8
  %8 = ptrtoint ptr %set_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xgbe_phy_set_mode, ptr %set_mode, align 4
  %get_mode = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 9
  %9 = ptrtoint ptr %get_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xgbe_phy_get_mode, ptr %get_mode, align 4
  %switch_mode = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 10
  %10 = ptrtoint ptr %switch_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xgbe_phy_switch_mode, ptr %switch_mode, align 4
  %cur_mode = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 11
  %11 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xgbe_phy_cur_mode, ptr %cur_mode, align 4
  %an_mode = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 12
  %12 = ptrtoint ptr %an_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xgbe_phy_an_mode, ptr %an_mode, align 4
  %an_config = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 13
  %13 = ptrtoint ptr %an_config to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xgbe_phy_an_config, ptr %an_config, align 4
  %an_advertising = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 14
  %14 = ptrtoint ptr %an_advertising to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xgbe_phy_an_advertising, ptr %an_advertising, align 4
  %an_outcome = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 15
  %15 = ptrtoint ptr %an_outcome to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xgbe_phy_an_outcome, ptr %an_outcome, align 4
  %kr_training_pre = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 18
  %16 = ptrtoint ptr %kr_training_pre to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xgbe_phy_kr_training_pre, ptr %kr_training_pre, align 4
  %kr_training_post = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 19
  %17 = ptrtoint ptr %kr_training_post to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xgbe_phy_kr_training_post, ptr %kr_training_post, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_init(ptr nocapture noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 76, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 6
  %2 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_dev, align 8
  %call.i215 = tail call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool3.not = icmp eq i32 %call.i215, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %sw.epilog, label %do.end10

do.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end6
  %10 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_dev, align 8
  %call13 = tail call zeroext i1 @device_property_present(ptr noundef %11, ptr noundef nonnull @.str.8) #9
  br i1 %call13, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.epilog
  %12 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_dev, align 8
  %blwc = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 1
  %call16 = tail call i32 @device_property_read_u32_array(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef %blwc, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end26_crit_edge, label %do.end21

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end21:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %blwc24 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %blwc24, ptr @xgbe_phy_blwc, i32 12)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then14.if.end26_crit_edge
  %17 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_dev, align 8
  %call28 = tail call zeroext i1 @device_property_present(ptr noundef %18, ptr noundef nonnull @.str.11) #9
  br i1 %call28, label %if.then29, label %if.else40

if.then29:                                        ; preds = %if.end26
  %19 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_dev, align 8
  %cdr_rate = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 2
  %call32 = tail call i32 @device_property_read_u32_array(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef %cdr_rate, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then29.if.end43_crit_edge, label %do.end37

if.then29.if.end43_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end37:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.else40:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %cdr_rate41 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 2
  %23 = call ptr @memcpy(ptr %cdr_rate41, ptr @xgbe_phy_cdr_rate, i32 12)
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then29.if.end43_crit_edge
  %24 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_dev, align 8
  %call45 = tail call zeroext i1 @device_property_present(ptr noundef %25, ptr noundef nonnull @.str.14) #9
  br i1 %call45, label %if.then46, label %if.else57

if.then46:                                        ; preds = %if.end43
  %26 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_dev, align 8
  %pq_skew = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 3
  %call49 = tail call i32 @device_property_read_u32_array(ptr noundef %27, ptr noundef nonnull @.str.14, ptr noundef %pq_skew, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then46.if.end60_crit_edge, label %do.end54

if.then46.if.end60_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.else57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %pq_skew58 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %pq_skew58, ptr @xgbe_phy_pq_skew, i32 12)
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then46.if.end60_crit_edge
  %31 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_dev, align 8
  %call62 = tail call zeroext i1 @device_property_present(ptr noundef %32, ptr noundef nonnull @.str.17) #9
  br i1 %call62, label %if.then63, label %if.else74

if.then63:                                        ; preds = %if.end60
  %33 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_dev, align 8
  %tx_amp = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 4
  %call66 = tail call i32 @device_property_read_u32_array(ptr noundef %34, ptr noundef nonnull @.str.17, ptr noundef %tx_amp, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then63.if.end77_crit_edge, label %do.end71

if.then63.if.end77_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.end71:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.else74:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %tx_amp75 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 4
  %37 = call ptr @memcpy(ptr %tx_amp75, ptr @xgbe_phy_tx_amp, i32 12)
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %if.then63.if.end77_crit_edge
  %38 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_dev, align 8
  %call79 = tail call zeroext i1 @device_property_present(ptr noundef %39, ptr noundef nonnull @.str.20) #9
  br i1 %call79, label %if.then80, label %if.else91

if.then80:                                        ; preds = %if.end77
  %40 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_dev, align 8
  %dfe_tap_cfg = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %call83 = tail call i32 @device_property_read_u32_array(ptr noundef %41, ptr noundef nonnull @.str.20, ptr noundef %dfe_tap_cfg, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then80.if.end94_crit_edge, label %do.end88

if.then80.if.end94_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.end88:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.else91:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %dfe_tap_cfg92 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %44 = call ptr @memcpy(ptr %dfe_tap_cfg92, ptr @xgbe_phy_dfe_tap_cfg, i32 12)
  br label %if.end94

if.end94:                                         ; preds = %if.else91, %if.then80.if.end94_crit_edge
  %45 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy_dev, align 8
  %call96 = tail call zeroext i1 @device_property_present(ptr noundef %46, ptr noundef nonnull @.str.23) #9
  br i1 %call96, label %if.then97, label %if.else108

if.then97:                                        ; preds = %if.end94
  %47 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy_dev, align 8
  %dfe_tap_ena = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 6
  %call100 = tail call i32 @device_property_read_u32_array(ptr noundef %48, ptr noundef nonnull @.str.23, ptr noundef %dfe_tap_ena, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then97.if.end111_crit_edge, label %do.end105

if.then97.if.end111_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

do.end105:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.else108:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %dfe_tap_ena109 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 6
  %51 = call ptr @memcpy(ptr %dfe_tap_ena109, ptr @xgbe_phy_dfe_tap_ena, i32 12)
  br label %if.end111

if.end111:                                        ; preds = %if.else108, %if.then97.if.end111_crit_edge
  %link_modes = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1
  %52 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 0, ptr %52, align 4
  %54 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 614464, ptr %link_modes, align 4
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %if.end111.sw.epilog137_crit_edge [
    i32 0, label %if.end111.sw.epilog137.sink.split_crit_edge
    i32 1, label %sw.bb133
  ]

if.end111.sw.epilog137.sink.split_crit_edge:      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog137.sink.split

if.end111.sw.epilog137_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog137

sw.bb133:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog137.sink.split

sw.epilog137.sink.split:                          ; preds = %sw.bb133, %if.end111.sw.epilog137.sink.split_crit_edge
  %.sink = phi i32 [ 647232, %sw.bb133 ], [ 745536, %if.end111.sw.epilog137.sink.split_crit_edge ]
  %58 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %link_modes, align 4
  br label %sw.epilog137

sw.epilog137:                                     ; preds = %sw.epilog137.sink.split, %if.end111.sw.epilog137_crit_edge
  %fec_ability = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 160
  %59 = ptrtoint ptr %fec_ability to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fec_ability, align 8
  %and = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool138.not = icmp eq i32 %and, 0
  br i1 %tobool138.not, label %sw.epilog137.if.end143_crit_edge, label %if.then139

sw.epilog137.if.end143_crit_edge:                 ; preds = %sw.epilog137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then139:                                       ; preds = %sw.epilog137
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %link_modes, align 4
  %or.i214 = or i32 %62, 1048576
  store i32 %or.i214, ptr %link_modes, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %sw.epilog137.if.end143_crit_edge
  %phy_data144 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %63 = ptrtoint ptr %phy_data144 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %phy_data144, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %do.end105, %do.end88, %do.end71, %do.end54, %do.end37, %do.end21, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i215, %do.end ], [ -22, %do.end10 ], [ %call16, %do.end21 ], [ %call32, %do.end37 ], [ %call49, %do.end54 ], [ %call66, %do.end71 ], [ %call83, %do.end88 ], [ %call100, %do.end105 ], [ 0, %if.end143 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgbe_phy_exit(ptr nocapture noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_reset(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %0 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %1(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %or = or i32 %call, 32768
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %2 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or) #9
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 50, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 20) #9
  %4 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_mmd_regs, align 4
  %call4 = tail call i32 %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %and = and i32 %call4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %. = select i1 %tobool.not, i32 0, i32 -110
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_start(ptr nocapture noundef readnone %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgbe_phy_stop(ptr nocapture noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_link_status(ptr noundef %pdata, ptr nocapture noundef writeonly %an_restart) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %an_restart to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %an_restart, align 4
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %1 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %2(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938433) #9
  %3 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_mmd_regs, align 4
  %call3 = tail call i32 %4(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938433) #9
  %and = lshr i32 %call3, 2
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xgbe_phy_valid_speed(ptr nocapture noundef readonly %pdata, i32 noundef %speed) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %speed, label %sw.default [
    i32 1000, label %sw.bb
    i32 2500, label %sw.bb2
    i32 10000, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4.not = icmp eq i32 %6, 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ %cmp.not, %sw.bb ], [ %cmp4.not, %sw.bb2 ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xgbe_phy_use_mode(ptr noundef %pdata, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %advertising = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %advertising, align 4
  %3 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %autoneg.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %4 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.else.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb
  %speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %7)
  %cond = icmp eq i32 %7, 1000
  br i1 %cond, label %sw.bb.i.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %phy_data1.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %8 = ptrtoint ptr %phy_data1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_data1.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %advertising5 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %advertising5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %advertising5, align 4
  %14 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8 = icmp ne i32 %14, 0
  %autoneg.i29 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %15 = ptrtoint ptr %autoneg.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %autoneg.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i30 = icmp eq i32 %16, 1
  br i1 %cmp.i30, label %sw.bb3.cleanup_crit_edge, label %if.else.i33

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i33:                                      ; preds = %sw.bb3
  %speed.i31 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %17 = ptrtoint ptr %speed.i31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed.i31, align 4
  %phy_data1.i.i32 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %19 = ptrtoint ptr %phy_data1.i.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_data1.i.i32, align 8
  %21 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %18, label %sw.default.i.i40 [
    i32 1000, label %sw.bb.i.i36
    i32 2500, label %sw.bb2.i.i39
    i32 10000, label %if.else.i33.xgbe_phy_get_mode.exit.i43_crit_edge
  ]

if.else.i33.xgbe_phy_get_mode.exit.i43_crit_edge: ; preds = %if.else.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgbe_phy_get_mode.exit.i43

sw.bb.i.i36:                                      ; preds = %if.else.i33
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i34 = icmp eq i32 %23, 0
  %cond.i.i35 = select i1 %cmp.i.i34, i32 0, i32 7
  br label %xgbe_phy_get_mode.exit.i43

sw.bb2.i.i39:                                     ; preds = %if.else.i33
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp4.i.i37 = icmp eq i32 %25, 1
  %cond5.i.i38 = select i1 %cmp4.i.i37, i32 1, i32 7
  br label %xgbe_phy_get_mode.exit.i43

sw.default.i.i40:                                 ; preds = %if.else.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgbe_phy_get_mode.exit.i43

xgbe_phy_get_mode.exit.i43:                       ; preds = %sw.default.i.i40, %sw.bb2.i.i39, %sw.bb.i.i36, %if.else.i33.xgbe_phy_get_mode.exit.i43_crit_edge
  %retval.0.i.i41 = phi i32 [ 7, %sw.default.i.i40 ], [ %cond5.i.i38, %sw.bb2.i.i39 ], [ %cond.i.i35, %sw.bb.i.i36 ], [ 2, %if.else.i33.xgbe_phy_get_mode.exit.i43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i41)
  %cmp2.not.i42 = icmp eq i32 %retval.0.i.i41, 1
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %advertising12 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %advertising12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %advertising12, align 4
  %28 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15 = icmp ne i32 %28, 0
  %autoneg.i46 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %29 = ptrtoint ptr %autoneg.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %autoneg.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i47 = icmp eq i32 %30, 1
  br i1 %cmp.i47, label %sw.bb10.cleanup_crit_edge, label %if.else.i50

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i50:                                      ; preds = %sw.bb10
  %speed.i48 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %31 = ptrtoint ptr %speed.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed.i48, align 4
  %phy_data1.i.i49 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %33 = ptrtoint ptr %phy_data1.i.i49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_data1.i.i49, align 8
  %35 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %32, label %sw.default.i.i57 [
    i32 1000, label %sw.bb.i.i53
    i32 2500, label %sw.bb2.i.i56
    i32 10000, label %if.else.i50.xgbe_phy_get_mode.exit.i60_crit_edge
  ]

if.else.i50.xgbe_phy_get_mode.exit.i60_crit_edge: ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgbe_phy_get_mode.exit.i60

sw.bb.i.i53:                                      ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i51 = icmp eq i32 %37, 0
  %cond.i.i52 = select i1 %cmp.i.i51, i32 0, i32 7
  br label %xgbe_phy_get_mode.exit.i60

sw.bb2.i.i56:                                     ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp4.i.i54 = icmp eq i32 %39, 1
  %cond5.i.i55 = select i1 %cmp4.i.i54, i32 1, i32 7
  br label %xgbe_phy_get_mode.exit.i60

sw.default.i.i57:                                 ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgbe_phy_get_mode.exit.i60

xgbe_phy_get_mode.exit.i60:                       ; preds = %sw.default.i.i57, %sw.bb2.i.i56, %sw.bb.i.i53, %if.else.i50.xgbe_phy_get_mode.exit.i60_crit_edge
  %retval.0.i.i58 = phi i32 [ 7, %sw.default.i.i57 ], [ %cond5.i.i55, %sw.bb2.i.i56 ], [ %cond.i.i52, %sw.bb.i.i53 ], [ 2, %if.else.i50.xgbe_phy_get_mode.exit.i60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i58)
  %cmp2.not.i59 = icmp eq i32 %retval.0.i.i58, 2
  br label %cleanup

cleanup:                                          ; preds = %xgbe_phy_get_mode.exit.i60, %sw.bb10.cleanup_crit_edge, %xgbe_phy_get_mode.exit.i43, %sw.bb3.cleanup_crit_edge, %sw.bb.i.i, %if.else.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool, %sw.bb.cleanup_crit_edge ], [ %tobool8, %sw.bb3.cleanup_crit_edge ], [ %cmp2.not.i42, %xgbe_phy_get_mode.exit.i43 ], [ %tobool15, %sw.bb10.cleanup_crit_edge ], [ %cmp2.not.i59, %xgbe_phy_get_mode.exit.i60 ], [ %cmp.i.i, %sw.bb.i.i ], [ false, %if.else.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_set_mode(ptr noundef %pdata, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xgbe_phy_kx_1000_mode(ptr noundef %pdata)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xgbe_phy_kx_2500_mode(ptr noundef %pdata)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @xgbe_phy_kr_mode(ptr noundef %pdata)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_get_mode(ptr nocapture noundef readonly %pdata, i32 noundef %speed) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %speed, label %sw.default [
    i32 1000, label %sw.bb
    i32 2500, label %sw.bb2
    i32 10000, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %cond = select i1 %cmp, i32 0, i32 7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4 = icmp eq i32 %6, 1
  %cond5 = select i1 %cmp4, i32 1, i32 7
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 7, %sw.default ], [ %cond5, %sw.bb2 ], [ %cond, %sw.bb ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_switch_mode(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %2 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439) #9
  %and.i = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  %. = zext i1 %cmp2 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %mode.0 = phi i32 [ %., %if.then ], [ 2, %entry.if.end5_crit_edge ]
  ret i32 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_cur_mode(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %2 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439) #9
  %and = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  %. = zext i1 %cmp2 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %mode.0 = phi i32 [ 2, %entry.if.end5_crit_edge ], [ %., %if.else ]
  ret i32 %mode.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_an_mode(ptr nocapture noundef readnone %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_an_config(ptr nocapture noundef readnone %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgbe_phy_an_advertising(ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %dlks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %dlks, i32 0, i32 1, i32 1
  %advertising2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %0 = call ptr @memcpy(ptr %advertising, ptr %advertising2, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_an_outcome(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data2, align 8
  %lp_advertising = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lp_advertising, align 4
  %or.i148 = or i32 %3, 65600
  store i32 %or.i148, ptr %lp_advertising, align 4
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %4 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200592) #9
  %6 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_mmd_regs, align 4
  %call8 = tail call i32 %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200595) #9
  %and = and i32 %call8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lp_advertising, align 4
  %or.i149 = or i32 %9, 8192
  store i32 %or.i149, ptr %lp_advertising, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and12 = and i32 %call8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end18_crit_edge, label %if.then14

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lp_advertising, align 4
  %or.i150 = or i32 %11, 16384
  store i32 %or.i150, ptr %lp_advertising, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end.if.end18_crit_edge
  %pause_autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %12 = ptrtoint ptr %pause_autoneg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pause_autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.end18.if.end51_crit_edge, label %if.then21

if.end18.if.end51_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then21:                                        ; preds = %if.end18
  %tx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 7
  %14 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_pause, align 4
  %rx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 8
  %15 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_pause, align 4
  %and24 = and i32 %call8, %call
  %and25 = and i32 %and24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tx_pause, align 4
  br label %if.end51.sink.split

if.else:                                          ; preds = %if.then21
  %and33 = and i32 %and24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else.if.end51_crit_edge, label %if.then35

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then35:                                        ; preds = %if.else
  %and36 = and i32 %call, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp ne i32 %and36, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool37.not, i1 true, i1 %tobool.not.not
  %rx_pause.mux = select i1 %tobool37.not, ptr %rx_pause, ptr %tx_pause
  br i1 %brmerge, label %if.then35.if.end51.sink.split_crit_edge, label %if.then35.if.end51_crit_edge

if.then35.if.end51_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then35.if.end51.sink.split_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.then35.if.end51.sink.split_crit_edge, %if.then27
  %rx_pause.sink = phi ptr [ %rx_pause, %if.then27 ], [ %rx_pause.mux, %if.then35.if.end51.sink.split_crit_edge ]
  %17 = ptrtoint ptr %rx_pause.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rx_pause.sink, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.then35.if.end51_crit_edge, %if.else.if.end51_crit_edge, %if.end18.if.end51_crit_edge
  %18 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_mmd_regs, align 4
  %call54 = tail call i32 %19(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200593) #9
  %20 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_mmd_regs, align 4
  %call57 = tail call i32 %21(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200596) #9
  %and58 = and i32 %call57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end51.if.end64_crit_edge, label %if.then60

if.end51.if.end64_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lp_advertising, align 4
  %or.i151 = or i32 %23, 524288
  store i32 %or.i151, ptr %lp_advertising, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end51.if.end64_crit_edge
  %and65 = and i32 %call57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end77_crit_edge, label %if.then67

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp = icmp eq i32 %25, 1
  %26 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lp_advertising, align 4
  %.155 = select i1 %cmp, i32 32768, i32 131072
  %or.i152 = or i32 %27, %.155
  store i32 %or.i152, ptr %lp_advertising, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then67, %if.end64.if.end77_crit_edge
  %and78 = and i32 %call57, %call54
  %and79 = and i32 %and78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else82, label %if.end77.if.end93_crit_edge

if.end77.if.end93_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.else82:                                        ; preds = %if.end77
  %and83 = and i32 %and78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else82.if.end93_crit_edge, label %if.then85

if.else82.if.end93_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then85:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp87 = icmp eq i32 %29, 1
  %. = zext i1 %cmp87 to i32
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %if.else82.if.end93_crit_edge, %if.end77.if.end93_crit_edge
  %mode.0 = phi i32 [ 2, %if.end77.if.end93_crit_edge ], [ %., %if.then85 ], [ 7, %if.else82.if.end93_crit_edge ]
  %30 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_mmd_regs, align 4
  %call96 = tail call i32 %31(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200594) #9
  %32 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_mmd_regs, align 4
  %call99 = tail call i32 %33(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200597) #9
  %and100 = and i32 %call99, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end93.if.end106_crit_edge, label %if.then102

if.end93.if.end106_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then102:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lp_advertising, align 4
  %or.i154 = or i32 %35, 1048576
  store i32 %or.i154, ptr %lp_advertising, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.end93.if.end106_crit_edge
  ret i32 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_kr_training_pre(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sir0_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 12
  %0 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sir0_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %3 = or i16 %2, 8
  %4 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sir0_regs, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %3) #9, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_kr_training_post(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sir0_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 12
  %0 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sir0_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %3 = and i16 %2, -9
  %4 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sir0_regs, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %3) #9, !srcloc !84
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_kx_1000_mode(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %2 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439) #9
  %and = and i32 %call, -4
  %or = or i32 %and, 1
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %4 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439, i32 noundef %or) #9
  %6 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_mmd_regs, align 4
  %call5 = tail call i32 %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %and6 = and i32 %call5, -8317
  %or7 = or i32 %and6, 64
  %8 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or7) #9
  %10 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs, align 4
  %call.i = tail call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %or.i = or i32 %call.i, 2048
  %12 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or.i) #9
  tail call void @usleep_range_state(i32 noundef 75, i32 noundef 100, i32 noundef 2) #9
  %and.i = and i32 %call.i, -2049
  %14 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %15(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %and.i) #9
  %sir1_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 13
  %16 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sir1_regs.i, align 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %19 = or i16 %18, 16384
  %20 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #9, !srcloc !84
  %22 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sir1_regs.i, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %25 = or i16 %24, 12288
  %26 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #9, !srcloc !84
  %28 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sir1_regs.i, align 4
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %31 = and i16 %30, -1793
  %32 = or i16 %31, 256
  %33 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %32) #9, !srcloc !84
  %35 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sir1_regs.i, align 4
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %38 = and i16 %37, -2049
  %39 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 %38) #9, !srcloc !84
  %41 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sir1_regs.i, align 4
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %44 = and i16 %43, -241
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %cdr_rate = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %cdr_rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cdr_rate, align 4
  %.tr = trunc i32 %47 to i16
  %48 = shl i16 %.tr, 12
  %conv69 = or i16 %48, %45
  %49 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv69) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %51) #9, !srcloc !84
  %52 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sir1_regs.i, align 4
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %53) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %55 = and i16 %54, -16
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %tx_amp = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %tx_amp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_amp, align 4
  %.tr232 = trunc i32 %58 to i16
  %59 = shl i16 %.tr232, 8
  %60 = and i16 %59, 3840
  %conv90 = or i16 %60, %56
  %61 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv90) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 %63) #9, !srcloc !84
  %rxtx_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 11
  %64 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr99 = getelementptr i8, ptr %65, i32 80
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr99) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %67 = and i16 %66, -1025
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %blwc = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %blwc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %blwc, align 4
  %.tr233 = trunc i32 %70 to i16
  %71 = shl i16 %.tr233, 2
  %72 = and i16 %71, 4
  %conv110 = or i16 %72, %68
  %73 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr114 = getelementptr i8, ptr %74, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv110) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr114, i16 %75) #9, !srcloc !84
  %76 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr120 = getelementptr i8, ptr %77, i32 456
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr120) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %79 = and i16 %78, -255
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %pq_skew = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 3
  %81 = ptrtoint ptr %pq_skew to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pq_skew, align 4
  %.tr234 = trunc i32 %82 to i16
  %83 = shl i16 %.tr234, 9
  %conv131 = or i16 %83, %80
  %84 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr135 = getelementptr i8, ptr %85, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %86 = tail call i16 @llvm.bswap.i16(i16 %conv131) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr135, i16 %86) #9, !srcloc !84
  %87 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr141 = getelementptr i8, ptr %88, i32 516
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr141) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %90 = and i16 %89, -193
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  %dfe_tap_cfg = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 5
  %92 = ptrtoint ptr %dfe_tap_cfg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dfe_tap_cfg, align 4
  %.tr235 = trunc i32 %93 to i16
  %94 = shl i16 %.tr235, 14
  %conv152 = or i16 %94, %91
  %95 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr156 = getelementptr i8, ptr %96, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %97 = tail call i16 @llvm.bswap.i16(i16 %conv152) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr156, i16 %97) #9, !srcloc !84
  %dfe_tap_ena = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 6
  %98 = ptrtoint ptr %dfe_tap_ena to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dfe_tap_ena, align 4
  %conv160 = trunc i32 %99 to i16
  %100 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr162 = getelementptr i8, ptr %101, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %102 = tail call i16 @llvm.bswap.i16(i16 %conv160) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr162, i16 %102) #9, !srcloc !84
  tail call fastcc void @xgbe_phy_complete_ratechange(ptr noundef %pdata)
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %103 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_enable, align 4
  %and164 = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool.not = icmp eq i32 %and164, 0
  br i1 %tobool.not, label %entry.do.end175_crit_edge, label %do.body165

entry.do.end175_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

do.body165:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_kx_1000_mode, %if.then170)) #9
          to label %do.end175 [label %if.then170], !srcloc !85

if.then170:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug354, ptr noundef %106, ptr noundef nonnull @.str.28) #9
  br label %do.end175

do.end175:                                        ; preds = %if.then170, %do.body165, %entry.do.end175_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_kx_2500_mode(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %2 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439) #9
  %and = and i32 %call, -4
  %or = or i32 %and, 1
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %4 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439, i32 noundef %or) #9
  %6 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_mmd_regs, align 4
  %call5 = tail call i32 %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %and6 = and i32 %call5, -8317
  %or7 = or i32 %and6, 64
  %8 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or7) #9
  %10 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs, align 4
  %call.i = tail call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %or.i = or i32 %call.i, 2048
  %12 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or.i) #9
  tail call void @usleep_range_state(i32 noundef 75, i32 noundef 100, i32 noundef 2) #9
  %and.i = and i32 %call.i, -2049
  %14 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %15(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %and.i) #9
  %sir1_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 13
  %16 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sir1_regs.i, align 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %19 = or i16 %18, 16384
  %20 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #9, !srcloc !84
  %22 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sir1_regs.i, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %25 = and i16 %24, -12289
  %26 = or i16 %25, 4096
  %27 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %26) #9, !srcloc !84
  %29 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sir1_regs.i, align 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %32 = and i16 %31, -1793
  %33 = or i16 %32, 256
  %34 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %33) #9, !srcloc !84
  %36 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sir1_regs.i, align 4
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %37) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %39 = and i16 %38, -2049
  %40 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 %39) #9, !srcloc !84
  %42 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sir1_regs.i, align 4
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %43) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %45 = and i16 %44, -241
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %arrayidx = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %48 to i16
  %49 = shl i16 %.tr, 12
  %conv69 = or i16 %49, %46
  %50 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv69) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %51, i16 %52) #9, !srcloc !84
  %53 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sir1_regs.i, align 4
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %56 = and i16 %55, -16
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %arrayidx85 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx85, align 4
  %.tr232 = trunc i32 %59 to i16
  %60 = shl i16 %.tr232, 8
  %61 = and i16 %60, 3840
  %conv90 = or i16 %61, %57
  %62 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %64 = tail call i16 @llvm.bswap.i16(i16 %conv90) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 %64) #9, !srcloc !84
  %rxtx_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 11
  %65 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr99 = getelementptr i8, ptr %66, i32 80
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr99) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %68 = and i16 %67, -1025
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %arrayidx105 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx105, align 4
  %.tr233 = trunc i32 %71 to i16
  %72 = shl i16 %.tr233, 2
  %73 = and i16 %72, 4
  %conv110 = or i16 %73, %69
  %74 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr114 = getelementptr i8, ptr %75, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %76 = tail call i16 @llvm.bswap.i16(i16 %conv110) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr114, i16 %76) #9, !srcloc !84
  %77 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr120 = getelementptr i8, ptr %78, i32 456
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr120) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %80 = and i16 %79, -255
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %arrayidx126 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx126, align 4
  %.tr234 = trunc i32 %83 to i16
  %84 = shl i16 %.tr234, 9
  %conv131 = or i16 %84, %81
  %85 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr135 = getelementptr i8, ptr %86, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv131) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr135, i16 %87) #9, !srcloc !84
  %88 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr141 = getelementptr i8, ptr %89, i32 516
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr141) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %91 = and i16 %90, -193
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %arrayidx147 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 5, i32 1
  %93 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx147, align 4
  %.tr235 = trunc i32 %94 to i16
  %95 = shl i16 %.tr235, 14
  %conv152 = or i16 %95, %92
  %96 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr156 = getelementptr i8, ptr %97, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv152) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr156, i16 %98) #9, !srcloc !84
  %arrayidx159 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 6, i32 1
  %99 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx159, align 4
  %conv160 = trunc i32 %100 to i16
  %101 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr162 = getelementptr i8, ptr %102, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv160) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr162, i16 %103) #9, !srcloc !84
  tail call fastcc void @xgbe_phy_complete_ratechange(ptr noundef %pdata)
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %104 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_enable, align 4
  %and164 = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool.not = icmp eq i32 %and164, 0
  br i1 %tobool.not, label %entry.do.end175_crit_edge, label %do.body165

entry.do.end175_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

do.body165:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_kx_2500_mode, %if.then170)) #9
          to label %do.end175 [label %if.then170], !srcloc !85

if.then170:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug353, ptr noundef %107, ptr noundef nonnull @.str.32) #9
  br label %do.end175

do.end175:                                        ; preds = %if.then170, %do.body165, %entry.do.end175_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_kr_mode(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %2 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439) #9
  %and = and i32 %call, -4
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %4 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938439, i32 noundef %and) #9
  %6 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_mmd_regs, align 4
  %call5 = tail call i32 %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %and6 = and i32 %call5, -8317
  %or7 = or i32 %and6, 8256
  %8 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or7) #9
  %10 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs, align 4
  %call.i = tail call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #9
  %or.i = or i32 %call.i, 2048
  %12 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or.i) #9
  tail call void @usleep_range_state(i32 noundef 75, i32 noundef 100, i32 noundef 2) #9
  %and.i = and i32 %call.i, -2049
  %14 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %15(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432, i32 noundef %and.i) #9
  %sir1_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 13
  %16 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sir1_regs.i, align 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %19 = or i16 %18, 16384
  %20 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #9, !srcloc !84
  %22 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sir1_regs.i, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %25 = and i16 %24, -12289
  %26 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #9, !srcloc !84
  %28 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sir1_regs.i, align 4
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %31 = or i16 %30, 1792
  %32 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %31) #9, !srcloc !84
  %34 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sir1_regs.i, align 4
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %37 = or i16 %36, 2048
  %38 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #9, !srcloc !84
  %40 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sir1_regs.i, align 4
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %43 = and i16 %42, -241
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %arrayidx = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %46 to i16
  %47 = shl i16 %.tr, 12
  %conv69 = or i16 %47, %44
  %48 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv69) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %49, i16 %50) #9, !srcloc !84
  %51 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sir1_regs.i, align 4
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %54 = and i16 %53, -16
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %arrayidx85 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx85, align 4
  %.tr232 = trunc i32 %57 to i16
  %58 = shl i16 %.tr232, 8
  %59 = and i16 %58, 3840
  %conv90 = or i16 %59, %55
  %60 = ptrtoint ptr %sir1_regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sir1_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv90) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 %62) #9, !srcloc !84
  %rxtx_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 11
  %63 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr99 = getelementptr i8, ptr %64, i32 80
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr99) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %66 = and i16 %65, -1025
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %arrayidx105 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx105, align 4
  %.tr233 = trunc i32 %69 to i16
  %70 = shl i16 %.tr233, 2
  %71 = and i16 %70, 4
  %conv110 = or i16 %71, %67
  %72 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr114 = getelementptr i8, ptr %73, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv110) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr114, i16 %74) #9, !srcloc !84
  %75 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr120 = getelementptr i8, ptr %76, i32 456
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr120) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %78 = and i16 %77, -255
  %79 = tail call i16 @llvm.bswap.i16(i16 %78)
  %arrayidx126 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 3, i32 2
  %80 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx126, align 4
  %.tr234 = trunc i32 %81 to i16
  %82 = shl i16 %.tr234, 9
  %conv131 = or i16 %82, %79
  %83 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr135 = getelementptr i8, ptr %84, i32 456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %85 = tail call i16 @llvm.bswap.i16(i16 %conv131) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr135, i16 %85) #9, !srcloc !84
  %86 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr141 = getelementptr i8, ptr %87, i32 516
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr141) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %89 = and i16 %88, -193
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %arrayidx147 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 5, i32 2
  %91 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx147, align 4
  %.tr235 = trunc i32 %92 to i16
  %93 = shl i16 %.tr235, 14
  %conv152 = or i16 %93, %90
  %94 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr156 = getelementptr i8, ptr %95, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %96 = tail call i16 @llvm.bswap.i16(i16 %conv152) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr156, i16 %96) #9, !srcloc !84
  %arrayidx159 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 6, i32 2
  %97 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx159, align 4
  %conv160 = trunc i32 %98 to i16
  %99 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr162 = getelementptr i8, ptr %100, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %101 = tail call i16 @llvm.bswap.i16(i16 %conv160) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr162, i16 %101) #9, !srcloc !84
  tail call fastcc void @xgbe_phy_complete_ratechange(ptr noundef %pdata)
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %102 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %msg_enable, align 4
  %and164 = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool.not = icmp eq i32 %and164, 0
  br i1 %tobool.not, label %entry.do.end175_crit_edge, label %do.body165

entry.do.end175_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

do.body165:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_kr_mode.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_kr_mode, %if.then170)) #9
          to label %do.end175 [label %if.then170], !srcloc !85

if.then170:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_kr_mode.__UNIQUE_ID_ddebug352, ptr noundef %105, ptr noundef nonnull @.str.34) #9
  br label %do.end175

do.end175:                                        ; preds = %if.then170, %do.body165, %entry.do.end175_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_complete_ratechange(ptr nocapture noundef readonly %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sir1_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 13
  %0 = ptrtoint ptr %sir1_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sir1_regs, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %3 = and i16 %2, -16385
  %4 = ptrtoint ptr %sir1_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sir1_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %3) #9, !srcloc !84
  %sir0_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 12
  br label %while.body

while.cond:                                       ; preds = %while.body
  %dec = add nsw i32 %wait.088, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body18, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry
  %wait.088 = phi i32 [ 500, %entry ], [ %dec, %while.cond.while.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 75, i32 noundef 2) #9
  %6 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sir0_regs, align 8
  %add.ptr9 = getelementptr i8, ptr %7, i32 64
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #9, !srcloc !81
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %conv11 = zext i16 %9 to i32
  %10 = and i32 %conv11, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %10)
  %.not = icmp eq i32 %10, 257
  br i1 %.not, label %while.body.do.body35_crit_edge, label %while.cond

while.body.do.body35_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

do.body18:                                        ; preds = %while.cond
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and19 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.body35_crit_edge, label %do.body22

do.body18.do.body35_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

do.body22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_complete_ratechange.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_complete_ratechange, %if.then27)) #9
          to label %do.body35 [label %if.then27], !srcloc !85

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_complete_ratechange.__UNIQUE_ID_ddebug351, ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef %conv11) #9
  br label %do.body35

do.body35:                                        ; preds = %if.then27, %do.body22, %do.body18.do.body35_crit_edge, %while.body.do.body35_crit_edge
  %rxtx_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 11
  %15 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr37 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %18 = and i16 %17, -2
  %19 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr49 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49, i16 %18) #9, !srcloc !84
  %21 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr55 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %24 = or i16 %23, 1
  %25 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxtx_regs, align 4
  %add.ptr67 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr67, i16 %24) #9, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 689, i32 49}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 692, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @xgbe_phy_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @xgbe_phy_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @xgbe_phy_init._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 702, i32 3}
!12 = !{ptr @xgbe_phy_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 708, i32 46}
!15 = !{ptr @xgbe_phy_init._entry.9, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 714, i32 4}
!17 = !{ptr @xgbe_phy_init._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 723, i32 46}
!20 = !{ptr @xgbe_phy_init._entry.12, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 729, i32 4}
!22 = !{ptr @xgbe_phy_init._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 738, i32 46}
!25 = !{ptr @xgbe_phy_init._entry.15, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 744, i32 4}
!27 = !{ptr @xgbe_phy_init._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 753, i32 46}
!30 = !{ptr @xgbe_phy_init._entry.18, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 759, i32 4}
!32 = !{ptr @xgbe_phy_init._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 768, i32 46}
!35 = !{ptr @xgbe_phy_init._entry.21, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 774, i32 4}
!37 = !{ptr @xgbe_phy_init._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 783, i32 46}
!40 = !{ptr @xgbe_phy_init._entry.24, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 789, i32 4}
!42 = !{ptr @xgbe_phy_init._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @xgbe_phy_blwc, !44, !"xgbe_phy_blwc", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 168, i32 18}
!45 = !{ptr @xgbe_phy_cdr_rate, !46, !"xgbe_phy_cdr_rate", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 174, i32 18}
!47 = !{ptr @xgbe_phy_pq_skew, !48, !"xgbe_phy_pq_skew", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 180, i32 18}
!49 = !{ptr @xgbe_phy_tx_amp, !50, !"xgbe_phy_tx_amp", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 186, i32 18}
!51 = !{ptr @xgbe_phy_dfe_tap_cfg, !52, !"xgbe_phy_dfe_tap_cfg", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 192, i32 18}
!53 = !{ptr @xgbe_phy_dfe_tap_ena, !54, !"xgbe_phy_dfe_tap_ena", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 198, i32 18}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 493, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug354, !56, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 358, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @xgbe_phy_complete_ratechange.__UNIQUE_ID_ddebug351, !61, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 450, i32 2}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug353, !65, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v1.c", i32 407, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @xgbe_phy_kr_mode.__UNIQUE_ID_ddebug352, !69, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 6686878}
!82 = !{i64 2154219963}
!83 = !{i64 2154221380}
!84 = !{i64 6686678}
!85 = !{i64 2148977855, i64 2148977860, i64 2148977873, i64 2148977917, i64 2148977951, i64 2148977972}
