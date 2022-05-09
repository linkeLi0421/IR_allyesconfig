; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.sparx5_calendar_data = type { [64 x i32], [13 x i32], [13 x i32], [13 x i32], [13 x i32], [64 x i32], [64 x i32], [64 x i32], [64 x i32], [64 x i32] }

@sparx5_config_auto_calendar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Core clock not supported\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sparx5_config_auto_calendar\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sparx5_config_auto_calendar._entry_ptr = internal global ptr @sparx5_config_auto_calendar._entry, section ".printk_index", align 4
@sparx5_config_auto_calendar._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Port BW %u above target BW %u\0A\00", [33 x i8] zeroinitializer }, align 32
@sparx5_config_auto_calendar._entry_ptr.7 = internal global ptr @sparx5_config_auto_calendar._entry.5, section ".printk_index", align 4
@sparx5_config_auto_calendar._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Total BW %u above switch core BW %u\0A\00", [59 x i8] zeroinitializer }, align 32
@sparx5_config_auto_calendar._entry_ptr.10 = internal global ptr @sparx5_config_auto_calendar._entry.8, section ".printk_index", align 4
@sparx5_config_auto_calendar._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QSYS calendar error\0A\00", [43 x i8] zeroinitializer }, align 32
@sparx5_config_auto_calendar._entry_ptr.13 = internal global ptr @sparx5_config_auto_calendar._entry.11, section ".printk_index", align 4
@sparx5_config_dsm_calendar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 579, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DSM calendar calculation failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sparx5_config_dsm_calendar\00", [37 x i8] zeroinitializer }, align 32
@sparx5_config_dsm_calendar._entry_ptr = internal global ptr @sparx5_config_dsm_calendar._entry, section ".printk_index", align 4
@sparx5_config_dsm_calendar._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DSM calendar check failed\0A\00", [37 x i8] zeroinitializer }, align 32
@sparx5_config_dsm_calendar._entry_ptr.18 = internal global ptr @sparx5_config_dsm_calendar._entry.16, section ".printk_index", align 4
@sparx5_config_dsm_calendar._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DSM calendar update failed\0A\00", [36 x i8] zeroinitializer }, align 32
@sparx5_config_dsm_calendar._entry_ptr.21 = internal global ptr @sparx5_config_dsm_calendar._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sparx5_taxi_ports = internal constant { [8 x [13 x i32]], [96 x i8] } { [8 x [13 x i32]] [[13 x i32] [i32 57, i32 12, i32 0, i32 1, i32 2, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23], [13 x i32] [i32 58, i32 13, i32 3, i32 4, i32 5, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], [13 x i32] [i32 59, i32 14, i32 6, i32 7, i32 8, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39], [13 x i32] [i32 60, i32 15, i32 9, i32 10, i32 11, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47], [13 x i32] [i32 61, i32 48, i32 49, i32 50, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], [13 x i32] [i32 62, i32 51, i32 52, i32 53, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], [13 x i32] [i32 56, i32 63, i32 54, i32 55, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], [13 x i32] [i32 64, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99]], [96 x i8] zeroinitializer }, align 32
@sparx5_dsm_calendar_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Taxi %u, Requested BW %u above available BW %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sparx5_dsm_calendar_calc\00", [39 x i8] zeroinitializer }, align 32
@sparx5_dsm_calendar_calc._entry_ptr = internal global ptr @sparx5_dsm_calendar_calc._entry, section ".printk_index", align 4
@sparx5_dsm_calendar_calc._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Taxi %u, speed %u, Low slot sep.\0A\00", [62 x i8] zeroinitializer }, align 32
@sparx5_dsm_calendar_calc._entry_ptr.27 = internal global ptr @sparx5_dsm_calendar_calc._entry.25, section ".printk_index", align 4
@sparx5_dsm_calendar_calc._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Taxi %u with overhead factor %u\0A\00", [63 x i8] zeroinitializer }, align 32
@sparx5_dsm_calendar_calc._entry_ptr.30 = internal global ptr @sparx5_dsm_calendar_calc._entry.28, section ".printk_index", align 4
@sparx5_dsm_calendar_calc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in DSM calendar calculation\0A\00", [61 x i8] zeroinitializer }, align 32
@sparx5_dsm_calendar_calc._entry_ptr.33 = internal global ptr @sparx5_dsm_calendar_calc._entry.31, section ".printk_index", align 4
@sparx5_dsm_calendar_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 529, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Port %u: distance %u above limit %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sparx5_dsm_calendar_check\00", [38 x i8] zeroinitializer }, align 32
@sparx5_dsm_calendar_check._entry_ptr = internal global ptr @sparx5_dsm_calendar_check._entry, section ".printk_index", align 4
@sparx5_dsm_calendar_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 561, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Incorrect calendar length: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sparx5_dsm_calendar_update\00", [37 x i8] zeroinitializer }, align 32
@sparx5_dsm_calendar_update._entry_ptr = internal global ptr @sparx5_dsm_calendar_update._entry, section ".printk_index", align 4
@switch.table.sparx5_config_auto_calendar = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 83000, i32 166000, i32 208000], [20 x i8] zeroinitializer }, align 32
@switch.table.sparx5_config_dsm_calendar = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2500, i32 2500, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 10, i64 100, i64 1000, i64 2500, i64 5000, i64 10000, i64 12500, i64 25000, i64 4294967295]
@__sancov_gen_cov_switch_values.38 = internal global [12 x i64] [i64 10, i64 32, i64 30022, i64 30025, i64 30034, i64 30038, i64 30040, i64 292166, i64 292169, i64 292178, i64 292182, i64 292184]
@__sancov_gen_cov_switch_values.39 = internal global [12 x i64] [i64 10, i64 32, i64 30022, i64 30025, i64 30034, i64 30038, i64 30040, i64 292166, i64 292169, i64 292178, i64 292182, i64 292184]
@__sancov_gen_cov_switch_values.40 = internal global [11 x i64] [i64 9, i64 32, i64 10, i64 100, i64 1000, i64 2500, i64 5000, i64 10000, i64 12500, i64 25000, i64 4294967295]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 10000, i64 25000]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 172, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 197, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 204, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 241, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 579, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 584, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 589, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"sparx5_taxi_ports\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 29, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 333, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 372, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 380, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 458, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 527, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [59 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 561, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [41 x i8] c"switch.table.sparx5_config_auto_calendar\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [40 x i8] c"switch.table.sparx5_config_dsm_calendar\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @sparx5_config_auto_calendar._entry, ptr @sparx5_config_auto_calendar._entry.11, ptr @sparx5_config_auto_calendar._entry.5, ptr @sparx5_config_auto_calendar._entry.8, ptr @sparx5_config_auto_calendar._entry_ptr, ptr @sparx5_config_auto_calendar._entry_ptr.10, ptr @sparx5_config_auto_calendar._entry_ptr.13, ptr @sparx5_config_auto_calendar._entry_ptr.7, ptr @sparx5_config_dsm_calendar._entry, ptr @sparx5_config_dsm_calendar._entry.16, ptr @sparx5_config_dsm_calendar._entry.19, ptr @sparx5_config_dsm_calendar._entry_ptr, ptr @sparx5_config_dsm_calendar._entry_ptr.18, ptr @sparx5_config_dsm_calendar._entry_ptr.21, ptr @sparx5_dsm_calendar_calc._entry, ptr @sparx5_dsm_calendar_calc._entry.25, ptr @sparx5_dsm_calendar_calc._entry.28, ptr @sparx5_dsm_calendar_calc._entry.31, ptr @sparx5_dsm_calendar_calc._entry_ptr, ptr @sparx5_dsm_calendar_calc._entry_ptr.27, ptr @sparx5_dsm_calendar_calc._entry_ptr.30, ptr @sparx5_dsm_calendar_calc._entry_ptr.33, ptr @sparx5_dsm_calendar_check._entry, ptr @sparx5_dsm_calendar_check._entry_ptr, ptr @sparx5_dsm_calendar_update._entry, ptr @sparx5_dsm_calendar_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @sparx5_taxi_ports, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @switch.table.sparx5_config_auto_calendar, ptr @switch.table.sparx5_config_dsm_calendar], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_config_auto_calendar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_config_auto_calendar._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_config_auto_calendar._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_config_auto_calendar._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_config_dsm_calendar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_config_dsm_calendar._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_config_dsm_calendar._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_taxi_ports to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_dsm_calendar_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_dsm_calendar_calc._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_dsm_calendar_calc._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_dsm_calendar_calc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_dsm_calendar_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_dsm_calendar_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sparx5_config_auto_calendar to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sparx5_config_dsm_calendar to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_config_auto_calendar(ptr nocapture noundef readonly %sparx5) local_unnamed_addr #0 align 64 {
entry:
  %cal = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cal) #6
  %0 = getelementptr inbounds [7 x i32], ptr %cal, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i32], ptr %cal, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i32], ptr %cal, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i32], ptr %cal, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i32], ptr %cal, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i32], ptr %cal, i32 0, i32 6
  %6 = call ptr @memset(ptr %cal, i32 0, i32 28)
  %coreclock = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 8
  %7 = ptrtoint ptr %coreclock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %coreclock, align 4
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %do.end

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sparx5_config_auto_calendar, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str) #9
  br label %cleanup335

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %switch.lookup
  %portno.0535 = phi i32 [ 0, %switch.lookup ], [ %inc, %cleanup.for.body_crit_edge ]
  %total_bw.0533 = phi i32 [ 0, %switch.lookup ], [ %total_bw.1, %cleanup.for.body_crit_edge ]
  %used_port_bw.0532 = phi i32 [ 0, %switch.lookup ], [ %used_port_bw.2, %cleanup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %portno.0535)
  %cmp.i = icmp ugt i32 %portno.0535, 64
  br i1 %cmp.i, label %if.then.i, label %if.end15.i

if.then.i:                                        ; preds = %for.body
  %portno.0.off = add nsw i32 %portno.0535, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %portno.0.off)
  %switch = icmp ult i32 %portno.0.off, 2
  br i1 %switch, label %if.then.i.sparx5_cal_speed_to_value.exit_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.sparx5_cal_speed_to_value.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_cal_speed_to_value.exit

if.end15.i:                                       ; preds = %for.body
  %arrayidx.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %portno.0535
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end15.i.cleanup_crit_edge, label %if.end17.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.i:                                       ; preds = %if.end15.i
  %bandwidth.i = getelementptr inbounds %struct.sparx5_port, ptr %14, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bandwidth.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end17.i.cleanup_crit_edge [
    i32 10, label %if.end17.i.sw.bb5.i_crit_edge
    i32 100, label %if.end17.i.sw.bb5.i_crit_edge542
    i32 1000, label %if.end17.i.if.end5.thread_crit_edge
    i32 2500, label %sw.bb3.i.i
    i32 5000, label %if.end17.i.sparx5_cal_speed_to_value.exit_crit_edge
    i32 10000, label %sw.bb3.i
    i32 12500, label %sw.bb6.i
    i32 25000, label %sw.bb4.i
    i32 -1, label %if.end17.i.if.end5.thread_crit_edge543
  ]

if.end17.i.if.end5.thread_crit_edge543:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.thread

if.end17.i.sparx5_cal_speed_to_value.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_cal_speed_to_value.exit

if.end17.i.if.end5.thread_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.thread

if.end17.i.sw.bb5.i_crit_edge542:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end17.i.sw.bb5.i_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_cal_speed_to_value.exit

if.end5.thread:                                   ; preds = %if.end17.i.if.end5.thread_crit_edge, %if.end17.i.if.end5.thread_crit_edge543
  br label %sparx5_cal_speed_to_value.exit

sw.bb3.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_cal_speed_to_value.exit

sw.bb4.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_cal_speed_to_value.exit

sw.bb5.i:                                         ; preds = %if.end17.i.sw.bb5.i_crit_edge, %if.end17.i.sw.bb5.i_crit_edge542
  br label %sparx5_cal_speed_to_value.exit

sw.bb6.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_cal_speed_to_value.exit

sparx5_cal_speed_to_value.exit:                   ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %if.end5.thread, %sw.bb3.i.i, %if.end17.i.sparx5_cal_speed_to_value.exit_crit_edge, %if.then.i.sparx5_cal_speed_to_value.exit_crit_edge
  %retval.0.i457.ph514 = phi i32 [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 1, %if.end5.thread ], [ 2, %sw.bb3.i.i ], [ 2, %if.then.i.sparx5_cal_speed_to_value.exit_crit_edge ], [ 3, %if.end17.i.sparx5_cal_speed_to_value.exit_crit_edge ]
  %retval.0.i461 = phi i32 [ %16, %sw.bb6.i ], [ 500, %sw.bb5.i ], [ %16, %sw.bb4.i ], [ %16, %sw.bb3.i ], [ 1000, %if.end5.thread ], [ %16, %sw.bb3.i.i ], [ 2500, %if.then.i.sparx5_cal_speed_to_value.exit_crit_edge ], [ %16, %if.end17.i.sparx5_cal_speed_to_value.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %portno.0535)
  %cmp7 = icmp ult i32 %portno.0535, 65
  %not.cmp7 = xor i1 %cmp7, true
  %div456 = zext i1 %not.cmp7 to i32
  %this_bw.0 = lshr exact i32 %retval.0.i461, %div456
  %add = select i1 %cmp7, i32 %retval.0.i461, i32 0
  %used_port_bw.1 = add i32 %add, %used_port_bw.0532
  %add14 = add i32 %this_bw.0, %total_bw.0533
  %18 = lshr i32 %portno.0535, 1
  %div103 = zext i32 %18 to i64
  %19 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div103, i64 3689348814741910323) #10, !srcloc !73
  %20 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div103, i64 %19) #10, !srcloc !74
  %conv184 = trunc i64 %20 to i32
  %mul185.neg = mul i32 %conv184, -10
  %sub186 = add i32 %mul185.neg, %portno.0535
  %mul206 = mul i32 %sub186, 3
  %shl208 = shl i32 %retval.0.i457.ph514, %mul206
  %arrayidx = getelementptr [7 x i32], ptr %cal, i32 0, i32 %conv184
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %or209 = or i32 %shl208, %22
  store i32 %or209, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %sparx5_cal_speed_to_value.exit, %if.end17.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %used_port_bw.2 = phi i32 [ %used_port_bw.1, %sparx5_cal_speed_to_value.exit ], [ %used_port_bw.0532, %if.end15.i.cleanup_crit_edge ], [ %used_port_bw.0532, %if.then.i.cleanup_crit_edge ], [ %used_port_bw.0532, %if.end17.i.cleanup_crit_edge ]
  %total_bw.1 = phi i32 [ %add14, %sparx5_cal_speed_to_value.exit ], [ %total_bw.0533, %if.end15.i.cleanup_crit_edge ], [ %total_bw.0533, %if.then.i.cleanup_crit_edge ], [ %total_bw.0533, %if.end17.i.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %portno.0535, 1
  %exitcond.not = icmp eq i32 %inc, 70
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  %target_ct.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 3
  %23 = ptrtoint ptr %target_ct.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %target_ct.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %24, label %sw.default.i466 [
    i32 30022, label %for.end.sparx5_target_bandwidth.exit_crit_edge
    i32 292166, label %for.end.sparx5_target_bandwidth.exit_crit_edge544
    i32 30025, label %for.end.sw.bb1.i462_crit_edge
    i32 292169, label %for.end.sw.bb1.i462_crit_edge545
    i32 30034, label %for.end.sw.bb2.i463_crit_edge
    i32 292178, label %for.end.sw.bb2.i463_crit_edge546
    i32 30038, label %for.end.sw.bb3.i464_crit_edge
    i32 292182, label %for.end.sw.bb3.i464_crit_edge547
    i32 30040, label %for.end.sw.bb4.i465_crit_edge
    i32 292184, label %for.end.sw.bb4.i465_crit_edge548
  ]

for.end.sw.bb4.i465_crit_edge548:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i465

for.end.sw.bb4.i465_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i465

for.end.sw.bb3.i464_crit_edge547:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i464

for.end.sw.bb3.i464_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i464

for.end.sw.bb2.i463_crit_edge546:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i463

for.end.sw.bb2.i463_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i463

for.end.sw.bb1.i462_crit_edge545:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i462

for.end.sw.bb1.i462_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i462

for.end.sparx5_target_bandwidth.exit_crit_edge544: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_target_bandwidth.exit

for.end.sparx5_target_bandwidth.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_target_bandwidth.exit

sw.bb1.i462:                                      ; preds = %for.end.sw.bb1.i462_crit_edge, %for.end.sw.bb1.i462_crit_edge545
  br label %sparx5_target_bandwidth.exit

sw.bb2.i463:                                      ; preds = %for.end.sw.bb2.i463_crit_edge, %for.end.sw.bb2.i463_crit_edge546
  br label %sparx5_target_bandwidth.exit

sw.bb3.i464:                                      ; preds = %for.end.sw.bb3.i464_crit_edge, %for.end.sw.bb3.i464_crit_edge547
  br label %sparx5_target_bandwidth.exit

sw.bb4.i465:                                      ; preds = %for.end.sw.bb4.i465_crit_edge, %for.end.sw.bb4.i465_crit_edge548
  br label %sparx5_target_bandwidth.exit

sw.default.i466:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_target_bandwidth.exit

sparx5_target_bandwidth.exit:                     ; preds = %sw.default.i466, %sw.bb4.i465, %sw.bb3.i464, %sw.bb2.i463, %sw.bb1.i462, %for.end.sparx5_target_bandwidth.exit_crit_edge, %for.end.sparx5_target_bandwidth.exit_crit_edge544
  %retval.0.i467 = phi i32 [ 0, %sw.default.i466 ], [ 201000, %sw.bb4.i465 ], [ 161000, %sw.bb3.i464 ], [ 129000, %sw.bb2.i463 ], [ 91000, %sw.bb1.i462 ], [ 65000, %for.end.sparx5_target_bandwidth.exit_crit_edge ], [ 65000, %for.end.sparx5_target_bandwidth.exit_crit_edge544 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %used_port_bw.2, i32 %retval.0.i467)
  %cmp213 = icmp ugt i32 %used_port_bw.2, %retval.0.i467
  br i1 %cmp213, label %do.end218, label %if.end221

do.end218:                                        ; preds = %sparx5_target_bandwidth.exit
  %dev219 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %26 = ptrtoint ptr %dev219 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev219, align 4
  %28 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %24, label %sw.default.i473 [
    i32 30022, label %do.end218.sparx5_target_bandwidth.exit475_crit_edge
    i32 292166, label %do.end218.sparx5_target_bandwidth.exit475_crit_edge549
    i32 30025, label %do.end218.sw.bb1.i469_crit_edge
    i32 292169, label %do.end218.sw.bb1.i469_crit_edge550
    i32 30034, label %do.end218.sw.bb2.i470_crit_edge
    i32 292178, label %do.end218.sw.bb2.i470_crit_edge551
    i32 30038, label %do.end218.sw.bb3.i471_crit_edge
    i32 292182, label %do.end218.sw.bb3.i471_crit_edge552
    i32 30040, label %do.end218.sw.bb4.i472_crit_edge
    i32 292184, label %do.end218.sw.bb4.i472_crit_edge553
  ]

do.end218.sw.bb4.i472_crit_edge553:               ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i472

do.end218.sw.bb4.i472_crit_edge:                  ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i472

do.end218.sw.bb3.i471_crit_edge552:               ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i471

do.end218.sw.bb3.i471_crit_edge:                  ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i471

do.end218.sw.bb2.i470_crit_edge551:               ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i470

do.end218.sw.bb2.i470_crit_edge:                  ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i470

do.end218.sw.bb1.i469_crit_edge550:               ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i469

do.end218.sw.bb1.i469_crit_edge:                  ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i469

do.end218.sparx5_target_bandwidth.exit475_crit_edge549: ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_target_bandwidth.exit475

do.end218.sparx5_target_bandwidth.exit475_crit_edge: ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_target_bandwidth.exit475

sw.bb1.i469:                                      ; preds = %do.end218.sw.bb1.i469_crit_edge, %do.end218.sw.bb1.i469_crit_edge550
  br label %sparx5_target_bandwidth.exit475

sw.bb2.i470:                                      ; preds = %do.end218.sw.bb2.i470_crit_edge, %do.end218.sw.bb2.i470_crit_edge551
  br label %sparx5_target_bandwidth.exit475

sw.bb3.i471:                                      ; preds = %do.end218.sw.bb3.i471_crit_edge, %do.end218.sw.bb3.i471_crit_edge552
  br label %sparx5_target_bandwidth.exit475

sw.bb4.i472:                                      ; preds = %do.end218.sw.bb4.i472_crit_edge, %do.end218.sw.bb4.i472_crit_edge553
  br label %sparx5_target_bandwidth.exit475

sw.default.i473:                                  ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_target_bandwidth.exit475

sparx5_target_bandwidth.exit475:                  ; preds = %sw.default.i473, %sw.bb4.i472, %sw.bb3.i471, %sw.bb2.i470, %sw.bb1.i469, %do.end218.sparx5_target_bandwidth.exit475_crit_edge, %do.end218.sparx5_target_bandwidth.exit475_crit_edge549
  %retval.0.i474 = phi i32 [ 0, %sw.default.i473 ], [ 201000, %sw.bb4.i472 ], [ 161000, %sw.bb3.i471 ], [ 129000, %sw.bb2.i470 ], [ 91000, %sw.bb1.i469 ], [ 65000, %do.end218.sparx5_target_bandwidth.exit475_crit_edge ], [ 65000, %do.end218.sparx5_target_bandwidth.exit475_crit_edge549 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.6, i32 noundef %used_port_bw.2, i32 noundef %retval.0.i474) #9
  br label %cleanup335

if.end221:                                        ; preds = %sparx5_target_bandwidth.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %total_bw.1, i32 %switch.load)
  %cmp222 = icmp ugt i32 %total_bw.1, %switch.load
  br i1 %cmp222, label %do.end227, label %do.end244

do.end227:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  %dev228 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %29 = ptrtoint ptr %dev228 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev228, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.9, i32 noundef %total_bw.1, i32 noundef %switch.load) #9
  br label %cleanup335

do.end244:                                        ; preds = %if.end221
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 178
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %32, i32 2340
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %34 = and i32 %33, -7864321
  %35 = or i32 %34, 5242880
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i5.i = getelementptr i8, ptr %37, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i, i32 %35) #6, !srcloc !78
  %38 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cal, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i478 = getelementptr i8, ptr %42, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i478, i32 %40) #6, !srcloc !78
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i.i.1 = getelementptr i8, ptr %47, i32 2308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.1, i32 %45) #6, !srcloc !78
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i.i.2 = getelementptr i8, ptr %52, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.2, i32 %50) #6, !srcloc !78
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i.i.3 = getelementptr i8, ptr %57, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.3, i32 %55) #6, !srcloc !78
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i.i.4 = getelementptr i8, ptr %62, i32 2320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.4, i32 %60) #6, !srcloc !78
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i.i.5 = getelementptr i8, ptr %67, i32 2324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.5, i32 %65) #6, !srcloc !78
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr84.i.i.6 = getelementptr i8, ptr %72, i32 2328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.6, i32 %70) #6, !srcloc !78
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i482 = getelementptr i8, ptr %74, i32 2340
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i482) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %76 = and i32 %75, 33095679
  %77 = or i32 %76, 1040515072
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i5.i486 = getelementptr i8, ptr %79, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i486, i32 %77) #6, !srcloc !78
  %arrayidx.i.i490 = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %arrayidx.i.i490 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i490, align 4
  %add.ptr84.i.i494 = getelementptr i8, ptr %81, i32 184296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i494, i32 201326592) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %arrayidx.i.i490 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i490, align 4
  %add.ptr84.i.i494.1 = getelementptr i8, ptr %83, i32 184300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i494.1, i32 201326592) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %84 = ptrtoint ptr %arrayidx.i.i490 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i490, align 4
  %add.ptr84.i.i494.2 = getelementptr i8, ptr %85, i32 184304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i494.2, i32 201326592) #6, !srcloc !78
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i499 = getelementptr i8, ptr %87, i32 2340
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i499) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %89 = and i32 %88, -7864321
  %90 = or i32 %89, 4194304
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i5.i503 = getelementptr i8, ptr %92, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i5.i503, i32 %90) #6, !srcloc !78
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i507 = getelementptr i8, ptr %94, i32 2340
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i507) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %96 = and i32 %95, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool328.not = icmp eq i32 %96, 0
  br i1 %tobool328.not, label %do.end244.cleanup335_crit_edge, label %do.end332

do.end244.cleanup335_crit_edge:                   ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup335

do.end332:                                        ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #8
  %dev333 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %97 = ptrtoint ptr %dev333 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev333, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.12) #9
  br label %cleanup335

cleanup335:                                       ; preds = %do.end332, %do.end244.cleanup335_crit_edge, %do.end227, %sparx5_target_bandwidth.exit475, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sparx5_target_bandwidth.exit475 ], [ -22, %do.end227 ], [ -22, %do.end332 ], [ 0, %do.end244.cleanup335_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cal) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_config_dsm_calendar(ptr nocapture noundef readonly %sparx5) local_unnamed_addr #0 align 64 {
entry:
  %slot_indices.i = alloca [64 x i32], align 4
  %distances.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1744) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %coreclock.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 8
  %taxi_ports.i = getelementptr inbounds %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 2
  %arrayidx40.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 0
  %arrayidx40.1.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %arrayidx40.2.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  %arrayidx40.3.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 3
  %arrayidx40.4.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 4
  %arrayidx40.5.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 5
  %arrayidx40.6.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 6
  %arrayidx40.7.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 7
  %arrayidx40.8.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 8
  %arrayidx40.9.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 9
  %arrayidx40.10.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 10
  %arrayidx40.11.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 11
  %arrayidx40.12.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 12
  %short_list206.i = getelementptr inbounds %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 8
  %new_slots208.i = getelementptr inbounds %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 5
  %long_list210.i = getelementptr inbounds %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 9
  %arrayidx155.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 0
  %arrayidx158.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 0
  %arrayidx155.1.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 1
  %arrayidx155.2.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 2
  %arrayidx155.3.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 3
  %arrayidx155.4.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 4
  %arrayidx155.5.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 5
  %arrayidx155.6.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 6
  %arrayidx155.7.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 7
  %arrayidx155.8.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 8
  %arrayidx155.9.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 9
  %arrayidx155.10.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 10
  %arrayidx155.11.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 11
  %arrayidx155.12.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 12
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 115
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %taxi.0123 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %coreclock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %coreclock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.selectcmp.i.i = icmp eq i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %switch.selectcmp3.i.i = icmp eq i32 %2, 1
  %arrayidx.i = getelementptr [8 x [13 x i32]], ptr @sparx5_taxi_ports, i32 0, i32 %taxi.0123
  %3 = call ptr @memcpy(ptr %taxi_ports.i, ptr %arrayidx.i, i32 52)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %idx.0560.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 5, i32 %idx.0560.i
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr [64 x i32], ptr %call7.i.i, i32 0, i32 %idx.0560.i
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65535, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 6, i32 %idx.0560.i
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %idx.0560.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2000, i32 1600
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 13, ptr %call7.i.i, align 8
  br label %for.body10.i

for.body10.i:                                     ; preds = %if.end.i.for.body10.i_crit_edge, %for.end.i
  %idx.1561.i = phi i32 [ 0, %for.end.i ], [ %inc20.i, %if.end.i.for.body10.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 2, i32 %idx.1561.i
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %9)
  %cmp13.i = icmp ult i32 %9, 70
  br i1 %cmp13.i, label %if.then.i, label %for.body10.i.if.end.i_crit_edge

for.body10.i.if.end.i_crit_edge:                  ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp.i.i = icmp ugt i32 %9, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end15.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %switch.tableidx = add i32 %9, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %if.then.i.i.if.end.i_crit_edge

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end15.i.i:                                     ; preds = %if.then.i
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %9
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %if.end17.i.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end17.i.i:                                     ; preds = %if.end15.i.i
  %bandwidth.i.i = getelementptr inbounds %struct.sparx5_port, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %bandwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bandwidth.i.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %14, label %sw.default.i.i.i [
    i32 10, label %if.end17.i.i.sw.bb5.i.i_crit_edge
    i32 100, label %if.end17.i.i.sw.bb5.i.i_crit_edge304
    i32 1000, label %if.end17.i.i.sparx5_get_port_cal_speed.exit.thread533.i_crit_edge
    i32 2500, label %if.end17.i.i.if.end.i_crit_edge
    i32 5000, label %if.end17.i.i.if.end.i_crit_edge305
    i32 10000, label %if.end17.i.i.if.end.i_crit_edge306
    i32 12500, label %if.end17.i.i.if.end.i_crit_edge307
    i32 25000, label %if.end17.i.i.if.end.i_crit_edge308
    i32 -1, label %if.end17.i.i.sparx5_get_port_cal_speed.exit.thread533.i_crit_edge309
  ]

if.end17.i.i.sparx5_get_port_cal_speed.exit.thread533.i_crit_edge309: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_get_port_cal_speed.exit.thread533.i

if.end17.i.i.if.end.i_crit_edge308:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end17.i.i.if.end.i_crit_edge307:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end17.i.i.if.end.i_crit_edge306:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end17.i.i.if.end.i_crit_edge305:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end17.i.i.if.end.i_crit_edge:                  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end17.i.i.sparx5_get_port_cal_speed.exit.thread533.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_get_port_cal_speed.exit.thread533.i

if.end17.i.i.sw.bb5.i.i_crit_edge304:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i.i

if.end17.i.i.sw.bb5.i.i_crit_edge:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i.i

sw.default.i.i.i:                                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

sparx5_get_port_cal_speed.exit.thread533.i:       ; preds = %if.end17.i.i.sparx5_get_port_cal_speed.exit.thread533.i_crit_edge, %if.end17.i.i.sparx5_get_port_cal_speed.exit.thread533.i_crit_edge309
  br label %if.end.i

sw.bb5.i.i:                                       ; preds = %if.end17.i.i.sw.bb5.i.i_crit_edge, %if.end17.i.i.sw.bb5.i.i_crit_edge304
  br label %if.end.i

switch.lookup:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sparx5_config_dsm_calendar, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %switch.lookup, %sw.bb5.i.i, %sparx5_get_port_cal_speed.exit.thread533.i, %sw.default.i.i.i, %if.end17.i.i.if.end.i_crit_edge, %if.end17.i.i.if.end.i_crit_edge305, %if.end17.i.i.if.end.i_crit_edge306, %if.end17.i.i.if.end.i_crit_edge307, %if.end17.i.i.if.end.i_crit_edge308, %if.end15.i.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge, %for.body10.i.if.end.i_crit_edge
  %.sink.i = phi i32 [ 500, %sw.bb5.i.i ], [ 1000, %sparx5_get_port_cal_speed.exit.thread533.i ], [ %14, %if.end17.i.i.if.end.i_crit_edge ], [ 0, %if.end15.i.i.if.end.i_crit_edge ], [ 0, %sw.default.i.i.i ], [ 0, %for.body10.i.if.end.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.then.i.i.if.end.i_crit_edge ], [ %14, %if.end17.i.i.if.end.i_crit_edge305 ], [ %14, %if.end17.i.i.if.end.i_crit_edge306 ], [ %14, %if.end17.i.i.if.end.i_crit_edge307 ], [ %14, %if.end17.i.i.if.end.i_crit_edge308 ]
  %arrayidx18.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.1561.i
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %arrayidx18.i, align 4
  %inc20.i = add nuw nsw i32 %idx.1561.i, 1
  %exitcond600.not.i = icmp eq i32 %inc20.i, 13
  br i1 %exitcond600.not.i, label %for.body24.preheader.i, label %if.end.i.for.body10.i_crit_edge

if.end.i.for.body10.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

for.body24.preheader.i:                           ; preds = %if.end.i
  %18 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.i.i = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx40.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp4.i.1.i = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx40.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.i.2.i = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp4.i.3.i = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %arrayidx40.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx40.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.i.4.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %arrayidx40.5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.i.5.i = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %arrayidx40.6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx40.6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.i.6.i = icmp eq i32 %31, 0
  %32 = ptrtoint ptr %arrayidx40.7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx40.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp4.i.7.i = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %arrayidx40.8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx40.8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.i.8.i = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %arrayidx40.9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx40.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp4.i.9.i = icmp eq i32 %37, 0
  %38 = ptrtoint ptr %arrayidx40.10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx40.10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.i.10.i = icmp eq i32 %39, 0
  %40 = ptrtoint ptr %arrayidx40.11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx40.11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp4.i.11.i = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %arrayidx40.12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx40.12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp4.i.12.i = icmp eq i32 %43, 0
  br label %for.body24.i

for.body24.i:                                     ; preds = %sparx5_dsm_exb_gcd.exit.12.i.for.body24.i_crit_edge, %for.body24.preheader.i
  %min.0567.i = phi i32 [ %min.1.i, %sparx5_dsm_exb_gcd.exit.12.i.for.body24.i_crit_edge ], [ 25000, %for.body24.preheader.i ]
  %sum.0566.i = phi i32 [ %add.i, %sparx5_dsm_exb_gcd.exit.12.i.for.body24.i_crit_edge ], [ 0, %for.body24.preheader.i ]
  %idx.2565.i = phi i32 [ %inc46.i, %sparx5_dsm_exb_gcd.exit.12.i.for.body24.i_crit_edge ], [ 0, %for.body24.preheader.i ]
  %arrayidx26.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.2565.i
  %44 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp ne i32 %45, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %min.0567.i)
  %cmp31.i = icmp ult i32 %45, %min.0567.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp31.i, i1 false
  %min.1.i = select i1 %or.cond.i, i32 %45, i32 %min.0567.i
  br i1 %cmp4.i.i, label %for.body24.i.sparx5_dsm_exb_gcd.exit.i_crit_edge, label %for.body24.i.if.end.i.i_crit_edge

for.body24.i.if.end.i.i_crit_edge:                ; preds = %for.body24.i
  br label %if.end.i.i

for.body24.i.sparx5_dsm_exb_gcd.exit.i_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.if.end.i.i_crit_edge, %for.body24.i.if.end.i.i_crit_edge
  %b.tr6.i.i = phi i32 [ %rem.i.i, %if.end.i.i.if.end.i.i_crit_edge ], [ %19, %for.body24.i.if.end.i.i_crit_edge ]
  %a.tr5.i.i = phi i32 [ %b.tr6.i.i, %if.end.i.i.if.end.i.i_crit_edge ], [ %min.1.i, %for.body24.i.if.end.i.i_crit_edge ]
  %rem.i.i = urem i32 %a.tr5.i.i, %b.tr6.i.i
  %cmp.i482.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp.i482.i, label %if.end.i.i.sparx5_dsm_exb_gcd.exit.i_crit_edge, label %if.end.i.i.if.end.i.i_crit_edge

if.end.i.i.if.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i.sparx5_dsm_exb_gcd.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.i

sparx5_dsm_exb_gcd.exit.i:                        ; preds = %if.end.i.i.sparx5_dsm_exb_gcd.exit.i_crit_edge, %for.body24.i.sparx5_dsm_exb_gcd.exit.i_crit_edge
  %a.tr.lcssa.i.i = phi i32 [ %min.1.i, %for.body24.i.sparx5_dsm_exb_gcd.exit.i_crit_edge ], [ %b.tr6.i.i, %if.end.i.i.sparx5_dsm_exb_gcd.exit.i_crit_edge ]
  br i1 %cmp4.i.1.i, label %sparx5_dsm_exb_gcd.exit.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.i.if.end.i.1.i_crit_edge

sparx5_dsm_exb_gcd.exit.i.if.end.i.1.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.i
  br label %if.end.i.1.i

sparx5_dsm_exb_gcd.exit.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.1.i

if.end.i.1.i:                                     ; preds = %if.end.i.1.i.if.end.i.1.i_crit_edge, %sparx5_dsm_exb_gcd.exit.i.if.end.i.1.i_crit_edge
  %b.tr6.i.1.i = phi i32 [ %rem.i.1.i, %if.end.i.1.i.if.end.i.1.i_crit_edge ], [ %21, %sparx5_dsm_exb_gcd.exit.i.if.end.i.1.i_crit_edge ]
  %a.tr5.i.1.i = phi i32 [ %b.tr6.i.1.i, %if.end.i.1.i.if.end.i.1.i_crit_edge ], [ %a.tr.lcssa.i.i, %sparx5_dsm_exb_gcd.exit.i.if.end.i.1.i_crit_edge ]
  %rem.i.1.i = urem i32 %a.tr5.i.1.i, %b.tr6.i.1.i
  %cmp.i482.1.i = icmp eq i32 %rem.i.1.i, 0
  br i1 %cmp.i482.1.i, label %if.end.i.1.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge, label %if.end.i.1.i.if.end.i.1.i_crit_edge

if.end.i.1.i.if.end.i.1.i_crit_edge:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.1.i

if.end.i.1.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.1.i

sparx5_dsm_exb_gcd.exit.1.i:                      ; preds = %if.end.i.1.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge, %sparx5_dsm_exb_gcd.exit.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge
  %a.tr.lcssa.i.1.i = phi i32 [ %a.tr.lcssa.i.i, %sparx5_dsm_exb_gcd.exit.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge ], [ %b.tr6.i.1.i, %if.end.i.1.i.sparx5_dsm_exb_gcd.exit.1.i_crit_edge ]
  br i1 %cmp4.i.2.i, label %sparx5_dsm_exb_gcd.exit.1.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.1.i.if.end.i.2.i_crit_edge

sparx5_dsm_exb_gcd.exit.1.i.if.end.i.2.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.1.i
  br label %if.end.i.2.i

sparx5_dsm_exb_gcd.exit.1.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.2.i

if.end.i.2.i:                                     ; preds = %if.end.i.2.i.if.end.i.2.i_crit_edge, %sparx5_dsm_exb_gcd.exit.1.i.if.end.i.2.i_crit_edge
  %b.tr6.i.2.i = phi i32 [ %rem.i.2.i, %if.end.i.2.i.if.end.i.2.i_crit_edge ], [ %23, %sparx5_dsm_exb_gcd.exit.1.i.if.end.i.2.i_crit_edge ]
  %a.tr5.i.2.i = phi i32 [ %b.tr6.i.2.i, %if.end.i.2.i.if.end.i.2.i_crit_edge ], [ %a.tr.lcssa.i.1.i, %sparx5_dsm_exb_gcd.exit.1.i.if.end.i.2.i_crit_edge ]
  %rem.i.2.i = urem i32 %a.tr5.i.2.i, %b.tr6.i.2.i
  %cmp.i482.2.i = icmp eq i32 %rem.i.2.i, 0
  br i1 %cmp.i482.2.i, label %if.end.i.2.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge, label %if.end.i.2.i.if.end.i.2.i_crit_edge

if.end.i.2.i.if.end.i.2.i_crit_edge:              ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.2.i

if.end.i.2.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge: ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.2.i

sparx5_dsm_exb_gcd.exit.2.i:                      ; preds = %if.end.i.2.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge, %sparx5_dsm_exb_gcd.exit.1.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge
  %a.tr.lcssa.i.2.i = phi i32 [ %a.tr.lcssa.i.1.i, %sparx5_dsm_exb_gcd.exit.1.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge ], [ %b.tr6.i.2.i, %if.end.i.2.i.sparx5_dsm_exb_gcd.exit.2.i_crit_edge ]
  br i1 %cmp4.i.3.i, label %sparx5_dsm_exb_gcd.exit.2.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.2.i.if.end.i.3.i_crit_edge

sparx5_dsm_exb_gcd.exit.2.i.if.end.i.3.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.2.i
  br label %if.end.i.3.i

sparx5_dsm_exb_gcd.exit.2.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.3.i

if.end.i.3.i:                                     ; preds = %if.end.i.3.i.if.end.i.3.i_crit_edge, %sparx5_dsm_exb_gcd.exit.2.i.if.end.i.3.i_crit_edge
  %b.tr6.i.3.i = phi i32 [ %rem.i.3.i, %if.end.i.3.i.if.end.i.3.i_crit_edge ], [ %25, %sparx5_dsm_exb_gcd.exit.2.i.if.end.i.3.i_crit_edge ]
  %a.tr5.i.3.i = phi i32 [ %b.tr6.i.3.i, %if.end.i.3.i.if.end.i.3.i_crit_edge ], [ %a.tr.lcssa.i.2.i, %sparx5_dsm_exb_gcd.exit.2.i.if.end.i.3.i_crit_edge ]
  %rem.i.3.i = urem i32 %a.tr5.i.3.i, %b.tr6.i.3.i
  %cmp.i482.3.i = icmp eq i32 %rem.i.3.i, 0
  br i1 %cmp.i482.3.i, label %if.end.i.3.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge, label %if.end.i.3.i.if.end.i.3.i_crit_edge

if.end.i.3.i.if.end.i.3.i_crit_edge:              ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.3.i

if.end.i.3.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge: ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.3.i

sparx5_dsm_exb_gcd.exit.3.i:                      ; preds = %if.end.i.3.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge, %sparx5_dsm_exb_gcd.exit.2.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge
  %a.tr.lcssa.i.3.i = phi i32 [ %a.tr.lcssa.i.2.i, %sparx5_dsm_exb_gcd.exit.2.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge ], [ %b.tr6.i.3.i, %if.end.i.3.i.sparx5_dsm_exb_gcd.exit.3.i_crit_edge ]
  br i1 %cmp4.i.4.i, label %sparx5_dsm_exb_gcd.exit.3.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.3.i.if.end.i.4.i_crit_edge

sparx5_dsm_exb_gcd.exit.3.i.if.end.i.4.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.3.i
  br label %if.end.i.4.i

sparx5_dsm_exb_gcd.exit.3.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.4.i

if.end.i.4.i:                                     ; preds = %if.end.i.4.i.if.end.i.4.i_crit_edge, %sparx5_dsm_exb_gcd.exit.3.i.if.end.i.4.i_crit_edge
  %b.tr6.i.4.i = phi i32 [ %rem.i.4.i, %if.end.i.4.i.if.end.i.4.i_crit_edge ], [ %27, %sparx5_dsm_exb_gcd.exit.3.i.if.end.i.4.i_crit_edge ]
  %a.tr5.i.4.i = phi i32 [ %b.tr6.i.4.i, %if.end.i.4.i.if.end.i.4.i_crit_edge ], [ %a.tr.lcssa.i.3.i, %sparx5_dsm_exb_gcd.exit.3.i.if.end.i.4.i_crit_edge ]
  %rem.i.4.i = urem i32 %a.tr5.i.4.i, %b.tr6.i.4.i
  %cmp.i482.4.i = icmp eq i32 %rem.i.4.i, 0
  br i1 %cmp.i482.4.i, label %if.end.i.4.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge, label %if.end.i.4.i.if.end.i.4.i_crit_edge

if.end.i.4.i.if.end.i.4.i_crit_edge:              ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.4.i

if.end.i.4.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge: ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.4.i

sparx5_dsm_exb_gcd.exit.4.i:                      ; preds = %if.end.i.4.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge, %sparx5_dsm_exb_gcd.exit.3.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge
  %a.tr.lcssa.i.4.i = phi i32 [ %a.tr.lcssa.i.3.i, %sparx5_dsm_exb_gcd.exit.3.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge ], [ %b.tr6.i.4.i, %if.end.i.4.i.sparx5_dsm_exb_gcd.exit.4.i_crit_edge ]
  br i1 %cmp4.i.5.i, label %sparx5_dsm_exb_gcd.exit.4.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.4.i.if.end.i.5.i_crit_edge

sparx5_dsm_exb_gcd.exit.4.i.if.end.i.5.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.4.i
  br label %if.end.i.5.i

sparx5_dsm_exb_gcd.exit.4.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.5.i

if.end.i.5.i:                                     ; preds = %if.end.i.5.i.if.end.i.5.i_crit_edge, %sparx5_dsm_exb_gcd.exit.4.i.if.end.i.5.i_crit_edge
  %b.tr6.i.5.i = phi i32 [ %rem.i.5.i, %if.end.i.5.i.if.end.i.5.i_crit_edge ], [ %29, %sparx5_dsm_exb_gcd.exit.4.i.if.end.i.5.i_crit_edge ]
  %a.tr5.i.5.i = phi i32 [ %b.tr6.i.5.i, %if.end.i.5.i.if.end.i.5.i_crit_edge ], [ %a.tr.lcssa.i.4.i, %sparx5_dsm_exb_gcd.exit.4.i.if.end.i.5.i_crit_edge ]
  %rem.i.5.i = urem i32 %a.tr5.i.5.i, %b.tr6.i.5.i
  %cmp.i482.5.i = icmp eq i32 %rem.i.5.i, 0
  br i1 %cmp.i482.5.i, label %if.end.i.5.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge, label %if.end.i.5.i.if.end.i.5.i_crit_edge

if.end.i.5.i.if.end.i.5.i_crit_edge:              ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.5.i

if.end.i.5.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge: ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.5.i

sparx5_dsm_exb_gcd.exit.5.i:                      ; preds = %if.end.i.5.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge, %sparx5_dsm_exb_gcd.exit.4.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge
  %a.tr.lcssa.i.5.i = phi i32 [ %a.tr.lcssa.i.4.i, %sparx5_dsm_exb_gcd.exit.4.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge ], [ %b.tr6.i.5.i, %if.end.i.5.i.sparx5_dsm_exb_gcd.exit.5.i_crit_edge ]
  br i1 %cmp4.i.6.i, label %sparx5_dsm_exb_gcd.exit.5.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.5.i.if.end.i.6.i_crit_edge

sparx5_dsm_exb_gcd.exit.5.i.if.end.i.6.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.5.i
  br label %if.end.i.6.i

sparx5_dsm_exb_gcd.exit.5.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.6.i

if.end.i.6.i:                                     ; preds = %if.end.i.6.i.if.end.i.6.i_crit_edge, %sparx5_dsm_exb_gcd.exit.5.i.if.end.i.6.i_crit_edge
  %b.tr6.i.6.i = phi i32 [ %rem.i.6.i, %if.end.i.6.i.if.end.i.6.i_crit_edge ], [ %31, %sparx5_dsm_exb_gcd.exit.5.i.if.end.i.6.i_crit_edge ]
  %a.tr5.i.6.i = phi i32 [ %b.tr6.i.6.i, %if.end.i.6.i.if.end.i.6.i_crit_edge ], [ %a.tr.lcssa.i.5.i, %sparx5_dsm_exb_gcd.exit.5.i.if.end.i.6.i_crit_edge ]
  %rem.i.6.i = urem i32 %a.tr5.i.6.i, %b.tr6.i.6.i
  %cmp.i482.6.i = icmp eq i32 %rem.i.6.i, 0
  br i1 %cmp.i482.6.i, label %if.end.i.6.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge, label %if.end.i.6.i.if.end.i.6.i_crit_edge

if.end.i.6.i.if.end.i.6.i_crit_edge:              ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.6.i

if.end.i.6.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge: ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.6.i

sparx5_dsm_exb_gcd.exit.6.i:                      ; preds = %if.end.i.6.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge, %sparx5_dsm_exb_gcd.exit.5.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge
  %a.tr.lcssa.i.6.i = phi i32 [ %a.tr.lcssa.i.5.i, %sparx5_dsm_exb_gcd.exit.5.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge ], [ %b.tr6.i.6.i, %if.end.i.6.i.sparx5_dsm_exb_gcd.exit.6.i_crit_edge ]
  br i1 %cmp4.i.7.i, label %sparx5_dsm_exb_gcd.exit.6.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.6.i.if.end.i.7.i_crit_edge

sparx5_dsm_exb_gcd.exit.6.i.if.end.i.7.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.6.i
  br label %if.end.i.7.i

sparx5_dsm_exb_gcd.exit.6.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.7.i

if.end.i.7.i:                                     ; preds = %if.end.i.7.i.if.end.i.7.i_crit_edge, %sparx5_dsm_exb_gcd.exit.6.i.if.end.i.7.i_crit_edge
  %b.tr6.i.7.i = phi i32 [ %rem.i.7.i, %if.end.i.7.i.if.end.i.7.i_crit_edge ], [ %33, %sparx5_dsm_exb_gcd.exit.6.i.if.end.i.7.i_crit_edge ]
  %a.tr5.i.7.i = phi i32 [ %b.tr6.i.7.i, %if.end.i.7.i.if.end.i.7.i_crit_edge ], [ %a.tr.lcssa.i.6.i, %sparx5_dsm_exb_gcd.exit.6.i.if.end.i.7.i_crit_edge ]
  %rem.i.7.i = urem i32 %a.tr5.i.7.i, %b.tr6.i.7.i
  %cmp.i482.7.i = icmp eq i32 %rem.i.7.i, 0
  br i1 %cmp.i482.7.i, label %if.end.i.7.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge, label %if.end.i.7.i.if.end.i.7.i_crit_edge

if.end.i.7.i.if.end.i.7.i_crit_edge:              ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.7.i

if.end.i.7.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge: ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.7.i

sparx5_dsm_exb_gcd.exit.7.i:                      ; preds = %if.end.i.7.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge, %sparx5_dsm_exb_gcd.exit.6.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge
  %a.tr.lcssa.i.7.i = phi i32 [ %a.tr.lcssa.i.6.i, %sparx5_dsm_exb_gcd.exit.6.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge ], [ %b.tr6.i.7.i, %if.end.i.7.i.sparx5_dsm_exb_gcd.exit.7.i_crit_edge ]
  br i1 %cmp4.i.8.i, label %sparx5_dsm_exb_gcd.exit.7.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.7.i.if.end.i.8.i_crit_edge

sparx5_dsm_exb_gcd.exit.7.i.if.end.i.8.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.7.i
  br label %if.end.i.8.i

sparx5_dsm_exb_gcd.exit.7.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.8.i

if.end.i.8.i:                                     ; preds = %if.end.i.8.i.if.end.i.8.i_crit_edge, %sparx5_dsm_exb_gcd.exit.7.i.if.end.i.8.i_crit_edge
  %b.tr6.i.8.i = phi i32 [ %rem.i.8.i, %if.end.i.8.i.if.end.i.8.i_crit_edge ], [ %35, %sparx5_dsm_exb_gcd.exit.7.i.if.end.i.8.i_crit_edge ]
  %a.tr5.i.8.i = phi i32 [ %b.tr6.i.8.i, %if.end.i.8.i.if.end.i.8.i_crit_edge ], [ %a.tr.lcssa.i.7.i, %sparx5_dsm_exb_gcd.exit.7.i.if.end.i.8.i_crit_edge ]
  %rem.i.8.i = urem i32 %a.tr5.i.8.i, %b.tr6.i.8.i
  %cmp.i482.8.i = icmp eq i32 %rem.i.8.i, 0
  br i1 %cmp.i482.8.i, label %if.end.i.8.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge, label %if.end.i.8.i.if.end.i.8.i_crit_edge

if.end.i.8.i.if.end.i.8.i_crit_edge:              ; preds = %if.end.i.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.8.i

if.end.i.8.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge: ; preds = %if.end.i.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.8.i

sparx5_dsm_exb_gcd.exit.8.i:                      ; preds = %if.end.i.8.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge, %sparx5_dsm_exb_gcd.exit.7.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge
  %a.tr.lcssa.i.8.i = phi i32 [ %a.tr.lcssa.i.7.i, %sparx5_dsm_exb_gcd.exit.7.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge ], [ %b.tr6.i.8.i, %if.end.i.8.i.sparx5_dsm_exb_gcd.exit.8.i_crit_edge ]
  br i1 %cmp4.i.9.i, label %sparx5_dsm_exb_gcd.exit.8.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.8.i.if.end.i.9.i_crit_edge

sparx5_dsm_exb_gcd.exit.8.i.if.end.i.9.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.8.i
  br label %if.end.i.9.i

sparx5_dsm_exb_gcd.exit.8.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.9.i

if.end.i.9.i:                                     ; preds = %if.end.i.9.i.if.end.i.9.i_crit_edge, %sparx5_dsm_exb_gcd.exit.8.i.if.end.i.9.i_crit_edge
  %b.tr6.i.9.i = phi i32 [ %rem.i.9.i, %if.end.i.9.i.if.end.i.9.i_crit_edge ], [ %37, %sparx5_dsm_exb_gcd.exit.8.i.if.end.i.9.i_crit_edge ]
  %a.tr5.i.9.i = phi i32 [ %b.tr6.i.9.i, %if.end.i.9.i.if.end.i.9.i_crit_edge ], [ %a.tr.lcssa.i.8.i, %sparx5_dsm_exb_gcd.exit.8.i.if.end.i.9.i_crit_edge ]
  %rem.i.9.i = urem i32 %a.tr5.i.9.i, %b.tr6.i.9.i
  %cmp.i482.9.i = icmp eq i32 %rem.i.9.i, 0
  br i1 %cmp.i482.9.i, label %if.end.i.9.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge, label %if.end.i.9.i.if.end.i.9.i_crit_edge

if.end.i.9.i.if.end.i.9.i_crit_edge:              ; preds = %if.end.i.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.9.i

if.end.i.9.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge: ; preds = %if.end.i.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.9.i

sparx5_dsm_exb_gcd.exit.9.i:                      ; preds = %if.end.i.9.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge, %sparx5_dsm_exb_gcd.exit.8.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge
  %a.tr.lcssa.i.9.i = phi i32 [ %a.tr.lcssa.i.8.i, %sparx5_dsm_exb_gcd.exit.8.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge ], [ %b.tr6.i.9.i, %if.end.i.9.i.sparx5_dsm_exb_gcd.exit.9.i_crit_edge ]
  br i1 %cmp4.i.10.i, label %sparx5_dsm_exb_gcd.exit.9.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.9.i.if.end.i.10.i_crit_edge

sparx5_dsm_exb_gcd.exit.9.i.if.end.i.10.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.9.i
  br label %if.end.i.10.i

sparx5_dsm_exb_gcd.exit.9.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.10.i

if.end.i.10.i:                                    ; preds = %if.end.i.10.i.if.end.i.10.i_crit_edge, %sparx5_dsm_exb_gcd.exit.9.i.if.end.i.10.i_crit_edge
  %b.tr6.i.10.i = phi i32 [ %rem.i.10.i, %if.end.i.10.i.if.end.i.10.i_crit_edge ], [ %39, %sparx5_dsm_exb_gcd.exit.9.i.if.end.i.10.i_crit_edge ]
  %a.tr5.i.10.i = phi i32 [ %b.tr6.i.10.i, %if.end.i.10.i.if.end.i.10.i_crit_edge ], [ %a.tr.lcssa.i.9.i, %sparx5_dsm_exb_gcd.exit.9.i.if.end.i.10.i_crit_edge ]
  %rem.i.10.i = urem i32 %a.tr5.i.10.i, %b.tr6.i.10.i
  %cmp.i482.10.i = icmp eq i32 %rem.i.10.i, 0
  br i1 %cmp.i482.10.i, label %if.end.i.10.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge, label %if.end.i.10.i.if.end.i.10.i_crit_edge

if.end.i.10.i.if.end.i.10.i_crit_edge:            ; preds = %if.end.i.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.10.i

if.end.i.10.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge: ; preds = %if.end.i.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.10.i

sparx5_dsm_exb_gcd.exit.10.i:                     ; preds = %if.end.i.10.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge, %sparx5_dsm_exb_gcd.exit.9.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge
  %a.tr.lcssa.i.10.i = phi i32 [ %a.tr.lcssa.i.9.i, %sparx5_dsm_exb_gcd.exit.9.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge ], [ %b.tr6.i.10.i, %if.end.i.10.i.sparx5_dsm_exb_gcd.exit.10.i_crit_edge ]
  br i1 %cmp4.i.11.i, label %sparx5_dsm_exb_gcd.exit.10.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.10.i.if.end.i.11.i_crit_edge

sparx5_dsm_exb_gcd.exit.10.i.if.end.i.11.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.10.i
  br label %if.end.i.11.i

sparx5_dsm_exb_gcd.exit.10.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.11.i

if.end.i.11.i:                                    ; preds = %if.end.i.11.i.if.end.i.11.i_crit_edge, %sparx5_dsm_exb_gcd.exit.10.i.if.end.i.11.i_crit_edge
  %b.tr6.i.11.i = phi i32 [ %rem.i.11.i, %if.end.i.11.i.if.end.i.11.i_crit_edge ], [ %41, %sparx5_dsm_exb_gcd.exit.10.i.if.end.i.11.i_crit_edge ]
  %a.tr5.i.11.i = phi i32 [ %b.tr6.i.11.i, %if.end.i.11.i.if.end.i.11.i_crit_edge ], [ %a.tr.lcssa.i.10.i, %sparx5_dsm_exb_gcd.exit.10.i.if.end.i.11.i_crit_edge ]
  %rem.i.11.i = urem i32 %a.tr5.i.11.i, %b.tr6.i.11.i
  %cmp.i482.11.i = icmp eq i32 %rem.i.11.i, 0
  br i1 %cmp.i482.11.i, label %if.end.i.11.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge, label %if.end.i.11.i.if.end.i.11.i_crit_edge

if.end.i.11.i.if.end.i.11.i_crit_edge:            ; preds = %if.end.i.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.11.i

if.end.i.11.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge: ; preds = %if.end.i.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.11.i

sparx5_dsm_exb_gcd.exit.11.i:                     ; preds = %if.end.i.11.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge, %sparx5_dsm_exb_gcd.exit.10.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge
  %a.tr.lcssa.i.11.i = phi i32 [ %a.tr.lcssa.i.10.i, %sparx5_dsm_exb_gcd.exit.10.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge ], [ %b.tr6.i.11.i, %if.end.i.11.i.sparx5_dsm_exb_gcd.exit.11.i_crit_edge ]
  br i1 %cmp4.i.12.i, label %sparx5_dsm_exb_gcd.exit.11.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge, label %sparx5_dsm_exb_gcd.exit.11.i.if.end.i.12.i_crit_edge

sparx5_dsm_exb_gcd.exit.11.i.if.end.i.12.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.11.i
  br label %if.end.i.12.i

sparx5_dsm_exb_gcd.exit.11.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.12.i

if.end.i.12.i:                                    ; preds = %if.end.i.12.i.if.end.i.12.i_crit_edge, %sparx5_dsm_exb_gcd.exit.11.i.if.end.i.12.i_crit_edge
  %b.tr6.i.12.i = phi i32 [ %rem.i.12.i, %if.end.i.12.i.if.end.i.12.i_crit_edge ], [ %43, %sparx5_dsm_exb_gcd.exit.11.i.if.end.i.12.i_crit_edge ]
  %a.tr5.i.12.i = phi i32 [ %b.tr6.i.12.i, %if.end.i.12.i.if.end.i.12.i_crit_edge ], [ %a.tr.lcssa.i.11.i, %sparx5_dsm_exb_gcd.exit.11.i.if.end.i.12.i_crit_edge ]
  %rem.i.12.i = urem i32 %a.tr5.i.12.i, %b.tr6.i.12.i
  %cmp.i482.12.i = icmp eq i32 %rem.i.12.i, 0
  br i1 %cmp.i482.12.i, label %if.end.i.12.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge, label %if.end.i.12.i.if.end.i.12.i_crit_edge

if.end.i.12.i.if.end.i.12.i_crit_edge:            ; preds = %if.end.i.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.12.i

if.end.i.12.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge: ; preds = %if.end.i.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_exb_gcd.exit.12.i

sparx5_dsm_exb_gcd.exit.12.i:                     ; preds = %if.end.i.12.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge, %sparx5_dsm_exb_gcd.exit.11.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge
  %a.tr.lcssa.i.12.i = phi i32 [ %a.tr.lcssa.i.11.i, %sparx5_dsm_exb_gcd.exit.11.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge ], [ %b.tr6.i.12.i, %if.end.i.12.i.sparx5_dsm_exb_gcd.exit.12.i_crit_edge ]
  %add.i = add i32 %45, %sum.0566.i
  %inc46.i = add nuw nsw i32 %idx.2565.i, 1
  %exitcond602.not.i = icmp eq i32 %inc46.i, 13
  br i1 %exitcond602.not.i, label %for.end47.i, label %sparx5_dsm_exb_gcd.exit.12.i.for.body24.i_crit_edge

sparx5_dsm_exb_gcd.exit.12.i.for.body24.i_crit_edge: ; preds = %sparx5_dsm_exb_gcd.exit.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24.i

for.end47.i:                                      ; preds = %sparx5_dsm_exb_gcd.exit.12.i
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 4000, i32 %switch.select.i.i
  %div.i = udiv i32 128000000, %switch.select4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp48.i = icmp eq i32 %add.i, 0
  br i1 %cmp48.i, label %for.end47.i.if.end4_crit_edge, label %if.end50.i

for.end47.i.if.end4_crit_edge:                    ; preds = %for.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end50.i:                                       ; preds = %for.end47.i
  %mul.i = mul i32 %add.i, 1058
  %mul51.i = mul nuw nsw i32 %div.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul51.i)
  %cmp52.i = icmp ugt i32 %mul.i, %mul51.i
  br i1 %cmp52.i, label %do.end.i, label %if.end71.i

do.end.i:                                         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.23, i32 noundef %taxi.0123, i32 noundef %add.i, i32 noundef %div.i) #9
  br label %do.end

if.end71.1.i:                                     ; preds = %if.end71.i
  %div64479.i = lshr i32 %a.tr.lcssa.i.12.i, 1
  %mul72.1.i = mul i32 %div64479.i, 1058
  %div73.1.i = udiv i32 %mul72.1.i, 1000
  %div74.1.i = udiv i32 %div.i, %div73.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div74.1.i)
  %cmp75.1.i = icmp ult i32 %div74.1.i, 65
  br i1 %cmp75.1.i, label %if.end71.1.i.for.end80.i_crit_edge, label %if.end71.2.i

if.end71.1.i.for.end80.i_crit_edge:               ; preds = %if.end71.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80.i

if.end71.2.i:                                     ; preds = %if.end71.1.i
  %mul72.2.i = mul i32 %a.tr.lcssa.i.12.i, 1058
  %div73.2.i = udiv i32 %mul72.2.i, 1000
  %div74.2.i = udiv i32 %div.i, %div73.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div74.2.i)
  %cmp75.2.i = icmp ult i32 %div74.2.i, 65
  br i1 %cmp75.2.i, label %if.end71.2.i.for.end80.i_crit_edge, label %if.end71.3.i

if.end71.2.i.for.end80.i_crit_edge:               ; preds = %if.end71.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80.i

if.end71.3.i:                                     ; preds = %if.end71.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul72.3.i = mul i32 %min.1.i, 1058
  %div73.3.i = udiv i32 %mul72.3.i, 1000
  %div74.3.i = udiv i32 %div.i, %div73.3.i
  br label %for.end80.i

if.end71.i:                                       ; preds = %if.end50.i
  %div60.i = udiv i32 %a.tr.lcssa.i.12.i, 5
  %mul72.i = mul i32 %div60.i, 1058
  %div73.i = udiv i32 %mul72.i, 1000
  %div74.i = udiv i32 %div.i, %div73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div74.i)
  %cmp75.i = icmp ult i32 %div74.i, 65
  br i1 %cmp75.i, label %if.end71.i.for.end80.i_crit_edge, label %if.end71.1.i

if.end71.i.for.end80.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80.i

for.end80.i:                                      ; preds = %if.end71.i.for.end80.i_crit_edge, %if.end71.3.i, %if.end71.2.i.for.end80.i_crit_edge, %if.end71.1.i.for.end80.i_crit_edge
  %div74.lcssa.i = phi i32 [ %div74.i, %if.end71.i.for.end80.i_crit_edge ], [ %div74.1.i, %if.end71.1.i.for.end80.i_crit_edge ], [ %div74.2.i, %if.end71.2.i.for.end80.i_crit_edge ], [ %div74.3.i, %if.end71.3.i ]
  %48 = tail call i32 @llvm.umin.i32(i32 %div74.lcssa.i, i32 64) #6
  %div82.i = udiv i32 %div.i, %48
  %switch.selectcmp3.i.not.i = xor i1 %switch.selectcmp3.i.i, true
  br label %for.body85.i

for.cond83.i:                                     ; preds = %if.end121.i
  %inc137.i = add nuw nsw i32 %idx.4569.i, 1
  %exitcond604.not.i = icmp eq i32 %inc137.i, 13
  br i1 %exitcond604.not.i, label %for.end138.i, label %for.cond83.i.for.body85.i_crit_edge

for.cond83.i.for.body85.i_crit_edge:              ; preds = %for.cond83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body85.i

for.body85.i:                                     ; preds = %for.cond83.i.for.body85.i_crit_edge, %for.end80.i
  %sum.1571.i = phi i32 [ 0, %for.end80.i ], [ %add124.i, %for.cond83.i.for.body85.i_crit_edge ]
  %idx.4569.i = phi i32 [ 0, %for.end80.i ], [ %inc137.i, %for.cond83.i.for.body85.i_crit_edge ]
  %arrayidx87.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.4569.i
  %49 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx87.i, align 4
  %mul90.i = mul i32 %50, 1058
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul90.i)
  %51 = icmp ult i32 %mul90.i, 1000
  br i1 %51, label %for.body85.i.if.end100.i_crit_edge, label %if.then93.i

for.body85.i.if.end100.i_crit_edge:               ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100.i

if.then93.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #8
  %div91.i = udiv i32 %mul90.i, 1000
  %mul94.i = mul i32 %div91.i, %switch.select4.i.i
  %div95.i = udiv i32 1280000000, %mul94.i
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then93.i, %for.body85.i.if.end100.i_crit_edge
  %div95.sink.i = phi i32 [ %div95.i, %if.then93.i ], [ -1, %for.body85.i.if.end100.i_crit_edge ]
  %52 = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 1, i32 %idx.4569.i
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div95.sink.i, ptr %52, align 4
  %div102.i = udiv i32 %mul90.i, %div82.i
  %add103.i = add i32 %div102.i, 999
  %div104.i = udiv i32 %add103.i, 1000
  %arrayidx105.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 4, i32 %idx.4569.i
  %54 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div104.i, ptr %arrayidx105.i, align 4
  %55 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %50, label %if.then110.i [
    i32 25000, label %if.end100.i.if.end121.i_crit_edge
    i32 10000, label %lor.lhs.false.i
  ]

if.end100.i.if.end121.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121.i

lor.lhs.false.i:                                  ; preds = %if.end100.i
  %mul113.i = mul nuw nsw i32 %div104.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %mul113.i)
  %cmp114.i = icmp ult i32 %48, %mul113.i
  %or.cond550.i = select i1 %switch.selectcmp3.i.not.i, i1 %cmp114.i, i1 false
  br i1 %or.cond550.i, label %lor.lhs.false.i.do.end118.i_crit_edge, label %lor.lhs.false.i.if.end121.i_crit_edge

lor.lhs.false.i.if.end121.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121.i

lor.lhs.false.i.do.end118.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end118.i

if.then110.i:                                     ; preds = %if.end100.i
  %mul113.old.i = mul nuw nsw i32 %div104.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %mul113.old.i)
  %cmp114.old.i = icmp ult i32 %48, %mul113.old.i
  br i1 %cmp114.old.i, label %if.then110.i.do.end118.i_crit_edge, label %if.then110.i.if.end121.i_crit_edge

if.then110.i.if.end121.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121.i

if.then110.i.do.end118.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end118.i

do.end118.i:                                      ; preds = %if.then110.i.do.end118.i_crit_edge, %lor.lhs.false.i.do.end118.i_crit_edge
  %dev119.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %56 = ptrtoint ptr %dev119.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev119.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.26, i32 noundef %taxi.0123, i32 noundef %50) #9
  br label %do.end

if.end121.i:                                      ; preds = %if.then110.i.if.end121.i_crit_edge, %lor.lhs.false.i.if.end121.i_crit_edge, %if.end100.i.if.end121.i_crit_edge
  %add124.i = add i32 %div104.i, %sum.1571.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add124.i)
  %cmp125.i = icmp ult i32 %48, %add124.i
  br i1 %cmp125.i, label %do.end129.i, label %for.cond83.i

do.end129.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev130.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %58 = ptrtoint ptr %dev130.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev130.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.29, i32 noundef %taxi.0123, i32 noundef 1058) #9
  br label %do.end

for.end138.i:                                     ; preds = %for.cond83.i
  %sub.i = sub i32 %48, %add124.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add124.i)
  %cmp140572.not.i = icmp eq i32 %48, %add124.i
  br i1 %cmp140572.not.i, label %for.end138.i.for.cond147.preheader.i_crit_edge, label %for.end138.i.for.body141.i_crit_edge

for.end138.i.for.body141.i_crit_edge:             ; preds = %for.end138.i
  br label %for.body141.i

for.end138.i.for.cond147.preheader.i_crit_edge:   ; preds = %for.end138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond147.preheader.i

for.cond147.preheader.i:                          ; preds = %for.body141.i.for.cond147.preheader.i_crit_edge, %for.end138.i.for.cond147.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp148587.i = icmp ugt i32 %48, 1
  br i1 %cmp148587.i, label %for.cond147.preheader.i.for.cond151.preheader.i_crit_edge, label %for.cond147.preheader.i.if.end4_crit_edge

for.cond147.preheader.i.if.end4_crit_edge:        ; preds = %for.cond147.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.cond147.preheader.i.for.cond151.preheader.i_crit_edge: ; preds = %for.cond147.preheader.i
  br label %for.cond151.preheader.i

for.body141.i:                                    ; preds = %for.body141.i.for.body141.i_crit_edge, %for.end138.i.for.body141.i_crit_edge
  %idx.5573.i = phi i32 [ %inc145.i, %for.body141.i.for.body141.i_crit_edge ], [ 0, %for.end138.i.for.body141.i_crit_edge ]
  %arrayidx143.i = getelementptr [64 x i32], ptr %call7.i.i, i32 0, i32 %idx.5573.i
  %60 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 13, ptr %arrayidx143.i, align 4
  %inc145.i = add nuw i32 %idx.5573.i, 1
  %exitcond605.not.i = icmp eq i32 %inc145.i, %sub.i
  br i1 %exitcond605.not.i, label %for.body141.i.for.cond147.preheader.i_crit_edge, label %for.body141.i.for.body141.i_crit_edge

for.body141.i.for.body141.i_crit_edge:            ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body141.i

for.body141.i.for.cond147.preheader.i_crit_edge:  ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond147.preheader.i

for.cond151.preheader.i:                          ; preds = %for.inc299.i.for.cond151.preheader.i_crit_edge, %for.cond147.preheader.i.for.cond151.preheader.i_crit_edge
  %idx.6588.i = phi i32 [ %inc300.i, %for.inc299.i.for.cond151.preheader.i_crit_edge ], [ 1, %for.cond147.preheader.i.for.cond151.preheader.i_crit_edge ]
  %61 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx155.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %idx.6588.i)
  %cmp156.i = icmp eq i32 %62, %idx.6588.i
  br i1 %cmp156.i, label %if.then157.i, label %for.cond151.preheader.i.for.inc161.i_crit_edge

for.cond151.preheader.i.for.inc161.i_crit_edge:   ; preds = %for.cond151.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.i

if.then157.i:                                     ; preds = %for.cond151.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx158.i, align 8
  br label %for.inc161.i

for.inc161.i:                                     ; preds = %if.then157.i, %for.cond151.preheader.i.for.inc161.i_crit_edge
  %indices_len.1.i = phi i32 [ 1, %if.then157.i ], [ 0, %for.cond151.preheader.i.for.inc161.i_crit_edge ]
  %64 = ptrtoint ptr %arrayidx155.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx155.1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %idx.6588.i)
  %cmp156.1.i = icmp eq i32 %65, %idx.6588.i
  br i1 %cmp156.1.i, label %if.then157.1.i, label %for.inc161.i.for.inc161.1.i_crit_edge

for.inc161.i.for.inc161.1.i_crit_edge:            ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.1.i

if.then157.1.i:                                   ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.1.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.i
  %66 = ptrtoint ptr %arrayidx158.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %arrayidx158.1.i, align 4
  %inc159.1.i = add nuw nsw i32 %indices_len.1.i, 1
  br label %for.inc161.1.i

for.inc161.1.i:                                   ; preds = %if.then157.1.i, %for.inc161.i.for.inc161.1.i_crit_edge
  %indices_len.1.1.i = phi i32 [ %inc159.1.i, %if.then157.1.i ], [ %indices_len.1.i, %for.inc161.i.for.inc161.1.i_crit_edge ]
  %67 = ptrtoint ptr %arrayidx155.2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx155.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %idx.6588.i)
  %cmp156.2.i = icmp eq i32 %68, %idx.6588.i
  br i1 %cmp156.2.i, label %if.then157.2.i, label %for.inc161.1.i.for.inc161.2.i_crit_edge

for.inc161.1.i.for.inc161.2.i_crit_edge:          ; preds = %for.inc161.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.2.i

if.then157.2.i:                                   ; preds = %for.inc161.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.2.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.1.i
  %69 = ptrtoint ptr %arrayidx158.2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %arrayidx158.2.i, align 4
  %inc159.2.i = add nuw nsw i32 %indices_len.1.1.i, 1
  br label %for.inc161.2.i

for.inc161.2.i:                                   ; preds = %if.then157.2.i, %for.inc161.1.i.for.inc161.2.i_crit_edge
  %indices_len.1.2.i = phi i32 [ %inc159.2.i, %if.then157.2.i ], [ %indices_len.1.1.i, %for.inc161.1.i.for.inc161.2.i_crit_edge ]
  %70 = ptrtoint ptr %arrayidx155.3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx155.3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %idx.6588.i)
  %cmp156.3.i = icmp eq i32 %71, %idx.6588.i
  br i1 %cmp156.3.i, label %if.then157.3.i, label %for.inc161.2.i.for.inc161.3.i_crit_edge

for.inc161.2.i.for.inc161.3.i_crit_edge:          ; preds = %for.inc161.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.3.i

if.then157.3.i:                                   ; preds = %for.inc161.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.3.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.2.i
  %72 = ptrtoint ptr %arrayidx158.3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %arrayidx158.3.i, align 4
  %inc159.3.i = add nuw nsw i32 %indices_len.1.2.i, 1
  br label %for.inc161.3.i

for.inc161.3.i:                                   ; preds = %if.then157.3.i, %for.inc161.2.i.for.inc161.3.i_crit_edge
  %indices_len.1.3.i = phi i32 [ %inc159.3.i, %if.then157.3.i ], [ %indices_len.1.2.i, %for.inc161.2.i.for.inc161.3.i_crit_edge ]
  %73 = ptrtoint ptr %arrayidx155.4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx155.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %idx.6588.i)
  %cmp156.4.i = icmp eq i32 %74, %idx.6588.i
  br i1 %cmp156.4.i, label %if.then157.4.i, label %for.inc161.3.i.for.inc161.4.i_crit_edge

for.inc161.3.i.for.inc161.4.i_crit_edge:          ; preds = %for.inc161.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.4.i

if.then157.4.i:                                   ; preds = %for.inc161.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.4.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.3.i
  %75 = ptrtoint ptr %arrayidx158.4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %arrayidx158.4.i, align 4
  %inc159.4.i = add nuw nsw i32 %indices_len.1.3.i, 1
  br label %for.inc161.4.i

for.inc161.4.i:                                   ; preds = %if.then157.4.i, %for.inc161.3.i.for.inc161.4.i_crit_edge
  %indices_len.1.4.i = phi i32 [ %inc159.4.i, %if.then157.4.i ], [ %indices_len.1.3.i, %for.inc161.3.i.for.inc161.4.i_crit_edge ]
  %76 = ptrtoint ptr %arrayidx155.5.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx155.5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %idx.6588.i)
  %cmp156.5.i = icmp eq i32 %77, %idx.6588.i
  br i1 %cmp156.5.i, label %if.then157.5.i, label %for.inc161.4.i.for.inc161.5.i_crit_edge

for.inc161.4.i.for.inc161.5.i_crit_edge:          ; preds = %for.inc161.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.5.i

if.then157.5.i:                                   ; preds = %for.inc161.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.5.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.4.i
  %78 = ptrtoint ptr %arrayidx158.5.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 5, ptr %arrayidx158.5.i, align 4
  %inc159.5.i = add nuw nsw i32 %indices_len.1.4.i, 1
  br label %for.inc161.5.i

for.inc161.5.i:                                   ; preds = %if.then157.5.i, %for.inc161.4.i.for.inc161.5.i_crit_edge
  %indices_len.1.5.i = phi i32 [ %inc159.5.i, %if.then157.5.i ], [ %indices_len.1.4.i, %for.inc161.4.i.for.inc161.5.i_crit_edge ]
  %79 = ptrtoint ptr %arrayidx155.6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx155.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %idx.6588.i)
  %cmp156.6.i = icmp eq i32 %80, %idx.6588.i
  br i1 %cmp156.6.i, label %if.then157.6.i, label %for.inc161.5.i.for.inc161.6.i_crit_edge

for.inc161.5.i.for.inc161.6.i_crit_edge:          ; preds = %for.inc161.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.6.i

if.then157.6.i:                                   ; preds = %for.inc161.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.6.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.5.i
  %81 = ptrtoint ptr %arrayidx158.6.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 6, ptr %arrayidx158.6.i, align 4
  %inc159.6.i = add nuw nsw i32 %indices_len.1.5.i, 1
  br label %for.inc161.6.i

for.inc161.6.i:                                   ; preds = %if.then157.6.i, %for.inc161.5.i.for.inc161.6.i_crit_edge
  %indices_len.1.6.i = phi i32 [ %inc159.6.i, %if.then157.6.i ], [ %indices_len.1.5.i, %for.inc161.5.i.for.inc161.6.i_crit_edge ]
  %82 = ptrtoint ptr %arrayidx155.7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx155.7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %idx.6588.i)
  %cmp156.7.i = icmp eq i32 %83, %idx.6588.i
  br i1 %cmp156.7.i, label %if.then157.7.i, label %for.inc161.6.i.for.inc161.7.i_crit_edge

for.inc161.6.i.for.inc161.7.i_crit_edge:          ; preds = %for.inc161.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.7.i

if.then157.7.i:                                   ; preds = %for.inc161.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.7.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.6.i
  %84 = ptrtoint ptr %arrayidx158.7.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 7, ptr %arrayidx158.7.i, align 4
  %inc159.7.i = add nuw nsw i32 %indices_len.1.6.i, 1
  br label %for.inc161.7.i

for.inc161.7.i:                                   ; preds = %if.then157.7.i, %for.inc161.6.i.for.inc161.7.i_crit_edge
  %indices_len.1.7.i = phi i32 [ %inc159.7.i, %if.then157.7.i ], [ %indices_len.1.6.i, %for.inc161.6.i.for.inc161.7.i_crit_edge ]
  %85 = ptrtoint ptr %arrayidx155.8.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx155.8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %idx.6588.i)
  %cmp156.8.i = icmp eq i32 %86, %idx.6588.i
  br i1 %cmp156.8.i, label %if.then157.8.i, label %for.inc161.7.i.for.inc161.8.i_crit_edge

for.inc161.7.i.for.inc161.8.i_crit_edge:          ; preds = %for.inc161.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.8.i

if.then157.8.i:                                   ; preds = %for.inc161.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.8.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.7.i
  %87 = ptrtoint ptr %arrayidx158.8.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 8, ptr %arrayidx158.8.i, align 4
  %inc159.8.i = add nuw nsw i32 %indices_len.1.7.i, 1
  br label %for.inc161.8.i

for.inc161.8.i:                                   ; preds = %if.then157.8.i, %for.inc161.7.i.for.inc161.8.i_crit_edge
  %indices_len.1.8.i = phi i32 [ %inc159.8.i, %if.then157.8.i ], [ %indices_len.1.7.i, %for.inc161.7.i.for.inc161.8.i_crit_edge ]
  %88 = ptrtoint ptr %arrayidx155.9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx155.9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %idx.6588.i)
  %cmp156.9.i = icmp eq i32 %89, %idx.6588.i
  br i1 %cmp156.9.i, label %if.then157.9.i, label %for.inc161.8.i.for.inc161.9.i_crit_edge

for.inc161.8.i.for.inc161.9.i_crit_edge:          ; preds = %for.inc161.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.9.i

if.then157.9.i:                                   ; preds = %for.inc161.8.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.9.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.8.i
  %90 = ptrtoint ptr %arrayidx158.9.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 9, ptr %arrayidx158.9.i, align 4
  %inc159.9.i = add nuw nsw i32 %indices_len.1.8.i, 1
  br label %for.inc161.9.i

for.inc161.9.i:                                   ; preds = %if.then157.9.i, %for.inc161.8.i.for.inc161.9.i_crit_edge
  %indices_len.1.9.i = phi i32 [ %inc159.9.i, %if.then157.9.i ], [ %indices_len.1.8.i, %for.inc161.8.i.for.inc161.9.i_crit_edge ]
  %91 = ptrtoint ptr %arrayidx155.10.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx155.10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %idx.6588.i)
  %cmp156.10.i = icmp eq i32 %92, %idx.6588.i
  br i1 %cmp156.10.i, label %if.then157.10.i, label %for.inc161.9.i.for.inc161.10.i_crit_edge

for.inc161.9.i.for.inc161.10.i_crit_edge:         ; preds = %for.inc161.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.10.i

if.then157.10.i:                                  ; preds = %for.inc161.9.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.10.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.9.i
  %93 = ptrtoint ptr %arrayidx158.10.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 10, ptr %arrayidx158.10.i, align 4
  %inc159.10.i = add nuw nsw i32 %indices_len.1.9.i, 1
  br label %for.inc161.10.i

for.inc161.10.i:                                  ; preds = %if.then157.10.i, %for.inc161.9.i.for.inc161.10.i_crit_edge
  %indices_len.1.10.i = phi i32 [ %inc159.10.i, %if.then157.10.i ], [ %indices_len.1.9.i, %for.inc161.9.i.for.inc161.10.i_crit_edge ]
  %94 = ptrtoint ptr %arrayidx155.11.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx155.11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %idx.6588.i)
  %cmp156.11.i = icmp eq i32 %95, %idx.6588.i
  br i1 %cmp156.11.i, label %if.then157.11.i, label %for.inc161.10.i.for.inc161.11.i_crit_edge

for.inc161.10.i.for.inc161.11.i_crit_edge:        ; preds = %for.inc161.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc161.11.i

if.then157.11.i:                                  ; preds = %for.inc161.10.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.11.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.10.i
  %96 = ptrtoint ptr %arrayidx158.11.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 11, ptr %arrayidx158.11.i, align 4
  %inc159.11.i = add nuw nsw i32 %indices_len.1.10.i, 1
  br label %for.inc161.11.i

for.inc161.11.i:                                  ; preds = %if.then157.11.i, %for.inc161.10.i.for.inc161.11.i_crit_edge
  %indices_len.1.11.i = phi i32 [ %inc159.11.i, %if.then157.11.i ], [ %indices_len.1.10.i, %for.inc161.10.i.for.inc161.11.i_crit_edge ]
  %97 = ptrtoint ptr %arrayidx155.12.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx155.12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %idx.6588.i)
  %cmp156.12.i = icmp eq i32 %98, %idx.6588.i
  br i1 %cmp156.12.i, label %for.inc161.12.thread.i, label %for.inc161.12.i

for.inc161.12.thread.i:                           ; preds = %for.inc161.11.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx158.12.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %indices_len.1.11.i
  %99 = ptrtoint ptr %arrayidx158.12.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 12, ptr %arrayidx158.12.i, align 4
  %inc159.12.i = add nuw nsw i32 %indices_len.1.11.i, 1
  br label %for.cond170.preheader.preheader.i

for.inc161.12.i:                                  ; preds = %for.inc161.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indices_len.1.11.i)
  %cmp164.i = icmp eq i32 %indices_len.1.11.i, 0
  br i1 %cmp164.i, label %for.inc161.12.i.for.inc299.i_crit_edge, label %for.inc161.12.i.for.cond170.preheader.preheader.i_crit_edge

for.inc161.12.i.for.cond170.preheader.preheader.i_crit_edge: ; preds = %for.inc161.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond170.preheader.preheader.i

for.inc161.12.i.for.inc299.i_crit_edge:           ; preds = %for.inc161.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc299.i

for.cond170.preheader.preheader.i:                ; preds = %for.inc161.12.i.for.cond170.preheader.preheader.i_crit_edge, %for.inc161.12.thread.i
  %indices_len.1.12616.i = phi i32 [ %inc159.12.i, %for.inc161.12.thread.i ], [ %indices_len.1.11.i, %for.inc161.12.i.for.cond170.preheader.preheader.i_crit_edge ]
  br label %for.cond170.preheader.i

for.cond170.preheader.i:                          ; preds = %for.cond170.for.inc181_crit_edge.i.for.cond170.preheader.i_crit_edge, %for.cond170.preheader.preheader.i
  %kdx.0582.i = phi i32 [ %inc179.i, %for.cond170.for.inc181_crit_edge.i.for.cond170.preheader.i_crit_edge ], [ 0, %for.cond170.preheader.preheader.i ]
  %slot.1581.i = phi i32 [ %inc182.i, %for.cond170.for.inc181_crit_edge.i.for.cond170.preheader.i_crit_edge ], [ 0, %for.cond170.preheader.preheader.i ]
  br label %for.body172.i

for.body172.i:                                    ; preds = %for.body172.i.for.body172.i_crit_edge, %for.cond170.preheader.i
  %kdx.1579.i = phi i32 [ %kdx.0582.i, %for.cond170.preheader.i ], [ %inc179.i, %for.body172.i.for.body172.i_crit_edge ]
  %jdx150.0578.i = phi i32 [ 0, %for.cond170.preheader.i ], [ %inc178.i, %for.body172.i.for.body172.i_crit_edge ]
  %arrayidx174.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 7, i32 %jdx150.0578.i
  %100 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx174.i, align 4
  %arrayidx176.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 5, i32 %kdx.1579.i
  %102 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx176.i, align 4
  %inc178.i = add nuw nsw i32 %jdx150.0578.i, 1
  %inc179.i = add i32 %kdx.1579.i, 1
  %exitcond609.not.i = icmp eq i32 %inc178.i, %indices_len.1.12616.i
  br i1 %exitcond609.not.i, label %for.cond170.for.inc181_crit_edge.i, label %for.body172.i.for.body172.i_crit_edge

for.body172.i.for.body172.i_crit_edge:            ; preds = %for.body172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body172.i

for.cond170.for.inc181_crit_edge.i:               ; preds = %for.body172.i
  %inc182.i = add nuw nsw i32 %slot.1581.i, 1
  %exitcond610.not.i = icmp eq i32 %inc182.i, %idx.6588.i
  br i1 %exitcond610.not.i, label %for.cond170.for.inc181_crit_edge.i.for.body186.i_crit_edge, label %for.cond170.for.inc181_crit_edge.i.for.cond170.preheader.i_crit_edge

for.cond170.for.inc181_crit_edge.i.for.cond170.preheader.i_crit_edge: ; preds = %for.cond170.for.inc181_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond170.preheader.i

for.cond170.for.inc181_crit_edge.i.for.body186.i_crit_edge: ; preds = %for.cond170.for.inc181_crit_edge.i
  br label %for.body186.i

for.body186.i:                                    ; preds = %for.inc192.i.for.body186.i_crit_edge, %for.cond170.for.inc181_crit_edge.i.for.body186.i_crit_edge
  %slot.2584.i = phi i32 [ %inc193.i, %for.inc192.i.for.body186.i_crit_edge ], [ 0, %for.cond170.for.inc181_crit_edge.i.for.body186.i_crit_edge ]
  %arrayidx188.i = getelementptr [64 x i32], ptr %call7.i.i, i32 0, i32 %slot.2584.i
  %103 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx188.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %104)
  %cmp189.i = icmp eq i32 %104, 65535
  br i1 %cmp189.i, label %for.body186.i.for.end194.i_crit_edge, label %for.inc192.i

for.body186.i.for.end194.i_crit_edge:             ; preds = %for.body186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end194.i

for.inc192.i:                                     ; preds = %for.body186.i
  %inc193.i = add nuw nsw i32 %slot.2584.i, 1
  %exitcond611.not.i = icmp eq i32 %inc193.i, 64
  br i1 %exitcond611.not.i, label %for.inc192.i.for.end194.i_crit_edge, label %for.inc192.i.for.body186.i_crit_edge

for.inc192.i.for.body186.i_crit_edge:             ; preds = %for.inc192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body186.i

for.inc192.i.for.end194.i_crit_edge:              ; preds = %for.inc192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end194.i

for.end194.i:                                     ; preds = %for.inc192.i.for.end194.i_crit_edge, %for.body186.i.for.end194.i_crit_edge
  %slot.2.lcssa.i = phi i32 [ %slot.2584.i, %for.body186.i.for.end194.i_crit_edge ], [ 64, %for.inc192.i.for.end194.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc179.i, i32 %slot.2.lcssa.i)
  %cmp195.i = icmp ugt i32 %inc179.i, %slot.2.lcssa.i
  %data.new_slots208.i = select i1 %cmp195.i, ptr %call7.i.i, ptr %new_slots208.i
  %new_slots208.data.i = select i1 %cmp195.i, ptr %new_slots208.i, ptr %call7.i.i
  %105 = tail call i32 @llvm.umin.i32(i32 %inc179.i, i32 %slot.2.lcssa.i) #6
  %106 = tail call i32 @llvm.umax.i32(i32 %inc179.i, i32 %slot.2.lcssa.i) #6
  %107 = call ptr @memcpy(ptr %short_list206.i, ptr %data.new_slots208.i, i32 256)
  %108 = call ptr @memcpy(ptr %long_list210.i, ptr %new_slots208.data.i, i32 256)
  %mul214.i = mul i32 %105, 100000
  %div215.i = udiv i32 %mul214.i, %106
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.end.i.while.cond.i_crit_edge, %for.end194.i
  %ts.0.i = phi i32 [ 0, %for.end194.i ], [ %ts.2.i, %while.end.i.while.cond.i_crit_edge ]
  %cnt.0.i = phi i32 [ 0, %for.end194.i ], [ %cnt.2.i, %while.end.i.while.cond.i_crit_edge ]
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.i
  %len.07.i.i = phi i32 [ 0, %while.cond.i ], [ %spec.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %idx.06.i.i = phi i32 [ 0, %while.cond.i ], [ %inc2.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i483.i = getelementptr i32, ptr %short_list206.i, i32 %idx.06.i.i
  %109 = ptrtoint ptr %arrayidx.i483.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i483.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %110)
  %cmp1.not.i.i = icmp ne i32 %110, 65535
  %inc.i.i = zext i1 %cmp1.not.i.i to i32
  %spec.select.i.i = add i32 %len.07.i.i, %inc.i.i
  %inc2.i.i = add nuw nsw i32 %idx.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc2.i.i, 64
  br i1 %exitcond.not.i.i, label %sparx5_dsm_cal_len.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

sparx5_dsm_cal_len.exit.i:                        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp220.not.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %cmp220.not.i, label %sparx5_dsm_cal_len.exit.i.while.body.i492.i_crit_edge, label %sparx5_dsm_cal_len.exit.i.while.body.i502.i.preheader_crit_edge

sparx5_dsm_cal_len.exit.i.while.body.i502.i.preheader_crit_edge: ; preds = %sparx5_dsm_cal_len.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i502.i.preheader

sparx5_dsm_cal_len.exit.i.while.body.i492.i_crit_edge: ; preds = %sparx5_dsm_cal_len.exit.i
  br label %while.body.i492.i

while.body.i492.i:                                ; preds = %while.body.i492.i.while.body.i492.i_crit_edge, %sparx5_dsm_cal_len.exit.i.while.body.i492.i_crit_edge
  %len.07.i484.i = phi i32 [ %spec.select.i489.i, %while.body.i492.i.while.body.i492.i_crit_edge ], [ 0, %sparx5_dsm_cal_len.exit.i.while.body.i492.i_crit_edge ]
  %idx.06.i485.i = phi i32 [ %inc2.i490.i, %while.body.i492.i.while.body.i492.i_crit_edge ], [ 0, %sparx5_dsm_cal_len.exit.i.while.body.i492.i_crit_edge ]
  %arrayidx.i486.i = getelementptr i32, ptr %long_list210.i, i32 %idx.06.i485.i
  %111 = ptrtoint ptr %arrayidx.i486.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i486.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %112)
  %cmp1.not.i487.i = icmp ne i32 %112, 65535
  %inc.i488.i = zext i1 %cmp1.not.i487.i to i32
  %spec.select.i489.i = add i32 %len.07.i484.i, %inc.i488.i
  %inc2.i490.i = add nuw nsw i32 %idx.06.i485.i, 1
  %exitcond.not.i491.i = icmp eq i32 %inc2.i490.i, 64
  br i1 %exitcond.not.i491.i, label %sparx5_dsm_cal_len.exit493.i, label %while.body.i492.i.while.body.i492.i_crit_edge

while.body.i492.i.while.body.i492.i_crit_edge:    ; preds = %while.body.i492.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i492.i

sparx5_dsm_cal_len.exit493.i:                     ; preds = %while.body.i492.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i489.i)
  %cmp224.not.i = icmp eq i32 %spec.select.i489.i, 0
  br i1 %cmp224.not.i, label %sparx5_dsm_cal_len.exit493.i.for.body276.i_crit_edge, label %sparx5_dsm_cal_len.exit493.i.while.body.i502.i.preheader_crit_edge

sparx5_dsm_cal_len.exit493.i.while.body.i502.i.preheader_crit_edge: ; preds = %sparx5_dsm_cal_len.exit493.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i502.i.preheader

sparx5_dsm_cal_len.exit493.i.for.body276.i_crit_edge: ; preds = %sparx5_dsm_cal_len.exit493.i
  br label %for.body276.i

while.body.i502.i.preheader:                      ; preds = %sparx5_dsm_cal_len.exit493.i.while.body.i502.i.preheader_crit_edge, %sparx5_dsm_cal_len.exit.i.while.body.i502.i.preheader_crit_edge
  br label %while.body.i502.i

while.body.i502.i:                                ; preds = %while.body.i502.i.while.body.i502.i_crit_edge, %while.body.i502.i.preheader
  %len.07.i494.i = phi i32 [ %spec.select.i499.i, %while.body.i502.i.while.body.i502.i_crit_edge ], [ 0, %while.body.i502.i.preheader ]
  %idx.06.i495.i = phi i32 [ %inc2.i500.i, %while.body.i502.i.while.body.i502.i_crit_edge ], [ 0, %while.body.i502.i.preheader ]
  %arrayidx.i496.i = getelementptr i32, ptr %short_list206.i, i32 %idx.06.i495.i
  %113 = ptrtoint ptr %arrayidx.i496.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i496.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %114)
  %cmp1.not.i497.i = icmp ne i32 %114, 65535
  %inc.i498.i = zext i1 %cmp1.not.i497.i to i32
  %spec.select.i499.i = add i32 %len.07.i494.i, %inc.i498.i
  %inc2.i500.i = add nuw nsw i32 %idx.06.i495.i, 1
  %exitcond.not.i501.i = icmp eq i32 %inc2.i500.i, 64
  br i1 %exitcond.not.i501.i, label %sparx5_dsm_cal_len.exit503.i, label %while.body.i502.i.while.body.i502.i_crit_edge

while.body.i502.i.while.body.i502.i_crit_edge:    ; preds = %while.body.i502.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i502.i

sparx5_dsm_cal_len.exit503.i:                     ; preds = %while.body.i502.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i499.i)
  %cmp228.not.i = icmp eq i32 %spec.select.i499.i, 0
  br i1 %cmp228.not.i, label %sparx5_dsm_cal_len.exit503.i.while.cond238.i.preheader_crit_edge, label %sparx5_dsm_cal_len.exit503.i.while.body.i506.i_crit_edge

sparx5_dsm_cal_len.exit503.i.while.body.i506.i_crit_edge: ; preds = %sparx5_dsm_cal_len.exit503.i
  br label %while.body.i506.i

sparx5_dsm_cal_len.exit503.i.while.cond238.i.preheader_crit_edge: ; preds = %sparx5_dsm_cal_len.exit503.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond238.i.preheader

while.body.i506.i:                                ; preds = %if.end.i510.i.while.body.i506.i_crit_edge, %sparx5_dsm_cal_len.exit503.i.while.body.i506.i_crit_edge
  %idx.011.i.i = phi i32 [ %inc.i508.i, %if.end.i510.i.while.body.i506.i_crit_edge ], [ 0, %sparx5_dsm_cal_len.exit503.i.while.body.i506.i_crit_edge ]
  %arrayidx.i504.i = getelementptr i32, ptr %short_list206.i, i32 %idx.011.i.i
  %115 = ptrtoint ptr %arrayidx.i504.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i504.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %116)
  %cmp1.not.i505.i = icmp eq i32 %116, 65535
  br i1 %cmp1.not.i505.i, label %if.end.i510.i, label %if.then.i507.i

if.then.i507.i:                                   ; preds = %while.body.i506.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i504.i.le = getelementptr i32, ptr %short_list206.i, i32 %idx.011.i.i
  %117 = ptrtoint ptr %arrayidx.i504.i.le to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 65535, ptr %arrayidx.i504.i.le, align 4
  br label %sparx5_dsm_cp_cal.exit.i

if.end.i510.i:                                    ; preds = %while.body.i506.i
  %inc.i508.i = add nuw nsw i32 %idx.011.i.i, 1
  %exitcond.not.i509.i = icmp eq i32 %inc.i508.i, 64
  br i1 %exitcond.not.i509.i, label %if.end.i510.i.sparx5_dsm_cp_cal.exit.i_crit_edge, label %if.end.i510.i.while.body.i506.i_crit_edge

if.end.i510.i.while.body.i506.i_crit_edge:        ; preds = %if.end.i510.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i506.i

if.end.i510.i.sparx5_dsm_cp_cal.exit.i_crit_edge: ; preds = %if.end.i510.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_cp_cal.exit.i

sparx5_dsm_cp_cal.exit.i:                         ; preds = %if.end.i510.i.sparx5_dsm_cp_cal.exit.i_crit_edge, %if.then.i507.i
  %arrayidx234.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 6, i32 %ts.0.i
  %118 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %116, ptr %arrayidx234.i, align 4
  %inc235.i = add i32 %ts.0.i, 1
  %add236.i = add i32 %cnt.0.i, 100000
  br label %while.cond238.i.preheader

while.cond238.i.preheader:                        ; preds = %sparx5_dsm_cp_cal.exit.i, %sparx5_dsm_cal_len.exit503.i.while.cond238.i.preheader_crit_edge
  %ts.2.i.ph = phi i32 [ %ts.0.i, %sparx5_dsm_cal_len.exit503.i.while.cond238.i.preheader_crit_edge ], [ %inc235.i, %sparx5_dsm_cp_cal.exit.i ]
  %cnt.2.i.ph = phi i32 [ %cnt.0.i, %sparx5_dsm_cal_len.exit503.i.while.cond238.i.preheader_crit_edge ], [ %add236.i, %sparx5_dsm_cp_cal.exit.i ]
  br label %while.cond238.i

while.cond238.i:                                  ; preds = %sparx5_dsm_cp_cal.exit530.i, %while.cond238.i.preheader
  %ts.2.i = phi i32 [ %inc250.i, %sparx5_dsm_cp_cal.exit530.i ], [ %ts.2.i.ph, %while.cond238.i.preheader ]
  %cnt.2.i = phi i32 [ %sub251.i, %sparx5_dsm_cp_cal.exit530.i ], [ %cnt.2.i.ph, %while.cond238.i.preheader ]
  %cmp252.i = phi i1 [ false, %sparx5_dsm_cp_cal.exit530.i ], [ %cmp228.not.i, %while.cond238.i.preheader ]
  br label %while.body.i519.i

while.body.i519.i:                                ; preds = %while.body.i519.i.while.body.i519.i_crit_edge, %while.cond238.i
  %len.07.i511.i = phi i32 [ 0, %while.cond238.i ], [ %spec.select.i516.i, %while.body.i519.i.while.body.i519.i_crit_edge ]
  %idx.06.i512.i = phi i32 [ 0, %while.cond238.i ], [ %inc2.i517.i, %while.body.i519.i.while.body.i519.i_crit_edge ]
  %arrayidx.i513.i = getelementptr i32, ptr %long_list210.i, i32 %idx.06.i512.i
  %119 = ptrtoint ptr %arrayidx.i513.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i513.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %120)
  %cmp1.not.i514.i = icmp ne i32 %120, 65535
  %inc.i515.i = zext i1 %cmp1.not.i514.i to i32
  %spec.select.i516.i = add i32 %len.07.i511.i, %inc.i515.i
  %inc2.i517.i = add nuw nsw i32 %idx.06.i512.i, 1
  %exitcond.not.i518.i = icmp eq i32 %inc2.i517.i, 64
  br i1 %exitcond.not.i518.i, label %sparx5_dsm_cal_len.exit520.i, label %while.body.i519.i.while.body.i519.i_crit_edge

while.body.i519.i.while.body.i519.i_crit_edge:    ; preds = %while.body.i519.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i519.i

sparx5_dsm_cal_len.exit520.i:                     ; preds = %while.body.i519.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i516.i)
  %cmp242.not.i = icmp ne i32 %spec.select.i516.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.2.i)
  %cmp243.i = icmp sgt i32 %cnt.2.i, 0
  %or.cond480.i = select i1 %cmp242.not.i, i1 %cmp243.i, i1 false
  br i1 %or.cond480.i, label %sparx5_dsm_cal_len.exit520.i.while.body.i524.i_crit_edge, label %while.end.i

sparx5_dsm_cal_len.exit520.i.while.body.i524.i_crit_edge: ; preds = %sparx5_dsm_cal_len.exit520.i
  br label %while.body.i524.i

while.body.i524.i:                                ; preds = %if.end.i529.i.while.body.i524.i_crit_edge, %sparx5_dsm_cal_len.exit520.i.while.body.i524.i_crit_edge
  %idx.011.i521.i = phi i32 [ %inc.i527.i, %if.end.i529.i.while.body.i524.i_crit_edge ], [ 0, %sparx5_dsm_cal_len.exit520.i.while.body.i524.i_crit_edge ]
  %arrayidx.i522.i = getelementptr i32, ptr %long_list210.i, i32 %idx.011.i521.i
  %121 = ptrtoint ptr %arrayidx.i522.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i522.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %122)
  %cmp1.not.i523.i = icmp eq i32 %122, 65535
  br i1 %cmp1.not.i523.i, label %if.end.i529.i, label %if.then.i526.i

if.then.i526.i:                                   ; preds = %while.body.i524.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i522.i.le = getelementptr i32, ptr %long_list210.i, i32 %idx.011.i521.i
  %123 = ptrtoint ptr %arrayidx.i522.i.le to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 65535, ptr %arrayidx.i522.i.le, align 4
  br label %sparx5_dsm_cp_cal.exit530.i

if.end.i529.i:                                    ; preds = %while.body.i524.i
  %inc.i527.i = add nuw nsw i32 %idx.011.i521.i, 1
  %exitcond.not.i528.i = icmp eq i32 %inc.i527.i, 64
  br i1 %exitcond.not.i528.i, label %if.end.i529.i.sparx5_dsm_cp_cal.exit530.i_crit_edge, label %if.end.i529.i.while.body.i524.i_crit_edge

if.end.i529.i.while.body.i524.i_crit_edge:        ; preds = %if.end.i529.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i524.i

if.end.i529.i.sparx5_dsm_cp_cal.exit530.i_crit_edge: ; preds = %if.end.i529.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sparx5_dsm_cp_cal.exit530.i

sparx5_dsm_cp_cal.exit530.i:                      ; preds = %if.end.i529.i.sparx5_dsm_cp_cal.exit530.i_crit_edge, %if.then.i526.i
  %arrayidx249.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 6, i32 %ts.2.i
  %124 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %122, ptr %arrayidx249.i, align 4
  %inc250.i = add i32 %ts.2.i, 1
  %sub251.i = sub i32 %cnt.2.i, %div215.i
  br label %while.cond238.i

while.end.i:                                      ; preds = %sparx5_dsm_cal_len.exit520.i
  br i1 %cmp252.i, label %cleanup288.i, label %while.end.i.while.cond.i_crit_edge

while.end.i.while.cond.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

for.body276.i:                                    ; preds = %for.body276.i.for.body276.i_crit_edge, %sparx5_dsm_cal_len.exit493.i.for.body276.i_crit_edge
  %slot.4586.i = phi i32 [ %inc286.i, %for.body276.i.for.body276.i_crit_edge ], [ 0, %sparx5_dsm_cal_len.exit493.i.for.body276.i_crit_edge ]
  %arrayidx278.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 6, i32 %slot.4586.i
  %125 = ptrtoint ptr %arrayidx278.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx278.i, align 4
  %arrayidx280.i = getelementptr [64 x i32], ptr %call7.i.i, i32 0, i32 %slot.4586.i
  %127 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx280.i, align 4
  store i32 65535, ptr %arrayidx278.i, align 4
  %arrayidx284.i = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 5, i32 %slot.4586.i
  %128 = ptrtoint ptr %arrayidx284.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 65535, ptr %arrayidx284.i, align 4
  %inc286.i = add nuw nsw i32 %slot.4586.i, 1
  %exitcond612.not.i = icmp eq i32 %inc286.i, 64
  br i1 %exitcond612.not.i, label %for.body276.i.for.inc299.i_crit_edge, label %for.body276.i.for.body276.i_crit_edge

for.body276.i.for.body276.i_crit_edge:            ; preds = %for.body276.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body276.i

for.body276.i.for.inc299.i_crit_edge:             ; preds = %for.body276.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc299.i

cleanup288.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev257.i = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %129 = ptrtoint ptr %dev257.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev257.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.32) #9
  br label %do.end

for.inc299.i:                                     ; preds = %for.body276.i.for.inc299.i_crit_edge, %for.inc161.12.i.for.inc299.i_crit_edge
  %inc300.i = add nuw nsw i32 %idx.6588.i, 1
  %exitcond613.not.i = icmp eq i32 %inc300.i, %48
  br i1 %exitcond613.not.i, label %for.inc299.i.if.end4_crit_edge, label %for.inc299.i.for.cond151.preheader.i_crit_edge

for.inc299.i.for.cond151.preheader.i_crit_edge:   ; preds = %for.inc299.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond151.preheader.i

for.inc299.i.if.end4_crit_edge:                   ; preds = %for.inc299.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %cleanup288.i, %do.end129.i, %do.end118.i, %do.end.i
  %dev = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  br label %cal_out.sink.split

if.end4:                                          ; preds = %for.inc299.i.if.end4_crit_edge, %for.cond147.preheader.i.if.end4_crit_edge, %for.end47.i.if.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %slot_indices.i) #6
  %131 = call ptr @memset(ptr %slot_indices.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %distances.i) #6
  %132 = call ptr @memset(ptr %distances.i, i32 255, i32 256)
  br label %while.body.i.i46

while.body.i.i46:                                 ; preds = %while.body.i.i46.while.body.i.i46_crit_edge, %if.end4
  %len.07.i.i38 = phi i32 [ 0, %if.end4 ], [ %spec.select.i.i43, %while.body.i.i46.while.body.i.i46_crit_edge ]
  %idx.06.i.i39 = phi i32 [ 0, %if.end4 ], [ %inc2.i.i44, %while.body.i.i46.while.body.i.i46_crit_edge ]
  %arrayidx.i.i40 = getelementptr i32, ptr %call7.i.i, i32 %idx.06.i.i39
  %133 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %134)
  %cmp1.not.i.i41 = icmp ne i32 %134, 65535
  %inc.i.i42 = zext i1 %cmp1.not.i.i41 to i32
  %spec.select.i.i43 = add i32 %len.07.i.i38, %inc.i.i42
  %inc2.i.i44 = add nuw nsw i32 %idx.06.i.i39, 1
  %exitcond.not.i.i45 = icmp eq i32 %inc2.i.i44, 64
  br i1 %exitcond.not.i.i45, label %for.cond.preheader.i, label %while.body.i.i46.while.body.i.i46_crit_edge

while.body.i.i46.while.body.i.i46_crit_edge:      ; preds = %while.body.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i46

for.cond.preheader.i:                             ; preds = %while.body.i.i46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i43)
  %cmp7120.not.i = icmp eq i32 %spec.select.i.i43, 0
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.inc61.i.for.body.i48_crit_edge, %for.cond.preheader.i
  %port.0132.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc62.i, %for.inc61.i.for.body.i48_crit_edge ]
  %arrayidx.i47 = getelementptr %struct.sparx5_calendar_data, ptr %call7.i.i, i32 0, i32 1, i32 %port.0132.i
  %135 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i47, align 4
  br label %for.body3.i

for.cond6.preheader.i:                            ; preds = %for.body3.i
  br i1 %cmp7120.not.i, label %for.cond6.preheader.i.for.inc61.i_crit_edge, label %for.cond6.preheader.i.for.body8.i_crit_edge

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.cond6.preheader.i.for.inc61.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i48
  %idx.0119.i = phi i32 [ 0, %for.body.i48 ], [ %inc.i51, %for.body3.i.for.body3.i_crit_edge ]
  %arrayidx4.i49 = getelementptr [64 x i32], ptr %slot_indices.i, i32 0, i32 %idx.0119.i
  %137 = ptrtoint ptr %arrayidx4.i49 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 65535, ptr %arrayidx4.i49, align 4
  %arrayidx5.i50 = getelementptr [64 x i32], ptr %distances.i, i32 0, i32 %idx.0119.i
  %138 = ptrtoint ptr %arrayidx5.i50 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 65535, ptr %arrayidx5.i50, align 4
  %inc.i51 = add nuw nsw i32 %idx.0119.i, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, 64
  br i1 %exitcond.not.i52, label %for.cond6.preheader.i, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.body8.i:                                      ; preds = %for.inc14.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %idx.1122.i = phi i32 [ %inc15.i, %for.inc14.i.for.body8.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %num_of_slots.0121.i = phi i32 [ %num_of_slots.1.i, %for.inc14.i.for.body8.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %arrayidx10.i = getelementptr [64 x i32], ptr %call7.i.i, i32 0, i32 %idx.1122.i
  %139 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %port.0132.i)
  %cmp11.i = icmp eq i32 %140, %port.0132.i
  br i1 %cmp11.i, label %if.then.i54, label %for.body8.i.for.inc14.i_crit_edge

for.body8.i.for.inc14.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc14.i

if.then.i54:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12.i53 = getelementptr [64 x i32], ptr %slot_indices.i, i32 0, i32 %num_of_slots.0121.i
  %141 = ptrtoint ptr %arrayidx12.i53 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %idx.1122.i, ptr %arrayidx12.i53, align 4
  %inc13.i = add i32 %num_of_slots.0121.i, 1
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %if.then.i54, %for.body8.i.for.inc14.i_crit_edge
  %num_of_slots.1.i = phi i32 [ %inc13.i, %if.then.i54 ], [ %num_of_slots.0121.i, %for.body8.i.for.inc14.i_crit_edge ]
  %inc15.i = add nuw i32 %idx.1122.i, 1
  %exitcond138.not.i = icmp eq i32 %inc15.i, %spec.select.i.i43
  br i1 %exitcond138.not.i, label %for.end16.i, label %for.inc14.i.for.body8.i_crit_edge

for.inc14.i.for.body8.i_crit_edge:                ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i

for.end16.i:                                      ; preds = %for.inc14.i
  %142 = ptrtoint ptr %slot_indices.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %slot_indices.i, align 4
  %add.i55 = add i32 %143, %spec.select.i.i43
  %arrayidx18.i56 = getelementptr [64 x i32], ptr %slot_indices.i, i32 0, i32 %num_of_slots.1.i
  %144 = ptrtoint ptr %arrayidx18.i56 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add.i55, ptr %arrayidx18.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_of_slots.1.i)
  %cmp20124.not.i = icmp eq i32 %num_of_slots.1.i, 0
  br i1 %cmp20124.not.i, label %for.end16.i.for.inc61.i_crit_edge, label %for.end16.i.for.body21.i_crit_edge

for.end16.i.for.body21.i_crit_edge:               ; preds = %for.end16.i
  br label %for.body21.i

for.end16.i.for.inc61.i_crit_edge:                ; preds = %for.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.end16.i.for.body21.i_crit_edge
  %idx.2125.i = phi i32 [ %add22.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.end16.i.for.body21.i_crit_edge ]
  %add22.i = add nuw i32 %idx.2125.i, 1
  %arrayidx23.i = getelementptr [64 x i32], ptr %slot_indices.i, i32 0, i32 %add22.i
  %145 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx23.i, align 4
  %arrayidx24.i = getelementptr [64 x i32], ptr %slot_indices.i, i32 0, i32 %idx.2125.i
  %147 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx24.i, align 4
  %sub.i57 = sub i32 %146, %148
  %mul.i58 = mul i32 %sub.i57, 10
  %arrayidx25.i = getelementptr [64 x i32], ptr %distances.i, i32 0, i32 %idx.2125.i
  %149 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %mul.i58, ptr %arrayidx25.i, align 4
  %exitcond139.not.i = icmp eq i32 %add22.i, %num_of_slots.1.i
  br i1 %exitcond139.not.i, label %for.body21.i.for.body31.i_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21.i

for.body21.i.for.body31.i_crit_edge:              ; preds = %for.body21.i
  br label %for.body31.i

for.cond29.loopexit.i:                            ; preds = %for.cond39.i.for.cond29.loopexit.i_crit_edge, %for.body31.i.for.cond29.loopexit.i_crit_edge
  br i1 %150, label %for.cond29.loopexit.i.for.inc61.i_crit_edge, label %for.cond29.loopexit.i.for.body31.i_crit_edge

for.cond29.loopexit.i.for.body31.i_crit_edge:     ; preds = %for.cond29.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body31.i

for.cond29.loopexit.i.for.inc61.i_crit_edge:      ; preds = %for.cond29.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61.i

for.body31.i:                                     ; preds = %for.cond29.loopexit.i.for.body31.i_crit_edge, %for.body21.i.for.body31.i_crit_edge
  %idx.3131.i = phi i32 [ %add38.i, %for.cond29.loopexit.i.for.body31.i_crit_edge ], [ 0, %for.body21.i.for.body31.i_crit_edge ]
  %add38.i = add nuw i32 %idx.3131.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %num_of_slots.1.i)
  %150 = icmp eq i32 %add38.i, %num_of_slots.1.i
  %iv.rem.i = select i1 %150, i32 0, i32 %add38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %iv.rem.i, i32 %idx.3131.i)
  %cmp40.not127.i = icmp eq i32 %iv.rem.i, %idx.3131.i
  br i1 %cmp40.not127.i, label %for.body31.i.for.cond29.loopexit.i_crit_edge, label %for.body41.preheader.i

for.body31.i.for.cond29.loopexit.i_crit_edge:     ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond29.loopexit.i

for.body41.preheader.i:                           ; preds = %for.body31.i
  %arrayidx32.i = getelementptr [64 x i32], ptr %distances.i, i32 0, i32 %idx.3131.i
  %151 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx32.i, align 4
  %sub33.i = sub i32 %152, %136
  %153 = tail call i32 @llvm.abs.i32(i32 %sub33.i, i1 false) #6
  br label %for.body41.i

for.cond39.i:                                     ; preds = %for.body41.i
  %add53.i = add nuw i32 %jdx.0129.i, 1
  %jdx.0.i = urem i32 %add53.i, %num_of_slots.1.i
  %cmp40.not.i = icmp eq i32 %jdx.0.i, %idx.3131.i
  br i1 %cmp40.not.i, label %for.cond39.i.for.cond29.loopexit.i_crit_edge, label %for.cond39.i.for.body41.i_crit_edge

for.cond39.i.for.body41.i_crit_edge:              ; preds = %for.cond39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41.i

for.cond39.i.for.cond29.loopexit.i_crit_edge:     ; preds = %for.cond39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond29.loopexit.i

for.body41.i:                                     ; preds = %for.cond39.i.for.body41.i_crit_edge, %for.body41.preheader.i
  %jdx.0129.i = phi i32 [ %jdx.0.i, %for.cond39.i.for.body41.i_crit_edge ], [ %iv.rem.i, %for.body41.preheader.i ]
  %cnt.1128.i = phi i32 [ %156, %for.cond39.i.for.body41.i_crit_edge ], [ %153, %for.body41.preheader.i ]
  %arrayidx42.i = getelementptr [64 x i32], ptr %distances.i, i32 0, i32 %jdx.0129.i
  %154 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx42.i, align 4
  %add43.i = sub i32 %cnt.1128.i, %136
  %sub44.i = add i32 %add43.i, %155
  %156 = tail call i32 @llvm.abs.i32(i32 %sub44.i, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %136)
  %cmp49.i = icmp sgt i32 %156, %136
  br i1 %cmp49.i, label %do.end10, label %for.cond39.i

for.inc61.i:                                      ; preds = %for.cond29.loopexit.i.for.inc61.i_crit_edge, %for.end16.i.for.inc61.i_crit_edge, %for.cond6.preheader.i.for.inc61.i_crit_edge
  %inc62.i = add nuw nsw i32 %port.0132.i, 1
  %exitcond141.not.i = icmp eq i32 %inc62.i, 13
  br i1 %exitcond141.not.i, label %if.end12, label %for.inc61.i.for.body.i48_crit_edge

for.inc61.i.for.body.i48_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i48

do.end10:                                         ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i59 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %157 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.34, i32 noundef %port.0132.i, i32 noundef %156, i32 noundef %136) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %distances.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %slot_indices.i) #6
  br label %cal_out.sink.split

if.end12:                                         ; preds = %for.inc61.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %distances.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %slot_indices.i) #6
  br label %while.body.i.i69

while.body.i.i69:                                 ; preds = %while.body.i.i69.while.body.i.i69_crit_edge, %if.end12
  %len.07.i.i61 = phi i32 [ 0, %if.end12 ], [ %spec.select.i.i66, %while.body.i.i69.while.body.i.i69_crit_edge ]
  %idx.06.i.i62 = phi i32 [ 0, %if.end12 ], [ %inc2.i.i67, %while.body.i.i69.while.body.i.i69_crit_edge ]
  %arrayidx.i.i63 = getelementptr i32, ptr %call7.i.i, i32 %idx.06.i.i62
  %159 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %160)
  %cmp1.not.i.i64 = icmp ne i32 %160, 65535
  %inc.i.i65 = zext i1 %cmp1.not.i.i64 to i32
  %spec.select.i.i66 = add i32 %len.07.i.i61, %inc.i.i65
  %inc2.i.i67 = add nuw nsw i32 %idx.06.i.i62, 1
  %exitcond.not.i.i68 = icmp eq i32 %inc2.i.i67, 64
  br i1 %exitcond.not.i.i68, label %spx5_wr.exit.i, label %while.body.i.i69.while.body.i.i69_crit_edge

while.body.i.i69.while.body.i.i69_crit_edge:      ; preds = %while.body.i.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i69

spx5_wr.exit.i:                                   ; preds = %while.body.i.i69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %162, i32 3244
  %mul83.i.i.i = shl i32 %taxi.0123, 2
  %add.ptr84.i.i.i = getelementptr i8, ptr %add.ptr82.i.i.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.i, i32 16777216) #6, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i66)
  %cmp170.not.i = icmp eq i32 %spec.select.i.i66, 0
  br i1 %cmp170.not.i, label %spx5_wr.exit.i.spx5_rd.exit.i_crit_edge, label %spx5_wr.exit.i.spx5_rmw.exit.i_crit_edge

spx5_wr.exit.i.spx5_rmw.exit.i_crit_edge:         ; preds = %spx5_wr.exit.i
  br label %spx5_rmw.exit.i

spx5_wr.exit.i.spx5_rd.exit.i_crit_edge:          ; preds = %spx5_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spx5_rd.exit.i

spx5_rmw.exit.i:                                  ; preds = %spx5_rmw.exit.i.spx5_rmw.exit.i_crit_edge, %spx5_wr.exit.i.spx5_rmw.exit.i_crit_edge
  %idx.0171.i = phi i32 [ %inc.i75, %spx5_rmw.exit.i.spx5_rmw.exit.i_crit_edge ], [ 0, %spx5_wr.exit.i.spx5_rmw.exit.i_crit_edge ]
  %shl.i = shl i32 %idx.0171.i, 15
  %and29.i = and i32 %shl.i, 2064384
  %163 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i129.i = getelementptr i8, ptr %164, i32 3244
  %add.ptr84.i.i131.i = getelementptr i8, ptr %add.ptr82.i.i129.i, i32 %mul83.i.i.i
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i131.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %166 = and i32 %165, -8396545
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #6
  %or.i.i = or i32 %167, %and29.i
  %168 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %169 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i5.i.i = getelementptr i8, ptr %170, i32 3244
  %add.ptr84.i7.i.i = getelementptr i8, ptr %add.ptr82.i5.i.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i.i, i32 %168) #6, !srcloc !78
  %arrayidx.i74 = getelementptr [64 x i32], ptr %call7.i.i, i32 0, i32 %idx.0171.i
  %171 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i74, align 4
  %shl57.i = shl i32 %172, 1
  %and58.i = and i32 %shl57.i, 30
  %173 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i137.i = getelementptr i8, ptr %174, i32 3244
  %add.ptr84.i.i139.i = getelementptr i8, ptr %add.ptr82.i.i137.i, i32 %mul83.i.i.i
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i139.i) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %176 = and i32 %175, -503316481
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #6
  %or.i143.i = or i32 %177, %and58.i
  %178 = tail call i32 @llvm.bswap.i32(i32 %or.i143.i) #6
  %179 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i5.i145.i = getelementptr i8, ptr %180, i32 3244
  %add.ptr84.i7.i146.i = getelementptr i8, ptr %add.ptr82.i5.i145.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i7.i146.i, i32 %178) #6, !srcloc !78
  %inc.i75 = add nuw i32 %idx.0171.i, 1
  %exitcond.not.i76 = icmp eq i32 %inc.i75, %spec.select.i.i66
  br i1 %exitcond.not.i76, label %spx5_rmw.exit.i.spx5_rd.exit.i_crit_edge, label %spx5_rmw.exit.i.spx5_rmw.exit.i_crit_edge

spx5_rmw.exit.i.spx5_rmw.exit.i_crit_edge:        ; preds = %spx5_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spx5_rmw.exit.i

spx5_rmw.exit.i.spx5_rd.exit.i_crit_edge:         ; preds = %spx5_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spx5_rd.exit.i

spx5_rd.exit.i:                                   ; preds = %spx5_rmw.exit.i.spx5_rd.exit.i_crit_edge, %spx5_wr.exit.i.spx5_rd.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %181 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i153168.i = getelementptr i8, ptr %182, i32 3244
  %add.ptr84.i.i155169.i = getelementptr i8, ptr %add.ptr82.i.i153168.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i155169.i, i32 0) #6, !srcloc !78
  %183 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i163.i = getelementptr i8, ptr %184, i32 3244
  %add.ptr84.i.i165.i = getelementptr i8, ptr %add.ptr82.i.i163.i, i32 %mul83.i.i.i
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i165.i) #6, !srcloc !75
  %186 = lshr i32 %185, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %shr.i = and i32 %186, 63
  %sub.i77 = add i32 %spec.select.i.i66, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub.i77)
  %cmp93.not.i = icmp eq i32 %shr.i, %sub.i77
  br i1 %cmp93.not.i, label %for.inc, label %do.end18

do.end18:                                         ; preds = %spx5_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i78 = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %187 = ptrtoint ptr %dev.i78 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.36, i32 noundef %shr.i) #9
  br label %cal_out.sink.split

for.inc:                                          ; preds = %spx5_rd.exit.i
  %inc = add nuw nsw i32 %taxi.0123, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cal_out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cal_out_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cal_out

cal_out.sink.split:                               ; preds = %do.end18, %do.end10, %do.end
  %dev.i78.sink = phi ptr [ %dev.i78, %do.end18 ], [ %dev.i59, %do.end10 ], [ %dev, %do.end ]
  %.str.20.sink = phi ptr [ @.str.20, %do.end18 ], [ @.str.17, %do.end10 ], [ @.str.14, %do.end ]
  %189 = ptrtoint ptr %dev.i78.sink to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i78.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull %.str.20.sink) #9
  br label %cal_out

cal_out:                                          ; preds = %cal_out.sink.split, %for.inc.cal_out_crit_edge
  %err.1 = phi i32 [ -22, %cal_out.sink.split ], [ 0, %for.inc.cal_out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cal_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %cal_out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 172, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sparx5_config_auto_calendar._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sparx5_config_auto_calendar._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 197, i32 3}
!10 = !{ptr @sparx5_config_auto_calendar._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sparx5_config_auto_calendar._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 204, i32 3}
!14 = !{ptr @sparx5_config_auto_calendar._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sparx5_config_auto_calendar._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 241, i32 3}
!18 = !{ptr @sparx5_config_auto_calendar._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sparx5_config_auto_calendar._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 579, i32 4}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sparx5_config_dsm_calendar._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @sparx5_config_dsm_calendar._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 584, i32 4}
!27 = !{ptr @sparx5_config_dsm_calendar._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sparx5_config_dsm_calendar._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 589, i32 4}
!31 = !{ptr @sparx5_config_dsm_calendar._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sparx5_config_dsm_calendar._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 346, i32 2}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 333, i32 3}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sparx5_dsm_calendar_calc._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sparx5_dsm_calendar_calc._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 372, i32 5}
!42 = !{ptr @sparx5_dsm_calendar_calc._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sparx5_dsm_calendar_calc._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 380, i32 4}
!46 = !{ptr @sparx5_dsm_calendar_calc._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sparx5_dsm_calendar_calc._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 458, i32 5}
!50 = !{ptr @sparx5_dsm_calendar_calc._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sparx5_dsm_calendar_calc._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sparx5_taxi_ports, !53, !"sparx5_taxi_ports", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 29, i32 12}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 527, i32 2}
!56 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sparx5_dsm_calendar_check._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sparx5_dsm_calendar_check._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_calendar.c", i32 561, i32 2}
!61 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sparx5_dsm_calendar_update._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sparx5_dsm_calendar_update._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 714697, i64 714724}
!74 = !{i64 715037, i64 715064, i64 715098, i64 715119}
!75 = !{i64 6188560}
!76 = !{i64 2157346497}
!77 = !{i64 2157346801}
!78 = !{i64 6188142}
!79 = !{i64 2157344508}
!80 = !{i64 2157343097}
