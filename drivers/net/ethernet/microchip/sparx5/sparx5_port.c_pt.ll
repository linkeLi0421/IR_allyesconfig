; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_port.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sparx5_port_status = type { i8, i8, i32, i8, i32, i32 }
%struct.sparx5 = type { ptr, ptr, i32, i32, [332 x ptr], i32, %struct.mutex, [65 x ptr], i32, i32, i32, ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, [6 x i8], ptr, [3 x i32], [3 x i32], [3 x i32], [4096 x [3 x i32]], %struct.list_head, %struct.mutex, %struct.delayed_work, ptr, i8, i32, i32, %struct.sparx5_rx, %struct.sparx5_tx }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Status not supported\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DST-MEM\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SRC-MEM\00", [24 x i8] zeroinitializer }, align 32
@sparx5_port_flush_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 306, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Flush timeout port %u. %s queue not empty\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sparx5_port_flush_poll\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_port.c\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sparx5_port_flush_poll._entry_ptr = internal global ptr @sparx5_port_flush_poll._entry, section ".printk_index", align 4
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Interface does not support speed: %u: for %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Switch port does not support interface type: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__const.sparx5_port_fifo_sz.taxi_dist = private unnamed_addr constant [70 x i32] [i32 6, i32 8, i32 10, i32 6, i32 8, i32 10, i32 6, i32 8, i32 10, i32 6, i32 8, i32 10, i32 4, i32 4, i32 4, i32 4, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 4, i32 6, i32 8, i32 4, i32 6, i32 8, i32 6, i32 8, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table.sparx5_port_config = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.3, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.42, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [40 x i8] zeroinitializer }, align 32
@switch.table.sparx5_port_config.44 = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [36 x i8] zeroinitializer }, align 32
@switch.table.sparx5_port_config.45 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [44 x i8] zeroinitializer }, align 32
@switch.table.sparx5_port_config.46 = internal constant { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.43, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.43, ptr @.str.32, ptr @.str.42, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.36, ptr @.str.37, ptr @.str.43, ptr @.str.43, ptr @.str.40, ptr @.str.41], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4, i64 18, i64 21, i64 22, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 23, i64 26]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 2500, i64 5000, i64 10000, i64 25000]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 18, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 18, i64 21]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4, i64 18, i64 21, i64 22, i64 23, i64 26, i64 27]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 5000, i64 10000, i64 25000]
@__sancov_gen_cov_switch_values.58 = internal global [9 x i64] [i64 7, i64 32, i64 10, i64 100, i64 1000, i64 2500, i64 5000, i64 10000, i64 25000]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 2500, i64 5000, i64 10000, i64 25000]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 23, i64 26, i64 27]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 182, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 346, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 275, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 294, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 294, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 304, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 195, i32 7 }
@___asan_gen_.99 = private constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 200, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 213, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 215, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 217, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 219, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 221, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 223, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 225, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 227, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 229, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 231, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 233, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 235, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 237, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 239, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 241, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 243, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 245, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 247, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 249, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 251, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 253, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 255, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 257, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 259, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 261, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 263, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 265, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 267, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 269, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 271, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant [32 x i8] c"switch.table.sparx5_port_config\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [35 x i8] c"switch.table.sparx5_port_config.44\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [35 x i8] c"switch.table.sparx5_port_config.45\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [35 x i8] c"switch.table.sparx5_port_config.46\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @sparx5_port_flush_poll._entry, ptr @sparx5_port_flush_poll._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.sparx5_port_config, ptr @switch.table.sparx5_port_config.44, ptr @switch.table.sparx5_port_config.45, ptr @switch.table.sparx5_port_config.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_port_flush_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sparx5_port_config to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sparx5_port_config.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sparx5_port_config.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sparx5_port_config.46 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_get_port_status(ptr nocapture noundef readonly %sparx5, ptr nocapture noundef readonly %port, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %status, i32 0, i32 20)
  %speed = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speed, align 8
  %speed1 = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 2
  %3 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %speed1, align 4
  %power_down = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %power_down to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_down, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %status, align 4
  br label %return

if.end:                                           ; preds = %entry
  %conf = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4
  %7 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %conf, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 18, label %if.end.sw.bb_crit_edge24
    i32 21, label %if.end.sw.bb_crit_edge25
    i32 22, label %if.end.sw.bb_crit_edge26
    i32 0, label %if.end.return_crit_edge
    i32 23, label %if.end.if.end.i21_crit_edge
    i32 26, label %if.end.if.end.i21_crit_edge27
    i32 27, label %if.end.if.end.i21_crit_edge28
  ]

if.end.if.end.i21_crit_edge28:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i21

if.end.if.end.i21_crit_edge27:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i21

if.end.if.end.i21_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i21

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.sw.bb_crit_edge26:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge25:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge24:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge24, %if.end.sw.bb_crit_edge25, %if.end.sw.bb_crit_edge26
  %portno1.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %10 = ptrtoint ptr %portno1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %portno1.i, align 4
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %11)
  %cmp.not.i.i.i = icmp ult i16 %11, 65
  br i1 %cmp.not.i.i.i, label %sw.bb.spx5_rd.exit.i_crit_edge, label %do.end.i.i.i, !prof !96

sw.bb.spx5_rd.exit.i_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rd.exit.i

do.end.i.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rd.exit.i

spx5_rd.exit.i:                                   ; preds = %do.end.i.i.i, %sw.bb.spx5_rd.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 4
  %add.i.i.i = add nuw nsw i32 %conv.i, 37
  %arrayidx.i.i.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %13, i32 136
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !97
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %link_down.i = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 1
  %.lobit.i = lshr exact i32 %16, 4
  %17 = trunc i32 %.lobit.i to i8
  %18 = ptrtoint ptr %link_down.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %link_down.i, align 1
  br i1 %tobool.not.i, label %spx5_rd.exit.i.if.end.i_crit_edge, label %if.then.i

spx5_rd.exit.i.if.end.i_crit_edge:                ; preds = %spx5_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %spx5_rd.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i.i, label %if.then.i.spx5_wr.exit.i_crit_edge, label %do.end.i.i2.i, !prof !96

if.then.i.spx5_wr.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit.i

do.end.i.i2.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit.i

spx5_wr.exit.i:                                   ; preds = %do.end.i.i2.i, %if.then.i.spx5_wr.exit.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i7.i = getelementptr i8, ptr %20, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i7.i, i32 %14) #5, !srcloc !100
  br label %if.end.i

if.end.i:                                         ; preds = %spx5_wr.exit.i, %spx5_rd.exit.i.if.end.i_crit_edge
  br i1 %cmp.not.i.i.i, label %if.end.i.spx5_rd.exit15.i_crit_edge, label %do.end.i.i9.i, !prof !96

if.end.i.spx5_rd.exit15.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rd.exit15.i

do.end.i.i9.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rd.exit15.i

spx5_rd.exit15.i:                                 ; preds = %do.end.i.i9.i, %if.end.i.spx5_rd.exit15.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i14.i = getelementptr i8, ptr %22, i32 128
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i14.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %24 = and i32 %23, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %24)
  %25 = icmp eq i32 %24, 285212672
  %frombool55.i = zext i1 %25 to i8
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool55.i, ptr %status, align 4
  %27 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %conf, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %28, label %spx5_rd.exit15.i.if.end65.i_crit_edge [
    i32 21, label %spx5_rd.exit15.i.if.end65.sink.split.i_crit_edge
    i32 22, label %if.then62.i
  ]

spx5_rd.exit15.i.if.end65.sink.split.i_crit_edge: ; preds = %spx5_rd.exit15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split.i

spx5_rd.exit15.i.if.end65.i_crit_edge:            ; preds = %spx5_rd.exit15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.i

if.then62.i:                                      ; preds = %spx5_rd.exit15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split.i

if.end65.sink.split.i:                            ; preds = %if.then62.i, %spx5_rd.exit15.i.if.end65.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2500, %if.then62.i ], [ 1000, %spx5_rd.exit15.i.if.end65.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %speed1, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end65.sink.split.i, %spx5_rd.exit15.i.if.end65.i_crit_edge
  %duplex.i = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 4
  %31 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %duplex.i, align 4
  br i1 %cmp.not.i.i.i, label %if.end65.i.spx5_rd.exit23.i_crit_edge, label %do.end.i.i17.i, !prof !96

if.end65.i.spx5_rd.exit23.i_crit_edge:            ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rd.exit23.i

do.end.i.i17.i:                                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rd.exit23.i

spx5_rd.exit23.i:                                 ; preds = %do.end.i.i17.i, %if.end65.i.spx5_rd.exit23.i_crit_edge
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i22.i = getelementptr i8, ptr %33, i32 120
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i22.i) #5, !srcloc !97
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %and83.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool85.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool85.not.i, label %spx5_rd.exit23.i.return_crit_edge, label %do.end101.i

spx5_rd.exit23.i.return_crit_edge:                ; preds = %spx5_rd.exit23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end101.i:                                      ; preds = %spx5_rd.exit23.i
  %shr104.i = lshr i32 %35, 16
  %36 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp108.i = icmp eq i32 %37, 4
  br i1 %cmp108.i, label %if.then110.i, label %if.else111.i

if.then110.i:                                     ; preds = %do.end101.i
  %an_complete.i.i = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 3
  %38 = ptrtoint ptr %an_complete.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %an_complete.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool.not.i.i = icmp sgt i32 %35, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %status, align 4
  br label %return

if.end.i.i:                                       ; preds = %if.then110.i
  %and2.i.i = and i32 %shr104.i, 3072
  %40 = zext i32 %and2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and2.i.i, label %sw.default.i.i [
    i32 0, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i32 1024, label %sw.bb3.i.i
    i32 2048, label %sw.bb5.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %status, align 4
  br label %return

sw.epilog.i.i:                                    ; preds = %sw.bb5.i.i, %sw.bb3.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i32 [ 1000, %sw.bb5.i.i ], [ 100, %sw.bb3.i.i ], [ 10, %if.end.i.i.sw.epilog.i.i_crit_edge ]
  %42 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink.i.i, ptr %speed1, align 4
  %43 = and i32 %35, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool10.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %duplex.i, align 4
  br label %return

if.else.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %duplex.i, align 4
  br label %return

if.else111.i:                                     ; preds = %do.end101.i
  br i1 %cmp.not.i.i.i, label %if.else111.i.spx5_rd.exit31.i_crit_edge, label %do.end.i.i25.i, !prof !96

if.else111.i.spx5_rd.exit31.i_crit_edge:          ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rd.exit31.i

do.end.i.i25.i:                                   ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rd.exit31.i

spx5_rd.exit31.i:                                 ; preds = %do.end.i.i25.i, %if.else111.i.spx5_rd.exit31.i_crit_edge
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i30.i = getelementptr i8, ptr %47, i32 100
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i30.i) #5, !srcloc !97
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %shr130.i = lshr i32 %49, 16
  %50 = and i32 %35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i34.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i34.i, label %land.rhs.i.i, label %spx5_rd.exit31.i.land.end.i.i_crit_edge

spx5_rd.exit31.i.land.end.i.i_crit_edge:          ; preds = %spx5_rd.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %spx5_rd.exit31.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %status, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool1.i.i = icmp ne i8 %52, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %spx5_rd.exit31.i.land.end.i.i_crit_edge
  %53 = phi i1 [ false, %spx5_rd.exit31.i.land.end.i.i_crit_edge ], [ %tobool1.i.i, %land.rhs.i.i ]
  %frombool.i.i = zext i1 %53 to i8
  %54 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool.i.i, ptr %status, align 4
  %an_complete.i35.i = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 3
  %55 = ptrtoint ptr %an_complete.i35.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %an_complete.i35.i, align 4
  %56 = and i32 %35, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool6.not.i.i = icmp eq i32 %56, 0
  %cond.i.i = select i1 %tobool6.not.i.i, i32 255, i32 1
  %57 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond.i.i, ptr %duplex.i, align 4
  %58 = and i32 %shr130.i, %shr104.i
  %59 = trunc i32 %58 to i16
  %60 = and i16 %59, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %.not.not.i.i = icmp eq i16 %60, 0
  br i1 %.not.not.i.i, label %if.else.i37.i, label %if.then.i36.i

if.then.i36.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pause.i.i = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 5
  %61 = ptrtoint ptr %pause.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %pause.i.i, align 4
  br label %return

if.else.i37.i:                                    ; preds = %land.end.i.i
  %62 = and i16 %59, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %.not.not49.i.i = icmp eq i16 %62, 0
  br i1 %.not.not49.i.i, label %if.else32.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.else.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  %and22.i.i = lshr i32 %35, 22
  %63 = and i32 %and22.i.i, 2
  %pause25.i.i = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 5
  %64 = ptrtoint ptr %pause25.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pause25.i.i, align 4
  %sum.shift.i = lshr i32 %49, 23
  %66 = and i32 %sum.shift.i, 1
  %or.i.i = or i32 %66, %63
  %or31.i.i = or i32 %or.i.i, %65
  store i32 %or31.i.i, ptr %pause25.i.i, align 4
  br label %return

if.else32.i.i:                                    ; preds = %if.else.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  %pause33.i.i = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 5
  %67 = ptrtoint ptr %pause33.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %pause33.i.i, align 4
  br label %return

if.end.i21:                                       ; preds = %if.end.if.end.i21_crit_edge, %if.end.if.end.i21_crit_edge27, %if.end.if.end.i21_crit_edge28
  %portno1.i19 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %68 = ptrtoint ptr %portno1.i19 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %portno1.i19, align 4
  %conv.i20 = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %69)
  %cmp.i.i.i = icmp ult i16 %69, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %69)
  %cmp1.i.i.i = icmp eq i16 %69, 64
  %spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %spec.select.i.i.i, label %sparx5_to_high_dev.exit.i, label %sparx5_to_high_dev.exit.thread.i

sparx5_to_high_dev.exit.i:                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  %70 = add nsw i32 %conv.i20, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %70)
  %71 = icmp ult i32 %70, 32
  %72 = tail call i32 @llvm.smin.i32(i32 %conv.i20, i32 12) #5
  %spec.select.i = select i1 %71, i32 %conv.i20, i32 %72
  br label %sparx5_port_dev_index.exit.i

sparx5_to_high_dev.exit.thread.i:                 ; preds = %if.end.i21
  %73 = and i32 %conv.i20, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %73)
  %74 = icmp eq i32 %73, 12
  %75 = and i32 %conv.i20, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %75)
  %76 = icmp eq i32 %75, 48
  %77 = or i1 %74, %76
  %..i.i = select i1 %77, i32 17, i32 29
  %78 = add nsw i32 %conv.i20, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %78)
  %79 = icmp ult i32 %78, 32
  br i1 %79, label %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge, label %if.end3.i.i

sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge: ; preds = %sparx5_to_high_dev.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_dev_index.exit.i

if.end3.i.i:                                      ; preds = %sparx5_to_high_dev.exit.thread.i
  br i1 %77, label %if.then5.i.i, label %if.end13.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %69)
  %cmp7.i.i = icmp ult i16 %69, 16
  %cond12.v.i.i = select i1 %cmp7.i.i, i32 -12, i32 -44
  %cond12.i.i = add nsw i32 %cond12.v.i.i, %conv.i20
  br label %sparx5_port_dev_index.exit.i

if.end13.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i = add nsw i32 %conv.i20, -56
  br label %sparx5_port_dev_index.exit.i

sparx5_port_dev_index.exit.i:                     ; preds = %if.end13.i.i, %if.then5.i.i, %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge, %sparx5_to_high_dev.exit.i
  %retval.0.i55.i = phi i32 [ 17, %if.then5.i.i ], [ 29, %if.end13.i.i ], [ %..i.i, %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge ], [ 102, %sparx5_to_high_dev.exit.i ]
  %retval.0.i50.i = phi i32 [ %cond12.i.i, %if.then5.i.i ], [ %sub14.i.i, %if.end13.i.i ], [ %conv.i20, %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge ], [ %spec.select.i, %sparx5_to_high_dev.exit.i ]
  %add.i.i = add nsw i32 %retval.0.i50.i, %retval.0.i55.i
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr51.i.i.i = getelementptr i8, ptr %81, i32 48
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %82)
  %cmp.not.i = icmp eq i32 %82, 33554432
  br i1 %cmp.not.i, label %sparx5_port_dev_index.exit.i.if.end9.i_crit_edge, label %if.then7.i

sparx5_port_dev_index.exit.i.if.end9.i_crit_edge: ; preds = %sparx5_port_dev_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %sparx5_port_dev_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %link_down.i22 = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 1
  %83 = ptrtoint ptr %link_down.i22 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %link_down.i22, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i.i, i32 -1) #5, !srcloc !100
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %84)
  %phi.cmp.i = icmp eq i32 %84, 33554432
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %sparx5_port_dev_index.exit.i.if.end9.i_crit_edge
  %value.0.i = phi i1 [ %phi.cmp.i, %if.then7.i ], [ true, %sparx5_port_dev_index.exit.i.if.end9.i_crit_edge ]
  %frombool12.i = zext i1 %value.0.i to i8
  %85 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %frombool12.i, ptr %status, align 4
  %duplex.i23 = getelementptr inbounds %struct.sparx5_port_status, ptr %status, i32 0, i32 4
  %86 = ptrtoint ptr %duplex.i23 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %duplex.i23, align 4
  %87 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %conf, align 8
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %88, label %if.else24.i [
    i32 23, label %if.then17.i
    i32 26, label %if.then22.i
  ]

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 5000, ptr %speed1, align 4
  br label %return

if.then22.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 10000, ptr %speed1, align 4
  br label %return

if.else24.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 25000, ptr %speed1, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %94, ptr noundef nonnull @.str) #8
  br label %return

return:                                           ; preds = %sw.default, %if.else24.i, %if.then22.i, %if.then17.i, %if.else32.i.i, %if.then20.i.i, %if.then.i36.i, %if.else.i.i, %if.then11.i.i, %sw.default.i.i, %if.then.i.i, %spx5_rd.exit23.i.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -19, %sw.default ], [ %8, %if.end.return_crit_edge ], [ 0, %spx5_rd.exit23.i.return_crit_edge ], [ 0, %if.then.i.i ], [ 0, %sw.default.i.i ], [ 0, %if.then11.i.i ], [ 0, %if.else.i.i ], [ 0, %if.then.i36.i ], [ 0, %if.then20.i.i ], [ 0, %if.else32.i.i ], [ 0, %if.then22.i ], [ 0, %if.else24.i ], [ 0, %if.then17.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sparx5_port_fwd_urg(ptr nocapture readnone %sparx5, i32 noundef %speed) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %speed, label %entry.sw.epilog_crit_edge [
    i32 25000, label %sw.bb4
    i32 10000, label %sw.bb3
    i32 5000, label %sw.bb2
    i32 2500, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %urg.0 = phi i32 [ 15, %sw.bb4 ], [ 41, %sw.bb3 ], [ 83, %sw.bb2 ], [ 167, %sw.bb1 ], [ 419, %entry.sw.epilog_crit_edge ]
  ret i32 %urg.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_serdes_set(ptr nocapture readnone %sparx5, ptr nocapture noundef readonly %port, ptr nocapture noundef %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %speed1 = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %3, label %entry.if.end18_crit_edge [
    i32 18, label %land.lhs.true
    i32 23, label %entry.if.then6_crit_edge
    i32 26, label %entry.if.then6_crit_edge78
    i32 27, label %entry.if.then6_crit_edge79
  ]

entry.if.then6_crit_edge79:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

entry.if.then6_crit_edge78:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %5 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %portno, align 4
  %7 = and i16 %6, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp3.not = icmp eq i16 %7, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then6:                                         ; preds = %entry.if.then6_crit_edge, %entry.if.then6_crit_edge78, %entry.if.then6_crit_edge79
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 26
  %switch.select = select i1 %switch.selectcmp, i32 10000, i32 5000
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %3)
  %switch.selectcmp74 = icmp eq i32 %3, 27
  %switch.select75 = select i1 %switch.selectcmp74, i32 25000, i32 %switch.select
  br label %if.end18

if.end18:                                         ; preds = %if.then6, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %speed.0 = phi i32 [ %switch.select75, %if.then6 ], [ %1, %land.lhs.true.if.end18_crit_edge ], [ %1, %entry.if.end18_crit_edge ]
  %serdes = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 3
  %8 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serdes, align 4
  %media = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 4
  %10 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %media, align 4
  %call19 = tail call i32 @phy_set_media(ptr noundef %9, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.0)
  %cmp22 = icmp sgt i32 %speed.0, 0
  br i1 %cmp22, label %if.then24, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  %12 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serdes, align 4
  %call26 = tail call i32 @phy_set_speed(ptr noundef %13, i32 noundef %speed.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %serdes_reset = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 8
  %14 = ptrtoint ptr %serdes_reset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %serdes_reset, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool31.not = icmp eq i8 %15, 0
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %if.then32

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then32:                                        ; preds = %if.end30
  %16 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serdes, align 4
  %call34 = tail call i32 @phy_reset(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then32.if.end38_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %18 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %conf, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %19, label %if.end38.sparx5_is_baser.exit77_crit_edge [
    i32 23, label %if.end38._crit_edge
    i32 26, label %if.end38._crit_edge80
    i32 27, label %if.end38._crit_edge81
  ]

if.end38._crit_edge81:                            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %21

if.end38._crit_edge80:                            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %21

if.end38._crit_edge:                              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %21

if.end38.sparx5_is_baser.exit77_crit_edge:        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_is_baser.exit77

21:                                               ; preds = %if.end38._crit_edge, %if.end38._crit_edge80, %if.end38._crit_edge81
  br label %sparx5_is_baser.exit77

sparx5_is_baser.exit77:                           ; preds = %21, %if.end38.sparx5_is_baser.exit77_crit_edge
  %22 = phi i32 [ 26, %21 ], [ %19, %if.end38.sparx5_is_baser.exit77_crit_edge ]
  %23 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serdes, align 4
  %call45 = tail call i32 @phy_set_mode_ext(ptr noundef %24, i32 noundef 15, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %sparx5_is_baser.exit77.cleanup_crit_edge

sparx5_is_baser.exit77.cleanup_crit_edge:         ; preds = %sparx5_is_baser.exit77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %sparx5_is_baser.exit77
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %serdes_reset to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %serdes_reset, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %sparx5_is_baser.exit77.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call26, %if.then24.cleanup_crit_edge ], [ %call34, %if.then32.cleanup_crit_edge ], [ %call45, %sparx5_is_baser.exit77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_media(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_speed(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_port_pcs_set(ptr nocapture noundef readonly %sparx5, ptr nocapture noundef %port, ptr nocapture noundef %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  %switch.tableidx = add i32 %1, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  %switch.cast = trunc i32 %switch.tableidx to i5
  %switch.downshift = lshr i5 -7, %switch.cast
  %3 = and i5 %switch.downshift, 1
  %4 = sext i5 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.masked = icmp ne i5 %3, 0
  %5 = select i1 %2, i1 %switch.masked, i1 false
  %conf1.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf1.i, align 8
  %switch.tableidx144 = add i32 %7, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx144)
  %8 = icmp ult i32 %switch.tableidx144, 5
  %switch.cast145 = trunc i32 %switch.tableidx144 to i5
  %switch.downshift147 = lshr i5 -7, %switch.cast145
  %9 = and i5 %switch.downshift147, 1
  %10 = sext i5 %9 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.masked148 = icmp ne i5 %9, 0
  %11 = select i1 %8, i1 %switch.masked148, i1 false
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %1, label %sparx5_dev_change.exit [
    i32 23, label %entry.sparx5_dev_change.exit.thr_comm_crit_edge
    i32 26, label %entry.sparx5_dev_change.exit.thr_comm_crit_edge149
    i32 27, label %entry.sparx5_dev_change.exit.thr_comm_crit_edge150
  ]

entry.sparx5_dev_change.exit.thr_comm_crit_edge150: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_dev_change.exit.thr_comm

entry.sparx5_dev_change.exit.thr_comm_crit_edge149: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_dev_change.exit.thr_comm

entry.sparx5_dev_change.exit.thr_comm_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_dev_change.exit.thr_comm

sparx5_dev_change.exit.thr_comm:                  ; preds = %entry.sparx5_dev_change.exit.thr_comm_crit_edge, %entry.sparx5_dev_change.exit.thr_comm_crit_edge149, %entry.sparx5_dev_change.exit.thr_comm_crit_edge150
  br i1 %11, label %sparx5_dev_change.exit.thr_comm.if.end6_crit_edge, label %sparx5_dev_change.exit.thr_comm.if.then_crit_edge

sparx5_dev_change.exit.thr_comm.if.then_crit_edge: ; preds = %sparx5_dev_change.exit.thr_comm
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

sparx5_dev_change.exit.thr_comm.if.end6_crit_edge: ; preds = %sparx5_dev_change.exit.thr_comm
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

sparx5_dev_change.exit:                           ; preds = %entry
  br i1 %11, label %sparx5_dev_change.exit.if.then_crit_edge, label %sparx5_dev_change.exit.if.end6_crit_edge

sparx5_dev_change.exit.if.end6_crit_edge:         ; preds = %sparx5_dev_change.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

sparx5_dev_change.exit.if.then_crit_edge:         ; preds = %sparx5_dev_change.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %sparx5_dev_change.exit.if.then_crit_edge, %sparx5_dev_change.exit.thr_comm.if.then_crit_edge
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %13 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %portno, align 4
  %conv = zext i16 %14 to i32
  tail call fastcc void @sparx5_dev_switch(ptr noundef %sparx5, i32 noundef %conv, i1 noundef zeroext %5)
  %lnot = xor i1 %5, true
  %call3 = tail call fastcc i32 @sparx5_port_disable(ptr noundef %sparx5, ptr noundef %port, i1 noundef zeroext %lnot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %sparx5_dev_change.exit.if.end6_crit_edge, %sparx5_dev_change.exit.thr_comm.if.end6_crit_edge
  %call8 = tail call fastcc i32 @sparx5_port_disable(ptr noundef %sparx5, ptr noundef %port, i1 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  br i1 %5, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %15 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %16)
  %cmp.i = icmp eq i32 %16, 23
  %portno.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %17 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %portno.i, align 4
  %conv.i = zext i16 %18 to i32
  %19 = add nsw i32 %conv.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %20 = icmp ult i32 %19, 32
  br i1 %20, label %if.then13.sparx5_port_dev_index.exit.i_crit_edge, label %if.end.i.i

if.then13.sparx5_port_dev_index.exit.i_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_dev_index.exit.i

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %18)
  %cmp.i.i.i = icmp ult i16 %18, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %18)
  %cmp1.i.i.i = icmp eq i16 %18, 64
  %spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %spec.select.i.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = tail call i32 @llvm.smin.i32(i32 %conv.i, i32 12) #5
  br label %sparx5_port_dev_index.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %22 = and i32 %conv.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %22)
  %23 = icmp eq i32 %22, 12
  %24 = and i32 %conv.i, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %24)
  %25 = icmp eq i32 %24, 48
  %26 = or i1 %23, %25
  br i1 %26, label %if.then5.i.i, label %if.end13.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %18)
  %cmp7.i.i = icmp ult i16 %18, 16
  %cond12.v.i.i = select i1 %cmp7.i.i, i32 -12, i32 -44
  %cond12.i.i = add nsw i32 %cond12.v.i.i, %conv.i
  br label %sparx5_port_dev_index.exit.i

if.end13.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i = add nsw i32 %conv.i, -56
  br label %sparx5_port_dev_index.exit.i

sparx5_port_dev_index.exit.i:                     ; preds = %if.end13.i.i, %if.then5.i.i, %if.then2.i.i, %if.then13.sparx5_port_dev_index.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %21, %if.then2.i.i ], [ %cond12.i.i, %if.then5.i.i ], [ %sub14.i.i, %if.end13.i.i ], [ %conv.i, %if.then13.sparx5_port_dev_index.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %18)
  %cmp.i.i182.i = icmp ult i16 %18, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %18)
  %cmp1.i.i183.i = icmp eq i16 %18, 64
  %spec.select.i.i184.i = or i1 %cmp.i.i182.i, %cmp1.i.i183.i
  br i1 %spec.select.i.i184.i, label %sparx5_port_dev_index.exit.i.sparx5_to_pcs_dev.exit.i_crit_edge, label %if.end.i191.i

sparx5_port_dev_index.exit.i.sparx5_to_pcs_dev.exit.i_crit_edge: ; preds = %sparx5_port_dev_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_to_pcs_dev.exit.i

if.end.i191.i:                                    ; preds = %sparx5_port_dev_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = and i32 %conv.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %27)
  %28 = icmp eq i32 %27, 12
  %29 = and i32 %conv.i, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %29)
  %30 = icmp eq i32 %29, 48
  %31 = or i1 %28, %30
  %..i.i = select i1 %31, i32 17, i32 29
  %..i190.i = select i1 %31, i32 132, i32 144
  br label %sparx5_to_pcs_dev.exit.i

sparx5_to_pcs_dev.exit.i:                         ; preds = %if.end.i191.i, %sparx5_port_dev_index.exit.i.sparx5_to_pcs_dev.exit.i_crit_edge
  %retval.0.i186201.i = phi i32 [ %..i.i, %if.end.i191.i ], [ 102, %sparx5_port_dev_index.exit.i.sparx5_to_pcs_dev.exit.i_crit_edge ]
  %retval.0.i192.i = phi i32 [ %..i190.i, %if.end.i191.i ], [ 160, %sparx5_port_dev_index.exit.i.sparx5_to_pcs_dev.exit.i_crit_edge ]
  %add.i.i = add nsw i32 %retval.0.i186201.i, %retval.0.i.i
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %add.i193.i = add nsw i32 %retval.0.i192.i, %retval.0.i.i
  %arrayidx.i194.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i193.i
  %34 = ptrtoint ptr %arrayidx.i194.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i194.i, align 4
  %call9.i = tail call i32 @sparx5_serdes_set(ptr undef, ptr noundef %port, ptr noundef %conf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sparx5_to_pcs_dev.exit.i.cleanup_crit_edge

sparx5_to_pcs_dev.exit.i.cleanup_crit_edge:       ; preds = %sparx5_to_pcs_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sparx5_to_pcs_dev.exit.i
  %36 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %37)
  %cmp11.i = icmp eq i32 %37, 27
  br i1 %cmp11.i, label %do.end25.i, label %do.end40.i

do.end25.i:                                       ; preds = %if.end.i
  %regs.i.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retval.0.i.i)
  %cmp.not.i.i.i = icmp slt i32 %retval.0.i.i, 8
  br i1 %cmp.not.i.i.i, label %do.end25.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i, !prof !96

do.end25.i.if.end.i.i.i_crit_edge:                ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %do.end25.i.if.end.i.i.i_crit_edge
  %add.i.i.i = add nsw i32 %retval.0.i.i, 29
  %arrayidx.i.i.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 488
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.spx5_rmw.exit.i_crit_edge, label %do.end.i2.i.i, !prof !96

if.end.i.i.i.spx5_rmw.exit.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit.i

do.end.i2.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit.i

spx5_rmw.exit.i:                                  ; preds = %do.end.i2.i.i, %if.end.i.i.i.spx5_rmw.exit.i_crit_edge
  %41 = or i32 %40, 16777216
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %43, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %41) #5, !srcloc !100
  br label %do.end57.i

do.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %45 = or i32 %44, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %45) #5, !srcloc !100
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end40.i, %spx5_rmw.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 285212672) #5, !srcloc !100
  %shl.i = select i1 %cmp.i, i32 1048576, i32 0
  %add.ptr.i.i197.i = getelementptr i8, ptr %33, i32 436
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i197.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %47 = and i32 %46, -286355457
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %or.i199.i = or i32 %48, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i199.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i197.i, i32 %49) #5, !srcloc !100
  br label %if.end19

if.else:                                          ; preds = %if.end11
  %inband.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %inband.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %inband.i, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i112 = icmp eq i8 %51, 0
  br i1 %tobool.not.i112, label %if.else.do.body18.i_crit_edge, label %if.then.i

if.else.do.body18.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18.i

if.then.i:                                        ; preds = %if.else
  %52 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %conf, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %53, label %if.end9.fold.split.i [
    i32 4, label %if.then.i.if.end9.i_crit_edge
    i32 18, label %if.then.i.if.end9.i_crit_edge151
    i32 21, label %land.lhs.true.i
  ]

if.then.i.if.end9.i_crit_edge151:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %autoneg.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 7
  %55 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %autoneg.i, align 2, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool7.not.i = icmp ne i8 %56, 0
  br label %if.end9.i

if.end9.fold.split.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.fold.split.i, %land.lhs.true.i, %if.then.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge151
  %inband_aneg.0.i = phi i1 [ true, %if.then.i.if.end9.i_crit_edge ], [ true, %if.then.i.if.end9.i_crit_edge151 ], [ false, %if.end9.fold.split.i ], [ %tobool7.not.i, %land.lhs.true.i ]
  %call.i = tail call i32 @sparx5_serdes_set(ptr undef, ptr noundef %port, ptr noundef %conf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.do.body18.i_crit_edge, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i.do.body18.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18.i

do.body18.i:                                      ; preds = %if.end9.i.do.body18.i_crit_edge, %if.else.do.body18.i_crit_edge
  %inband_aneg.1.off0.i = phi i1 [ %inband_aneg.0.i, %if.end9.i.do.body18.i_crit_edge ], [ false, %if.else.do.body18.i_crit_edge ]
  %portno.i113 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %57 = ptrtoint ptr %portno.i113 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %portno.i113, align 4
  %conv35.i = zext i16 %58 to i32
  %regs.i.i114 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %58)
  %cmp.not.i.i.i115 = icmp ult i16 %58, 65
  br i1 %cmp.not.i.i.i115, label %do.body18.i.if.end.i.i.i119_crit_edge, label %do.end.i.i.i116, !prof !96

do.body18.i.if.end.i.i.i119_crit_edge:            ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i119

do.end.i.i.i116:                                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i.i119

if.end.i.i.i119:                                  ; preds = %do.end.i.i.i116, %do.body18.i.if.end.i.i.i119_crit_edge
  %add.i.i.i117 = add nuw nsw i32 %conv35.i, 37
  %arrayidx.i.i.i118 = getelementptr ptr, ptr %regs.i.i114, i32 %add.i.i.i117
  %59 = ptrtoint ptr %arrayidx.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i118, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %60, i32 92
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i.i115, label %if.end.i.i.i119.spx5_rmw.exit.i121_crit_edge, label %do.end.i2.i.i120, !prof !96

if.end.i.i.i119.spx5_rmw.exit.i121_crit_edge:     ; preds = %if.end.i.i.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit.i121

do.end.i2.i.i120:                                 ; preds = %if.end.i.i.i119
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit.i121

spx5_rmw.exit.i121:                               ; preds = %do.end.i2.i.i120, %if.end.i.i.i119.spx5_rmw.exit.i121_crit_edge
  %62 = and i32 %61, -16777217
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %64 = xor i8 %51, 1
  %and3.i.i = zext i8 %64 to i32
  %or.i.i = or i32 %63, %and3.i.i
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %66 = ptrtoint ptr %arrayidx.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i118, align 4
  %add.ptr82.i14.i.i = getelementptr i8, ptr %67, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i.i, i32 %65) #5, !srcloc !100
  %68 = ptrtoint ptr %portno.i113 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %portno.i113, align 4
  %conv53.i = zext i16 %69 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %69)
  %cmp.not.i.i213.i = icmp ult i16 %69, 65
  br i1 %cmp.not.i.i213.i, label %spx5_rmw.exit.i121.spx5_wr.exit.i_crit_edge, label %do.end.i.i214.i, !prof !96

spx5_rmw.exit.i121.spx5_wr.exit.i_crit_edge:      ; preds = %spx5_rmw.exit.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit.i

do.end.i.i214.i:                                  ; preds = %spx5_rmw.exit.i121
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit.i

spx5_wr.exit.i:                                   ; preds = %do.end.i.i214.i, %spx5_rmw.exit.i121.spx5_wr.exit.i_crit_edge
  %add.i.i217.i = add nuw nsw i32 %conv53.i, 37
  %arrayidx.i.i218.i = getelementptr ptr, ptr %regs.i.i114, i32 %add.i.i217.i
  %70 = ptrtoint ptr %arrayidx.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i218.i, align 4
  %add.ptr.i.i219.i = getelementptr i8, ptr %71, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i219.i, i32 16777216) #5, !srcloc !100
  br i1 %inband_aneg.1.off0.i, label %if.then55.i, label %if.else135.i

if.then55.i:                                      ; preds = %spx5_wr.exit.i
  %72 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %73)
  %cmp.i.i = icmp eq i32 %73, 21
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then55.i.sparx5_get_aneg_word.exit.i_crit_edge

if.then55.i.sparx5_get_aneg_word.exit.i_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_get_aneg_word.exit.i

if.then.i.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  %pause_adv.i.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 10
  %74 = ptrtoint ptr %pause_adv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pause_adv.i.i, align 4
  %phi.cast.i = shl i32 %75, 16
  %phi.bo248.i = or i32 %phi.cast.i, 1075839235
  br label %sparx5_get_aneg_word.exit.i

sparx5_get_aneg_word.exit.i:                      ; preds = %if.then.i.i, %if.then55.i.sparx5_get_aneg_word.exit.i_crit_edge
  %retval.0.i.i122 = phi i32 [ %phi.bo248.i, %if.then.i.i ], [ 65795, %if.then55.i.sparx5_get_aneg_word.exit.i_crit_edge ]
  %76 = ptrtoint ptr %portno.i113 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %portno.i113, align 4
  %conv134.i = zext i16 %77 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %77)
  %cmp.not.i.i220.i = icmp ult i16 %77, 65
  br i1 %cmp.not.i.i220.i, label %sparx5_get_aneg_word.exit.i.spx5_wr.exit228.i_crit_edge, label %do.end.i.i221.i, !prof !96

sparx5_get_aneg_word.exit.i.spx5_wr.exit228.i_crit_edge: ; preds = %sparx5_get_aneg_word.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit228.i

do.end.i.i221.i:                                  ; preds = %sparx5_get_aneg_word.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit228.i

spx5_wr.exit228.i:                                ; preds = %do.end.i.i221.i, %sparx5_get_aneg_word.exit.i.spx5_wr.exit228.i_crit_edge
  %78 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i122) #5
  %add.i.i224.i = add nuw nsw i32 %conv134.i, 37
  %arrayidx.i.i225.i = getelementptr ptr, ptr %regs.i.i114, i32 %add.i.i224.i
  %79 = ptrtoint ptr %arrayidx.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i225.i, align 4
  %add.ptr82.i.i227.i = getelementptr i8, ptr %80, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i227.i, i32 %78) #5, !srcloc !100
  br label %do.end153.i

if.else135.i:                                     ; preds = %spx5_wr.exit.i
  %81 = ptrtoint ptr %portno.i113 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %portno.i113, align 4
  %conv137.i = zext i16 %82 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %82)
  %cmp.not.i.i229.i = icmp ult i16 %82, 65
  br i1 %cmp.not.i.i229.i, label %if.else135.i.spx5_wr.exit237.i_crit_edge, label %do.end.i.i230.i, !prof !96

if.else135.i.spx5_wr.exit237.i_crit_edge:         ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit237.i

do.end.i.i230.i:                                  ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit237.i

spx5_wr.exit237.i:                                ; preds = %do.end.i.i230.i, %if.else135.i.spx5_wr.exit237.i_crit_edge
  %add.i.i233.i = add nuw nsw i32 %conv137.i, 37
  %arrayidx.i.i234.i = getelementptr ptr, ptr %regs.i.i114, i32 %add.i.i233.i
  %83 = ptrtoint ptr %arrayidx.i.i234.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i234.i, align 4
  %add.ptr82.i.i236.i = getelementptr i8, ptr %84, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i236.i, i32 0) #5, !srcloc !100
  br label %do.end153.i

do.end153.i:                                      ; preds = %spx5_wr.exit237.i, %spx5_wr.exit228.i
  %85 = ptrtoint ptr %portno.i113 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %portno.i113, align 4
  %conv190.i = zext i16 %86 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %86)
  %cmp.not.i.i239.i = icmp ult i16 %86, 65
  br i1 %cmp.not.i.i239.i, label %do.end153.i.if.end.i.i241.i_crit_edge, label %do.end.i.i240.i, !prof !96

do.end153.i.if.end.i.i241.i_crit_edge:            ; preds = %do.end153.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i241.i

do.end.i.i240.i:                                  ; preds = %do.end153.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i241.i

if.end.i.i241.i:                                  ; preds = %do.end.i.i240.i, %do.end153.i.if.end.i.i241.i_crit_edge
  %add.i.i242.i = add nuw nsw i32 %conv190.i, 37
  %arrayidx.i.i243.i = getelementptr ptr, ptr %regs.i.i114, i32 %add.i.i242.i
  %87 = ptrtoint ptr %arrayidx.i.i243.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i243.i, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i239.i, label %if.end.i.i241.i.spx5_rmw.exit247.i_crit_edge, label %do.end.i2.i244.i, !prof !96

if.end.i.i241.i.spx5_rmw.exit247.i_crit_edge:     ; preds = %if.end.i.i241.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit247.i

do.end.i2.i244.i:                                 ; preds = %if.end.i.i241.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit247.i

spx5_rmw.exit247.i:                               ; preds = %do.end.i2.i244.i, %if.end.i.i241.i.spx5_rmw.exit247.i_crit_edge
  %90 = and i32 %89, -1142785
  %91 = or i32 %90, 8192
  %92 = ptrtoint ptr %arrayidx.i.i243.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i243.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #5, !srcloc !100
  br label %if.end19

if.end19:                                         ; preds = %spx5_rmw.exit247.i, %do.end57.i
  %inband = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4, i32 5
  %94 = ptrtoint ptr %inband to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %inband, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool21.not = icmp eq i8 %95, 0
  br i1 %tobool21.not, label %if.end19.if.end77_crit_edge, label %do.body26

if.end19.if.end77_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

do.body26:                                        ; preds = %if.end19
  %shl = select i1 %5, i32 4096, i32 0
  %portno44 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %96 = ptrtoint ptr %portno44 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %portno44, align 4
  %conv45 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %97)
  %cmp51.not.i.i = icmp ult i16 %97, 67
  br i1 %cmp51.not.i.i, label %do.body26.spx5_addr.exit.i_crit_edge, label %do.end67.i.i, !prof !96

do.body26.spx5_addr.exit.i_crit_edge:             ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end67.i.i:                                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end67.i.i, %do.body26.spx5_addr.exit.i_crit_edge
  %arrayidx.i.i125 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 9
  %98 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i125, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %99, i32 33820
  %mul83.i.i = shl nuw nsw i32 %conv45, 2
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr82.i.i, i32 %mul83.i.i
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end67.i8.i, !prof !96

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end67.i8.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end67.i8.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %101 = and i32 %100, -1048577
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %or.i = or i32 %102, %shl
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %104 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i125, align 4
  %add.ptr82.i14.i = getelementptr i8, ptr %105, i32 33820
  %add.ptr84.i16.i = getelementptr i8, ptr %add.ptr82.i14.i, i32 %mul83.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i, i32 %103) #5, !srcloc !100
  %shl73 = select i1 %5, i32 8192, i32 0
  %106 = ptrtoint ptr %portno44 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %portno44, align 4
  %conv76 = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %107)
  %cmp51.not.i.i128 = icmp ult i16 %107, 67
  br i1 %cmp51.not.i.i128, label %spx5_rmw.exit.spx5_addr.exit.i134_crit_edge, label %do.end67.i.i129, !prof !96

spx5_rmw.exit.spx5_addr.exit.i134_crit_edge:      ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i134

do.end67.i.i129:                                  ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i134

spx5_addr.exit.i134:                              ; preds = %do.end67.i.i129, %spx5_rmw.exit.spx5_addr.exit.i134_crit_edge
  %arrayidx.i.i130 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 115
  %108 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i130, align 4
  %add.ptr.i.i131 = getelementptr i8, ptr %109, i32 20
  %mul83.i.i132 = shl nuw nsw i32 %conv76, 2
  %add.ptr84.i.i133 = getelementptr i8, ptr %add.ptr.i.i131, i32 %mul83.i.i132
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i133) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i128, label %spx5_addr.exit.i134.spx5_rmw.exit140_crit_edge, label %do.end67.i8.i135, !prof !96

spx5_addr.exit.i134.spx5_rmw.exit140_crit_edge:   ; preds = %spx5_addr.exit.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit140

do.end67.i8.i135:                                 ; preds = %spx5_addr.exit.i134
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit140

spx5_rmw.exit140:                                 ; preds = %do.end67.i8.i135, %spx5_addr.exit.i134.spx5_rmw.exit140_crit_edge
  %111 = and i32 %110, -2097153
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %or.i137 = or i32 %112, %shl73
  %113 = tail call i32 @llvm.bswap.i32(i32 %or.i137) #5
  %114 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i130, align 4
  %add.ptr.i11.i138 = getelementptr i8, ptr %115, i32 20
  %add.ptr84.i16.i139 = getelementptr i8, ptr %add.ptr.i11.i138, i32 %mul83.i.i132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i139, i32 %113) #5, !srcloc !100
  br label %if.end77

if.end77:                                         ; preds = %spx5_rmw.exit140, %if.end19.if.end77_crit_edge
  %116 = call ptr @memcpy(ptr %conf1.i, ptr %conf, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end9.i.cleanup_crit_edge, %sparx5_to_pcs_dev.exit.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ %call3, %if.then.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ -22, %sparx5_to_pcs_dev.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_dev_switch(ptr nocapture noundef readonly %sparx5, i32 noundef %port, i1 noundef zeroext %hsd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %port, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp ult i32 %0, 32
  br i1 %1, label %entry.sparx5_port_dev_index.exit_crit_edge, label %if.end.i

entry.sparx5_port_dev_index.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_dev_index.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %port)
  %cmp.i.i = icmp slt i32 %port, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %port)
  %cmp1.i.i = icmp eq i32 %port, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 @llvm.smin.i32(i32 %port, i32 12) #5
  br label %sparx5_port_dev_index.exit

if.end3.i:                                        ; preds = %if.end.i
  %3 = and i32 %port, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %4 = icmp eq i32 %3, 12
  %5 = and i32 %port, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %5)
  %6 = icmp eq i32 %5, 48
  %7 = or i1 %4, %6
  br i1 %7, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %port)
  %cmp7.i = icmp ult i32 %port, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %port
  br label %sparx5_port_dev_index.exit

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i = add nsw i32 %port, -56
  br label %sparx5_port_dev_index.exit

sparx5_port_dev_index.exit:                       ; preds = %if.end13.i, %if.then5.i, %if.then2.i, %entry.sparx5_port_dev_index.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then2.i ], [ %cond12.i, %if.then5.i ], [ %sub14.i, %if.end13.i ], [ %port, %entry.sparx5_port_dev_index.exit_crit_edge ]
  %shl = shl nuw i32 1, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %port)
  %cmp.i = icmp slt i32 %port, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %port)
  %cmp1.i = icmp eq i32 %port, 64
  %spec.select.i = or i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %if.then, label %if.else

if.then:                                          ; preds = %sparx5_port_dev_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select = select i1 %hsd, i32 0, i32 %shl
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 173
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %11, %neg.i
  %or.i = or i32 %and.i, %spec.select
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !100
  br label %if.end18

if.else:                                          ; preds = %sparx5_port_dev_index.exit
  %15 = and i32 %port, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %15)
  %16 = icmp eq i32 %15, 12
  %17 = and i32 %port, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %17)
  %18 = icmp eq i32 %17, 48
  %19 = or i1 %16, %18
  br i1 %19, label %if.then3, label %if.else9

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select31 = select i1 %hsd, i32 0, i32 %shl
  %arrayidx.i.i34 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 173
  %20 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i34, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %neg.i35 = xor i32 %shl, -1
  %and.i36 = and i32 %23, %neg.i35
  %or.i37 = or i32 %and.i36, %spec.select31
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i37) #5
  %25 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i34, align 4
  %add.ptr82.i14.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i, i32 %24) #5, !srcloc !100
  br label %if.end18

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %17)
  %27 = icmp eq i32 %17, 56
  br i1 %27, label %if.then11, label %if.else9.if.end18_crit_edge

if.else9.if.end18_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select32 = select i1 %hsd, i32 0, i32 %shl
  %arrayidx.i.i39 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 173
  %28 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i39, align 4
  %add.ptr82.i.i40 = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i40) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %neg.i41 = xor i32 %shl, -1
  %and.i42 = and i32 %31, %neg.i41
  %or.i43 = or i32 %and.i42, %spec.select32
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i43) #5
  %33 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i39, align 4
  %add.ptr82.i14.i44 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i44, i32 %32) #5, !srcloc !100
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.else9.if.end18_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sparx5_port_disable(ptr nocapture noundef readonly %sparx5, ptr nocapture noundef readonly %port, i1 noundef zeroext %high_spd_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %portno, align 4
  %conv = zext i16 %1 to i32
  br i1 %high_spd_dev, label %cond.true, label %if.else

cond.true:                                        ; preds = %entry
  %2 = add nsw i32 %conv, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %3 = icmp ult i32 %2, 32
  br i1 %3, label %cond.true.cond.true5_crit_edge, label %if.end.i

cond.true.cond.true5_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true5

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp.i.i = icmp ult i16 %1, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %1)
  %cmp1.i.i = icmp eq i16 %1, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call i32 @llvm.smin.i32(i32 %conv, i32 12) #5
  br label %cond.true5

if.end3.i:                                        ; preds = %if.end.i
  %5 = and i32 %conv, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %6 = icmp eq i32 %5, 12
  %7 = and i32 %conv, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %7)
  %8 = icmp eq i32 %7, 48
  %9 = or i1 %6, %8
  br i1 %9, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %1)
  %cmp7.i = icmp ult i16 %1, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %conv
  br label %cond.true5

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i = add nsw i32 %conv, -56
  br label %cond.true5

cond.true5:                                       ; preds = %if.end13.i, %if.then5.i, %if.then2.i, %cond.true.cond.true5_crit_edge
  %cond.ph = phi i32 [ %conv, %cond.true.cond.true5_crit_edge ], [ %sub14.i, %if.end13.i ], [ %cond12.i, %if.then5.i ], [ %4, %if.then2.i ]
  %10 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %portno, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %11)
  %cmp.i.i421 = icmp ult i16 %11, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %11)
  %cmp1.i.i422 = icmp eq i16 %11, 64
  %spec.select.i.i423 = or i1 %cmp.i.i421, %cmp1.i.i422
  br i1 %spec.select.i.i423, label %cond.true5.if.then_crit_edge, label %if.end.i424

cond.true5.if.then_crit_edge:                     ; preds = %cond.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i424:                                      ; preds = %cond.true5
  call void @__sanitizer_cov_trace_pc() #7
  %conv7 = zext i16 %11 to i32
  %12 = and i32 %conv7, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %13 = icmp eq i32 %12, 12
  %14 = and i32 %conv7, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %14)
  %15 = icmp eq i32 %14, 48
  %16 = or i1 %13, %15
  %..i = select i1 %16, i32 17, i32 29
  br label %if.then

if.then:                                          ; preds = %if.end.i424, %cond.true5.if.then_crit_edge
  %cond11.ph = phi i32 [ %..i, %if.end.i424 ], [ 102, %cond.true5.if.then_crit_edge ]
  %add.i531 = add nsw i32 %cond11.ph, %cond.ph
  %arrayidx.i532 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i531
  %17 = ptrtoint ptr %arrayidx.i532 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i532, align 4
  %speed533 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %speed533 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed533, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 436
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %22 = or i32 %21, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #5, !srcloc !100
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %24 = and i32 %23, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %24) #5, !srcloc !100
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add nuw nsw i32 %conv, 37
  %arrayidx.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %speed = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %30 = or i32 %29, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %30) #5, !srcloc !100
  %add.ptr.i.i429 = getelementptr i8, ptr %26, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i429) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %32 = and i32 %31, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i429, i32 %32) #5, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = phi i32 [ %28, %if.else ], [ %20, %if.then ]
  %34 = phi ptr [ %26, %if.else ], [ %18, %if.then ]
  %cond527534 = phi i32 [ %conv, %if.else ], [ %cond.ph, %if.then ]
  %portno14 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %35 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %portno14, align 4
  %conv15 = zext i16 %36 to i32
  %regs.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %36)
  %cmp51.not.i.i = icmp ult i16 %36, 70
  br i1 %cmp51.not.i.i, label %if.end.spx5_addr.exit.i_crit_edge, label %do.end67.i.i, !prof !96

if.end.spx5_addr.exit.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end67.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end67.i.i, %if.end.spx5_addr.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 175
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %mul83.i.i = shl nuw nsw i32 %conv15, 2
  %add.ptr84.i.i = getelementptr i8, ptr %38, i32 %mul83.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end67.i8.i, !prof !96

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end67.i8.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end67.i8.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %40 = and i32 %39, -2049
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i16.i = getelementptr i8, ptr %42, i32 %mul83.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i, i32 %40) #5, !srcloc !100
  %43 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %portno14, align 4
  %conv17 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %44)
  %cmp51.not.i.i433 = icmp ult i16 %44, 70
  br i1 %cmp51.not.i.i433, label %spx5_rmw.exit.spx5_addr.exit.i439_crit_edge, label %do.end67.i.i434, !prof !96

spx5_rmw.exit.spx5_addr.exit.i439_crit_edge:      ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i439

do.end67.i.i434:                                  ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i439

spx5_addr.exit.i439:                              ; preds = %do.end67.i.i434, %spx5_rmw.exit.spx5_addr.exit.i439_crit_edge
  %arrayidx.i.i435 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 119
  %45 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %46, i32 184008
  %mul83.i.i437 = shl nuw nsw i32 %conv17, 2
  %add.ptr84.i.i438 = getelementptr i8, ptr %add.ptr82.i.i, i32 %mul83.i.i437
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i438) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i433, label %spx5_addr.exit.i439.spx5_rmw.exit444_crit_edge, label %do.end67.i8.i440, !prof !96

spx5_addr.exit.i439.spx5_rmw.exit444_crit_edge:   ; preds = %spx5_addr.exit.i439
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit444

do.end67.i8.i440:                                 ; preds = %spx5_addr.exit.i439
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit444

spx5_rmw.exit444:                                 ; preds = %do.end67.i8.i440, %spx5_addr.exit.i439.spx5_rmw.exit444_crit_edge
  %48 = or i32 %47, 268435456
  %49 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i14.i = getelementptr i8, ptr %50, i32 184008
  %add.ptr84.i16.i443 = getelementptr i8, ptr %add.ptr82.i14.i, i32 %mul83.i.i437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i443, i32 %48) #5, !srcloc !100
  %51 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %portno14, align 4
  %conv31 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %52)
  %cmp51.not.i.i446 = icmp ult i16 %52, 70
  br i1 %cmp51.not.i.i446, label %spx5_rmw.exit444.spx5_addr.exit.i452_crit_edge, label %do.end67.i.i447, !prof !96

spx5_rmw.exit444.spx5_addr.exit.i452_crit_edge:   ; preds = %spx5_rmw.exit444
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i452

do.end67.i.i447:                                  ; preds = %spx5_rmw.exit444
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i452

spx5_addr.exit.i452:                              ; preds = %do.end67.i.i447, %spx5_rmw.exit444.spx5_addr.exit.i452_crit_edge
  %arrayidx.i.i448 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 178
  %53 = ptrtoint ptr %arrayidx.i.i448 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i448, align 4
  %add.ptr.i.i449 = getelementptr i8, ptr %54, i32 544
  %mul83.i.i450 = shl nuw nsw i32 %conv31, 2
  %add.ptr84.i.i451 = getelementptr i8, ptr %add.ptr.i.i449, i32 %mul83.i.i450
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i451) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i446, label %spx5_addr.exit.i452.spx5_rmw.exit458_crit_edge, label %do.end67.i8.i453, !prof !96

spx5_addr.exit.i452.spx5_rmw.exit458_crit_edge:   ; preds = %spx5_addr.exit.i452
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit458

do.end67.i8.i453:                                 ; preds = %spx5_addr.exit.i452
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit458

spx5_rmw.exit458:                                 ; preds = %do.end67.i8.i453, %spx5_addr.exit.i452.spx5_rmw.exit458_crit_edge
  %56 = and i32 %55, 62980095
  %57 = or i32 %56, -130088960
  %58 = ptrtoint ptr %arrayidx.i.i448 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i448, align 4
  %add.ptr.i11.i456 = getelementptr i8, ptr %59, i32 544
  %add.ptr84.i16.i457 = getelementptr i8, ptr %add.ptr.i11.i456, i32 %mul83.i.i450
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i457, i32 %57) #5, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %33)
  %cmp = icmp eq i32 %33, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %33)
  %cmp35 = icmp eq i32 %33, 100
  %cond37 = select i1 %cmp35, i32 100, i32 10
  %cond39 = select i1 %cmp, i32 1000, i32 %cond37
  %mul = shl nuw nsw i32 %cond39, 3
  %mul40 = mul nuw nsw i32 %cond39, 10
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef %mul40, i32 noundef 2) #5
  %60 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %portno14, align 4
  %conv66 = zext i16 %61 to i32
  %shl = shl i32 %conv66, 18
  %and67 = and i32 %shl, 33292288
  %62 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i.i462 = getelementptr i8, ptr %63, i32 184004
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i462) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %65 = and i32 %64, -64528
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %or117 = or i32 %and67, %66
  %or.i465 = or i32 %or117, 234881024
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i465) #5
  %68 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i14.i467 = getelementptr i8, ptr %69, i32 184004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i467, i32 %67) #5, !srcloc !100
  %70 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %portno14, align 4
  %conv119 = zext i16 %71 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %71)
  %cmp51.not.i.i469 = icmp ult i16 %71, 70
  br i1 %cmp51.not.i.i469, label %spx5_rmw.exit458.spx5_addr.exit.i476_crit_edge, label %do.end67.i.i470, !prof !96

spx5_rmw.exit458.spx5_addr.exit.i476_crit_edge:   ; preds = %spx5_rmw.exit458
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i476

do.end67.i.i470:                                  ; preds = %spx5_rmw.exit458
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i476

spx5_addr.exit.i476:                              ; preds = %do.end67.i.i470, %spx5_rmw.exit458.spx5_addr.exit.i476_crit_edge
  %72 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i.i473 = getelementptr i8, ptr %73, i32 184008
  %mul83.i.i474 = shl nuw nsw i32 %conv119, 2
  %add.ptr84.i.i475 = getelementptr i8, ptr %add.ptr82.i.i473, i32 %mul83.i.i474
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i475) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i469, label %spx5_addr.exit.i476.spx5_rmw.exit482_crit_edge, label %do.end67.i8.i477, !prof !96

spx5_addr.exit.i476.spx5_rmw.exit482_crit_edge:   ; preds = %spx5_addr.exit.i476
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit482

do.end67.i8.i477:                                 ; preds = %spx5_addr.exit.i476
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit482

spx5_rmw.exit482:                                 ; preds = %do.end67.i8.i477, %spx5_addr.exit.i476.spx5_rmw.exit482_crit_edge
  %75 = and i32 %74, -268435457
  %76 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i14.i480 = getelementptr i8, ptr %77, i32 184008
  %add.ptr84.i16.i481 = getelementptr i8, ptr %add.ptr82.i14.i480, i32 %mul83.i.i474
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i481, i32 %75) #5, !srcloc !100
  %78 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %portno14, align 4
  %conv121 = zext i16 %79 to i32
  %mul.i = shl nuw nsw i32 %conv121, 3
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 176
  %add.i483 = add nuw nsw i32 %mul.i, 2048
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %spx5_rmw.exit482
  %delay_cnt.0.i = phi i32 [ 0, %spx5_rmw.exit482 ], [ %inc16.i, %cleanup.i ]
  %mem.0.i = phi ptr [ @.str.3, %spx5_rmw.exit482 ], [ %spec.select.1.i, %cleanup.i ]
  br label %for.body5.i

for.body5.i:                                      ; preds = %spx5_rd.exit.i.for.body5.i_crit_edge, %while.cond.i
  %empty.1.off045.i = phi i1 [ true, %while.cond.i ], [ %spec.select36.i, %spx5_rd.exit.i.for.body5.i_crit_edge ]
  %mem.244.i = phi ptr [ %mem.0.i, %while.cond.i ], [ %spec.select.i, %spx5_rd.exit.i.for.body5.i_crit_edge ]
  %prio.043.i = phi i32 [ 0, %while.cond.i ], [ %inc.i, %spx5_rd.exit.i.for.body5.i_crit_edge ]
  %add6.i = add nuw nsw i32 %add.i483, %prio.043.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %add6.i)
  %cmp20.not.i.i.i = icmp ult i32 %add6.i, 5120
  br i1 %cmp20.not.i.i.i, label %for.body5.i.spx5_rd.exit.i_crit_edge, label %do.end36.i.i.i, !prof !96

for.body5.i.spx5_rd.exit.i_crit_edge:             ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rd.exit.i

do.end36.i.i.i:                                   ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rd.exit.i

spx5_rd.exit.i:                                   ; preds = %do.end36.i.i.i, %for.body5.i.spx5_rd.exit.i_crit_edge
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.i = shl i32 %add6.i, 4
  %add.ptr81.i.i.i = getelementptr i8, ptr %81, i32 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %add.ptr81.i.i.i, i32 %mul.i.i.i
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool7.not.i = icmp eq i32 %82, 0
  %spec.select.i = select i1 %tobool7.not.i, ptr %mem.244.i, ptr @.str.4
  %spec.select36.i = select i1 %tobool7.not.i, i1 %empty.1.off045.i, i1 false
  %inc.i = add nuw nsw i32 %prio.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %spx5_rd.exit.i.for.body5.1.i_crit_edge, label %spx5_rd.exit.i.for.body5.i_crit_edge

spx5_rd.exit.i.for.body5.i_crit_edge:             ; preds = %spx5_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i

spx5_rd.exit.i.for.body5.1.i_crit_edge:           ; preds = %spx5_rd.exit.i
  br label %for.body5.1.i

for.body5.1.i:                                    ; preds = %spx5_rd.exit.1.i.for.body5.1.i_crit_edge, %spx5_rd.exit.i.for.body5.1.i_crit_edge
  %empty.1.off045.1.i = phi i1 [ %spec.select36.1.i, %spx5_rd.exit.1.i.for.body5.1.i_crit_edge ], [ %spec.select36.i, %spx5_rd.exit.i.for.body5.1.i_crit_edge ]
  %mem.244.1.i = phi ptr [ %spec.select.1.i, %spx5_rd.exit.1.i.for.body5.1.i_crit_edge ], [ %spec.select.i, %spx5_rd.exit.i.for.body5.1.i_crit_edge ]
  %prio.043.1.i = phi i32 [ %inc.1.i, %spx5_rd.exit.1.i.for.body5.1.i_crit_edge ], [ 0, %spx5_rd.exit.i.for.body5.1.i_crit_edge ]
  %add6.1.i = add nuw nsw i32 %prio.043.1.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %add6.1.i)
  %cmp20.not.i.i.1.i = icmp ult i32 %add6.1.i, 5120
  br i1 %cmp20.not.i.i.1.i, label %for.body5.1.i.spx5_rd.exit.1.i_crit_edge, label %do.end36.i.i.1.i, !prof !96

for.body5.1.i.spx5_rd.exit.1.i_crit_edge:         ; preds = %for.body5.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rd.exit.1.i

do.end36.i.i.1.i:                                 ; preds = %for.body5.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rd.exit.1.i

spx5_rd.exit.1.i:                                 ; preds = %do.end36.i.i.1.i, %for.body5.1.i.spx5_rd.exit.1.i_crit_edge
  %83 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.1.i = shl i32 %add6.1.i, 4
  %add.ptr81.i.i.1.i = getelementptr i8, ptr %84, i32 4
  %add.ptr82.i.i.1.i = getelementptr i8, ptr %add.ptr81.i.i.1.i, i32 %mul.i.i.1.i
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.1.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool7.not.1.i = icmp eq i32 %85, 0
  %spec.select.1.i = select i1 %tobool7.not.1.i, ptr %mem.244.1.i, ptr @.str.5
  %spec.select36.1.i = select i1 %tobool7.not.1.i, i1 %empty.1.off045.1.i, i1 false
  %inc.1.i = add nuw nsw i32 %prio.043.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 8
  br i1 %exitcond.1.not.i, label %for.end.1.i, label %spx5_rd.exit.1.i.for.body5.1.i_crit_edge

spx5_rd.exit.1.i.for.body5.1.i_crit_edge:         ; preds = %spx5_rd.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.1.i

for.end.1.i:                                      ; preds = %spx5_rd.exit.1.i
  br i1 %spec.select36.1.i, label %if.end125, label %if.end15.i

if.end15.i:                                       ; preds = %for.end.1.i
  %cmp17.i = icmp eq i32 %delay_cnt.0.i, 2000
  br i1 %cmp17.i, label %sparx5_port_flush_poll.exit, label %cleanup.i

cleanup.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc16.i = add nuw nsw i32 %delay_cnt.0.i, 1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %while.cond.i

sparx5_port_flush_poll.exit:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.6, i32 noundef %conv121, ptr noundef %spec.select.1.i) #8
  br label %cleanup

if.end125:                                        ; preds = %for.end.1.i
  br i1 %high_spd_dev, label %do.end142, label %do.end193

do.end142:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i484 = getelementptr i8, ptr %34, i32 436
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i484) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %89 = or i32 %88, 286261248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i484, i32 %89) #5, !srcloc !100
  br label %do.end287

do.end193:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %91 = and i32 %90, -286355457
  %92 = or i32 %91, 286339072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %92) #5, !srcloc !100
  br label %do.end287

do.end287:                                        ; preds = %do.end193, %do.end142
  %93 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %portno14, align 4
  %conv290 = zext i16 %94 to i32
  %shl291 = shl i32 %conv290, 18
  %and292 = and i32 %shl291, 33292288
  %95 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i.i492 = getelementptr i8, ptr %96, i32 184004
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i492) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %98 = and i32 %97, -64522
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %or.i495 = or i32 %99, %and292
  %100 = tail call i32 @llvm.bswap.i32(i32 %or.i495) #5
  %101 = ptrtoint ptr %arrayidx.i.i435 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i435, align 4
  %add.ptr82.i14.i497 = getelementptr i8, ptr %102, i32 184004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i497, i32 %100) #5, !srcloc !100
  %103 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %portno14, align 4
  br i1 %high_spd_dev, label %if.then311, label %do.end368

if.then311:                                       ; preds = %do.end287
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %104)
  %cmp.i.i498 = icmp ult i16 %104, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %104)
  %cmp1.i.i499 = icmp eq i16 %104, 64
  %spec.select.i.i500 = or i1 %cmp.i.i498, %cmp1.i.i499
  br i1 %spec.select.i.i500, label %if.then311.sparx5_to_pcs_dev.exit_crit_edge, label %if.end.i502

if.then311.sparx5_to_pcs_dev.exit_crit_edge:      ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_to_pcs_dev.exit

if.end.i502:                                      ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #7
  %conv313 = zext i16 %104 to i32
  %105 = and i32 %conv313, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %105)
  %106 = icmp eq i32 %105, 12
  %107 = and i32 %conv313, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %107)
  %108 = icmp eq i32 %107, 48
  %109 = or i1 %106, %108
  %..i501 = select i1 %109, i32 132, i32 144
  br label %sparx5_to_pcs_dev.exit

sparx5_to_pcs_dev.exit:                           ; preds = %if.end.i502, %if.then311.sparx5_to_pcs_dev.exit_crit_edge
  %retval.0.i503 = phi i32 [ 160, %if.then311.sparx5_to_pcs_dev.exit_crit_edge ], [ %..i501, %if.end.i502 ]
  %add.i504 = add nsw i32 %retval.0.i503, %cond527534
  %arrayidx.i505 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i504
  %110 = ptrtoint ptr %arrayidx.i505 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i505, align 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %113 = and i32 %112, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %113) #5, !srcloc !100
  %114 = ptrtoint ptr %portno14 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %portno14, align 4
  %116 = and i16 %115, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 56, i16 %116)
  %117 = icmp eq i16 %116, 56
  br i1 %117, label %do.end350, label %sparx5_to_pcs_dev.exit.cleanup_crit_edge

sparx5_to_pcs_dev.exit.cleanup_crit_edge:         ; preds = %sparx5_to_pcs_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end350:                                        ; preds = %sparx5_to_pcs_dev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond527534)
  %cmp.not.i.i = icmp slt i32 %cond527534, 8
  br i1 %cmp.not.i.i, label %do.end350.if.end.i.i_crit_edge, label %do.end.i.i, !prof !96

do.end350.if.end.i.i_crit_edge:                   ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %do.end350.if.end.i.i_crit_edge
  %add.i.i = add nsw i32 %cond527534, 29
  %arrayidx.i.i508 = getelementptr ptr, ptr %regs.i, i32 %add.i.i
  %118 = ptrtoint ptr %arrayidx.i.i508 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i508, align 4
  %add.ptr.i.i509 = getelementptr i8, ptr %119, i32 488
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i509) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i, label %if.end.i.i.spx5_rmw.exit513_crit_edge, label %do.end.i2.i, !prof !96

if.end.i.i.spx5_rmw.exit513_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit513

do.end.i2.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit513

spx5_rmw.exit513:                                 ; preds = %do.end.i2.i, %if.end.i.i.spx5_rmw.exit513_crit_edge
  %121 = and i32 %120, -16777217
  %122 = ptrtoint ptr %arrayidx.i.i508 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i.i508, align 4
  %add.ptr.i11.i512 = getelementptr i8, ptr %123, i32 488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i512, i32 %121) #5, !srcloc !100
  br label %cleanup

do.end368:                                        ; preds = %do.end287
  %conv371 = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %104)
  %cmp.not.i.i515 = icmp ult i16 %104, 65
  br i1 %cmp.not.i.i515, label %do.end368.if.end.i.i517_crit_edge, label %do.end.i.i516, !prof !96

do.end368.if.end.i.i517_crit_edge:                ; preds = %do.end368
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i517

do.end.i.i516:                                    ; preds = %do.end368
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i517

if.end.i.i517:                                    ; preds = %do.end.i.i516, %do.end368.if.end.i.i517_crit_edge
  %add.i.i518 = add nuw nsw i32 %conv371, 37
  %arrayidx.i.i519 = getelementptr ptr, ptr %regs.i, i32 %add.i.i518
  %124 = ptrtoint ptr %arrayidx.i.i519 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i519, align 4
  %add.ptr.i.i520 = getelementptr i8, ptr %125, i32 88
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i520) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i515, label %if.end.i.i517.spx5_rmw.exit525_crit_edge, label %do.end.i2.i522, !prof !96

if.end.i.i517.spx5_rmw.exit525_crit_edge:         ; preds = %if.end.i.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit525

do.end.i2.i522:                                   ; preds = %if.end.i.i517
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit525

spx5_rmw.exit525:                                 ; preds = %do.end.i2.i522, %if.end.i.i517.spx5_rmw.exit525_crit_edge
  %127 = and i32 %126, -16777217
  %128 = ptrtoint ptr %arrayidx.i.i519 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i519, align 4
  %add.ptr.i11.i524 = getelementptr i8, ptr %129, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i524, i32 %127) #5, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %spx5_rmw.exit525, %spx5_rmw.exit513, %sparx5_to_pcs_dev.exit.cleanup_crit_edge, %sparx5_port_flush_poll.exit
  %retval.0 = phi i32 [ -22, %sparx5_port_flush_poll.exit ], [ 0, %sparx5_to_pcs_dev.exit.cleanup_crit_edge ], [ 0, %spx5_rmw.exit513 ], [ 0, %spx5_rmw.exit525 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_port_config(ptr nocapture noundef readonly %sparx5, ptr nocapture noundef %port, ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 4
  %switch.tableidx = add i32 %1, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  %switch.cast = trunc i32 %switch.tableidx to i5
  %switch.downshift = lshr i5 -7, %switch.cast
  %3 = and i5 %switch.downshift, 1
  %4 = sext i5 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.masked = icmp ne i5 %3, 0
  %5 = select i1 %2, i1 %switch.masked, i1 false
  %portno.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %6 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %portno.i, align 4
  %conv.i = zext i16 %7 to i32
  %8 = add nsw i32 %conv.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %9 = icmp ult i32 %8, 32
  br i1 %9, label %land.lhs.true.i, label %entry.lor.lhs.false.i_crit_edge

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %entry
  %speed.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %10 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %11)
  %cmp.i = icmp sgt i32 %11, 2500
  br i1 %cmp.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %7)
  %cmp.i.i = icmp ult i16 %7, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %7)
  %cmp1.i.i = icmp eq i16 %7, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %land.lhs.true7.i, label %lor.lhs.false.i.lor.lhs.false11.i_crit_edge

lor.lhs.false.i.lor.lhs.false11.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false11.i

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %speed8.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %12 = ptrtoint ptr %speed8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %13)
  %cmp9.i = icmp sgt i32 %13, 5000
  br i1 %cmp9.i, label %land.lhs.true7.i.if.then.i_crit_edge, label %land.lhs.true7.i.lor.lhs.false11.i_crit_edge

land.lhs.true7.i.lor.lhs.false11.i_crit_edge:     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false11.i

land.lhs.true7.i.if.then.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false11.i:                                ; preds = %land.lhs.true7.i.lor.lhs.false11.i_crit_edge, %lor.lhs.false.i.lor.lhs.false11.i_crit_edge
  %14 = and i32 %conv.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp eq i32 %14, 12
  %16 = and i32 %conv.i, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %16)
  %17 = icmp eq i32 %16, 48
  %18 = or i1 %15, %17
  br i1 %18, label %land.lhs.true16.i, label %lor.lhs.false11.i.if.end.i_crit_edge

lor.lhs.false11.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true16.i:                                ; preds = %lor.lhs.false11.i
  %speed17.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %19 = ptrtoint ptr %speed17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %20)
  %cmp18.i = icmp sgt i32 %20, 10000
  br i1 %cmp18.i, label %land.lhs.true16.i.if.then.i_crit_edge, label %land.lhs.true16.i.if.end.i_crit_edge

land.lhs.true16.i.if.end.i_crit_edge:             ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true16.i.if.then.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true16.i.if.then.i_crit_edge, %land.lhs.true7.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 8
  %speed.i.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %23 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %1)
  %25 = icmp ult i32 %1, 30
  br i1 %25, label %switch.lookup148, label %if.then.i.sparx5_port_error.exit.i_crit_edge

if.then.i.sparx5_port_error.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_error.exit.i

switch.lookup148:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.sparx5_port_config, i32 0, i32 %1
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sparx5_port_error.exit.i

sparx5_port_error.exit.i:                         ; preds = %switch.lookup148, %if.then.i.sparx5_port_error.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %switch.load, %switch.lookup148 ], [ @.str.43, %if.then.i.sparx5_port_error.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %24, ptr noundef nonnull %retval.0.i.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true16.i.if.end.i_crit_edge, %lor.lhs.false11.i.if.end.i_crit_edge
  %27 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %sw.default.i [
    i32 0, label %if.end.i.cleanup_crit_edge
    i32 21, label %sw.bb21.i
    i32 22, label %sw.bb39.i
    i32 18, label %sw.bb51.i
    i32 4, label %if.end.i.sw.bb59.i_crit_edge
    i32 23, label %if.end.i.sw.bb78.i_crit_edge
    i32 26, label %if.end.i.sw.bb78.i_crit_edge161
    i32 27, label %if.end.i.sw.bb78.i_crit_edge162
  ]

if.end.i.sw.bb78.i_crit_edge162:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78.i

if.end.i.sw.bb78.i_crit_edge161:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78.i

if.end.i.sw.bb78.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78.i

if.end.i.sw.bb59.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb21.i:                                        ; preds = %if.end.i
  %speed22.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %28 = ptrtoint ptr %speed22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %29)
  %cmp23.not.i = icmp ne i32 %29, 1000
  %brmerge.i = select i1 %cmp23.not.i, i1 true, i1 %9
  br i1 %brmerge.i, label %sparx5_port_error.exit33.i, label %sw.bb21.i.if.end_crit_edge

sw.bb21.i.if.end_crit_edge:                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sparx5_port_error.exit33.i:                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.11, i32 noundef %29, ptr noundef nonnull @.str.33) #8
  br label %cleanup

sw.bb39.i:                                        ; preds = %if.end.i
  %speed40.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %32 = ptrtoint ptr %speed40.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %speed40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %33)
  %cmp41.not.i = icmp ne i32 %33, 2500
  %brmerge133.i = select i1 %cmp41.not.i, i1 true, i1 %9
  br i1 %brmerge133.i, label %sparx5_port_error.exit66.i, label %sw.bb39.i.if.end_crit_edge

sw.bb39.i.if.end_crit_edge:                       ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sparx5_port_error.exit66.i:                       ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.11, i32 noundef %33, ptr noundef nonnull @.str.34) #8
  br label %cleanup

sw.bb51.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %7)
  %cmp54.i = icmp ugt i16 %7, 47
  br i1 %cmp54.i, label %sparx5_port_error.exit67.i, label %sw.bb51.i.sw.bb59.i_crit_edge

sw.bb51.i.sw.bb59.i_crit_edge:                    ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59.i

sparx5_port_error.exit67.i:                       ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.31) #8
  br label %cleanup

sw.bb59.i:                                        ; preds = %sw.bb51.i.sw.bb59.i_crit_edge, %if.end.i.sw.bb59.i_crit_edge
  %speed60.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %38 = ptrtoint ptr %speed60.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed60.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %39, label %if.then75.i [
    i32 1000, label %sw.bb59.i.if.end_crit_edge
    i32 100, label %sw.bb59.i.if.end_crit_edge163
    i32 10, label %sw.bb59.i.if.end_crit_edge164
    i32 2500, label %sw.bb59.i.if.end_crit_edge165
  ]

sw.bb59.i.if.end_crit_edge165:                    ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb59.i.if.end_crit_edge164:                    ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb59.i.if.end_crit_edge163:                    ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb59.i.if.end_crit_edge:                       ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then75.i:                                      ; preds = %sw.bb59.i
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 8
  %switch.tableidx150 = add i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx150)
  %43 = icmp ult i32 %switch.tableidx150, 15
  br i1 %43, label %switch.lookup149, label %if.then75.i.sparx5_port_error.exit_crit_edge

if.then75.i.sparx5_port_error.exit_crit_edge:     ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_error.exit

switch.lookup149:                                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep151 = getelementptr inbounds [15 x ptr], ptr @switch.table.sparx5_port_config.44, i32 0, i32 %switch.tableidx150
  %44 = ptrtoint ptr %switch.gep151 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load152 = load ptr, ptr %switch.gep151, align 4
  br label %sparx5_port_error.exit

sparx5_port_error.exit:                           ; preds = %switch.lookup149, %if.then75.i.sparx5_port_error.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load152, %switch.lookup149 ], [ @.str.43, %if.then75.i.sparx5_port_error.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.11, i32 noundef %39, ptr noundef nonnull %retval.0.i.i) #8
  br label %cleanup

sw.bb78.i:                                        ; preds = %if.end.i.sw.bb78.i_crit_edge, %if.end.i.sw.bb78.i_crit_edge161, %if.end.i.sw.bb78.i_crit_edge162
  %speed79.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %45 = ptrtoint ptr %speed79.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed79.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %46, label %if.then90.i [
    i32 5000, label %sw.bb78.i.if.end_crit_edge
    i32 10000, label %sw.bb78.i.if.end_crit_edge166
    i32 25000, label %sw.bb78.i.if.end_crit_edge167
  ]

sw.bb78.i.if.end_crit_edge167:                    ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb78.i.if.end_crit_edge166:                    ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb78.i.if.end_crit_edge:                       ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then90.i:                                      ; preds = %sw.bb78.i
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port, align 8
  %switch.tableidx154 = add i32 %1, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx154)
  %50 = icmp ult i32 %switch.tableidx154, 5
  br i1 %50, label %switch.lookup153, label %if.then90.i.sparx5_port_error.exit100.i_crit_edge

if.then90.i.sparx5_port_error.exit100.i_crit_edge: ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_error.exit100.i

switch.lookup153:                                 ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep155 = getelementptr inbounds [5 x ptr], ptr @switch.table.sparx5_port_config.45, i32 0, i32 %switch.tableidx154
  %51 = ptrtoint ptr %switch.gep155 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load156 = load ptr, ptr %switch.gep155, align 4
  br label %sparx5_port_error.exit100.i

sparx5_port_error.exit100.i:                      ; preds = %switch.lookup153, %if.then90.i.sparx5_port_error.exit100.i_crit_edge
  %retval.0.i.i99.i = phi ptr [ %switch.load156, %switch.lookup153 ], [ @.str.43, %if.then90.i.sparx5_port_error.exit100.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.11, i32 noundef %46, ptr noundef nonnull %retval.0.i.i99.i) #8
  br label %cleanup

sw.default.i:                                     ; preds = %if.end.i
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port, align 8
  %switch.tableidx158 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %switch.tableidx158)
  %54 = icmp ult i32 %switch.tableidx158, 29
  br i1 %54, label %switch.lookup157, label %sw.default.i.sparx5_port_error.exit132.i_crit_edge

sw.default.i.sparx5_port_error.exit132.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_error.exit132.i

switch.lookup157:                                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep159 = getelementptr inbounds [29 x ptr], ptr @switch.table.sparx5_port_config.46, i32 0, i32 %switch.tableidx158
  %55 = ptrtoint ptr %switch.gep159 to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load160 = load ptr, ptr %switch.gep159, align 4
  br label %sparx5_port_error.exit132.i

sparx5_port_error.exit132.i:                      ; preds = %switch.lookup157, %sw.default.i.sparx5_port_error.exit132.i_crit_edge
  %retval.0.i31.i131.i = phi ptr [ %switch.load160, %switch.lookup157 ], [ @.str.43, %sw.default.i.sparx5_port_error.exit132.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.12, ptr noundef nonnull %retval.0.i31.i131.i) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb78.i.if.end_crit_edge, %sw.bb78.i.if.end_crit_edge166, %sw.bb78.i.if.end_crit_edge167, %sw.bb59.i.if.end_crit_edge, %sw.bb59.i.if.end_crit_edge163, %sw.bb59.i.if.end_crit_edge164, %sw.bb59.i.if.end_crit_edge165, %sw.bb39.i.if.end_crit_edge, %sw.bb21.i.if.end_crit_edge
  br i1 %5, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %duplex.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 3
  %56 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i104 = icmp eq i32 %57, 1
  %speed.i105 = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %58 = ptrtoint ptr %speed.i105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %speed.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %59)
  %cmp2.i = icmp eq i32 %59, 100
  %cond.i = select i1 %cmp2.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %59)
  %cmp4.i = icmp eq i32 %59, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %59)
  %cmp5.i = icmp eq i32 %59, 2500
  %narrow.i = or i1 %cmp4.i, %cmp5.i
  %cond9.i = select i1 %cmp.i104, i32 1536, i32 1280
  %cond23.i = select i1 %cmp2.i, i32 64, i32 16
  %shl.i = select i1 %narrow.i, i32 16, i32 0
  %conv67.i = zext i1 %cmp.i104 to i32
  %or.i = or i32 %shl.i, %conv67.i
  %60 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %portno.i, align 4
  %conv70.i = zext i16 %61 to i32
  %regs.i.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %61)
  %cmp.not.i.i.i = icmp ult i16 %61, 65
  br i1 %cmp.not.i.i.i, label %if.then3.if.end.i.i.i_crit_edge, label %do.end.i.i.i, !prof !96

if.then3.if.end.i.i.i_crit_edge:                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then3.if.end.i.i.i_crit_edge
  %add.i.i.i = add nuw nsw i32 %conv70.i, 37
  %arrayidx.i.i.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %63, i32 56
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.spx5_rmw.exit.i_crit_edge, label %do.end.i2.i.i, !prof !96

if.end.i.i.i.spx5_rmw.exit.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit.i

do.end.i2.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit.i

spx5_rmw.exit.i:                                  ; preds = %do.end.i2.i.i, %if.end.i.i.i.spx5_rmw.exit.i_crit_edge
  %65 = and i32 %64, -285212673
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  %or.i.i = or i32 %or.i, %66
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i14.i.i = getelementptr i8, ptr %69, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i.i, i32 %67) #5, !srcloc !100
  %70 = or i32 %cond.i, %cond9.i
  %71 = or i32 %70, %cond23.i
  %or144.i = select i1 %cmp4.i, i32 1024, i32 %71
  %72 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %portno.i, align 4
  %conv146.i = zext i16 %73 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %73)
  %cmp.not.i.i1.i = icmp ult i16 %73, 65
  br i1 %cmp.not.i.i1.i, label %spx5_rmw.exit.i.spx5_wr.exit.i_crit_edge, label %do.end.i.i2.i, !prof !96

spx5_rmw.exit.i.spx5_wr.exit.i_crit_edge:         ; preds = %spx5_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit.i

do.end.i.i2.i:                                    ; preds = %spx5_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit.i

spx5_wr.exit.i:                                   ; preds = %do.end.i.i2.i, %spx5_rmw.exit.i.spx5_wr.exit.i_crit_edge
  %74 = tail call i32 @llvm.bswap.i32(i32 %or144.i) #5
  %add.i.i5.i = add nuw nsw i32 %conv146.i, 37
  %arrayidx.i.i6.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i5.i
  %75 = ptrtoint ptr %arrayidx.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i6.i, align 4
  %add.ptr82.i.i8.i = getelementptr i8, ptr %76, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i8.i, i32 %74) #5, !srcloc !100
  %shl181.i = select i1 %cmp.i104, i32 0, i32 8
  %77 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %portno.i, align 4
  %conv184.i = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %78)
  %cmp51.not.i.i.i = icmp ult i16 %78, 70
  br i1 %cmp51.not.i.i.i, label %spx5_wr.exit.i.spx5_addr.exit.i.i_crit_edge, label %do.end67.i.i.i, !prof !96

spx5_wr.exit.i.spx5_addr.exit.i.i_crit_edge:      ; preds = %spx5_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i.i

do.end67.i.i.i:                                   ; preds = %spx5_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i.i

spx5_addr.exit.i.i:                               ; preds = %do.end67.i.i.i, %spx5_wr.exit.i.spx5_addr.exit.i.i_crit_edge
  %arrayidx.i.i11.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 119
  %79 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i11.i, align 4
  %add.ptr82.i.i13.i = getelementptr i8, ptr %80, i32 184008
  %mul83.i.i.i = shl nuw nsw i32 %conv184.i, 2
  %add.ptr84.i.i.i = getelementptr i8, ptr %add.ptr82.i.i13.i, i32 %mul83.i.i.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i.i, label %spx5_addr.exit.i.i.spx5_rmw.exit18.i_crit_edge, label %do.end67.i8.i.i, !prof !96

spx5_addr.exit.i.i.spx5_rmw.exit18.i_crit_edge:   ; preds = %spx5_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit18.i

do.end67.i8.i.i:                                  ; preds = %spx5_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit18.i

spx5_rmw.exit18.i:                                ; preds = %do.end67.i8.i.i, %spx5_addr.exit.i.i.spx5_rmw.exit18.i_crit_edge
  %82 = and i32 %81, -134217729
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  %or.i15.i = or i32 %83, %shl181.i
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i15.i) #5
  %85 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i11.i, align 4
  %add.ptr82.i14.i17.i = getelementptr i8, ptr %86, i32 184008
  %add.ptr84.i16.i.i = getelementptr i8, ptr %add.ptr82.i14.i17.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i.i, i32 %84) #5, !srcloc !100
  %87 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %portno.i, align 4
  %conv186.i = zext i16 %88 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %88)
  %cmp.not.i.i19.i = icmp ult i16 %88, 65
  br i1 %cmp.not.i.i19.i, label %spx5_rmw.exit18.i.spx5_wr.exit27.i_crit_edge, label %do.end.i.i20.i, !prof !96

spx5_rmw.exit18.i.spx5_wr.exit27.i_crit_edge:     ; preds = %spx5_rmw.exit18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit27.i

do.end.i.i20.i:                                   ; preds = %spx5_rmw.exit18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit27.i

spx5_wr.exit27.i:                                 ; preds = %do.end.i.i20.i, %spx5_rmw.exit18.i.spx5_wr.exit27.i_crit_edge
  %add.i.i23.i = add nuw nsw i32 %conv186.i, 37
  %arrayidx.i.i24.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i23.i
  %89 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i24.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %90, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i, i32 285212672) #5, !srcloc !100
  %91 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %portno.i, align 4
  %conv246.i = zext i16 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %92)
  %cmp.not.i.i29.i = icmp ult i16 %92, 65
  br i1 %cmp.not.i.i29.i, label %spx5_wr.exit27.i.if.end.i.i31.i_crit_edge, label %do.end.i.i30.i, !prof !96

spx5_wr.exit27.i.if.end.i.i31.i_crit_edge:        ; preds = %spx5_wr.exit27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i31.i

do.end.i.i30.i:                                   ; preds = %spx5_wr.exit27.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i31.i

if.end.i.i31.i:                                   ; preds = %do.end.i.i30.i, %spx5_wr.exit27.i.if.end.i.i31.i_crit_edge
  %add.i.i32.i = add nuw nsw i32 %conv246.i, 37
  %arrayidx.i.i33.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i32.i
  %93 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i33.i, align 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i29.i, label %if.end.i.i31.i.sparx5_port_config_low_set.exit_crit_edge, label %do.end.i2.i35.i, !prof !96

if.end.i.i31.i.sparx5_port_config_low_set.exit_crit_edge: ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_config_low_set.exit

do.end.i2.i35.i:                                  ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %sparx5_port_config_low_set.exit

sparx5_port_config_low_set.exit:                  ; preds = %do.end.i2.i35.i, %if.end.i.i31.i.sparx5_port_config_low_set.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %59)
  %cmp1.i = icmp eq i32 %59, 10
  %cond.op.i = shl nuw nsw i32 %cond.i, 20
  %96 = and i32 %95, -285241345
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #5
  %and3.i37.i = select i1 %cmp1.i, i32 0, i32 %cond.op.i
  %or.i38.i = or i32 %97, %and3.i37.i
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i38.i) #5
  %99 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i.i33.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #5, !srcloc !100
  br label %if.end5

if.end5:                                          ; preds = %sparx5_port_config_low_set.exit, %if.end.if.end5_crit_edge
  %pause.i = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 9
  %101 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pause.i, align 4
  %and.i = and i32 %102, 1
  %duplex.i107 = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 3
  %103 = ptrtoint ptr %duplex.i107 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %duplex.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i108 = icmp eq i32 %104, 0
  %shl.i109 = select i1 %cmp.i108, i32 4, i32 0
  %105 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %portno.i, align 4
  %conv29.i = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %106)
  %cmp51.not.i.i.i111 = icmp ult i16 %106, 67
  br i1 %cmp51.not.i.i.i111, label %if.end5.spx5_addr.exit.i.i117_crit_edge, label %do.end67.i.i.i112, !prof !96

if.end5.spx5_addr.exit.i.i117_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i.i117

do.end67.i.i.i112:                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i.i117

spx5_addr.exit.i.i117:                            ; preds = %do.end67.i.i.i112, %if.end5.spx5_addr.exit.i.i117_crit_edge
  %arrayidx.i.i.i113 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 115
  %107 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr82.i.i.i114 = getelementptr i8, ptr %108, i32 2452
  %mul83.i.i.i115 = shl nuw nsw i32 %conv29.i, 2
  %add.ptr84.i.i.i116 = getelementptr i8, ptr %add.ptr82.i.i.i114, i32 %mul83.i.i.i115
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i.i116) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i.i111, label %spx5_addr.exit.i.i117.spx5_rmw.exit.i122_crit_edge, label %do.end67.i8.i.i118, !prof !96

spx5_addr.exit.i.i117.spx5_rmw.exit.i122_crit_edge: ; preds = %spx5_addr.exit.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit.i122

do.end67.i8.i.i118:                               ; preds = %spx5_addr.exit.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit.i122

spx5_rmw.exit.i122:                               ; preds = %do.end67.i8.i.i118, %spx5_addr.exit.i.i117.spx5_rmw.exit.i122_crit_edge
  %110 = and i32 %109, -67108865
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  %or.i.i119 = or i32 %111, %shl.i109
  %112 = tail call i32 @llvm.bswap.i32(i32 %or.i.i119) #5
  %113 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr82.i14.i.i120 = getelementptr i8, ptr %114, i32 2452
  %add.ptr84.i16.i.i121 = getelementptr i8, ptr %add.ptr82.i14.i.i120, i32 %mul83.i.i.i115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i.i121, i32 %112) #5, !srcloc !100
  %shl57.i = shl nuw nsw i32 %and.i, 1
  %115 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %portno.i, align 4
  %conv60.i = zext i16 %116 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %116)
  %cmp51.not.i.i2.i = icmp ult i16 %116, 67
  br i1 %cmp51.not.i.i2.i, label %spx5_rmw.exit.i122.spx5_addr.exit.i9.i_crit_edge, label %do.end67.i.i3.i, !prof !96

spx5_rmw.exit.i122.spx5_addr.exit.i9.i_crit_edge: ; preds = %spx5_rmw.exit.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i9.i

do.end67.i.i3.i:                                  ; preds = %spx5_rmw.exit.i122
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i9.i

spx5_addr.exit.i9.i:                              ; preds = %do.end67.i.i3.i, %spx5_rmw.exit.i122.spx5_addr.exit.i9.i_crit_edge
  %117 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr82.i.i6.i = getelementptr i8, ptr %118, i32 1648
  %mul83.i.i7.i = shl nuw nsw i32 %conv60.i, 2
  %add.ptr84.i.i8.i = getelementptr i8, ptr %add.ptr82.i.i6.i, i32 %mul83.i.i7.i
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i8.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i2.i, label %spx5_addr.exit.i9.i.spx5_rmw.exit16.i_crit_edge, label %do.end67.i8.i10.i, !prof !96

spx5_addr.exit.i9.i.spx5_rmw.exit16.i_crit_edge:  ; preds = %spx5_addr.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit16.i

do.end67.i8.i10.i:                                ; preds = %spx5_addr.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit16.i

spx5_rmw.exit16.i:                                ; preds = %do.end67.i8.i10.i, %spx5_addr.exit.i9.i.spx5_rmw.exit16.i_crit_edge
  %120 = and i32 %119, -33554433
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #5
  %or.i12.i = or i32 %121, %shl57.i
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i12.i) #5
  %123 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr82.i14.i14.i = getelementptr i8, ptr %124, i32 1648
  %add.ptr84.i16.i15.i = getelementptr i8, ptr %add.ptr82.i14.i14.i, i32 %mul83.i.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i15.i, i32 %122) #5, !srcloc !100
  %125 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %portno.i, align 4
  %conv91.i = zext i16 %126 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %126)
  %cmp51.not.i.i18.i = icmp ult i16 %126, 70
  br i1 %cmp51.not.i.i18.i, label %spx5_rmw.exit16.i.spx5_addr.exit.i25.i_crit_edge, label %do.end67.i.i19.i, !prof !96

spx5_rmw.exit16.i.spx5_addr.exit.i25.i_crit_edge: ; preds = %spx5_rmw.exit16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i25.i

do.end67.i.i19.i:                                 ; preds = %spx5_rmw.exit16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i25.i

spx5_addr.exit.i25.i:                             ; preds = %do.end67.i.i19.i, %spx5_rmw.exit16.i.spx5_addr.exit.i25.i_crit_edge
  %arrayidx.i.i20.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 178
  %127 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i.i20.i, align 4
  %add.ptr82.i.i22.i = getelementptr i8, ptr %128, i32 1108
  %mul83.i.i23.i = shl nuw nsw i32 %conv91.i, 2
  %add.ptr84.i.i24.i = getelementptr i8, ptr %add.ptr82.i.i22.i, i32 %mul83.i.i23.i
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i24.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i18.i, label %spx5_addr.exit.i25.i.spx5_rmw.exit32.i_crit_edge, label %do.end67.i8.i26.i, !prof !96

spx5_addr.exit.i25.i.spx5_rmw.exit32.i_crit_edge: ; preds = %spx5_addr.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit32.i

do.end67.i8.i26.i:                                ; preds = %spx5_addr.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit32.i

spx5_rmw.exit32.i:                                ; preds = %do.end67.i8.i26.i, %spx5_addr.exit.i25.i.spx5_rmw.exit32.i_crit_edge
  %130 = and i32 %129, -16777217
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #5
  %or.i28.i = or i32 %131, %and.i
  %132 = tail call i32 @llvm.bswap.i32(i32 %or.i28.i) #5
  %133 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i20.i, align 4
  %add.ptr82.i14.i30.i = getelementptr i8, ptr %134, i32 1108
  %add.ptr84.i16.i31.i = getelementptr i8, ptr %add.ptr82.i14.i30.i, i32 %mul83.i.i23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i31.i, i32 %132) #5, !srcloc !100
  %135 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %portno.i, align 4
  %conv117.i = zext i16 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %136)
  %cmp51.not.i.i34.i = icmp ult i16 %136, 70
  br i1 %cmp51.not.i.i34.i, label %spx5_rmw.exit32.i.spx5_addr.exit.i40.i_crit_edge, label %do.end67.i.i35.i, !prof !96

spx5_rmw.exit32.i.spx5_addr.exit.i40.i_crit_edge: ; preds = %spx5_rmw.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i40.i

do.end67.i.i35.i:                                 ; preds = %spx5_rmw.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i40.i

spx5_addr.exit.i40.i:                             ; preds = %do.end67.i.i35.i, %spx5_rmw.exit32.i.spx5_addr.exit.i40.i_crit_edge
  %137 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i20.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %138, i32 544
  %mul83.i.i38.i = shl nuw nsw i32 %conv117.i, 2
  %add.ptr84.i.i39.i = getelementptr i8, ptr %add.ptr.i.i37.i, i32 %mul83.i.i38.i
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i39.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i34.i, label %spx5_addr.exit.i40.i.sparx5_port_fc_setup.exit_crit_edge, label %do.end67.i8.i41.i, !prof !96

spx5_addr.exit.i40.i.sparx5_port_fc_setup.exit_crit_edge: ; preds = %spx5_addr.exit.i40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_fc_setup.exit

do.end67.i8.i41.i:                                ; preds = %spx5_addr.exit.i40.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %sparx5_port_fc_setup.exit

sparx5_port_fc_setup.exit:                        ; preds = %do.end67.i8.i41.i, %spx5_addr.exit.i40.i.sparx5_port_fc_setup.exit_crit_edge
  %and3.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 16376, i32 128
  %140 = and i32 %139, 62980095
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  %or.i43.i = or i32 %141, %spec.select.i
  %142 = tail call i32 @llvm.bswap.i32(i32 %or.i43.i) #5
  %143 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i20.i, align 4
  %add.ptr.i11.i44.i = getelementptr i8, ptr %144, i32 544
  %add.ptr84.i16.i45.i = getelementptr i8, ptr %add.ptr.i11.i44.i, i32 %mul83.i.i38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i45.i, i32 %142) #5, !srcloc !100
  %145 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %portno.i, align 4
  %conv = zext i16 %146 to i32
  %speed = getelementptr inbounds %struct.sparx5_port_config, ptr %conf, i32 0, i32 2
  %147 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %speed, align 4
  %coreclock.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 8
  %149 = ptrtoint ptr %coreclock.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %coreclock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %switch.selectcmp.i.i = icmp eq i32 %150, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2000, i32 1600
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %switch.selectcmp3.i.i = icmp eq i32 %150, 1
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 4000, i32 %switch.select.i.i
  %151 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %148, label %sparx5_port_fc_setup.exit.sw.epilog.i_crit_edge [
    i32 25000, label %sparx5_port_fc_setup.exit.do.end25_crit_edge
    i32 10000, label %sw.bb1.i
    i32 5000, label %sw.bb2.i
    i32 2500, label %sw.bb3.i
    i32 1000, label %sw.bb4.i
    i32 100, label %sparx5_port_fc_setup.exit.sw.bb5.i_crit_edge
    i32 10, label %sparx5_port_fc_setup.exit.sw.bb5.i_crit_edge168
  ]

sparx5_port_fc_setup.exit.sw.bb5.i_crit_edge168:  ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

sparx5_port_fc_setup.exit.sw.bb5.i_crit_edge:     ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

sparx5_port_fc_setup.exit.do.end25_crit_edge:     ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

sparx5_port_fc_setup.exit.sw.epilog.i_crit_edge:  ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sparx5_port_fc_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %sparx5_port_fc_setup.exit.sw.bb5.i_crit_edge, %sparx5_port_fc_setup.exit.sw.bb5.i_crit_edge168
  br label %do.end25

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sparx5_port_fc_setup.exit.sw.epilog.i_crit_edge
  %mac_per.0.i = phi i32 [ 6400, %sparx5_port_fc_setup.exit.sw.epilog.i_crit_edge ], [ 8000, %sw.bb4.i ], [ 3200, %sw.bb3.i ], [ 12800, %sw.bb2.i ], [ 6400, %sw.bb1.i ]
  %mac_width.0.i = phi i32 [ 500, %sparx5_port_fc_setup.exit.sw.epilog.i_crit_edge ], [ 62, %sw.bb4.i ], [ 62, %sw.bb3.i ], [ 500, %sw.bb2.i ], [ 500, %sw.bb1.i ]
  %addition.0.i = phi i32 [ 0, %sparx5_port_fc_setup.exit.sw.epilog.i_crit_edge ], [ 0, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 1, %sw.bb1.i ]
  %arrayidx.i = getelementptr [70 x i32], ptr @__const.sparx5_port_fifo_sz.taxi_dist, i32 0, i32 %conv
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i, align 4
  %mul7.i = mul i32 %153, 2000
  %add.i = add i32 %mul7.i, 12000
  %mul8.i = mul i32 %add.i, %switch.select4.i.i
  %div9.i = udiv i32 %mul8.i, %mac_per.0.i
  %add10.i = add nuw nsw i32 %div9.i, 3000
  %mul11.i = mul nuw nsw i32 %add10.i, %mac_width.0.i
  %div12.i = udiv i32 %mul11.i, 1000
  %add14.i = add nuw nsw i32 %div12.i, 2999
  %div15.i = udiv i32 %add14.i, 1000
  %add16.i = add nuw nsw i32 %div15.i, %addition.0.i
  %phi.bo = shl nuw nsw i32 %add16.i, 1
  %phi.bo147 = and i32 %phi.bo, 254
  br label %do.end25

do.end25:                                         ; preds = %sw.epilog.i, %sw.bb5.i, %sparx5_port_fc_setup.exit.do.end25_crit_edge
  %retval.0.i123 = phi i32 [ %phi.bo147, %sw.epilog.i ], [ 2, %sw.bb5.i ], [ 0, %sparx5_port_fc_setup.exit.do.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %146)
  %cmp51.not.i.i = icmp ult i16 %146, 67
  br i1 %cmp51.not.i.i, label %do.end25.spx5_addr.exit.i_crit_edge, label %do.end67.i.i, !prof !96

do.end25.spx5_addr.exit.i_crit_edge:              ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end67.i.i:                                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end67.i.i, %do.end25.spx5_addr.exit.i_crit_edge
  %154 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %155, i32 1380
  %mul83.i.i = shl nuw nsw i32 %conv, 2
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr82.i.i, i32 %mul83.i.i
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end67.i8.i, !prof !96

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end67.i8.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end67.i8.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %157 = and i32 %156, 33554431
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %or.i125 = or i32 %158, %retval.0.i123
  %159 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #5
  %160 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i.i113, align 4
  %add.ptr82.i14.i = getelementptr i8, ptr %161, i32 1380
  %add.ptr84.i16.i = getelementptr i8, ptr %add.ptr82.i14.i, i32 %mul83.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i, i32 %159) #5, !srcloc !100
  %162 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %speed, align 4
  %164 = zext i32 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %163, label %spx5_rmw.exit.do.end67_crit_edge [
    i32 25000, label %sw.bb4.i129
    i32 10000, label %sw.bb3.i128
    i32 5000, label %sw.bb2.i127
    i32 2500, label %sw.bb1.i126
  ]

spx5_rmw.exit.do.end67_crit_edge:                 ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

sw.bb1.i126:                                      ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

sw.bb2.i127:                                      ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

sw.bb3.i128:                                      ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

sw.bb4.i129:                                      ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

do.end67:                                         ; preds = %sw.bb4.i129, %sw.bb3.i128, %sw.bb2.i127, %sw.bb1.i126, %spx5_rmw.exit.do.end67_crit_edge
  %urg.0.i = phi i32 [ 539648, %sw.bb4.i129 ], [ 566272, %sw.bb3.i128 ], [ 609280, %sw.bb2.i127 ], [ 695296, %sw.bb1.i126 ], [ 953344, %spx5_rmw.exit.do.end67_crit_edge ]
  %165 = ptrtoint ptr %portno.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %portno.i, align 4
  %conv72 = zext i16 %166 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %166)
  %cmp51.not.i.i132 = icmp ult i16 %166, 70
  br i1 %cmp51.not.i.i132, label %do.end67.spx5_addr.exit.i137_crit_edge, label %do.end67.i.i133, !prof !96

do.end67.spx5_addr.exit.i137_crit_edge:           ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i137

do.end67.i.i133:                                  ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i137

spx5_addr.exit.i137:                              ; preds = %do.end67.i.i133, %do.end67.spx5_addr.exit.i137_crit_edge
  %arrayidx.i.i134 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 175
  %167 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i.i134, align 4
  %mul83.i.i135 = shl nuw nsw i32 %conv72, 2
  %add.ptr84.i.i136 = getelementptr i8, ptr %168, i32 %mul83.i.i135
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i136) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i132, label %spx5_addr.exit.i137.spx5_rmw.exit142_crit_edge, label %do.end67.i8.i138, !prof !96

spx5_addr.exit.i137.spx5_rmw.exit142_crit_edge:   ; preds = %spx5_addr.exit.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit142

do.end67.i8.i138:                                 ; preds = %spx5_addr.exit.i137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit142

spx5_rmw.exit142:                                 ; preds = %do.end67.i8.i138, %spx5_addr.exit.i137.spx5_rmw.exit142_crit_edge
  %170 = and i32 %169, -16518913
  %171 = tail call i32 @llvm.bswap.i32(i32 %170)
  %or.i140 = or i32 %171, %urg.0.i
  %172 = tail call i32 @llvm.bswap.i32(i32 %or.i140) #5
  %173 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i.i134, align 4
  %add.ptr84.i16.i141 = getelementptr i8, ptr %174, i32 %mul83.i.i135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i141, i32 %172) #5, !srcloc !100
  %conf73 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4
  %175 = call ptr @memcpy(ptr %conf73, ptr %conf, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %spx5_rmw.exit142, %sparx5_port_error.exit132.i, %sparx5_port_error.exit100.i, %sparx5_port_error.exit, %sparx5_port_error.exit67.i, %sparx5_port_error.exit66.i, %sparx5_port_error.exit33.i, %if.end.i.cleanup_crit_edge, %sparx5_port_error.exit.i
  %retval.0 = phi i32 [ 0, %spx5_rmw.exit142 ], [ -22, %sparx5_port_error.exit.i ], [ -22, %sparx5_port_error.exit132.i ], [ -22, %sparx5_port_error.exit100.i ], [ -22, %sparx5_port_error.exit ], [ -22, %sparx5_port_error.exit67.i ], [ -22, %sparx5_port_error.exit66.i ], [ -22, %sparx5_port_error.exit33.i ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_port_init(ptr nocapture noundef readonly %sparx5, ptr nocapture noundef readonly %port, ptr nocapture noundef %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %portno, align 4
  %conv3 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp.i.i = icmp ult i16 %1, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %1)
  %cmp1.i.i = icmp eq i16 %1, 64
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %sparx5_to_high_dev.exit, label %sparx5_to_high_dev.exit.thread

sparx5_to_high_dev.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = add nsw i32 %conv3, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %3 = icmp ult i32 %2, 32
  %4 = tail call i32 @llvm.smin.i32(i32 %conv3, i32 12) #5
  %spec.select = select i1 %3, i32 %conv3, i32 %4
  br label %sparx5_to_pcs_dev.exit

sparx5_to_high_dev.exit.thread:                   ; preds = %entry
  %5 = and i32 %conv3, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %6 = icmp eq i32 %5, 12
  %7 = and i32 %conv3, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %7)
  %8 = icmp eq i32 %7, 48
  %9 = or i1 %6, %8
  %..i = select i1 %9, i32 17, i32 29
  %10 = add nsw i32 %conv3, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %sparx5_to_high_dev.exit.thread.if.end.i647_crit_edge, label %if.end3.i

sparx5_to_high_dev.exit.thread.if.end.i647_crit_edge: ; preds = %sparx5_to_high_dev.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i647

if.end3.i:                                        ; preds = %sparx5_to_high_dev.exit.thread
  br i1 %9, label %if.then5.i, label %if.end13.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %1)
  %cmp7.i = icmp ult i16 %1, 16
  %cond12.v.i = select i1 %cmp7.i, i32 -12, i32 -44
  %cond12.i = add nsw i32 %cond12.v.i, %conv3
  br label %if.end.i647

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i = add nsw i32 %conv3, -56
  br label %if.end.i647

if.end.i647:                                      ; preds = %if.end13.i, %if.then5.i, %sparx5_to_high_dev.exit.thread.if.end.i647_crit_edge
  %retval.0.i642752 = phi i32 [ %conv3, %sparx5_to_high_dev.exit.thread.if.end.i647_crit_edge ], [ %sub14.i, %if.end13.i ], [ %cond12.i, %if.then5.i ]
  %..i646 = select i1 %9, i32 132, i32 144
  br label %sparx5_to_pcs_dev.exit

sparx5_to_pcs_dev.exit:                           ; preds = %if.end.i647, %sparx5_to_high_dev.exit
  %retval.0.i642753 = phi i32 [ %spec.select, %sparx5_to_high_dev.exit ], [ %retval.0.i642752, %if.end.i647 ]
  %retval.0.i745751 = phi i32 [ 102, %sparx5_to_high_dev.exit ], [ %..i, %if.end.i647 ]
  %retval.0.i648 = phi i32 [ 160, %sparx5_to_high_dev.exit ], [ %..i646, %if.end.i647 ]
  %signd_active_high = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 12
  %12 = ptrtoint ptr %signd_active_high to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %signd_active_high, align 1, !range !95
  %signd_internal = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 11
  %14 = ptrtoint ptr %signd_internal to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %signd_internal, align 2, !range !95
  %signd_enable = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 13
  %16 = ptrtoint ptr %signd_enable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %signd_enable, align 4, !range !95
  %add.i = add nsw i32 %retval.0.i745751, %retval.0.i642753
  %arrayidx.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.i649 = add nsw i32 %retval.0.i648, %retval.0.i642753
  %arrayidx.i650 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i649
  %20 = ptrtoint ptr %arrayidx.i650 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i650, align 4
  %conf2.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 4
  %22 = ptrtoint ptr %conf2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %conf2.i, align 8
  %24 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %25)
  %cond.i = icmp eq i32 %25, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %23)
  %26 = icmp ne i32 %23, 18
  %27 = and i1 %26, %cond.i
  br i1 %27, label %sw.bb.i, label %sparx5_to_pcs_dev.exit.sparx5_port_mux_set.exit_crit_edge

sparx5_to_pcs_dev.exit.sparx5_port_mux_set.exit_crit_edge: ; preds = %sparx5_to_pcs_dev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_mux_set.exit

sw.bb.i:                                          ; preds = %sparx5_to_pcs_dev.exit
  %div1.i = lshr i32 %conv3, 2
  %shl.i = shl nuw i32 1, %div1.i
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 173
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %or.i.i = or i32 %31, %shl.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i14.i.i = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i.i, i32 %32) #5, !srcloc !100
  %35 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp9.i = icmp eq i32 %35, 0
  br i1 %cmp9.i, label %do.end23.i, label %sw.bb.i.sparx5_port_mux_set.exit_crit_edge

sw.bb.i.sparx5_port_mux_set.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_mux_set.exit

do.end23.i:                                       ; preds = %sw.bb.i
  %div573.i = and i32 %conv3, 65528
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %1)
  %cmp20.not.i.i.i = icmp ult i16 %1, 48
  br i1 %cmp20.not.i.i.i, label %do.end23.i.if.end42.i.i.i_crit_edge, label %do.end36.i.i.i, !prof !96

do.end23.i.if.end42.i.i.i_crit_edge:              ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i

do.end36.i.i.i:                                   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %do.end36.i.i.i, %do.end23.i.if.end42.i.i.i_crit_edge
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 72
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %div573.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp20.not.i.i.i, label %if.end42.i.i.i.spx5_rmw.exit.i_crit_edge, label %do.end36.i5.i.i, !prof !96

if.end42.i.i.i.spx5_rmw.exit.i_crit_edge:         ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit.i

do.end36.i5.i.i:                                  ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit.i

spx5_rmw.exit.i:                                  ; preds = %do.end36.i5.i.i, %if.end42.i.i.i.spx5_rmw.exit.i_crit_edge
  %39 = or i32 %38, 33751040
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %41, i32 72
  %add.ptr81.i13.i.i = getelementptr i8, ptr %add.ptr.i11.i.i, i32 %div573.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i13.i.i, i32 %39) #5, !srcloc !100
  br label %sparx5_port_mux_set.exit

sparx5_port_mux_set.exit:                         ; preds = %spx5_rmw.exit.i, %sw.bb.i.sparx5_port_mux_set.exit_crit_edge, %sparx5_to_pcs_dev.exit.sparx5_port_mux_set.exit_crit_edge
  %max_vlan_tags.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 15
  %42 = ptrtoint ptr %max_vlan_tags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_vlan_tags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i = icmp eq i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp1.i = icmp eq i32 %43, 2
  %cond.i651 = select i1 %cmp1.i, i32 2, i32 0
  %cond2.i = select i1 %cmp.i, i32 1, i32 %cond.i651
  %vlan_type4.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 16
  %44 = ptrtoint ptr %vlan_type4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vlan_type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5.i = icmp ne i32 %43, 0
  %46 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %portno, align 4
  %conv.i652 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %47)
  %cmp.i.i.i = icmp ult i16 %47, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %47)
  %cmp1.i.i.i = icmp eq i16 %47, 64
  %spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %spec.select.i.i.i, label %sparx5_to_high_dev.exit.i, label %sparx5_to_high_dev.exit.thread.i

sparx5_to_high_dev.exit.i:                        ; preds = %sparx5_port_mux_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %48 = add nsw i32 %conv.i652, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %48)
  %49 = icmp ult i32 %48, 32
  %50 = tail call i32 @llvm.smin.i32(i32 %conv.i652, i32 12) #5
  %spec.select.i = select i1 %49, i32 %conv.i652, i32 %50
  br label %sparx5_port_dev_index.exit.i

sparx5_to_high_dev.exit.thread.i:                 ; preds = %sparx5_port_mux_set.exit
  %51 = and i32 %conv.i652, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %51)
  %52 = icmp eq i32 %51, 12
  %53 = and i32 %conv.i652, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %53)
  %54 = icmp eq i32 %53, 48
  %55 = or i1 %52, %54
  %..i.i = select i1 %55, i32 17, i32 29
  %56 = add nsw i32 %conv.i652, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %56)
  %57 = icmp ult i32 %56, 32
  br i1 %57, label %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge, label %if.end3.i.i

sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge: ; preds = %sparx5_to_high_dev.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_dev_index.exit.i

if.end3.i.i:                                      ; preds = %sparx5_to_high_dev.exit.thread.i
  br i1 %55, label %if.then5.i.i, label %if.end13.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %47)
  %cmp7.i.i = icmp ult i16 %47, 16
  %cond12.v.i.i = select i1 %cmp7.i.i, i32 -12, i32 -44
  %cond12.i.i = add nsw i32 %cond12.v.i.i, %conv.i652
  br label %sparx5_port_dev_index.exit.i

if.end13.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub14.i.i = add nsw i32 %conv.i652, -56
  br label %sparx5_port_dev_index.exit.i

sparx5_port_dev_index.exit.i:                     ; preds = %if.end13.i.i, %if.then5.i.i, %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge, %sparx5_to_high_dev.exit.i
  %retval.0.i16.i = phi i32 [ 17, %if.then5.i.i ], [ 29, %if.end13.i.i ], [ %..i.i, %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge ], [ 102, %sparx5_to_high_dev.exit.i ]
  %retval.0.i7.i = phi i32 [ %cond12.i.i, %if.then5.i.i ], [ %sub14.i.i, %if.end13.i.i ], [ %conv.i652, %sparx5_to_high_dev.exit.thread.i.sparx5_port_dev_index.exit.i_crit_edge ], [ %spec.select.i, %sparx5_to_high_dev.exit.i ]
  %add.i.i = add nsw i32 %retval.0.i7.i, %retval.0.i16.i
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 %add.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp11.i = icmp eq i32 %45, 3
  br i1 %cmp11.i, label %cond.true13.i, label %cond.false14.i

cond.true13.i:                                    ; preds = %sparx5_port_dev_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %custom_etype.i = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 17
  %60 = ptrtoint ptr %custom_etype.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %custom_etype.i, align 8
  br label %do.end33.i

cond.false14.i:                                   ; preds = %sparx5_port_dev_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp15.i = icmp eq i32 %45, 1
  %cond17.i = select i1 %cmp15.i, i32 33024, i32 34984
  br label %do.end33.i

do.end33.i:                                       ; preds = %cond.false14.i, %cond.true13.i
  %cond19.i = phi i32 [ %61, %cond.true13.i ], [ %cond17.i, %cond.false14.i ]
  %shl.i653 = shl i32 %cond19.i, 16
  %conv90.i = zext i1 %cmp5.i to i32
  %shl121.i = select i1 %cmp5.i, i32 8, i32 0
  %or.i = or i32 %cond.i651, %conv90.i
  %or93.i = or i32 %or.i, %shl121.i
  %or123.i = or i32 %or93.i, %shl.i653
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %47)
  %cmp.not.i.i.i = icmp ult i16 %47, 65
  br i1 %cmp.not.i.i.i, label %do.end33.i.spx5_wr.exit.i_crit_edge, label %do.end.i.i.i, !prof !96

do.end33.i.spx5_wr.exit.i_crit_edge:              ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit.i

do.end.i.i.i:                                     ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit.i

spx5_wr.exit.i:                                   ; preds = %do.end.i.i.i, %do.end33.i.spx5_wr.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %or123.i) #5
  %add.i.i.i = add nuw nsw i32 %conv.i652, 37
  %arrayidx.i.i.i654 = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i654 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i654, align 4
  %add.ptr82.i.i.i655 = getelementptr i8, ptr %64, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i655, i32 %62) #5, !srcloc !100
  %65 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %portno, align 4
  %conv127.i = zext i16 %66 to i32
  %67 = add nsw i32 %conv127.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %67)
  %68 = icmp ult i32 %67, 32
  br i1 %68, label %spx5_wr.exit.i.sparx5_port_max_tags_set.exit_crit_edge, label %do.end151.i

spx5_wr.exit.i.sparx5_port_max_tags_set.exit_crit_edge: ; preds = %spx5_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sparx5_port_max_tags_set.exit

do.end151.i:                                      ; preds = %spx5_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl182.i = select i1 %cmp5.i, i32 16, i32 0
  %or184.i = or i32 %shl.i653, %shl182.i
  %add.ptr51.i.i.i = getelementptr i8, ptr %59, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %70 = and i32 %69, -268500992
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  %or.i.i656 = or i32 %or184.i, %71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i656) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i.i, i32 %72) #5, !srcloc !100
  %add.ptr51.i.i8.i = getelementptr i8, ptr %59, i32 12
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i8.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %74 = and i32 %73, -50331649
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  %or.i10.i = or i32 %75, %cond2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i10.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i8.i, i32 %76) #5, !srcloc !100
  %shl236.i = select i1 %cmp5.i, i32 65536, i32 0
  %add.ptr51.i.i11.i = getelementptr i8, ptr %59, i32 8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i11.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %78 = and i32 %77, -257
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  %or.i13.i = or i32 %79, %shl236.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i13.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i11.i, i32 %80) #5, !srcloc !100
  %81 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %81)
  %.pr754 = load i16, ptr %portno, align 4
  br label %sparx5_port_max_tags_set.exit

sparx5_port_max_tags_set.exit:                    ; preds = %do.end151.i, %spx5_wr.exit.i.sparx5_port_max_tags_set.exit_crit_edge
  %82 = phi i16 [ %66, %spx5_wr.exit.i.sparx5_port_max_tags_set.exit_crit_edge ], [ %.pr754, %do.end151.i ]
  %conv36 = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %82)
  %cmp.not.i.i = icmp ult i16 %82, 65
  br i1 %cmp.not.i.i, label %sparx5_port_max_tags_set.exit.if.end.i.i_crit_edge, label %do.end.i.i, !prof !96

sparx5_port_max_tags_set.exit.if.end.i.i_crit_edge: ; preds = %sparx5_port_max_tags_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %sparx5_port_max_tags_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %sparx5_port_max_tags_set.exit.if.end.i.i_crit_edge
  %add.i.i657 = add nuw nsw i32 %conv36, 37
  %arrayidx.i.i658 = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i657
  %83 = ptrtoint ptr %arrayidx.i.i658 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i658, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %84, i32 60
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i, label %if.end.i.i.spx5_rmw.exit_crit_edge, label %do.end.i2.i, !prof !96

if.end.i.i.spx5_rmw.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end.i2.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end.i2.i, %if.end.i.i.spx5_rmw.exit_crit_edge
  %86 = and i32 %85, 65535
  %87 = or i32 %86, -301662208
  %88 = ptrtoint ptr %arrayidx.i.i658 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i658, align 4
  %add.ptr82.i14.i = getelementptr i8, ptr %89, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i, i32 %87) #5, !srcloc !100
  %90 = shl nuw nsw i8 %13, 4
  %shl = zext i8 %90 to i32
  %91 = xor i8 %15, 1
  %92 = zext i8 %91 to i32
  %shl89 = shl nuw nsw i32 %92, 8
  %or = or i32 %shl89, %shl
  %93 = zext i8 %17 to i32
  %or120 = or i32 %or, %93
  %94 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %portno, align 4
  %conv122 = zext i16 %95 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %95)
  %cmp.not.i.i660 = icmp ult i16 %95, 65
  br i1 %cmp.not.i.i660, label %spx5_rmw.exit.do.end143_crit_edge, label %do.end.i.i661, !prof !96

spx5_rmw.exit.do.end143_crit_edge:                ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end143

do.end.i.i661:                                    ; preds = %spx5_rmw.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %do.end143

do.end143:                                        ; preds = %do.end.i.i661, %spx5_rmw.exit.do.end143_crit_edge
  %96 = tail call i32 @llvm.bswap.i32(i32 %or120) #5
  %add.i.i664 = add nuw nsw i32 %conv122, 37
  %arrayidx.i.i665 = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i664
  %97 = ptrtoint ptr %arrayidx.i.i665 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i665, align 4
  %add.ptr82.i.i667 = getelementptr i8, ptr %98, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i667, i32 %96) #5, !srcloc !100
  %99 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %portno, align 4
  %conv190 = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %100)
  %cmp51.not.i.i = icmp ult i16 %100, 70
  br i1 %cmp51.not.i.i, label %do.end143.spx5_addr.exit.i_crit_edge, label %do.end67.i.i, !prof !96

do.end143.spx5_addr.exit.i_crit_edge:             ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end67.i.i:                                     ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end67.i.i, %do.end143.spx5_addr.exit.i_crit_edge
  %arrayidx.i.i670 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 178
  %101 = ptrtoint ptr %arrayidx.i.i670 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i670, align 4
  %add.ptr.i.i671 = getelementptr i8, ptr %102, i32 544
  %mul83.i.i = shl nuw nsw i32 %conv190, 2
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr.i.i671, i32 %mul83.i.i
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i, label %spx5_addr.exit.i.do.end211_crit_edge, label %do.end67.i8.i, !prof !96

spx5_addr.exit.i.do.end211_crit_edge:             ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end211

do.end67.i8.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %do.end211

do.end211:                                        ; preds = %do.end67.i8.i, %spx5_addr.exit.i.do.end211_crit_edge
  %104 = and i32 %103, 16777468
  %105 = or i32 %104, -96531456
  %106 = ptrtoint ptr %arrayidx.i.i670 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i.i670, align 4
  %add.ptr.i11.i674 = getelementptr i8, ptr %107, i32 544
  %add.ptr84.i16.i = getelementptr i8, ptr %add.ptr.i11.i674, i32 %mul83.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i, i32 %105) #5, !srcloc !100
  %108 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %portno, align 4
  %conv216 = zext i16 %109 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %109)
  %cmp51.not.i.i677 = icmp ult i16 %109, 70
  br i1 %cmp51.not.i.i677, label %do.end211.spx5_wr.exit686_crit_edge, label %do.end67.i.i678, !prof !96

do.end211.spx5_wr.exit686_crit_edge:              ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit686

do.end67.i.i678:                                  ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit686

spx5_wr.exit686:                                  ; preds = %do.end67.i.i678, %do.end211.spx5_wr.exit686_crit_edge
  %110 = ptrtoint ptr %arrayidx.i.i670 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i670, align 4
  %add.ptr82.i.i682 = getelementptr i8, ptr %111, i32 828
  %mul83.i.i683 = shl nuw nsw i32 %conv216, 2
  %add.ptr84.i.i684 = getelementptr i8, ptr %add.ptr82.i.i682, i32 %mul83.i.i683
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i684, i32 -1610612736) #5, !srcloc !100
  %112 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %portno, align 4
  %conv218 = zext i16 %113 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %113)
  %cmp20.not.i.i = icmp ult i16 %113, 70
  br i1 %cmp20.not.i.i, label %spx5_wr.exit686.spx5_wr.exit693_crit_edge, label %do.end36.i.i, !prof !96

spx5_wr.exit686.spx5_wr.exit693_crit_edge:        ; preds = %spx5_wr.exit686
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit693

do.end36.i.i:                                     ; preds = %spx5_wr.exit686
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 347, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit693

spx5_wr.exit693:                                  ; preds = %do.end36.i.i, %spx5_wr.exit686.spx5_wr.exit693_crit_edge
  %arrayidx.i.i689 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 6
  %114 = ptrtoint ptr %arrayidx.i.i689 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i.i689, align 4
  %add.ptr.i.i690 = getelementptr i8, ptr %115, i32 131072
  %mul.i.i = shl nuw nsw i32 %conv218, 9
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i690, i32 %mul.i.i
  %add.ptr82.i.i691 = getelementptr i8, ptr %add.ptr81.i.i, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i691, i32 201326592) #5, !srcloc !100
  %116 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %conf, align 4
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %117, label %spx5_wr.exit693.if.end253_crit_edge [
    i32 18, label %spx5_wr.exit693.if.then223_crit_edge
    i32 4, label %spx5_wr.exit693.if.then223_crit_edge755
  ]

spx5_wr.exit693.if.then223_crit_edge755:          ; preds = %spx5_wr.exit693
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then223

spx5_wr.exit693.if.then223_crit_edge:             ; preds = %spx5_wr.exit693
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then223

spx5_wr.exit693.if.end253_crit_edge:              ; preds = %spx5_wr.exit693
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end253

if.then223:                                       ; preds = %spx5_wr.exit693.if.then223_crit_edge, %spx5_wr.exit693.if.then223_crit_edge755
  %call224 = tail call i32 @sparx5_serdes_set(ptr undef, ptr noundef %port, ptr noundef %conf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end227, label %if.then223.cleanup_crit_edge

if.then223.cleanup_crit_edge:                     ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end227:                                        ; preds = %if.then223
  %119 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %portno, align 4
  %conv229 = zext i16 %120 to i32
  %121 = add nsw i32 %conv229, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %121)
  %122 = icmp ult i32 %121, 32
  br i1 %122, label %if.end227.if.end250_crit_edge, label %do.end246

if.end227.if.end250_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end250

do.end246:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %120)
  %cmp51.not.i.i696 = icmp ult i16 %120, 67
  br i1 %cmp51.not.i.i696, label %do.end246.spx5_addr.exit.i703_crit_edge, label %do.end67.i.i697, !prof !96

do.end246.spx5_addr.exit.i703_crit_edge:          ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i703

do.end67.i.i697:                                  ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i703

spx5_addr.exit.i703:                              ; preds = %do.end67.i.i697, %do.end246.spx5_addr.exit.i703_crit_edge
  %arrayidx.i.i698 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 115
  %123 = ptrtoint ptr %arrayidx.i.i698 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i698, align 4
  %add.ptr82.i.i700 = getelementptr i8, ptr %124, i32 1380
  %mul83.i.i701 = shl nuw nsw i32 %conv229, 2
  %add.ptr84.i.i702 = getelementptr i8, ptr %add.ptr82.i.i700, i32 %mul83.i.i701
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i702) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i696, label %spx5_addr.exit.i703.spx5_rmw.exit710_crit_edge, label %do.end67.i8.i704, !prof !96

spx5_addr.exit.i703.spx5_rmw.exit710_crit_edge:   ; preds = %spx5_addr.exit.i703
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit710

do.end67.i8.i704:                                 ; preds = %spx5_addr.exit.i703
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit710

spx5_rmw.exit710:                                 ; preds = %do.end67.i8.i704, %spx5_addr.exit.i703.spx5_rmw.exit710_crit_edge
  %126 = or i32 %125, 65536
  %127 = ptrtoint ptr %arrayidx.i.i698 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i.i698, align 4
  %add.ptr82.i14.i708 = getelementptr i8, ptr %128, i32 1380
  %add.ptr84.i16.i709 = getelementptr i8, ptr %add.ptr82.i14.i708, i32 %mul83.i.i701
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i709, i32 %126) #5, !srcloc !100
  br label %if.end250

if.end250:                                        ; preds = %spx5_rmw.exit710, %if.end227.if.end250_crit_edge
  %129 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %portno, align 4
  %conv252 = zext i16 %130 to i32
  tail call fastcc void @sparx5_dev_switch(ptr noundef %sparx5, i32 noundef %conv252, i1 noundef zeroext false)
  %131 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr = load i32, ptr %conf, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.end250, %spx5_wr.exit693.if.end253_crit_edge
  %132 = phi i32 [ %117, %spx5_wr.exit693.if.end253_crit_edge ], [ %.pr, %if.end250 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %132)
  %cmp255 = icmp eq i32 %132, 18
  br i1 %cmp255, label %do.end272, label %if.end253.do.end291_crit_edge

if.end253.do.end291_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end291

do.end272:                                        ; preds = %if.end253
  %133 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %portno, align 4
  %conv275 = zext i16 %134 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %134)
  %cmp.not.i.i712 = icmp ult i16 %134, 65
  br i1 %cmp.not.i.i712, label %do.end272.if.end.i.i714_crit_edge, label %do.end.i.i713, !prof !96

do.end272.if.end.i.i714_crit_edge:                ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i714

do.end.i.i713:                                    ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i714

if.end.i.i714:                                    ; preds = %do.end.i.i713, %do.end272.if.end.i.i714_crit_edge
  %add.i.i715 = add nuw nsw i32 %conv275, 37
  %arrayidx.i.i716 = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i715
  %135 = ptrtoint ptr %arrayidx.i.i716 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i716, align 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp.not.i.i712, label %if.end.i.i714.spx5_rmw.exit720_crit_edge, label %do.end.i2.i718, !prof !96

if.end.i.i714.spx5_rmw.exit720_crit_edge:         ; preds = %if.end.i.i714
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit720

do.end.i2.i718:                                   ; preds = %if.end.i.i714
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit720

spx5_rmw.exit720:                                 ; preds = %do.end.i2.i718, %if.end.i.i714.spx5_rmw.exit720_crit_edge
  %138 = and i32 %137, -1048577
  %139 = ptrtoint ptr %arrayidx.i.i716 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i.i716, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #5, !srcloc !100
  br label %do.end291

do.end291:                                        ; preds = %spx5_rmw.exit720, %if.end253.do.end291_crit_edge
  %141 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %portno, align 4
  %conv328 = zext i16 %142 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %142)
  %cmp.not.i.i721 = icmp ult i16 %142, 65
  br i1 %cmp.not.i.i721, label %do.end291.spx5_wr.exit730_crit_edge, label %do.end.i.i722, !prof !96

do.end291.spx5_wr.exit730_crit_edge:              ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit730

do.end.i.i722:                                    ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit730

spx5_wr.exit730:                                  ; preds = %do.end.i.i722, %do.end291.spx5_wr.exit730_crit_edge
  %add.i.i725 = add nuw nsw i32 %conv328, 37
  %arrayidx.i.i726 = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i725
  %143 = ptrtoint ptr %arrayidx.i.i726 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i726, align 4
  %add.ptr82.i.i728 = getelementptr i8, ptr %144, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i728, i32 393216) #5, !srcloc !100
  %145 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %portno, align 4
  %conv330 = zext i16 %146 to i32
  %147 = add nsw i32 %conv330, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %147)
  %148 = icmp ult i32 %147, 32
  br i1 %148, label %spx5_wr.exit730.cleanup_crit_edge, label %if.end333

spx5_wr.exit730.cleanup_crit_edge:                ; preds = %spx5_wr.exit730
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end333:                                        ; preds = %spx5_wr.exit730
  %149 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %conf, align 4
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %150, label %if.end333.do.end360_crit_edge [
    i32 0, label %if.end339.thread
    i32 23, label %if.end333.if.then342_crit_edge
    i32 26, label %if.end333.if.then342_crit_edge756
    i32 27, label %if.end333.if.then342_crit_edge757
  ]

if.end333.if.then342_crit_edge757:                ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then342

if.end333.if.then342_crit_edge756:                ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then342

if.end333.if.then342_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then342

if.end333.do.end360_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end360

if.end339.thread:                                 ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 26, ptr %conf, align 4
  br label %if.then342

if.then342:                                       ; preds = %if.end339.thread, %if.end333.if.then342_crit_edge, %if.end333.if.then342_crit_edge756, %if.end333.if.then342_crit_edge757
  %153 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %portno, align 4
  %conv344 = zext i16 %154 to i32
  tail call fastcc void @sparx5_dev_switch(ptr noundef %sparx5, i32 noundef %conv344, i1 noundef zeroext true)
  br label %do.end360

do.end360:                                        ; preds = %if.then342, %if.end333.do.end360_crit_edge
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %156 = and i32 %155, 65535
  %157 = or i32 %156, -301662208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %157) #5, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %add.ptr51.i.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i, i32 %96) #5, !srcloc !100
  %158 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %portno, align 4
  %160 = and i16 %159, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 56, i16 %160)
  %161 = icmp eq i16 %160, 56
  br i1 %161, label %do.body461, label %do.end360.cleanup_crit_edge

do.end360.cleanup_crit_edge:                      ; preds = %do.end360
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body461:                                       ; preds = %do.end360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retval.0.i642753)
  %cmp.not.i.i733 = icmp slt i32 %retval.0.i642753, 8
  br i1 %cmp.not.i.i733, label %do.body461.spx5_wr.exit742_crit_edge, label %do.end.i.i734, !prof !96

do.body461.spx5_wr.exit742_crit_edge:             ; preds = %do.body461
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_wr.exit742

do.end.i.i734:                                    ; preds = %do.body461
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #5
  br label %spx5_wr.exit742

spx5_wr.exit742:                                  ; preds = %do.end.i.i734, %do.body461.spx5_wr.exit742_crit_edge
  %add.i.i737 = add nsw i32 %retval.0.i642753, 29
  %arrayidx.i.i738 = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i737
  %162 = ptrtoint ptr %arrayidx.i.i738 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i738, align 4
  %add.ptr82.i.i740 = getelementptr i8, ptr %163, i32 492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i740, i32 %96) #5, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %spx5_wr.exit742, %do.end360.cleanup_crit_edge, %spx5_wr.exit730.cleanup_crit_edge, %if.then223.cleanup_crit_edge
  %retval.0 = phi i32 [ %call224, %if.then223.cleanup_crit_edge ], [ 0, %spx5_wr.exit730.cleanup_crit_edge ], [ 0, %spx5_wr.exit742 ], [ 0, %do.end360.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_port_enable(ptr nocapture noundef readonly %port, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno = getelementptr inbounds %struct.sparx5_port, ptr %port, i32 0, i32 8
  %2 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno, align 4
  %conv19 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %3)
  %cmp51.not.i.i = icmp ult i16 %3, 70
  br i1 %cmp51.not.i.i, label %entry.spx5_addr.exit.i_crit_edge, label %do.end67.i.i, !prof !96

entry.spx5_addr.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_addr.exit.i

do.end67.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_addr.exit.i

spx5_addr.exit.i:                                 ; preds = %do.end67.i.i, %entry.spx5_addr.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %1, i32 0, i32 4, i32 175
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %mul83.i.i = shl nuw nsw i32 %conv19, 2
  %add.ptr84.i.i = getelementptr i8, ptr %5, i32 %mul83.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  br i1 %cmp51.not.i.i, label %spx5_addr.exit.i.spx5_rmw.exit_crit_edge, label %do.end67.i8.i, !prof !96

spx5_addr.exit.i.spx5_rmw.exit_crit_edge:         ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spx5_rmw.exit

do.end67.i8.i:                                    ; preds = %spx5_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 348, i32 noundef 9, ptr noundef null) #5
  br label %spx5_rmw.exit

spx5_rmw.exit:                                    ; preds = %do.end67.i8.i, %spx5_addr.exit.i.spx5_rmw.exit_crit_edge
  %shl = select i1 %enable, i32 524288, i32 0
  %7 = and i32 %6, -2049
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or.i = or i32 %8, %shl
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i16.i = getelementptr i8, ptr %11, i32 %mul83.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i, i32 %9) #5, !srcloc !100
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 182, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 346, i32 2}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 130, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 275, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 294, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 294, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 304, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sparx5_port_flush_poll._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @sparx5_port_flush_poll._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 195, i32 7}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 200, i32 7}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_port.c", i32 205, i32 7}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/phy.h", i32 213, i32 10}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/phy.h", i32 215, i32 10}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/phy.h", i32 217, i32 10}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/phy.h", i32 219, i32 10}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/phy.h", i32 221, i32 10}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/phy.h", i32 223, i32 10}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/phy.h", i32 225, i32 10}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/phy.h", i32 227, i32 10}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/phy.h", i32 229, i32 10}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/phy.h", i32 231, i32 10}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/phy.h", i32 233, i32 10}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/phy.h", i32 235, i32 10}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/phy.h", i32 237, i32 10}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/phy.h", i32 239, i32 10}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/phy.h", i32 241, i32 10}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/phy.h", i32 243, i32 10}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/phy.h", i32 245, i32 10}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/phy.h", i32 247, i32 10}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/phy.h", i32 249, i32 10}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/phy.h", i32 251, i32 10}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/phy.h", i32 253, i32 10}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 255, i32 10}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 257, i32 10}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 259, i32 10}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 261, i32 10}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 263, i32 10}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 265, i32 10}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 267, i32 10}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 269, i32 10}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 271, i32 10}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i8 0, i8 2}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 5958648}
!98 = !{i64 2157359273}
!99 = !{i64 2157360684}
!100 = !{i64 5958230}
!101 = !{i64 2157360204}
!102 = !{i64 2157361413}
!103 = !{i64 2157362673}
!104 = !{i64 2157362977}
!105 = !{i64 2157364171}
!106 = !{i64 2157364454}
