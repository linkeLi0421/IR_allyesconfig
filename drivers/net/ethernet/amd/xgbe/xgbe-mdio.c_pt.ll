; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.23 }
%union.anon.23 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xgbe_phy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pdata->an_mutex\00", [47 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&pdata->an_irq_work)\00", [57 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&pdata->an_work)\00", [61 x i8] zeroinitializer }, align 32
@xgbe_an73_state_machine.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_an73_state_machine\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-mdio.c\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CL73 AN %s\0A\00", [20 x i8] zeroinitializer }, align 32
@xgbe_an73_state_machine.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s successful\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Auto negotiation\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Parallel detection\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error during auto-negotiation, state=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@xgbe_an73_state_machine.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.13, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CL73 AN result: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ready\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Page-Received\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Incompatible-Link\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Complete\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"No-Link\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Undefined\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xgbe_an73_page_received.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.7, ptr @.str.22, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_an73_page_received\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CL73 AN timed out, resetting state\0A\00", [60 x i8] zeroinitializer }, align 32
@xgbe_an73_tx_training.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.23, ptr @.str.7, ptr @.str.24, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_an73_tx_training\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"KR training initiated\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_an73_disable.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.7, ptr @.str.26, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_an73_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CL73 AN disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@xgbe_an37_disable.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.27, ptr @.str.7, ptr @.str.28, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_an37_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CL37 AN disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@xgbe_change_mode.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_change_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid operation mode requested (%u)\0A\00", [57 x i8] zeroinitializer }, align 32
@xgbe_an73_restart.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.31, ptr @.str.7, ptr @.str.32, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_an73_restart\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CL73 AN enabled/restarted\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_an37_restart.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.7, ptr @.str.34, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_an37_restart\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CL37 AN enabled/restarted\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_an37_state_machine.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.7, ptr @.str.36, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_an37_state_machine\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CL37 AN %s\0A\00", [20 x i8] zeroinitializer }, align 32
@xgbe_an37_state_machine.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.7, ptr @.str.37, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Auto negotiation successful\0A\00", [35 x i8] zeroinitializer }, align 32
@xgbe_an37_state_machine.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.7, ptr @.str.38, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CL37 AN result: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.40, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_dump_phy_registers\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\0A************* PHY Reg dump **********************\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.41, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCS Control Reg (%#06x) = %#06x\0A\00", [63 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.42, i8 1, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PCS Status Reg (%#06x) = %#06x\0A\00", [32 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.43, i8 1, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Phy Id (PHYS ID 1 %#06x)= %#06x\0A\00", [63 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.44, i8 1, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Phy Id (PHYS ID 2 %#06x)= %#06x\0A\00", [63 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.45, i8 1, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Devices in Package (%#06x)= %#06x\0A\00", [61 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.45, i8 1, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.46, i8 1, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Auto-Neg Control Reg (%#06x) = %#06x\0A\00", [58 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.47, i8 1, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Auto-Neg Status Reg (%#06x) = %#06x\0A\00", [59 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.48, i8 1, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Auto-Neg Ad Reg 1 (%#06x) = %#06x\0A\00", [61 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.49, i8 1, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Auto-Neg Ad Reg 2 (%#06x) = %#06x\0A\00", [61 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.50, i8 1, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Auto-Neg Ad Reg 3 (%#06x) = %#06x\0A\00", [61 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.51, i8 1, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Auto-Neg Completion Reg (%#06x) = %#06x\0A\00", [55 x i8] zeroinitializer }, align 32
@xgbe_dump_phy_registers.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.7, ptr @.str.52, i8 1, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\0A*************************************************\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_phy_start.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.53, ptr @.str.7, ptr @.str.54, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_phy_start\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"starting PHY\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy irq request failed\0A\00", [40 x i8] zeroinitializer }, align 32
@xgbe_an_isr_task.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.56, ptr @.str.7, ptr @.str.57, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_an_isr_task\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AN interrupt received\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_an73_init.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.58, ptr @.str.7, ptr @.str.59, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_an73_init\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CL73 AN initialized\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_an37_init.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.7, ptr @.str.61, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_an37_init\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CL37 AN (%s) initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BaseX\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SGMII\00", [26 x i8] zeroinitializer }, align 32
@xgbe_phy_stop.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.64, ptr @.str.7, ptr @.str.65, i8 1, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_phy_stop\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stopping PHY\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Link is Up - %s/%s - flow control %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is Down\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100Mbps\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1Gbps\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.5Gbps\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unsupported\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx/tx\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@xgbe_check_link_timeout.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.80, ptr @.str.7, ptr @.str.81, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_check_link_timeout\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AN link timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.7, ptr @.str.83, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__xgbe_phy_config_aneg\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AN redriver support\0A\00", [43 x i8] zeroinitializer }, align 32
@__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.7, ptr @.str.84, i8 1, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AN PHY configuration\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_phy_config_fixed.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str.7, ptr @.str.86, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_phy_config_fixed\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fixed PHY configuration\0A\00", [39 x i8] zeroinitializer }, align 32
@switch.table.xgbe_phy_status = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1000, i32 2500, i32 10000, i32 1000, i32 100, i32 1000, i32 10000], [36 x i8] zeroinitializer }, align 32
@switch.table.xgbe_phy_status.87 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1000, i32 2500, i32 10000, i32 1000, i32 100, i32 1000, i32 10000], [36 x i8] zeroinitializer }, align 32
@switch.table.xgbe_an73_state_machine = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [40 x i8] zeroinitializer }, align 32
@switch.table.xgbe_an73_state_machine.88 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [40 x i8] zeroinitializer }, align 32
@switch.table.xgbe_an37_state_machine = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [40 x i8] zeroinitializer }, align 32
@switch.table.xgbe_an37_state_machine.89 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 1000, i64 2500, i64 10000, i64 4294967295]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1555, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1556, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1557, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 846, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 869, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 886, i32 7 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 903, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 747, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 749, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 751, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 753, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 755, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 757, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 759, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 583, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 500, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 422, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 381, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 324, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 412, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 373, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 780, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 790, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 817, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1488, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1490, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1492, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1494, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1496, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1498, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1503, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1505, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1507, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1510, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1513, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1516, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1520, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1408, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1422, i32 23 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 695, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1041, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 989, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1382, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1096, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1098, i32 43 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1098, i32 52 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1101, i32 30 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1078, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1080, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1082, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1084, i32 10 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1086, i32 10 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1088, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1065, i32 10 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1067, i32 10 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1069, i32 10 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1071, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1281, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1201, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1203, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private constant [45 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1153, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [29 x i8] c"switch.table.xgbe_phy_status\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [32 x i8] c"switch.table.xgbe_phy_status.87\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [37 x i8] c"switch.table.xgbe_an73_state_machine\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [40 x i8] c"switch.table.xgbe_an73_state_machine.88\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [37 x i8] c"switch.table.xgbe_an37_state_machine\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [40 x i8] c"switch.table.xgbe_an37_state_machine.89\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @xgbe_phy_init.__key, ptr @.str, ptr @xgbe_phy_init.__key.1, ptr @.str.2, ptr @xgbe_phy_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @switch.table.xgbe_phy_status, ptr @switch.table.xgbe_phy_status.87, ptr @switch.table.xgbe_an73_state_machine, ptr @switch.table.xgbe_an73_state_machine.88, ptr @switch.table.xgbe_an37_state_machine, ptr @switch.table.xgbe_an37_state_machine.89], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_phy_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_phy_status.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_an73_state_machine to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_an73_state_machine.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_an37_state_machine to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_an37_state_machine.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgbe_init_function_ptrs_phy(ptr nocapture noundef writeonly %phy_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_if to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgbe_phy_init, ptr %phy_if, align 4
  %phy_exit = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 1
  %1 = ptrtoint ptr %phy_exit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgbe_phy_exit, ptr %phy_exit, align 4
  %phy_reset = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 2
  %2 = ptrtoint ptr %phy_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xgbe_phy_reset, ptr %phy_reset, align 4
  %phy_start = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 3
  %3 = ptrtoint ptr %phy_start to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgbe_phy_start, ptr %phy_start, align 4
  %phy_stop = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 4
  %4 = ptrtoint ptr %phy_stop to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xgbe_phy_stop, ptr %phy_stop, align 4
  %phy_status = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 5
  %5 = ptrtoint ptr %phy_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xgbe_phy_status, ptr %phy_status, align 4
  %phy_config_aneg = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 6
  %6 = ptrtoint ptr %phy_config_aneg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xgbe_phy_config_aneg, ptr %phy_config_aneg, align 4
  %phy_valid_speed = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 7
  %7 = ptrtoint ptr %phy_valid_speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xgbe_phy_valid_speed, ptr %phy_valid_speed, align 4
  %an_isr = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 8
  %8 = ptrtoint ptr %an_isr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xgbe_an_combined_isr, ptr %an_isr, align 4
  %module_info = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 9
  %9 = ptrtoint ptr %module_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xgbe_phy_module_info, ptr %module_info, align 4
  %module_eeprom = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 10
  %10 = ptrtoint ptr %module_eeprom to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xgbe_phy_module_eeprom, ptr %module_eeprom, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_init(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_mutex = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 151
  tail call void @__mutex_init(ptr noundef %an_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @xgbe_phy_init.__key) #5
  %an_irq_work = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 148
  tail call void @__init_work(ptr noundef %an_irq_work, i32 noundef 0) #5
  %0 = ptrtoint ptr %an_irq_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %an_irq_work, align 8
  %lockdep_map = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 148, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @xgbe_phy_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry6 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 148, i32 1
  %1 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 148, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 148, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgbe_an_irq_work, ptr %func, align 4
  %an_work = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 156
  tail call void @__init_work(ptr noundef %an_work, i32 noundef 0) #5
  %4 = ptrtoint ptr %an_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %an_work, align 8
  %lockdep_map16 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 156, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map16, ptr noundef nonnull @.str.4, ptr noundef nonnull @xgbe_phy_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry18 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 156, i32 1
  %5 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i144 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 156, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry18, ptr %prev.i144, align 4
  %func20 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 156, i32 2
  %7 = ptrtoint ptr %func20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xgbe_an_state_machine, ptr %func20, align 4
  %mdio_mmd = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 141
  %8 = ptrtoint ptr %mdio_mmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %mdio_mmd, align 4
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %9 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %10(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807530) #5
  %fec_ability = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 160
  %and = and i32 %call, 3
  %11 = ptrtoint ptr %fec_ability to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %fec_ability, align 8
  %phy_impl = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11
  %12 = ptrtoint ptr %phy_impl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_impl, align 4
  %call24 = tail call i32 %13(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_modes = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %14 = call ptr @memcpy(ptr %advertising, ptr %link_modes, i32 12)
  %address = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 1
  %15 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %address, align 4
  %16 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %advertising, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool32.not = icmp eq i32 %18, 0
  %autoneg38 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %autoneg38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %autoneg38, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end
  %20 = ptrtoint ptr %autoneg38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %autoneg38, align 4
  %21 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %advertising, align 4
  %23 = and i32 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.else.i:                                        ; preds = %if.else
  %24 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %advertising, align 4
  %26 = and i32 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool6.not.i = icmp eq i32 %26, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.else.i.if.end44_crit_edge

if.else.i.if.end44_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.else8.i:                                       ; preds = %if.else.i
  %27 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %advertising, align 4
  %29 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not.i = icmp eq i32 %29, 0
  br i1 %tobool13.not.i, label %if.else15.i, label %if.else8.i.if.end44_crit_edge

if.else8.i.if.end44_crit_edge:                    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.else15.i:                                      ; preds = %if.else8.i
  %arrayidx.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i, align 4
  %32 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool20.not.i = icmp eq i32 %32, 0
  br i1 %tobool20.not.i, label %if.else22.i, label %if.else15.i.if.end44_crit_edge

if.else15.i.if.end44_crit_edge:                   ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.else22.i:                                      ; preds = %if.else15.i
  %33 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %advertising, align 4
  %35 = and i32 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool27.not.i = icmp eq i32 %35, 0
  br i1 %tobool27.not.i, label %if.else29.i, label %if.else22.i.if.end44_crit_edge

if.else22.i.if.end44_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.else29.i:                                      ; preds = %if.else22.i
  %36 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %advertising, align 4
  %38 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool34.not.i = icmp eq i32 %38, 0
  br i1 %tobool34.not.i, label %if.else36.i, label %if.else29.i.if.end44_crit_edge

if.else29.i.if.end44_crit_edge:                   ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.else36.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %advertising, align 4
  %41 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool41.not.i = icmp eq i32 %41, 0
  %..i = select i1 %tobool41.not.i, i32 -1, i32 100
  br label %if.end44

if.end44:                                         ; preds = %if.else36.i, %if.else29.i.if.end44_crit_edge, %if.else22.i.if.end44_crit_edge, %if.else15.i.if.end44_crit_edge, %if.else8.i.if.end44_crit_edge, %if.else.i.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.then33
  %retval.0.i.sink = phi i32 [ -1, %if.then33 ], [ 10000, %if.else.if.end44_crit_edge ], [ 10000, %if.else.i.if.end44_crit_edge ], [ 2500, %if.else8.i.if.end44_crit_edge ], [ 2500, %if.else15.i.if.end44_crit_edge ], [ 1000, %if.else22.i.if.end44_crit_edge ], [ 1000, %if.else29.i.if.end44_crit_edge ], [ %..i, %if.else36.i ]
  %.sink = phi i32 [ 255, %if.then33 ], [ 1, %if.else.if.end44_crit_edge ], [ 1, %if.else.i.if.end44_crit_edge ], [ 1, %if.else8.i.if.end44_crit_edge ], [ 1, %if.else15.i.if.end44_crit_edge ], [ 1, %if.else22.i.if.end44_crit_edge ], [ 1, %if.else29.i.if.end44_crit_edge ], [ 1, %if.else36.i ]
  %speed41 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %42 = ptrtoint ptr %speed41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.sink, ptr %speed41, align 4
  %duplex43 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %43 = ptrtoint ptr %duplex43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %duplex43, align 4
  %link = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 5
  %44 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %link, align 4
  %pause_autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 94
  %45 = ptrtoint ptr %pause_autoneg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pause_autoneg, align 4
  %pause_autoneg47 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %47 = ptrtoint ptr %pause_autoneg47 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %pause_autoneg47, align 4
  %tx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 95
  %48 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_pause, align 8
  %tx_pause49 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 7
  %50 = ptrtoint ptr %tx_pause49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tx_pause49, align 4
  %rx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 96
  %51 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_pause, align 4
  %rx_pause51 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 8
  %53 = ptrtoint ptr %rx_pause51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %rx_pause51, align 4
  %and.i138 = and i32 %17, -24577
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool59.not = icmp eq i32 %52, 0
  %masksel = select i1 %tobool59.not, i32 0, i32 24576
  %spec.select = or i32 %and.i138, %masksel
  %54 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool69.not = icmp eq i32 %49, 0
  br i1 %tobool69.not, label %if.end44.if.end85_crit_edge, label %if.then70

if.end44.if.end85_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then70:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %advertising, align 4
  %and.i142.sink = xor i32 %56, 16384
  store i32 %and.i142.sink, ptr %advertising, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then70, %if.end44.if.end85_crit_edge
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %57 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable, align 4
  %and86 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.cleanup_crit_edge, label %if.then88

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xgbe_dump_phy_registers(ptr noundef %pdata)
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.end85.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_exit(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %exit = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 1
  %0 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exit, align 4
  tail call void %1(ptr noundef %pdata) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_reset(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 2
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  %call = tail call i32 %1(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xgbe_an_disable_all(ptr noundef %pdata)
  %write_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %2 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233346, i32 noundef 0) #5
  %read_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %4 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806210) #5
  %and.i.i = and i32 %call.i.i, -2
  %6 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806210, i32 noundef %and.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_start(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_start.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_start, %if.then6)) #5
          to label %do.end10 [label %if.then6], !srcloc !195

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_start.__UNIQUE_ID_ddebug372, ptr noundef %5, ptr noundef nonnull @.str.54) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2, %entry.do.end10_crit_edge
  %start = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start, align 4
  %call11 = tail call i32 %7(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %8 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_irq, align 8
  %an_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 147
  %10 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %an_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end14.if.end21_crit_edge, label %if.then15

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then15:                                        ; preds = %if.end14
  %tasklet_an = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 172
  tail call void @tasklet_setup(ptr noundef %tasklet_an, ptr noundef nonnull @xgbe_an_isr_task) #5
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %an_irq, align 4
  %an_name = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 145
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %13, i32 noundef %15, ptr noundef nonnull @xgbe_an_isr, ptr noundef null, i32 noundef 0, ptr noundef %an_name, ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.then15.if.end21_crit_edge, label %if.then19

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.55) #8
  br label %err_stop

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %use_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 7
  %16 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %use_mode.i, align 4
  %call.i99 = tail call zeroext i1 %17(ptr noundef %pdata, i32 noundef 2) #5
  br i1 %call.i99, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %18 = ptrtoint ptr %set_speed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_speed.i, align 4
  %call.i100 = tail call i32 %19(ptr noundef %pdata, i32 noundef 10000) #5
  %set_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %20 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_mode.i, align 4
  tail call void %21(ptr noundef %pdata, i32 noundef 2) #5
  br label %if.end48

if.else:                                          ; preds = %if.end21
  %22 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %use_mode.i, align 4
  %call.i102 = tail call zeroext i1 %23(ptr noundef %pdata, i32 noundef 1) #5
  br i1 %call.i102, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i103 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %24 = ptrtoint ptr %set_speed.i103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_speed.i103, align 4
  %call.i104 = tail call i32 %25(ptr noundef %pdata, i32 noundef 2500) #5
  %set_mode.i105 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %26 = ptrtoint ptr %set_mode.i105 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_mode.i105, align 4
  tail call void %27(ptr noundef %pdata, i32 noundef 1) #5
  br label %if.end48

if.else26:                                        ; preds = %if.else
  %28 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %use_mode.i, align 4
  %call.i107 = tail call zeroext i1 %29(ptr noundef %pdata, i32 noundef 0) #5
  br i1 %call.i107, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i108 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %30 = ptrtoint ptr %set_speed.i108 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_speed.i108, align 4
  %call.i109 = tail call i32 %31(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i110 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %32 = ptrtoint ptr %set_mode.i110 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_mode.i110, align 4
  tail call void %33(ptr noundef %pdata, i32 noundef 0) #5
  br label %if.end48

if.else29:                                        ; preds = %if.else26
  %34 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %use_mode.i, align 4
  %call.i112 = tail call zeroext i1 %35(ptr noundef %pdata, i32 noundef 6) #5
  br i1 %call.i112, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  %kr_redrv.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 144
  %36 = ptrtoint ptr %kr_redrv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %kr_redrv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  %set_speed.i113 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %38 = ptrtoint ptr %set_speed.i113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_speed.i113, align 4
  %call.i114 = tail call i32 %39(ptr noundef %pdata, i32 noundef 10000) #5
  %set_mode.i115 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %40 = ptrtoint ptr %set_mode.i115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_mode.i115, align 4
  %..i = select i1 %tobool.not.i, i32 6, i32 2
  tail call void %41(ptr noundef %pdata, i32 noundef %..i) #5
  br label %if.end48

if.else32:                                        ; preds = %if.else29
  %42 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %use_mode.i, align 4
  %call.i117 = tail call zeroext i1 %43(ptr noundef %pdata, i32 noundef 3) #5
  br i1 %call.i117, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i118 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %44 = ptrtoint ptr %set_speed.i118 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_speed.i118, align 4
  %call.i119 = tail call i32 %45(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i120 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %46 = ptrtoint ptr %set_mode.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_mode.i120, align 4
  tail call void %47(ptr noundef %pdata, i32 noundef 3) #5
  br label %if.end48

if.else35:                                        ; preds = %if.else32
  %48 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %use_mode.i, align 4
  %call.i122 = tail call zeroext i1 %49(ptr noundef %pdata, i32 noundef 5) #5
  br i1 %call.i122, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i123 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %50 = ptrtoint ptr %set_speed.i123 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_speed.i123, align 4
  %call.i124 = tail call i32 %51(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i125 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %52 = ptrtoint ptr %set_mode.i125 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_mode.i125, align 4
  tail call void %53(ptr noundef %pdata, i32 noundef 5) #5
  br label %if.end48

if.else38:                                        ; preds = %if.else35
  %54 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %use_mode.i, align 4
  %call.i127 = tail call zeroext i1 %55(ptr noundef %pdata, i32 noundef 4) #5
  br i1 %call.i127, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i128 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %56 = ptrtoint ptr %set_speed.i128 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_speed.i128, align 4
  %call.i129 = tail call i32 %57(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i130 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %58 = ptrtoint ptr %set_mode.i130 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_mode.i130, align 4
  tail call void %59(ptr noundef %pdata, i32 noundef 4) #5
  br label %if.end48

if.else41:                                        ; preds = %if.else38
  %60 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_irq, align 8
  %62 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %an_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp52.not = icmp eq i32 %61, %63
  br i1 %cmp52.not, label %if.else41.err_stop_crit_edge, label %if.then53

if.else41.err_stop_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_stop

if.end48:                                         ; preds = %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then23
  %phy_started = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 138
  %64 = ptrtoint ptr %phy_started to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %phy_started, align 4
  %an_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 12
  %65 = ptrtoint ptr %an_mode.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %an_mode.i, align 4
  %call.i131 = tail call i32 %66(ptr noundef %pdata) #5
  %an_mode1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %67 = ptrtoint ptr %an_mode1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.i131, ptr %an_mode1.i, align 8
  %68 = zext i32 %call.i131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i131, label %if.end48.xgbe_an_init.exit_crit_edge [
    i32 0, label %if.end48.sw.bb.i_crit_edge
    i32 1, label %if.end48.sw.bb.i_crit_edge136
    i32 2, label %if.end48.sw.bb3.i_crit_edge
    i32 3, label %if.end48.sw.bb3.i_crit_edge137
  ]

if.end48.sw.bb3.i_crit_edge137:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end48.sw.bb3.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end48.sw.bb.i_crit_edge136:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end48.sw.bb.i_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end48.xgbe_an_init.exit_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an_init.exit

sw.bb.i:                                          ; preds = %if.end48.sw.bb.i_crit_edge, %if.end48.sw.bb.i_crit_edge136
  tail call fastcc void @xgbe_an73_init(ptr noundef %pdata) #5
  br label %xgbe_an_init.exitthread-pre-split

sw.bb3.i:                                         ; preds = %if.end48.sw.bb3.i_crit_edge, %if.end48.sw.bb3.i_crit_edge137
  tail call fastcc void @xgbe_an37_init(ptr noundef %pdata) #5
  br label %xgbe_an_init.exitthread-pre-split

xgbe_an_init.exitthread-pre-split:                ; preds = %sw.bb3.i, %sw.bb.i
  %69 = ptrtoint ptr %an_mode1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr = load i32, ptr %an_mode1.i, align 8
  br label %xgbe_an_init.exit

xgbe_an_init.exit:                                ; preds = %xgbe_an_init.exitthread-pre-split, %if.end48.xgbe_an_init.exit_crit_edge
  %70 = phi i32 [ %.pr, %xgbe_an_init.exitthread-pre-split ], [ %call.i131, %if.end48.xgbe_an_init.exit_crit_edge ]
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %70, label %xgbe_an_init.exit.xgbe_an_enable_interrupts.exit_crit_edge [
    i32 0, label %xgbe_an_init.exit.sw.bb.i133_crit_edge
    i32 1, label %xgbe_an_init.exit.sw.bb.i133_crit_edge138
    i32 2, label %xgbe_an_init.exit.sw.bb1.i_crit_edge
    i32 3, label %xgbe_an_init.exit.sw.bb1.i_crit_edge139
  ]

xgbe_an_init.exit.sw.bb1.i_crit_edge139:          ; preds = %xgbe_an_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

xgbe_an_init.exit.sw.bb1.i_crit_edge:             ; preds = %xgbe_an_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

xgbe_an_init.exit.sw.bb.i133_crit_edge138:        ; preds = %xgbe_an_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i133

xgbe_an_init.exit.sw.bb.i133_crit_edge:           ; preds = %xgbe_an_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i133

xgbe_an_init.exit.xgbe_an_enable_interrupts.exit_crit_edge: ; preds = %xgbe_an_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an_enable_interrupts.exit

sw.bb.i133:                                       ; preds = %xgbe_an_init.exit.sw.bb.i133_crit_edge, %xgbe_an_init.exit.sw.bb.i133_crit_edge138
  %write_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %72 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %73(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233345, i32 noundef 7) #5
  br label %xgbe_an_enable_interrupts.exit

sw.bb1.i:                                         ; preds = %xgbe_an_init.exit.sw.bb1.i_crit_edge, %xgbe_an_init.exit.sw.bb1.i_crit_edge139
  %read_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %74 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i.i = tail call i32 %75(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200) #5
  %or.i.i = or i32 %call.i.i, 4096
  %write_mmd_regs.i4.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %76 = ptrtoint ptr %write_mmd_regs.i4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_mmd_regs.i4.i, align 4
  tail call void %77(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200, i32 noundef %or.i.i) #5
  %78 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call4.i.i = tail call i32 %79(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209) #5
  %or5.i.i = or i32 %call4.i.i, 1
  %80 = ptrtoint ptr %write_mmd_regs.i4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_mmd_regs.i4.i, align 4
  tail call void %81(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209, i32 noundef %or5.i.i) #5
  br label %xgbe_an_enable_interrupts.exit

xgbe_an_enable_interrupts.exit:                   ; preds = %sw.bb1.i, %sw.bb.i133, %xgbe_an_init.exit.xgbe_an_enable_interrupts.exit_crit_edge
  %call.i134 = tail call fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext true) #5
  br label %cleanup

if.then53:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  %dev54 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %82 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev54, align 8
  tail call void @devm_free_irq(ptr noundef %83, i32 noundef %63, ptr noundef %pdata) #5
  br label %err_stop

err_stop:                                         ; preds = %if.then53, %if.else41.err_stop_crit_edge, %if.then19
  %ret.0 = phi i32 [ %call.i, %if.then19 ], [ -22, %if.then53 ], [ -22, %if.else41.err_stop_crit_edge ]
  %stop = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 4
  %84 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stop, align 4
  tail call void %85(ptr noundef %pdata) #5
  br label %cleanup

cleanup:                                          ; preds = %err_stop, %xgbe_an_enable_interrupts.exit, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_stop ], [ %call.i134, %xgbe_an_enable_interrupts.exit ], [ %call11, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_stop(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_stop.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_stop, %if.then5)) #5
          to label %do.end7 [label %if.then5], !srcloc !195

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_stop.__UNIQUE_ID_ddebug371, ptr noundef %3, ptr noundef nonnull @.str.65) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  %phy_started = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 138
  %4 = ptrtoint ptr %phy_started to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %do.end7.return_crit_edge, label %if.end10

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end10:                                         ; preds = %do.end7
  %6 = ptrtoint ptr %phy_started to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %phy_started, align 4
  tail call fastcc void @xgbe_an_disable_all(ptr noundef %pdata)
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %7 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_irq, align 8
  %an_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 147
  %9 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %an_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void @devm_free_irq(ptr noundef %12, i32 noundef %10, ptr noundef %pdata) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %stop = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 4
  %13 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop, align 4
  tail call void %14(ptr noundef %pdata) #5
  %link = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 5
  %15 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %link, align 4
  tail call fastcc void @xgbe_phy_adjust_link(ptr noundef %pdata)
  br label %return

return:                                           ; preds = %if.end14, %do.end7.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_status(ptr noundef %pdata) #1 align 64 {
entry:
  %an_restart = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %an_restart) #5
  %0 = ptrtoint ptr %an_restart to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %an_restart, align 4, !annotation !196
  %dev_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 29
  %1 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %dev_state, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  tail call void @netif_carrier_off(ptr noundef %5) #5
  %link = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 5
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %link, align 4
  br label %adjust_link

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %link_status = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 5
  %9 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_status, align 4
  %call2 = call i32 %10(ptr noundef %pdata, ptr noundef nonnull %an_restart) #5
  %link4 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 5
  %11 = ptrtoint ptr %link4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2, ptr %link4, align 4
  %12 = ptrtoint ptr %an_restart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %an_restart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext true) #5
  br label %adjust_link

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool11.not = icmp eq i32 %call2, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  br i1 %cmp, label %land.lhs.true, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then12
  %an_result.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 152
  %14 = ptrtoint ptr %an_result.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %an_result.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i = icmp eq i32 %15, 3
  br i1 %cmp.i, label %land.lhs.true.if.end16_crit_edge, label %if.then15

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %link_check.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 142
  %16 = ptrtoint ptr %link_check.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_check.i, align 8
  %add.i = add i32 %17, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i59 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i59, label %do.body.i, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then15
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end9.i_crit_edge, label %do.body2.i

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_check_link_timeout.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_status, %if.then6.i)) #5
          to label %do.end9.i [label %if.then6.i], !srcloc !195

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_check_link_timeout.__UNIQUE_ID_ddebug370, ptr noundef %22, ptr noundef nonnull @.str.81) #5
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %do.body2.i, %do.body.i.do.end9.i_crit_edge
  %call.i.i = call fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext true) #5
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.then12.if.end16_crit_edge
  %lp_advertising.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2
  %23 = call ptr @memset(ptr %lp_advertising.i, i32 0, i32 12)
  %24 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end16.if.then.i_crit_edge

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end16
  %parallel_detect.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 159
  %26 = ptrtoint ptr %parallel_detect.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %parallel_detect.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i60 = icmp eq i32 %27, 0
  br i1 %tobool.not.i60, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge
  %cur_mode.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %an_outcome.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %an_outcome.i.sink.i = phi ptr [ %an_outcome.i.i, %if.else.i ], [ %cur_mode.i.i, %if.then.i ]
  %28 = ptrtoint ptr %an_outcome.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %an_outcome.i.sink.i, align 4
  %call.i37.i = call i32 %29(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i37.i)
  %30 = icmp ult i32 %call.i37.i, 7
  br i1 %30, label %switch.lookup, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.xgbe_phy_status, i32 0, i32 %call.i37.i
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %if.end.i.sw.epilog.i_crit_edge ]
  %speed16.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %32 = ptrtoint ptr %speed16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i, ptr %speed16.i, align 4
  %duplex.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %33 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %duplex.i, align 4
  %cur_mode.i.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %34 = ptrtoint ptr %cur_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_mode.i.i.i, align 4
  %call.i.i.i = call i32 %35(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %call.i37.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, %call.i37.i
  br i1 %cmp.i.i, label %sw.epilog.i.xgbe_phy_status_result.exit_crit_edge, label %land.lhs.true.i

sw.epilog.i.xgbe_phy_status_result.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_status_result.exit

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  call fastcc void @xgbe_change_mode(ptr noundef %pdata, i32 noundef %call.i37.i) #5
  %an_again.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 157
  %36 = ptrtoint ptr %an_again.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %an_again.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool19.not.i = icmp eq i32 %37, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i.xgbe_phy_status_result.exit_crit_edge, label %if.then20.i

land.lhs.true.i.xgbe_phy_status_result.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_status_result.exit

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i38.i = call fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext false) #5
  br label %xgbe_phy_status_result.exit

xgbe_phy_status_result.exit:                      ; preds = %if.then20.i, %land.lhs.true.i.xgbe_phy_status_result.exit_crit_edge, %sw.epilog.i.xgbe_phy_status_result.exit_crit_edge
  %38 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %dev_state, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool19.not = icmp eq i32 %40, 0
  br i1 %tobool19.not, label %xgbe_phy_status_result.exit.if.end22_crit_edge, label %if.then20

xgbe_phy_status_result.exit.if.end22_crit_edge:   ; preds = %xgbe_phy_status_result.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %xgbe_phy_status_result.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @_clear_bit(i32 noundef 1, ptr noundef %dev_state) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %xgbe_phy_status_result.exit.if.end22_crit_edge
  %41 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata, align 8
  call void @netif_carrier_on(ptr noundef %42) #5
  br label %adjust_link

if.else:                                          ; preds = %if.end8
  %43 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dev_state, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool26.not = icmp eq i32 %45, 0
  br i1 %tobool26.not, label %if.else.if.end31_crit_edge, label %if.then27

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then27:                                        ; preds = %if.else
  %link_check.i61 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 142
  %46 = ptrtoint ptr %link_check.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %link_check.i61, align 8
  %add.i62 = add i32 %47, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i63 = sub i32 %add.i62, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i63)
  %cmp.i64 = icmp slt i32 %sub.i63, 0
  br i1 %cmp.i64, label %do.body.i68, label %if.then27.xgbe_check_link_timeout.exit73_crit_edge

if.then27.xgbe_check_link_timeout.exit73_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_check_link_timeout.exit73

do.body.i68:                                      ; preds = %if.then27
  %msg_enable.i65 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %49 = ptrtoint ptr %msg_enable.i65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i65, align 4
  %and.i66 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i67, label %do.body.i68.do.end9.i72_crit_edge, label %do.body2.i69

do.body.i68.do.end9.i72_crit_edge:                ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i72

do.body2.i69:                                     ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_check_link_timeout.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_status, %if.then6.i70)) #5
          to label %do.end9.i72 [label %if.then6.i70], !srcloc !195

if.then6.i70:                                     ; preds = %do.body2.i69
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_check_link_timeout.__UNIQUE_ID_ddebug370, ptr noundef %52, ptr noundef nonnull @.str.81) #5
  br label %do.end9.i72

do.end9.i72:                                      ; preds = %if.then6.i70, %do.body2.i69, %do.body.i68.do.end9.i72_crit_edge
  %call.i.i71 = call fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext true) #5
  br label %xgbe_check_link_timeout.exit73

xgbe_check_link_timeout.exit73:                   ; preds = %do.end9.i72, %if.then27.xgbe_check_link_timeout.exit73_crit_edge
  br i1 %cmp, label %xgbe_check_link_timeout.exit73.cleanup_crit_edge, label %xgbe_check_link_timeout.exit73.if.end31_crit_edge

xgbe_check_link_timeout.exit73.if.end31_crit_edge: ; preds = %xgbe_check_link_timeout.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

xgbe_check_link_timeout.exit73.cleanup_crit_edge: ; preds = %xgbe_check_link_timeout.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %xgbe_check_link_timeout.exit73.if.end31_crit_edge, %if.else.if.end31_crit_edge
  %lp_advertising.i74 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2
  %53 = call ptr @memset(ptr %lp_advertising.i74, i32 0, i32 12)
  %54 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.not.i76 = icmp eq i32 %55, 1
  br i1 %cmp.not.i76, label %lor.lhs.false.i79, label %if.end31.if.then.i81_crit_edge

if.end31.if.then.i81_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i81

lor.lhs.false.i79:                                ; preds = %if.end31
  %parallel_detect.i77 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 159
  %56 = ptrtoint ptr %parallel_detect.i77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %parallel_detect.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i78 = icmp eq i32 %57, 0
  br i1 %tobool.not.i78, label %if.else.i83, label %lor.lhs.false.i79.if.then.i81_crit_edge

lor.lhs.false.i79.if.then.i81_crit_edge:          ; preds = %lor.lhs.false.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i81

if.then.i81:                                      ; preds = %lor.lhs.false.i79.if.then.i81_crit_edge, %if.end31.if.then.i81_crit_edge
  %cur_mode.i.i80 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  br label %if.end.i86

if.else.i83:                                      ; preds = %lor.lhs.false.i79
  call void @__sanitizer_cov_trace_pc() #7
  %an_outcome.i.i82 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 15
  br label %if.end.i86

if.end.i86:                                       ; preds = %if.else.i83, %if.then.i81
  %an_outcome.i.sink.i84 = phi ptr [ %an_outcome.i.i82, %if.else.i83 ], [ %cur_mode.i.i80, %if.then.i81 ]
  %58 = ptrtoint ptr %an_outcome.i.sink.i84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %an_outcome.i.sink.i84, align 4
  %call.i37.i85 = call i32 %59(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i37.i85)
  %60 = icmp ult i32 %call.i37.i85, 7
  br i1 %60, label %switch.lookup105, label %if.end.i86.sw.epilog.i97_crit_edge

if.end.i86.sw.epilog.i97_crit_edge:               ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i97

switch.lookup105:                                 ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep106 = getelementptr inbounds [7 x i32], ptr @switch.table.xgbe_phy_status.87, i32 0, i32 %call.i37.i85
  %61 = ptrtoint ptr %switch.gep106 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load107 = load i32, ptr %switch.gep106, align 4
  br label %sw.epilog.i97

sw.epilog.i97:                                    ; preds = %switch.lookup105, %if.end.i86.sw.epilog.i97_crit_edge
  %.sink.i91 = phi i32 [ %switch.load107, %switch.lookup105 ], [ -1, %if.end.i86.sw.epilog.i97_crit_edge ]
  %speed16.i92 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %62 = ptrtoint ptr %speed16.i92 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink.i91, ptr %speed16.i92, align 4
  %duplex.i93 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %63 = ptrtoint ptr %duplex.i93 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %duplex.i93, align 4
  %cur_mode.i.i.i94 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %64 = ptrtoint ptr %cur_mode.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_mode.i.i.i94, align 4
  %call.i.i.i95 = call i32 %65(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i95, i32 %call.i37.i85)
  %cmp.i.i96 = icmp eq i32 %call.i.i.i95, %call.i37.i85
  br i1 %cmp.i.i96, label %sw.epilog.i97.xgbe_phy_status_result.exit103_crit_edge, label %land.lhs.true.i100

sw.epilog.i97.xgbe_phy_status_result.exit103_crit_edge: ; preds = %sw.epilog.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_status_result.exit103

land.lhs.true.i100:                               ; preds = %sw.epilog.i97
  call fastcc void @xgbe_change_mode(ptr noundef %pdata, i32 noundef %call.i37.i85) #5
  %an_again.i98 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 157
  %66 = ptrtoint ptr %an_again.i98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %an_again.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool19.not.i99 = icmp eq i32 %67, 0
  br i1 %tobool19.not.i99, label %land.lhs.true.i100.xgbe_phy_status_result.exit103_crit_edge, label %if.then20.i102

land.lhs.true.i100.xgbe_phy_status_result.exit103_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_status_result.exit103

if.then20.i102:                                   ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #7
  %call.i38.i101 = call fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext false) #5
  br label %xgbe_phy_status_result.exit103

xgbe_phy_status_result.exit103:                   ; preds = %if.then20.i102, %land.lhs.true.i100.xgbe_phy_status_result.exit103_crit_edge, %sw.epilog.i97.xgbe_phy_status_result.exit103_crit_edge
  %68 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdata, align 8
  call void @netif_carrier_off(ptr noundef %69) #5
  br label %adjust_link

adjust_link:                                      ; preds = %xgbe_phy_status_result.exit103, %if.end22, %if.then6, %if.then
  call fastcc void @xgbe_phy_adjust_link(ptr noundef %pdata)
  br label %cleanup

cleanup:                                          ; preds = %adjust_link, %xgbe_check_link_timeout.exit73.cleanup_crit_edge, %do.end9.i, %if.then15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %an_restart) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_config_aneg(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @xgbe_phy_valid_speed(ptr noundef %pdata, i32 noundef %speed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %valid_speed = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 6
  %0 = ptrtoint ptr %valid_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %valid_speed, align 4
  %call = tail call zeroext i1 %1(ptr noundef %pdata, i32 noundef %speed) #5
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_an_combined_isr(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet_an = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 172
  tail call void @xgbe_an_isr_task(ptr noundef %tasklet_an)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_module_info(ptr noundef %pdata, ptr noundef %modinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %module_info = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 20
  %0 = ptrtoint ptr %module_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %pdata, ptr noundef %modinfo) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_module_eeprom(ptr noundef %pdata, ptr noundef %eeprom, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %module_eeprom = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 21
  %0 = ptrtoint ptr %module_eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module_eeprom, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %1(ptr noundef %pdata, ptr noundef %eeprom, ptr noundef %data) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_an_irq_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_work = getelementptr i8, ptr %work, i32 160
  %call = tail call zeroext i1 @flush_work(ptr noundef %an_work) #5
  %an_workqueue = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %an_workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %an_workqueue, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %an_work) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_an_state_machine(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5240
  %an_mutex = getelementptr i8, ptr %work, i32 -108
  tail call void @mutex_lock_nested(ptr noundef %an_mutex, i32 noundef 0) #5
  %an_mode = getelementptr i8, ptr %work, i32 64
  %0 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %an_mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge10
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge11
  ]

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10
  tail call fastcc void @xgbe_an73_state_machine(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge11
  tail call fastcc void @xgbe_an37_state_machine(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %vdata = getelementptr i8, ptr %work, i32 -5212
  %3 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdata, align 4
  %irq_reissue_support = getelementptr inbounds %struct.xgbe_version_data, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %irq_reissue_support to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_reissue_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %xprop_regs = getelementptr i8, ptr %work, i32 -5184
  %7 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xprop_regs, align 8
  %add.ptr2 = getelementptr i8, ptr %8, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 134217728) #5, !srcloc !198
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %an_mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_dump_phy_registers(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then)) #5
          to label %do.body4 [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug373, ptr noundef %1, ptr noundef nonnull @.str.40) #5
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then16)) #5
          to label %do.body21 [label %if.then16], !srcloc !195

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %2 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs, align 4
  %call17 = tail call i32 %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938432) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug374, ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %call17) #5
  br label %do.body21

do.body21:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then33)) #5
          to label %do.body40 [label %if.then33], !srcloc !195

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs35 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %4 = ptrtoint ptr %read_mmd_regs35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_mmd_regs35, align 4
  %call36 = tail call i32 %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938433) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug375, ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef %call36) #5
  br label %do.body40

do.body40:                                        ; preds = %if.then33, %do.body21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then52)) #5
          to label %do.body59 [label %if.then52], !srcloc !195

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs54 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %6 = ptrtoint ptr %read_mmd_regs54 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_mmd_regs54, align 4
  %call55 = tail call i32 %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938434) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug376, ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef %call55) #5
  br label %do.body59

do.body59:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then71)) #5
          to label %do.body78 [label %if.then71], !srcloc !195

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs73 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %8 = ptrtoint ptr %read_mmd_regs73 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_mmd_regs73, align 4
  %call74 = tail call i32 %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938435) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug377, ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef 3, i32 noundef %call74) #5
  br label %do.body78

do.body78:                                        ; preds = %if.then71, %do.body59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then90)) #5
          to label %do.body97 [label %if.then90], !srcloc !195

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs92 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %10 = ptrtoint ptr %read_mmd_regs92 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs92, align 4
  %call93 = tail call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938437) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug378, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef 5, i32 noundef %call93) #5
  br label %do.body97

do.body97:                                        ; preds = %if.then90, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then109)) #5
          to label %do.body116 [label %if.then109], !srcloc !195

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs111 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %12 = ptrtoint ptr %read_mmd_regs111 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_mmd_regs111, align 4
  %call112 = tail call i32 %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938438) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug379, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef 6, i32 noundef %call112) #5
  br label %do.body116

do.body116:                                       ; preds = %if.then109, %do.body97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then128)) #5
          to label %do.body135 [label %if.then128], !srcloc !195

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs130 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %14 = ptrtoint ptr %read_mmd_regs130 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_mmd_regs130, align 4
  %call131 = tail call i32 %15(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200576) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug380, ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef %call131) #5
  br label %do.body135

do.body135:                                       ; preds = %if.then128, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then147)) #5
          to label %do.body154 [label %if.then147], !srcloc !195

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs149 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %16 = ptrtoint ptr %read_mmd_regs149 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_mmd_regs149, align 4
  %call150 = tail call i32 %17(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200577) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug381, ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef %call150) #5
  br label %do.body154

do.body154:                                       ; preds = %if.then147, %do.body135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then166)) #5
          to label %do.body173 [label %if.then166], !srcloc !195

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs168 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %18 = ptrtoint ptr %read_mmd_regs168 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_mmd_regs168, align 4
  %call169 = tail call i32 %19(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200592) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug382, ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 16, i32 noundef %call169) #5
  br label %do.body173

do.body173:                                       ; preds = %if.then166, %do.body154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then185)) #5
          to label %do.body192 [label %if.then185], !srcloc !195

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs187 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %20 = ptrtoint ptr %read_mmd_regs187 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_mmd_regs187, align 4
  %call188 = tail call i32 %21(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200593) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug383, ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef 17, i32 noundef %call188) #5
  br label %do.body192

do.body192:                                       ; preds = %if.then185, %do.body173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then204)) #5
          to label %do.body211 [label %if.then204], !srcloc !195

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs206 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %22 = ptrtoint ptr %read_mmd_regs206 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_mmd_regs206, align 4
  %call207 = tail call i32 %23(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200594) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug384, ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef 18, i32 noundef %call207) #5
  br label %do.body211

do.body211:                                       ; preds = %if.then204, %do.body192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then223)) #5
          to label %do.body230 [label %if.then223], !srcloc !195

if.then223:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #7
  %read_mmd_regs225 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %24 = ptrtoint ptr %read_mmd_regs225 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_mmd_regs225, align 4
  %call226 = tail call i32 %25(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200624) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug385, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef 48, i32 noundef %call226) #5
  br label %do.body230

do.body230:                                       ; preds = %if.then223, %do.body211
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dump_phy_registers, %if.then242)) #5
          to label %do.end245 [label %if.then242], !srcloc !195

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug386, ptr noundef %1, ptr noundef nonnull @.str.52) #5
  br label %do.end245

do.end245:                                        ; preds = %if.then242, %do.body230
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an73_state_machine(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 153
  %an_int = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 149
  %0 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %an_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %next_int.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

next_int.preheader:                               ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %an_supported52 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 158
  %parallel_detect54 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 159
  %cur_mode.i.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %kx_state11.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 155
  %advertising13.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %kr_state19.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 154
  %switch_mode.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 10
  %write_mmd_regs.i206 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %an_result = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 152
  %an_start = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 161
  %an_post = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 17
  br label %next_int

next_int:                                         ; preds = %if.end137.next_int_crit_edge, %next_int.preheader
  %2 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %an_int, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %next_int
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %an_state, align 4
  %and6 = and i32 %3, -5
  %5 = ptrtoint ptr %an_int to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and6, ptr %an_int, align 4
  br label %again.preheader

if.else:                                          ; preds = %next_int
  %and8 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %an_state, align 4
  %and13 = and i32 %3, -3
  %7 = ptrtoint ptr %an_int to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and13, ptr %an_int, align 4
  br label %again.preheader

if.else14:                                        ; preds = %if.else
  %and16 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else22, label %if.then18

if.then18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %an_state, align 4
  %and21 = and i32 %3, -2
  %9 = ptrtoint ptr %an_int to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and21, ptr %an_int, align 4
  br label %again.preheader

if.else22:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %an_state, align 4
  br label %again.preheader

again.preheader:                                  ; preds = %if.else22, %if.then18, %if.then10, %if.then3
  br label %again

again:                                            ; preds = %if.end133.again_crit_edge, %again.preheader
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and27 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %again.do.end40_crit_edge, label %do.body30

again.do.end40_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

do.body30:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_state_machine.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an73_state_machine, %if.then34)) #5
          to label %do.end40 [label %if.then34], !srcloc !195

if.then34:                                        ; preds = %do.body30
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  %15 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %an_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %17 = icmp ult i32 %16, 6
  br i1 %17, label %switch.lookup, label %if.then34.xgbe_state_as_string.exit_crit_edge

if.then34.xgbe_state_as_string.exit_crit_edge:    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_state_as_string.exit

switch.lookup:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.xgbe_an73_state_machine, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %xgbe_state_as_string.exit

xgbe_state_as_string.exit:                        ; preds = %switch.lookup, %if.then34.xgbe_state_as_string.exit_crit_edge
  %retval.0.i204 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %if.then34.xgbe_state_as_string.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_state_machine.__UNIQUE_ID_ddebug362, ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef nonnull %retval.0.i204) #5
  br label %do.end40

do.end40:                                         ; preds = %xgbe_state_as_string.exit, %do.body30, %again.do.end40_crit_edge
  %19 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %an_state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb43
    i32 2, label %sw.bb47
    i32 3, label %sw.bb51
    i32 4, label %do.end40.sw.epilog_crit_edge
  ]

do.end40.sw.epilog_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %an_supported52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %an_supported52, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call fastcc i32 @xgbe_an73_page_received(ptr noundef %pdata)
  %23 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call44, ptr %an_state, align 4
  %24 = ptrtoint ptr %an_supported52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %an_supported52, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %an_supported52, align 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end40
  %26 = ptrtoint ptr %an_supported52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %an_supported52, align 8
  %27 = ptrtoint ptr %parallel_detect54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %parallel_detect54, align 4
  %28 = ptrtoint ptr %cur_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_mode.i.i.i, align 4
  %call.i.i.i = tail call i32 %29(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb47
  %30 = ptrtoint ptr %kr_state19.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %kr_state19.i, align 8
  %31 = ptrtoint ptr %advertising13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %advertising13.i, align 4
  %33 = and i32 %32, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %34 = ptrtoint ptr %advertising13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %advertising13.i, align 4
  %36 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.i = icmp eq i32 %36, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.xgbe_an73_incompat_link.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i.xgbe_an73_incompat_link.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an73_incompat_link.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %37 = ptrtoint ptr %kx_state11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %kx_state11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.end.i.xgbe_an73_incompat_link.exit_crit_edge

if.end.i.xgbe_an73_incompat_link.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an73_incompat_link.exit

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.else.i:                                        ; preds = %sw.bb47
  %39 = ptrtoint ptr %kx_state11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %kx_state11.i, align 4
  %40 = ptrtoint ptr %advertising13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %advertising13.i, align 4
  %42 = and i32 %41, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool16.not.i = icmp eq i32 %42, 0
  br i1 %tobool16.not.i, label %if.else.i.xgbe_an73_incompat_link.exit_crit_edge, label %if.end18.i

if.else.i.xgbe_an73_incompat_link.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an73_incompat_link.exit

if.end18.i:                                       ; preds = %if.else.i
  %43 = ptrtoint ptr %kr_state19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %kr_state19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp20.not.i = icmp eq i32 %44, 0
  br i1 %cmp20.not.i, label %if.end18.i.if.end23.i_crit_edge, label %if.end18.i.xgbe_an73_incompat_link.exit_crit_edge

if.end18.i.xgbe_an73_incompat_link.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an73_incompat_link.exit

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end18.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call fastcc void @xgbe_an_disable(ptr noundef %pdata) #5
  %45 = ptrtoint ptr %switch_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %switch_mode.i.i, align 4
  %call.i.i = tail call i32 %46(ptr noundef %pdata) #5
  tail call fastcc void @xgbe_change_mode(ptr noundef %pdata, i32 noundef %call.i.i) #5
  tail call fastcc void @xgbe_an_restart(ptr noundef %pdata) #5
  br label %xgbe_an73_incompat_link.exit

xgbe_an73_incompat_link.exit:                     ; preds = %if.end23.i, %if.end18.i.xgbe_an73_incompat_link.exit_crit_edge, %if.else.i.xgbe_an73_incompat_link.exit_crit_edge, %if.end.i.xgbe_an73_incompat_link.exit_crit_edge, %land.lhs.true.i.xgbe_an73_incompat_link.exit_crit_edge
  %retval.0.i205 = phi i32 [ 2, %if.end23.i ], [ 4, %land.lhs.true.i.xgbe_an73_incompat_link.exit_crit_edge ], [ 4, %if.end.i.xgbe_an73_incompat_link.exit_crit_edge ], [ 4, %if.else.i.xgbe_an73_incompat_link.exit_crit_edge ], [ 4, %if.end18.i.xgbe_an73_incompat_link.exit_crit_edge ]
  %47 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i205, ptr %an_state, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %do.end40
  %48 = ptrtoint ptr %an_supported52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %an_supported52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool53.not = icmp eq i32 %49, 0
  %cond = zext i1 %tobool53.not to i32
  %50 = ptrtoint ptr %parallel_detect54 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond, ptr %parallel_detect54, align 4
  %51 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable, align 4
  %and57 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %sw.bb51.sw.epilog_crit_edge, label %do.body60

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body60:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_state_machine.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an73_state_machine, %if.then72)) #5
          to label %sw.epilog [label %if.then72], !srcloc !195

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdata, align 8
  %55 = ptrtoint ptr %an_supported52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %an_supported52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool75.not = icmp eq i32 %56, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_state_machine.__UNIQUE_ID_ddebug363, ptr noundef %54, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond76) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 5, ptr %an_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then72, %do.body60, %sw.bb51.sw.epilog_crit_edge, %xgbe_an73_incompat_link.exit, %sw.bb43, %sw.bb, %do.end40.sw.epilog_crit_edge
  %58 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %an_state, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %59, label %sw.epilog.if.end94_crit_edge [
    i32 4, label %sw.epilog.if.end94thread-pre-split_crit_edge
    i32 5, label %if.then90
  ]

sw.epilog.if.end94thread-pre-split_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94thread-pre-split

sw.epilog.if.end94_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then90:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %62, ptr noundef nonnull @.str.12, i32 noundef %20) #8
  br label %if.end94thread-pre-split

if.end94thread-pre-split:                         ; preds = %if.then90, %sw.epilog.if.end94thread-pre-split_crit_edge
  %63 = ptrtoint ptr %an_int to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %an_int, align 4
  %64 = ptrtoint ptr %write_mmd_regs.i206 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_mmd_regs.i206, align 4
  tail call void %65(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233346, i32 noundef 0) #5
  %66 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr = load i32, ptr %an_state, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end94thread-pre-split, %sw.epilog.if.end94_crit_edge
  %67 = phi i32 [ %.pr, %if.end94thread-pre-split ], [ %59, %sw.epilog.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp96 = icmp ugt i32 %67, 2
  br i1 %cmp96, label %if.then97, label %if.end94.if.end133_crit_edge

if.end94.if.end133_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then97:                                        ; preds = %if.end94
  %68 = ptrtoint ptr %an_result to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %an_result, align 8
  %69 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %an_state, align 4
  %70 = ptrtoint ptr %kr_state19.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %kr_state19.i, align 8
  %71 = ptrtoint ptr %kx_state11.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %kx_state11.i, align 4
  %72 = ptrtoint ptr %an_start to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %an_start, align 4
  %73 = ptrtoint ptr %an_post to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %an_post, align 4
  %tobool100.not = icmp eq ptr %74, null
  br i1 %tobool100.not, label %if.then97.do.body106_crit_edge, label %if.then101

if.then97.do.body106_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body106

if.then101:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %74(ptr noundef %pdata) #5
  br label %do.body106

do.body106:                                       ; preds = %if.then101, %if.then97.do.body106_crit_edge
  %75 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable, align 4
  %and108 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body106.if.end133_crit_edge, label %do.body111

do.body106.if.end133_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

do.body111:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_state_machine.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an73_state_machine, %if.then123)) #5
          to label %if.end133 [label %if.then123], !srcloc !195

if.then123:                                       ; preds = %do.body111
  %77 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdata, align 8
  %79 = ptrtoint ptr %an_result to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %an_result, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %80)
  %81 = icmp ult i32 %80, 6
  br i1 %81, label %switch.lookup219, label %if.then123.xgbe_state_as_string.exit214_crit_edge

if.then123.xgbe_state_as_string.exit214_crit_edge: ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_state_as_string.exit214

switch.lookup219:                                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep220 = getelementptr inbounds [6 x ptr], ptr @switch.table.xgbe_an73_state_machine.88, i32 0, i32 %80
  %82 = ptrtoint ptr %switch.gep220 to i32
  call void @__asan_load4_noabort(i32 %82)
  %switch.load221 = load ptr, ptr %switch.gep220, align 4
  br label %xgbe_state_as_string.exit214

xgbe_state_as_string.exit214:                     ; preds = %switch.lookup219, %if.then123.xgbe_state_as_string.exit214_crit_edge
  %retval.0.i213 = phi ptr [ %switch.load221, %switch.lookup219 ], [ @.str.20, %if.then123.xgbe_state_as_string.exit214_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_state_machine.__UNIQUE_ID_ddebug364, ptr noundef %78, ptr noundef nonnull @.str.13, ptr noundef nonnull %retval.0.i213) #5
  br label %if.end133

if.end133:                                        ; preds = %xgbe_state_as_string.exit214, %do.body111, %do.body106.if.end133_crit_edge, %if.end94.if.end133_crit_edge
  %83 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %an_state, align 4
  %cmp135.not = icmp eq i32 %20, %84
  br i1 %cmp135.not, label %if.end137, label %if.end133.again_crit_edge

if.end133.again_crit_edge:                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %again

if.end137:                                        ; preds = %if.end133
  %85 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %an_int, align 4
  %tobool139.not = icmp eq i32 %86, 0
  br i1 %tobool139.not, label %if.end141, label %if.end137.next_int_crit_edge

if.end137.next_int_crit_edge:                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %next_int

if.end141:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %write_mmd_regs.i206 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_mmd_regs.i206, align 4
  tail call void %88(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233345, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an37_state_machine(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 153
  %an_int = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 149
  %0 = ptrtoint ptr %an_int to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %an_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %an_state, align 4
  %and6 = and i32 %1, -2
  %3 = ptrtoint ptr %an_int to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and6, ptr %an_int, align 4
  %an_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %4 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %an_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %land.lhs.true, label %if.then3.do.body_crit_edge

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %if.then3
  %an_status = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 150
  %6 = ptrtoint ptr %an_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %an_status, align 8
  %and7 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %an_state, align 4
  br label %do.body

do.body:                                          ; preds = %if.then9, %land.lhs.true.do.body_crit_edge, %if.then3.do.body_crit_edge, %if.end.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and13 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.do.end26_crit_edge, label %do.body16

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an37_state_machine.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an37_state_machine, %if.then20)) #5
          to label %do.end26 [label %if.then20], !srcloc !195

if.then20:                                        ; preds = %do.body16
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  %13 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %an_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %15 = icmp ult i32 %14, 6
  br i1 %15, label %switch.lookup, label %if.then20.xgbe_state_as_string.exit_crit_edge

if.then20.xgbe_state_as_string.exit_crit_edge:    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_state_as_string.exit

switch.lookup:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.xgbe_an37_state_machine, i32 0, i32 %14
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %xgbe_state_as_string.exit

xgbe_state_as_string.exit:                        ; preds = %switch.lookup, %if.then20.xgbe_state_as_string.exit_crit_edge
  %retval.0.i138 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %if.then20.xgbe_state_as_string.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an37_state_machine.__UNIQUE_ID_ddebug359, ptr noundef %12, ptr noundef nonnull @.str.36, ptr noundef nonnull %retval.0.i138) #5
  br label %do.end26

do.end26:                                         ; preds = %xgbe_state_as_string.exit, %do.body16, %do.body.do.end26_crit_edge
  %17 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %an_state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %18, label %sw.default [
    i32 0, label %do.end26.sw.epilog_crit_edge
    i32 3, label %do.body29
    i32 4, label %do.end26.sw.epilog_crit_edge156
  ]

do.end26.sw.epilog_crit_edge156:                  ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end26.sw.epilog_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body29:                                        ; preds = %do.end26
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and31 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.sw.epilog_crit_edge, label %do.body34

do.body29.sw.epilog_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an37_state_machine.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an37_state_machine, %if.then46)) #5
          to label %sw.epilog [label %if.then46], !srcloc !195

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an37_state_machine.__UNIQUE_ID_ddebug360, ptr noundef %23, ptr noundef nonnull @.str.37) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %an_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then46, %do.body34, %do.body29.sw.epilog_crit_edge, %do.end26.sw.epilog_crit_edge, %do.end26.sw.epilog_crit_edge156
  %25 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %an_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp56 = icmp eq i32 %26, 5
  br i1 %cmp56, label %if.then57, label %sw.epilog.if.end60_crit_edge

sw.epilog.if.end60_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then57:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.12, i32 noundef %18) #8
  %29 = ptrtoint ptr %an_int to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %an_int, align 4
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %30 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %31(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806210) #5
  %and.i = and i32 %call.i, -2
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %32 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %33(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806210, i32 noundef %and.i) #5
  %34 = ptrtoint ptr %an_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %an_state, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %sw.epilog.if.end60_crit_edge
  %35 = phi i32 [ %.pr, %if.then57 ], [ %26, %sw.epilog.if.end60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp62 = icmp ugt i32 %35, 2
  br i1 %cmp62, label %if.then63, label %if.end60.if.end99_crit_edge

if.end60.if.end99_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then63:                                        ; preds = %if.end60
  %an_result = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 152
  %36 = ptrtoint ptr %an_result to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %an_result, align 8
  %37 = ptrtoint ptr %an_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %an_state, align 4
  %an_post = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 17
  %38 = ptrtoint ptr %an_post to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %an_post, align 4
  %tobool66.not = icmp eq ptr %39, null
  br i1 %tobool66.not, label %if.then63.do.body72_crit_edge, label %if.then67

if.then63.do.body72_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body72

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %39(ptr noundef %pdata) #5
  br label %do.body72

do.body72:                                        ; preds = %if.then67, %if.then63.do.body72_crit_edge
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 4
  %and74 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body72.if.end99_crit_edge, label %do.body77

do.body72.if.end99_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

do.body77:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an37_state_machine.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an37_state_machine, %if.then89)) #5
          to label %if.end99 [label %if.then89], !srcloc !195

if.then89:                                        ; preds = %do.body77
  %42 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata, align 8
  %44 = ptrtoint ptr %an_result to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %an_result, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %45)
  %46 = icmp ult i32 %45, 6
  br i1 %46, label %switch.lookup153, label %if.then89.xgbe_state_as_string.exit146_crit_edge

if.then89.xgbe_state_as_string.exit146_crit_edge: ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_state_as_string.exit146

switch.lookup153:                                 ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep154 = getelementptr inbounds [6 x ptr], ptr @switch.table.xgbe_an37_state_machine.89, i32 0, i32 %45
  %47 = ptrtoint ptr %switch.gep154 to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load155 = load ptr, ptr %switch.gep154, align 4
  br label %xgbe_state_as_string.exit146

xgbe_state_as_string.exit146:                     ; preds = %switch.lookup153, %if.then89.xgbe_state_as_string.exit146_crit_edge
  %retval.0.i145 = phi ptr [ %switch.load155, %switch.lookup153 ], [ @.str.20, %if.then89.xgbe_state_as_string.exit146_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an37_state_machine.__UNIQUE_ID_ddebug361, ptr noundef %43, ptr noundef nonnull @.str.38, ptr noundef nonnull %retval.0.i145) #5
  br label %if.end99

if.end99:                                         ; preds = %xgbe_state_as_string.exit146, %do.body77, %do.body72.if.end99_crit_edge, %if.end60.if.end99_crit_edge
  %read_mmd_regs.i147 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %48 = ptrtoint ptr %read_mmd_regs.i147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_mmd_regs.i147, align 4
  %call.i148 = tail call i32 %49(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200) #5
  %or.i = or i32 %call.i148, 4096
  %write_mmd_regs.i149 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %50 = ptrtoint ptr %write_mmd_regs.i149 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_mmd_regs.i149, align 4
  tail call void %51(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200, i32 noundef %or.i) #5
  %52 = ptrtoint ptr %read_mmd_regs.i147 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_mmd_regs.i147, align 4
  %call4.i = tail call i32 %53(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209) #5
  %or5.i = or i32 %call4.i, 1
  %54 = ptrtoint ptr %write_mmd_regs.i149 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_mmd_regs.i149, align 4
  tail call void %55(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209, i32 noundef %or5.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_an73_page_received(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_start = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 161
  %0 = ptrtoint ptr %an_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %an_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %an_start to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %an_start, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %add = add i32 %1, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then3, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then3:                                         ; preds = %if.else
  %kr_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 154
  %5 = ptrtoint ptr %kr_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %kr_state, align 8
  %kx_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 155
  %6 = ptrtoint ptr %kx_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %kx_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %an_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %an_start, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then3.if.end17_crit_edge, label %do.body7

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.body7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_page_received.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an73_page_received, %if.then12)) #5
          to label %if.end17 [label %if.then12], !srcloc !195

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_page_received.__UNIQUE_ID_ddebug357, ptr noundef %12, ptr noundef nonnull @.str.22) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %do.body7, %if.then3.if.end17_crit_edge, %if.else.if.end17_crit_edge, %if.then
  %cur_mode.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %13 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_mode.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 2
  %kr_state19 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 154
  %kx_state20 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 155
  %cond = select i1 %cmp.i, ptr %kr_state19, ptr %kx_state20
  %15 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cond, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %16, label %if.end17.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end17
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %18 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %19(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200596) #5
  %20 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_mode.i.i, align 4
  %call.i.i.i = tail call i32 %21(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 2
  %cond.i = select i1 %cmp.i.i, i32 128, i32 32
  %and.i = and i32 %cond.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %22 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_mmd_regs.i, align 4
  %call4.i = tail call i32 %23(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200592) #5
  %24 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_mmd_regs.i, align 4
  %call7.i = tail call i32 %25(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200595) #5
  %and8.i = and i32 %call4.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and10.i = and i32 %call7.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %cond, align 4
  %write_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %27 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %28(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200600, i32 noundef 0) #5
  %29 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %30(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200599, i32 noundef 0) #5
  %31 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %32(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200598, i32 noundef 8193) #5
  br label %sw.epilog

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xgbe_an73_tx_training(ptr noundef %pdata, ptr noundef %cond) #5
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end17
  %read_mmd_regs.i39 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %33 = ptrtoint ptr %read_mmd_regs.i39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_mmd_regs.i39, align 4
  %call.i40 = tail call i32 %34(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200598) #5
  %35 = ptrtoint ptr %read_mmd_regs.i39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_mmd_regs.i39, align 4
  %call3.i = tail call i32 %36(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200601) #5
  %and.i41 = and i32 %call.i40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i42 = icmp eq i32 %and.i41, 0
  %and4.i = and i32 %call3.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i43 = select i1 %tobool.not.i42, i1 %tobool5.not.i, i1 false
  br i1 %or.cond.i43, label %cond.false.i46, label %cond.true.i45

cond.true.i45:                                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %cond, align 4
  %write_mmd_regs.i.i44 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %38 = ptrtoint ptr %write_mmd_regs.i.i44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_mmd_regs.i.i44, align 4
  tail call void %39(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200600, i32 noundef 0) #5
  %40 = ptrtoint ptr %write_mmd_regs.i.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_mmd_regs.i.i44, align 4
  tail call void %41(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200599, i32 noundef 0) #5
  %42 = ptrtoint ptr %write_mmd_regs.i.i44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_mmd_regs.i.i44, align 4
  tail call void %43(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200598, i32 noundef 8193) #5
  br label %sw.epilog

cond.false.i46:                                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xgbe_an73_tx_training(ptr noundef %pdata, ptr noundef %cond) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false.i46, %cond.true.i45, %cond.false.i, %cond.true.i, %sw.bb.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 5, %if.end17.sw.epilog_crit_edge ], [ 2, %sw.bb.sw.epilog_crit_edge ], [ 1, %cond.false.i ], [ 1, %cond.true.i ], [ 1, %cond.true.i45 ], [ 1, %cond.false.i46 ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an73_tx_training(ptr noundef %pdata, ptr nocapture noundef writeonly %state) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %state, align 4
  %cur_mode.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %1 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_mode.i.i, align 4
  %call.i.i = tail call i32 %2(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %3 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_mmd_regs, align 4
  %call1 = tail call i32 %4(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200594) #5
  %5 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_mmd_regs, align 4
  %call4 = tail call i32 %6(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200597) #5
  %7 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_mmd_regs, align 4
  %call7 = tail call i32 %8(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807531) #5
  %and = and i32 %call7, -4
  %and8 = and i32 %call1, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %and9 = and i32 %call4, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fec_ability = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 160
  %9 = ptrtoint ptr %fec_ability to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fec_ability, align 8
  %or = or i32 %10, %and
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %reg.0 = phi i32 [ %or, %if.then11 ], [ %and, %if.end.if.end12_crit_edge ]
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %11 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %12(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807531, i32 noundef %reg.0) #5
  %kr_training_pre = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 18
  %13 = ptrtoint ptr %kr_training_pre to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kr_training_pre, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %14(ptr noundef %pdata) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  %15 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_mmd_regs, align 4
  %call22 = tail call i32 %16(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510) #5
  %or24 = or i32 %call22, 3
  %17 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %18(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510, i32 noundef %or24) #5
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and27 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end19.do.end39_crit_edge, label %do.body30

if.end19.do.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.body30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_tx_training.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an73_tx_training, %if.then35)) #5
          to label %do.end39 [label %if.then35], !srcloc !195

if.then35:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_tx_training.__UNIQUE_ID_ddebug356, ptr noundef %22, ptr noundef nonnull @.str.24) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body30, %if.end19.do.end39_crit_edge
  %kr_training_post = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 19
  %23 = ptrtoint ptr %kr_training_post to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kr_training_post, align 4
  %tobool42.not = icmp eq ptr %24, null
  br i1 %tobool42.not, label %do.end39.cleanup_crit_edge, label %if.then43

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %24(ptr noundef %pdata) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an_disable(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_post = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 17
  %0 = ptrtoint ptr %an_post to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %an_post, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %pdata) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %an_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %2 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %an_mode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge10
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 3, label %if.end.sw.bb4_crit_edge11
  ]

if.end.sw.bb4_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb_crit_edge10:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge10
  %read_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %5 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510) #5
  %and.i.i = and i32 %call.i.i, -3
  %write_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %7 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %8(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510, i32 noundef %and.i.i) #5
  %9 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call5.i.i = tail call i32 %10(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200576) #5
  %and6.i.i = and i32 %call5.i.i, -4097
  %11 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %12(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200576, i32 noundef %and6.i.i) #5
  %13 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %14(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233345, i32 noundef 0) #5
  %an_start.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 161
  %15 = ptrtoint ptr %an_start.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %an_start.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %do.body1.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_disable.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an_disable, %if.then5.i)) #5
          to label %sw.epilog [label %if.then5.i], !srcloc !195

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_disable.__UNIQUE_ID_ddebug355, ptr noundef %19, ptr noundef nonnull @.str.26) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge11
  tail call fastcc void @xgbe_an37_disable(ptr noundef %pdata)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then5.i, %do.body1.i, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an_restart(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_pre = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 16
  %0 = ptrtoint ptr %an_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %an_pre, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %pdata) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %an_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %2 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %an_mode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge10
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 3, label %if.end.sw.bb4_crit_edge11
  ]

if.end.sw.bb4_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb_crit_edge10:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge10
  %write_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %5 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %6(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233345, i32 noundef 7) #5
  %read_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %7 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510) #5
  %and.i.i = and i32 %call.i.i, -3
  %9 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %10(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510, i32 noundef %and.i.i) #5
  %11 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call5.i.i = tail call i32 %12(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200576) #5
  %or9.i.i = or i32 %call5.i.i, 4608
  %13 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %14(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200576, i32 noundef %or9.i.i) #5
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %15 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %do.body1.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_restart.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an_restart, %if.then5.i)) #5
          to label %sw.epilog [label %if.then5.i], !srcloc !195

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_restart.__UNIQUE_ID_ddebug354, ptr noundef %18, ptr noundef nonnull @.str.32) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge11
  tail call fastcc void @xgbe_an37_restart(ptr noundef %pdata)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then5.i, %do.body1.i, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an37_disable(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %0 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %1(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773440) #5
  %and.i = and i32 %call.i, -4097
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %2 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773440, i32 noundef %and.i) #5
  %4 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i12 = tail call i32 %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209) #5
  %and.i13 = and i32 %call.i12, -2
  %6 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209, i32 noundef %and.i13) #5
  %8 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_mmd_regs.i, align 4
  %call4.i = tail call i32 %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200) #5
  %and5.i = and i32 %call4.i, -4097
  %10 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200, i32 noundef %and5.i) #5
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an37_disable.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an37_disable, %if.then5)) #5
          to label %do.end7 [label %if.then5], !srcloc !195

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an37_disable.__UNIQUE_ID_ddebug353, ptr noundef %15, ptr noundef nonnull @.str.28) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_change_mode(ptr noundef %pdata, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %mode, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 3, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %1 = ptrtoint ptr %set_speed.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_speed.i, align 4
  %call.i = tail call i32 %2(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %3 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_mode.i, align 4
  tail call void %4(ptr noundef %pdata, i32 noundef 0) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i23 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %5 = ptrtoint ptr %set_speed.i23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_speed.i23, align 4
  %call.i24 = tail call i32 %6(ptr noundef %pdata, i32 noundef 2500) #5
  %set_mode.i25 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %7 = ptrtoint ptr %set_mode.i25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_mode.i25, align 4
  tail call void %8(ptr noundef %pdata, i32 noundef 1) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i26 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %9 = ptrtoint ptr %set_speed.i26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_speed.i26, align 4
  %call.i27 = tail call i32 %10(ptr noundef %pdata, i32 noundef 10000) #5
  %set_mode.i28 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %11 = ptrtoint ptr %set_mode.i28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_mode.i28, align 4
  tail call void %12(ptr noundef %pdata, i32 noundef 2) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i29 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %13 = ptrtoint ptr %set_speed.i29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_speed.i29, align 4
  %call.i30 = tail call i32 %14(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i31 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %15 = ptrtoint ptr %set_mode.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_mode.i31, align 4
  tail call void %16(ptr noundef %pdata, i32 noundef 4) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i32 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %17 = ptrtoint ptr %set_speed.i32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_speed.i32, align 4
  %call.i33 = tail call i32 %18(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i34 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %19 = ptrtoint ptr %set_mode.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_mode.i34, align 4
  tail call void %20(ptr noundef %pdata, i32 noundef 5) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i35 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %21 = ptrtoint ptr %set_speed.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_speed.i35, align 4
  %call.i36 = tail call i32 %22(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i37 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %23 = ptrtoint ptr %set_mode.i37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_mode.i37, align 4
  tail call void %24(ptr noundef %pdata, i32 noundef 3) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %kr_redrv.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 144
  %25 = ptrtoint ptr %kr_redrv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %kr_redrv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %set_speed.i38 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %27 = ptrtoint ptr %set_speed.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_speed.i38, align 4
  %call.i39 = tail call i32 %28(ptr noundef %pdata, i32 noundef 10000) #5
  %set_mode.i40 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %29 = ptrtoint ptr %set_mode.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mode.i40, align 4
  %..i = select i1 %tobool.not.i, i32 6, i32 2
  tail call void %30(ptr noundef %pdata, i32 noundef %..i) #5
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.body7

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_change_mode.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_change_mode, %if.then11)) #5
          to label %sw.epilog [label %if.then11], !srcloc !195

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_change_mode.__UNIQUE_ID_ddebug351, ptr noundef %34, ptr noundef nonnull @.str.30, i32 noundef %mode) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %do.body7, %do.body.sw.epilog_crit_edge, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an37_restart(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %0 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %1(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200) #5
  %or.i = or i32 %call.i, 4096
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %2 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971200, i32 noundef %or.i) #5
  %4 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_mmd_regs.i, align 4
  %call4.i = tail call i32 %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209) #5
  %or5.i = or i32 %call4.i, 1
  %6 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209, i32 noundef %or5.i) #5
  %8 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i12 = tail call i32 %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773440) #5
  %or4.i = or i32 %call.i12, 4608
  %10 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773440, i32 noundef %or4.i) #5
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an37_restart.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an37_restart, %if.then5)) #5
          to label %do.end7 [label %if.then5], !srcloc !195

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an37_restart.__UNIQUE_ID_ddebug352, ptr noundef %15, ptr noundef nonnull @.str.34) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an_disable_all(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %0 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510) #5
  %and.i.i = and i32 %call.i.i, -3
  %write_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %2 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073807510, i32 noundef %and.i.i) #5
  %4 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call5.i.i = tail call i32 %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200576) #5
  %and6.i.i = and i32 %call5.i.i, -4097
  %6 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %7(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200576, i32 noundef %and6.i.i) #5
  %8 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233345, i32 noundef 0) #5
  %an_start.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 161
  %10 = ptrtoint ptr %an_start.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %an_start.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %11 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.xgbe_an73_disable.exit_crit_edge, label %do.body1.i

entry.xgbe_an73_disable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an73_disable.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_disable.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an_disable_all, %if.then5.i)) #5
          to label %xgbe_an73_disable.exit [label %if.then5.i], !srcloc !195

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_disable.__UNIQUE_ID_ddebug355, ptr noundef %14, ptr noundef nonnull @.str.26) #5
  br label %xgbe_an73_disable.exit

xgbe_an73_disable.exit:                           ; preds = %if.then5.i, %do.body1.i, %entry.xgbe_an73_disable.exit_crit_edge
  tail call fastcc void @xgbe_an37_disable(ptr noundef %pdata)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_an_isr_task(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5628
  %msg_enable = getelementptr i8, ptr %t, i32 -816
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an_isr_task.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an_isr_task, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !195

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an_isr_task.__UNIQUE_ID_ddebug358, ptr noundef %3, ptr noundef nonnull @.str.57) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %an_mode = getelementptr i8, ptr %t, i32 -324
  %4 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %an_mode, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %5, label %do.end9.sw.epilog_crit_edge [
    i32 0, label %do.end9.sw.bb_crit_edge
    i32 1, label %do.end9.sw.bb_crit_edge29
    i32 2, label %do.end9.sw.bb10_crit_edge
    i32 3, label %do.end9.sw.bb10_crit_edge30
  ]

do.end9.sw.bb10_crit_edge30:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

do.end9.sw.bb10_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

do.end9.sw.bb_crit_edge29:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end9.sw.bb_crit_edge:                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end9.sw.epilog_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end9.sw.bb_crit_edge, %do.end9.sw.bb_crit_edge29
  %write_mmd_regs.i.i = getelementptr i8, ptr %t, i32 -5108
  %7 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %8(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1074233345, i32 noundef 0) #5
  %read_mmd_regs.i = getelementptr i8, ptr %t, i32 -5112
  %9 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %10(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1074233346) #5
  %an_int.i = getelementptr i8, ptr %t, i32 -504
  %11 = ptrtoint ptr %an_int.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %an_int.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %12 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs.i.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i = xor i32 %call.i, -1
  tail call void %13(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1074233346, i32 noundef %neg.i) #5
  %an_workqueue.i = getelementptr i8, ptr %t, i32 -556
  %14 = ptrtoint ptr %an_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %an_workqueue.i, align 8
  %an_irq_work.i = getelementptr i8, ptr %t, i32 -548
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %an_irq_work.i) #5
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  tail call void %13(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1074233345, i32 noundef 7) #5
  %vdata.i = getelementptr i8, ptr %t, i32 -5600
  %16 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdata.i, align 4
  %irq_reissue_support.i = getelementptr inbounds %struct.xgbe_version_data, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %irq_reissue_support.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_reissue_support.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.else.i.sw.epilog_crit_edge, label %if.then6.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %xprop_regs.i = getelementptr i8, ptr %t, i32 -5572
  %20 = ptrtoint ptr %xprop_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xprop_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #5, !srcloc !198
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end9.sw.bb10_crit_edge, %do.end9.sw.bb10_crit_edge30
  %read_mmd_regs.i.i = getelementptr i8, ptr %t, i32 -5112
  %22 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i.i15 = tail call i32 %23(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1075806209) #5
  %and.i.i = and i32 %call.i.i15, -2
  %write_mmd_regs.i.i16 = getelementptr i8, ptr %t, i32 -5108
  %24 = ptrtoint ptr %write_mmd_regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_mmd_regs.i.i16, align 4
  tail call void %25(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1075806209, i32 noundef %and.i.i) #5
  %26 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call4.i.i = tail call i32 %27(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1073971200) #5
  %and5.i.i = and i32 %call4.i.i, -4097
  %28 = ptrtoint ptr %write_mmd_regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_mmd_regs.i.i16, align 4
  tail call void %29(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1073971200, i32 noundef %and5.i.i) #5
  %30 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i17 = tail call i32 %31(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1075806210) #5
  %and.i = and i32 %call.i17, 1
  %an_int.i18 = getelementptr i8, ptr %t, i32 -504
  %32 = ptrtoint ptr %an_int.i18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i, ptr %an_int.i18, align 4
  %and1.i = and i32 %call.i17, -2
  %an_status.i = getelementptr i8, ptr %t, i32 -500
  %33 = ptrtoint ptr %an_status.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and1.i, ptr %an_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i19 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i19, label %if.else.i25, label %if.then.i22

if.then.i22:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %write_mmd_regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_mmd_regs.i.i16, align 4
  tail call void %35(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1075806210, i32 noundef %and1.i) #5
  %an_workqueue.i20 = getelementptr i8, ptr %t, i32 -556
  %36 = ptrtoint ptr %an_workqueue.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %an_workqueue.i20, align 8
  %an_irq_work.i21 = getelementptr i8, ptr %t, i32 -548
  %call.i24.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %an_irq_work.i21) #5
  br label %sw.epilog

if.else.i25:                                      ; preds = %sw.bb10
  %38 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i26.i = tail call i32 %39(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1073971200) #5
  %or.i.i = or i32 %call.i26.i, 4096
  %40 = ptrtoint ptr %write_mmd_regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_mmd_regs.i.i16, align 4
  tail call void %41(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1073971200, i32 noundef %or.i.i) #5
  %42 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call4.i28.i = tail call i32 %43(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1075806209) #5
  %or5.i.i = or i32 %call4.i28.i, 1
  %44 = ptrtoint ptr %write_mmd_regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_mmd_regs.i.i16, align 4
  tail call void %45(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1075806209, i32 noundef %or5.i.i) #5
  %vdata.i23 = getelementptr i8, ptr %t, i32 -5600
  %46 = ptrtoint ptr %vdata.i23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vdata.i23, align 4
  %irq_reissue_support.i24 = getelementptr inbounds %struct.xgbe_version_data, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %irq_reissue_support.i24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq_reissue_support.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool6.not.i = icmp eq i32 %49, 0
  br i1 %tobool6.not.i, label %if.else.i25.sw.epilog_crit_edge, label %if.then7.i

if.else.i25.sw.epilog_crit_edge:                  ; preds = %if.else.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.else.i25
  call void @__sanitizer_cov_trace_pc() #7
  %xprop_regs.i26 = getelementptr i8, ptr %t, i32 -5572
  %50 = ptrtoint ptr %xprop_regs.i26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xprop_regs.i26, align 8
  %add.ptr.i27 = getelementptr i8, ptr %51, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 134217728) #5, !srcloc !198
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7.i, %if.else.i25.sw.epilog_crit_edge, %if.then.i22, %if.then6.i, %if.else.i.sw.epilog_crit_edge, %if.then.i, %do.end9.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_an_isr(i32 noundef %irq, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_as_tasklet = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 168
  %0 = ptrtoint ptr %isr_as_tasklet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isr_as_tasklet, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 172, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %tasklet_an = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 172
  tail call void @__tasklet_schedule(ptr noundef %tasklet_an) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tasklet_an1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 172
  tail call void @xgbe_an_isr_task(ptr noundef %tasklet_an1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an73_init(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  %lks = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %lks) #5
  %0 = call ptr @memset(ptr %lks, i32 255, i32 88)
  %an_advertising = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 14
  %1 = ptrtoint ptr %an_advertising to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %an_advertising, align 4
  call void %2(ptr noundef %pdata, ptr noundef nonnull %lks) #5
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %3 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_mmd_regs, align 4
  %call = call i32 %4(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200594) #5
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lks, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %advertising, align 4
  %7 = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %and = and i32 %call, -49153
  %masksel = select i1 %tobool.not, i32 0, i32 49152
  %reg.0 = or i32 %masksel, %and
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %8 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_mmd_regs, align 4
  call void %9(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200594, i32 noundef %reg.0) #5
  %10 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs, align 4
  %call5 = call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200593) #5
  %12 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %advertising, align 4
  %and14 = and i32 %call5, -129
  %14 = lshr i32 %13, 12
  %15 = and i32 %14, 128
  %reg.1 = or i32 %15, %and14
  %16 = load volatile i32, ptr %advertising, align 4
  %17 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %entry.if.then26_crit_edge

entry.if.then26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

lor.lhs.false:                                    ; preds = %entry
  %18 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %advertising, align 4
  %20 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %if.else28, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %entry.if.then26_crit_edge
  %or27 = or i32 %reg.1, 32
  br label %if.end30

if.else28:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %and29 = and i32 %reg.1, -33
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %reg.2 = phi i32 [ %or27, %if.then26 ], [ %and29, %if.else28 ]
  %21 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_mmd_regs, align 4
  call void %22(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200593, i32 noundef %reg.2) #5
  %23 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_mmd_regs, align 4
  %call35 = call i32 %24(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200592) #5
  %25 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %advertising, align 4
  %and44 = and i32 %call35, -35841
  %27 = lshr i32 %26, 3
  %28 = and i32 %27, 1024
  %reg.3 = or i32 %28, %and44
  %29 = load volatile i32, ptr %advertising, align 4
  %30 = lshr i32 %29, 3
  %31 = and i32 %30, 2048
  %reg.4 = or i32 %reg.3, %31
  %32 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_mmd_regs, align 4
  call void %33(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200592, i32 noundef %reg.4) #5
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and59 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end30.do.end71_crit_edge, label %do.body62

if.end30.do.end71_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end71

do.body62:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an73_init.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an73_init, %if.then67)) #5
          to label %do.end71 [label %if.then67], !srcloc !195

if.then67:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an73_init.__UNIQUE_ID_ddebug366, ptr noundef %37, ptr noundef nonnull @.str.59) #5
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %do.body62, %if.end30.do.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %lks) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_an37_init(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  %lks = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %lks) #5
  %0 = call ptr @memset(ptr %lks, i32 255, i32 88)
  %an_advertising = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 14
  %1 = ptrtoint ptr %an_advertising to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %an_advertising, align 4
  call void %2(ptr noundef %pdata, ptr noundef nonnull %lks) #5
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %3 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_mmd_regs, align 4
  %call = call i32 %4(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773444) #5
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %lks, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %advertising, align 4
  %and = and i32 %call, -481
  %7 = lshr i32 %6, 5
  %8 = and i32 %7, 256
  %9 = load volatile i32, ptr %advertising, align 4
  %10 = lshr i32 %9, 7
  %11 = and i32 %10, 128
  %reg.0 = or i32 %and, %8
  %reg.1 = or i32 %reg.0, %11
  %and13 = or i32 %reg.1, 32
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %12 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs, align 4
  call void %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773444, i32 noundef %and13) #5
  %14 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_mmd_regs, align 4
  %call17 = call i32 %15(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209) #5
  %and19 = and i32 %call17, -15
  %an_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %16 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %an_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cond65 = icmp eq i32 %17, 3
  %or22 = or i32 %and19, 4
  %reg.2 = select i1 %cond65, i32 %or22, i32 %and19
  %or23 = or i32 %reg.2, 256
  %18 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_mmd_regs, align 4
  call void %19(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806209, i32 noundef %or23) #5
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and26 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %entry.do.end39_crit_edge, label %do.body29

entry.do.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.body29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_an37_init.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_an37_init, %if.then34)) #5
          to label %do.end39 [label %if.then34], !srcloc !195

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  %24 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %an_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp eq i32 %25, 2
  %cond = select i1 %cmp, ptr @.str.62, ptr @.str.63
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_an37_init.__UNIQUE_ID_ddebug365, ptr noundef %23, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body29, %entry.do.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %lks) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_adjust_link(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 5
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pause_autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %2 = ptrtoint ptr %pause_autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pause_autoneg, align 4
  %pause_autoneg2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 94
  %4 = ptrtoint ptr %pause_autoneg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pause_autoneg2, align 4
  %tx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 95
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_pause, align 8
  %tx_pause4 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 7
  %7 = ptrtoint ptr %tx_pause4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_pause4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_pause, align 8
  %config_tx_flow_control = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 39
  %10 = ptrtoint ptr %config_tx_flow_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config_tx_flow_control, align 4
  %call = tail call i32 %11(ptr noundef %pdata) #5
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %new_state.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.then.if.end_crit_edge ]
  %rx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 96
  %12 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pause, align 4
  %rx_pause10 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 8
  %14 = ptrtoint ptr %rx_pause10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_pause10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp11.not = icmp eq i32 %13, %15
  br i1 %cmp11.not, label %if.end.if.end18_crit_edge, label %if.then12

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rx_pause, align 4
  %config_rx_flow_control = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 40
  %17 = ptrtoint ptr %config_rx_flow_control to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config_rx_flow_control, align 4
  %call17 = tail call i32 %18(ptr noundef %pdata) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end.if.end18_crit_edge
  %new_state.1 = phi i32 [ 1, %if.then12 ], [ %new_state.0, %if.end.if.end18_crit_edge ]
  %phy_speed = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 137
  %19 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_speed, align 8
  %speed = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp20.not = icmp eq i32 %20, %22
  br i1 %cmp20.not, label %if.end25, label %if.end25.thread

if.end25:                                         ; preds = %if.end18
  %phy_link = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 136
  %23 = ptrtoint ptr %phy_link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy_link, align 4
  %25 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp28.not = icmp eq i32 %24, %26
  br i1 %cmp28.not, label %if.end40, label %if.end25.if.then29_crit_edge

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.end25.thread:                                  ; preds = %if.end18
  %27 = ptrtoint ptr %phy_speed to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %phy_speed, align 8
  %phy_link81 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 136
  %28 = ptrtoint ptr %phy_link81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_link81, align 4
  %30 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp28.not82 = icmp eq i32 %29, %31
  br i1 %cmp28.not82, label %if.end25.thread.land.lhs.true_crit_edge, label %if.end25.thread.if.then29_crit_edge

if.end25.thread.if.then29_crit_edge:              ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then29

if.end25.thread.land.lhs.true_crit_edge:          ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then29:                                        ; preds = %if.end25.thread.if.then29_crit_edge, %if.end25.if.then29_crit_edge
  %32 = phi i32 [ %31, %if.end25.thread.if.then29_crit_edge ], [ %26, %if.end25.if.then29_crit_edge ]
  %phy_link84 = phi ptr [ %phy_link81, %if.end25.thread.if.then29_crit_edge ], [ %phy_link, %if.end25.if.then29_crit_edge ]
  %33 = ptrtoint ptr %phy_link84 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %phy_link84, align 4
  br label %land.lhs.true

if.else:                                          ; preds = %entry
  %phy_link34 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 136
  %34 = ptrtoint ptr %phy_link34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phy_link34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool35.not = icmp eq i32 %35, 0
  br i1 %tobool35.not, label %if.else.if.end44_crit_edge, label %if.then36

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %phy_link34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %phy_link34, align 4
  %phy_speed38 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 137
  %37 = ptrtoint ptr %phy_speed38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %phy_speed38, align 8
  br label %land.lhs.true

if.end40:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state.1)
  %tobool41.not = icmp eq i32 %new_state.1, 0
  br i1 %tobool41.not, label %if.end40.if.end44_crit_edge, label %if.end40.land.lhs.true_crit_edge

if.end40.land.lhs.true_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end40.land.lhs.true_crit_edge, %if.then36, %if.then29, %if.end25.thread.land.lhs.true_crit_edge
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 4
  %and = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %land.lhs.true.if.end44_crit_edge, label %if.then43

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then43:                                        ; preds = %land.lhs.true
  %40 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then43
  %speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %44 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %45, label %sw.default.i.i [
    i32 100, label %if.then.i.xgbe_phy_speed_string.exit.i_crit_edge
    i32 1000, label %sw.bb1.i.i
    i32 2500, label %sw.bb2.i.i
    i32 10000, label %sw.bb3.i.i
    i32 -1, label %sw.bb4.i.i
  ]

if.then.i.xgbe_phy_speed_string.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_speed_string.exit.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_speed_string.exit.i

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_speed_string.exit.i

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_speed_string.exit.i

sw.bb4.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_speed_string.exit.i

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_speed_string.exit.i

xgbe_phy_speed_string.exit.i:                     ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.xgbe_phy_speed_string.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.75, %sw.default.i.i ], [ @.str.74, %sw.bb4.i.i ], [ @.str.73, %sw.bb3.i.i ], [ @.str.72, %sw.bb2.i.i ], [ @.str.71, %sw.bb1.i.i ], [ @.str.70, %if.then.i.xgbe_phy_speed_string.exit.i_crit_edge ]
  %duplex.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %47 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i = icmp eq i32 %48, 1
  %cond.i = select i1 %cmp.i, ptr @.str.67, ptr @.str.68
  %tx_pause.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 95
  %49 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_pause.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i, label %xgbe_phy_speed_string.exit.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

xgbe_phy_speed_string.exit.i.if.else.i.i_crit_edge: ; preds = %xgbe_phy_speed_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %xgbe_phy_speed_string.exit.i
  %rx_pause.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 96
  %51 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_pause.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool1.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.xgbe_phy_fc_string.exit.i_crit_edge

land.lhs.true.i.i.xgbe_phy_fc_string.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_phy_fc_string.exit.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %xgbe_phy_speed_string.exit.i.if.else.i.i_crit_edge
  %.str.79..str.78.i.i = phi ptr [ @.str.78, %land.lhs.true.i.i.if.else.i.i_crit_edge ], [ @.str.79, %xgbe_phy_speed_string.exit.i.if.else.i.i_crit_edge ]
  %rx_pause2.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 96
  %53 = ptrtoint ptr %rx_pause2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_pause2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i.i = icmp eq i32 %54, 0
  %spec.select.i.i = select i1 %tobool3.not.i.i, ptr %.str.79..str.78.i.i, ptr @.str.77
  br label %xgbe_phy_fc_string.exit.i

xgbe_phy_fc_string.exit.i:                        ; preds = %if.else.i.i, %land.lhs.true.i.i.xgbe_phy_fc_string.exit.i_crit_edge
  %retval.0.i10.i = phi ptr [ @.str.76, %land.lhs.true.i.i.xgbe_phy_fc_string.exit.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %43, ptr noundef nonnull @.str.66, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull %cond.i, ptr noundef %retval.0.i10.i) #8
  br label %if.end44

if.else.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %43, ptr noundef nonnull @.str.69) #8
  br label %if.end44

if.end44:                                         ; preds = %if.else.i, %xgbe_phy_fc_string.exit.i, %land.lhs.true.if.end44_crit_edge, %if.end40.if.end44_crit_edge, %if.else.if.end44_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xgbe_phy_config_aneg(ptr noundef %pdata, i1 noundef zeroext %set_mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %an_mutex = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 151
  tail call void @mutex_lock_nested(ptr noundef %an_mutex, i32 noundef 0) #5
  %dev_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dev_state) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %link_check = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 142
  %1 = ptrtoint ptr %link_check to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %link_check, align 8
  %an_config = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 13
  %2 = ptrtoint ptr %an_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %an_config, align 4
  %call = tail call i32 %3(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then87_crit_edge

entry.if.then87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then87

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  %msg_enable21 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %6 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable21, align 4
  %and22 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %cmp.not, label %do.body20, label %if.then1

if.then1:                                         ; preds = %if.end
  br i1 %tobool23.not, label %if.then1.do.end8.i_crit_edge, label %do.body1.i

if.then1.do.end8.i_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.body1.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_config_fixed.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__xgbe_phy_config_aneg, %if.then5.i)) #5
          to label %do.end8.i [label %if.then5.i], !srcloc !195

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_config_fixed.__UNIQUE_ID_ddebug367, ptr noundef %9, ptr noundef nonnull @.str.86) #5
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %if.then1.do.end8.i_crit_edge
  tail call fastcc void @xgbe_an_disable(ptr noundef %pdata) #5
  %get_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 9
  %10 = ptrtoint ptr %get_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_mode.i, align 4
  %speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i, align 4
  %call9.i = tail call i32 %11(ptr noundef %pdata, i32 noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call9.i)
  %switch.i = icmp ult i32 %call9.i, 7
  br i1 %switch.i, label %sw.epilog.i, label %do.end8.i.if.then87_crit_edge

do.end8.i.if.then87_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then87

sw.epilog.i:                                      ; preds = %do.end8.i
  %duplex.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %14 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 1
  br i1 %cmp.not.i, label %if.end13.i, label %sw.epilog.i.if.then87_crit_edge

sw.epilog.i.if.then87_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then87

if.end13.i:                                       ; preds = %sw.epilog.i
  %cur_mode.i.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %16 = ptrtoint ptr %cur_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_mode.i.i.i, align 4
  %call.i.i.i = tail call i32 %17(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %call9.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, %call9.i
  br i1 %cmp.i.i, label %if.end13.i.lor.lhs.false_crit_edge, label %if.end.i.i

if.end13.i.lor.lhs.false_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @xgbe_change_mode(ptr noundef %pdata, i32 noundef %call9.i) #5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.i.i, %if.end13.i.lor.lhs.false_crit_edge
  %kr_redrv = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 144
  %18 = ptrtoint ptr %kr_redrv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kr_redrv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.else89_crit_edge, label %do.body

lor.lhs.false.if.else89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else89

do.body:                                          ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable21, align 4
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.if.end45_crit_edge, label %do.body9

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__xgbe_phy_config_aneg, %if.then15)) #5
          to label %if.end45 [label %if.then15], !srcloc !195

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug368, ptr noundef %23, ptr noundef nonnull @.str.83) #5
  br label %if.end45

do.body20:                                        ; preds = %if.end
  br i1 %tobool23.not, label %do.body20.if.end45_crit_edge, label %do.body25

do.body20.if.end45_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.body25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__xgbe_phy_config_aneg, %if.then37)) #5
          to label %if.end45 [label %if.then37], !srcloc !195

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug369, ptr noundef %25, ptr noundef nonnull @.str.84) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %do.body25, %do.body20.if.end45_crit_edge, %if.then15, %do.body9, %do.body.if.end45_crit_edge
  %an_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 147
  %26 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %an_irq, align 4
  tail call void @disable_irq(i32 noundef %27) #5
  br i1 %set_mode, label %if.then47, label %if.end45.if.end84_crit_edge

if.end45.if.end84_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then47:                                        ; preds = %if.end45
  %use_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 7
  %28 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %use_mode.i, align 4
  %call.i = tail call zeroext i1 %29(ptr noundef %pdata, i32 noundef 2) #5
  br i1 %call.i, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.then47
  %cur_mode.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %30 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_mode.i.i, align 4
  %call.i.i = tail call i32 %31(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.i, label %if.then49.if.end84_crit_edge, label %if.end.i

if.then49.if.end84_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i26.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %32 = ptrtoint ptr %set_speed.i26.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_speed.i26.i, align 4
  %call.i27.i = tail call i32 %33(ptr noundef %pdata, i32 noundef 10000) #5
  %set_mode.i28.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %34 = ptrtoint ptr %set_mode.i28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_mode.i28.i, align 4
  tail call void %35(ptr noundef %pdata, i32 noundef 2) #5
  br label %if.end84

if.else51:                                        ; preds = %if.then47
  %36 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %use_mode.i, align 4
  %call.i140 = tail call zeroext i1 %37(ptr noundef %pdata, i32 noundef 1) #5
  br i1 %call.i140, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else51
  %cur_mode.i.i141 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %38 = ptrtoint ptr %cur_mode.i.i141 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_mode.i.i141, align 4
  %call.i.i142 = tail call i32 %39(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i142)
  %cmp.i143 = icmp eq i32 %call.i.i142, 1
  br i1 %cmp.i143, label %if.then53.if.end84_crit_edge, label %if.end.i144

if.then53.if.end84_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i144:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i23.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %40 = ptrtoint ptr %set_speed.i23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_speed.i23.i, align 4
  %call.i24.i = tail call i32 %41(ptr noundef %pdata, i32 noundef 2500) #5
  %set_mode.i25.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %42 = ptrtoint ptr %set_mode.i25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_mode.i25.i, align 4
  tail call void %43(ptr noundef %pdata, i32 noundef 1) #5
  br label %if.end84

if.else55:                                        ; preds = %if.else51
  %44 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %use_mode.i, align 4
  %call.i147 = tail call zeroext i1 %45(ptr noundef %pdata, i32 noundef 0) #5
  br i1 %call.i147, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.else55
  %cur_mode.i.i148 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %46 = ptrtoint ptr %cur_mode.i.i148 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_mode.i.i148, align 4
  %call.i.i149 = tail call i32 %47(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp.i150 = icmp eq i32 %call.i.i149, 0
  br i1 %cmp.i150, label %if.then57.if.end84_crit_edge, label %if.end.i151

if.then57.if.end84_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i151:                                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %48 = ptrtoint ptr %set_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_speed.i.i, align 4
  %call.i.i186 = tail call i32 %49(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %50 = ptrtoint ptr %set_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_mode.i.i, align 4
  tail call void %51(ptr noundef %pdata, i32 noundef 0) #5
  br label %if.end84

if.else59:                                        ; preds = %if.else55
  %52 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %use_mode.i, align 4
  %call.i154 = tail call zeroext i1 %53(ptr noundef %pdata, i32 noundef 6) #5
  br i1 %call.i154, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.else59
  %cur_mode.i.i155 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %54 = ptrtoint ptr %cur_mode.i.i155 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur_mode.i.i155, align 4
  %call.i.i156 = tail call i32 %55(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i156)
  %cmp.i157 = icmp eq i32 %call.i.i156, 6
  br i1 %cmp.i157, label %if.then61.if.end84_crit_edge, label %if.end.i158

if.then61.if.end84_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i158:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %kr_redrv.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 144
  %56 = ptrtoint ptr %kr_redrv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %kr_redrv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i = icmp eq i32 %57, 0
  %set_speed.i38.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %58 = ptrtoint ptr %set_speed.i38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_speed.i38.i, align 4
  %call.i39.i = tail call i32 %59(ptr noundef %pdata, i32 noundef 10000) #5
  %set_mode.i40.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %60 = ptrtoint ptr %set_mode.i40.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_mode.i40.i, align 4
  %..i.i = select i1 %tobool.not.i.i, i32 6, i32 2
  tail call void %61(ptr noundef %pdata, i32 noundef %..i.i) #5
  br label %if.end84

if.else63:                                        ; preds = %if.else59
  %62 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %use_mode.i, align 4
  %call.i161 = tail call zeroext i1 %63(ptr noundef %pdata, i32 noundef 3) #5
  br i1 %call.i161, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.else63
  %cur_mode.i.i162 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %64 = ptrtoint ptr %cur_mode.i.i162 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur_mode.i.i162, align 4
  %call.i.i163 = tail call i32 %65(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i163)
  %cmp.i164 = icmp eq i32 %call.i.i163, 3
  br i1 %cmp.i164, label %if.then65.if.end84_crit_edge, label %if.end.i165

if.then65.if.end84_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i165:                                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i35.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %66 = ptrtoint ptr %set_speed.i35.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_speed.i35.i, align 4
  %call.i36.i = tail call i32 %67(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i37.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %68 = ptrtoint ptr %set_mode.i37.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_mode.i37.i, align 4
  tail call void %69(ptr noundef %pdata, i32 noundef 3) #5
  br label %if.end84

if.else67:                                        ; preds = %if.else63
  %70 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %use_mode.i, align 4
  %call.i168 = tail call zeroext i1 %71(ptr noundef %pdata, i32 noundef 5) #5
  br i1 %call.i168, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.else67
  %cur_mode.i.i169 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %72 = ptrtoint ptr %cur_mode.i.i169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur_mode.i.i169, align 4
  %call.i.i170 = tail call i32 %73(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i170)
  %cmp.i171 = icmp eq i32 %call.i.i170, 5
  br i1 %cmp.i171, label %if.then69.if.end84_crit_edge, label %if.end.i172

if.then69.if.end84_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i172:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i32.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %74 = ptrtoint ptr %set_speed.i32.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_speed.i32.i, align 4
  %call.i33.i = tail call i32 %75(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i34.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %76 = ptrtoint ptr %set_mode.i34.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_mode.i34.i, align 4
  tail call void %77(ptr noundef %pdata, i32 noundef 5) #5
  br label %if.end84

if.else71:                                        ; preds = %if.else67
  %78 = ptrtoint ptr %use_mode.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %use_mode.i, align 4
  %call.i175 = tail call zeroext i1 %79(ptr noundef %pdata, i32 noundef 4) #5
  br i1 %call.i175, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.else71
  %cur_mode.i.i176 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 11
  %80 = ptrtoint ptr %cur_mode.i.i176 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cur_mode.i.i176, align 4
  %call.i.i177 = tail call i32 %81(ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i177)
  %cmp.i178 = icmp eq i32 %call.i.i177, 4
  br i1 %cmp.i178, label %if.then73.if.end84_crit_edge, label %if.end.i179

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.end.i179:                                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %set_speed.i29.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 12
  %82 = ptrtoint ptr %set_speed.i29.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_speed.i29.i, align 4
  %call.i30.i = tail call i32 %83(ptr noundef %pdata, i32 noundef 1000) #5
  %set_mode.i31.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 8
  %84 = ptrtoint ptr %set_mode.i31.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_mode.i31.i, align 4
  tail call void %85(ptr noundef %pdata, i32 noundef 4) #5
  br label %if.end84

if.else75:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %an_irq, align 4
  tail call void @enable_irq(i32 noundef %87) #5
  br label %if.then87

if.end84:                                         ; preds = %if.end.i179, %if.then73.if.end84_crit_edge, %if.end.i172, %if.then69.if.end84_crit_edge, %if.end.i165, %if.then65.if.end84_crit_edge, %if.end.i158, %if.then61.if.end84_crit_edge, %if.end.i151, %if.then57.if.end84_crit_edge, %if.end.i144, %if.then53.if.end84_crit_edge, %if.end.i, %if.then49.if.end84_crit_edge, %if.end45.if.end84_crit_edge
  tail call fastcc void @xgbe_an_disable_all(ptr noundef %pdata)
  %write_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %88 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %89(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074233346, i32 noundef 0) #5
  %read_mmd_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %90 = ptrtoint ptr %read_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_mmd_regs.i.i, align 4
  %call.i.i181 = tail call i32 %91(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806210) #5
  %and.i.i = and i32 %call.i.i181, -2
  %92 = ptrtoint ptr %write_mmd_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_mmd_regs.i.i, align 4
  tail call void %93(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075806210, i32 noundef %and.i.i) #5
  %an_result = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 152
  %94 = call ptr @memset(ptr %an_result, i32 0, i32 16)
  %95 = ptrtoint ptr %an_irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %an_irq, align 4
  tail call void @enable_irq(i32 noundef %96) #5
  %an_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 52, i32 11, i32 12
  %97 = ptrtoint ptr %an_mode.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %an_mode.i, align 4
  %call.i182 = tail call i32 %98(ptr noundef %pdata) #5
  %an_mode1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %99 = ptrtoint ptr %an_mode1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call.i182, ptr %an_mode1.i, align 8
  %100 = zext i32 %call.i182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call.i182, label %if.end84.xgbe_an_init.exit_crit_edge [
    i32 0, label %if.end84.sw.bb.i_crit_edge
    i32 1, label %if.end84.sw.bb.i_crit_edge202
    i32 2, label %if.end84.sw.bb3.i_crit_edge
    i32 3, label %if.end84.sw.bb3.i_crit_edge203
  ]

if.end84.sw.bb3.i_crit_edge203:                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end84.sw.bb3.i_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end84.sw.bb.i_crit_edge202:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end84.sw.bb.i_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end84.xgbe_an_init.exit_crit_edge:             ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_an_init.exit

sw.bb.i:                                          ; preds = %if.end84.sw.bb.i_crit_edge, %if.end84.sw.bb.i_crit_edge202
  tail call fastcc void @xgbe_an73_init(ptr noundef %pdata) #5
  br label %xgbe_an_init.exit

sw.bb3.i:                                         ; preds = %if.end84.sw.bb3.i_crit_edge, %if.end84.sw.bb3.i_crit_edge203
  tail call fastcc void @xgbe_an37_init(ptr noundef %pdata) #5
  br label %xgbe_an_init.exit

xgbe_an_init.exit:                                ; preds = %sw.bb3.i, %sw.bb.i, %if.end84.xgbe_an_init.exit_crit_edge
  tail call fastcc void @xgbe_an_restart(ptr noundef %pdata)
  br label %if.else89

if.then87:                                        ; preds = %if.else75, %sw.epilog.i.if.then87_crit_edge, %do.end8.i.if.then87_crit_edge, %entry.if.then87_crit_edge
  %ret.1.ph = phi i32 [ -22, %sw.epilog.i.if.then87_crit_edge ], [ -22, %do.end8.i.if.then87_crit_edge ], [ -22, %if.else75 ], [ %call, %entry.if.then87_crit_edge ]
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dev_state) #5
  br label %if.end91

if.else89:                                        ; preds = %xgbe_an_init.exit, %lor.lhs.false.if.else89_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %dev_state) #5
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then87
  %ret.1200 = phi i32 [ 0, %if.else89 ], [ %ret.1.ph, %if.then87 ]
  tail call void @mutex_unlock(ptr noundef %an_mutex) #5
  ret i32 %ret.1200
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @xgbe_phy_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1555, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @xgbe_phy_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1556, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xgbe_phy_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1557, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 846, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @xgbe_an73_state_machine.__UNIQUE_ID_ddebug362, !10, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 869, i32 3}
!17 = !{ptr @xgbe_an73_state_machine.__UNIQUE_ID_ddebug363, !16, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 886, i32 7}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 903, i32 3}
!24 = !{ptr @xgbe_an73_state_machine.__UNIQUE_ID_ddebug364, !23, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 747, i32 10}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 749, i32 10}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 751, i32 10}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 753, i32 10}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 755, i32 10}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 757, i32 10}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 759, i32 10}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 583, i32 4}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xgbe_an73_page_received.__UNIQUE_ID_ddebug357, !40, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 500, i32 2}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xgbe_an73_tx_training.__UNIQUE_ID_ddebug356, !44, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 422, i32 2}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xgbe_an73_disable.__UNIQUE_ID_ddebug355, !48, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 381, i32 2}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @xgbe_an37_disable.__UNIQUE_ID_ddebug353, !52, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 324, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @xgbe_change_mode.__UNIQUE_ID_ddebug351, !56, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 412, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @xgbe_an73_restart.__UNIQUE_ID_ddebug354, !60, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 373, i32 2}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @xgbe_an37_restart.__UNIQUE_ID_ddebug352, !64, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 780, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @xgbe_an37_state_machine.__UNIQUE_ID_ddebug359, !68, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 790, i32 3}
!73 = !{ptr @xgbe_an37_state_machine.__UNIQUE_ID_ddebug360, !72, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 817, i32 3}
!76 = !{ptr @xgbe_an37_state_machine.__UNIQUE_ID_ddebug361, !75, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1488, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug373, !78, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1490, i32 2}
!83 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug374, !82, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1492, i32 2}
!86 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug375, !85, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1494, i32 2}
!89 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug376, !88, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1496, i32 2}
!92 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug377, !91, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1498, i32 2}
!95 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug378, !94, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!96 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug379, !97, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1500, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1503, i32 2}
!100 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug380, !99, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1505, i32 2}
!103 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug381, !102, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1507, i32 2}
!106 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug382, !105, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1510, i32 2}
!109 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug383, !108, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1513, i32 2}
!112 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug384, !111, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1516, i32 2}
!115 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug385, !114, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1520, i32 2}
!118 = !{ptr @xgbe_dump_phy_registers.__UNIQUE_ID_ddebug386, !117, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1408, i32 2}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @xgbe_phy_start.__UNIQUE_ID_ddebug372, !120, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1422, i32 23}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 695, i32 2}
!127 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @xgbe_an_isr_task.__UNIQUE_ID_ddebug358, !126, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1041, i32 2}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @xgbe_an73_init.__UNIQUE_ID_ddebug366, !130, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 989, i32 2}
!135 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @xgbe_an37_init.__UNIQUE_ID_ddebug365, !134, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!137 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1382, i32 2}
!141 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @xgbe_phy_stop.__UNIQUE_ID_ddebug371, !140, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1096, i32 8}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1098, i32 43}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1098, i32 52}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1101, i32 30}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1078, i32 10}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1080, i32 10}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1082, i32 10}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1084, i32 10}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1086, i32 10}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1088, i32 10}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1065, i32 10}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1067, i32 10}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1069, i32 10}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1071, i32 10}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1281, i32 3}
!173 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @xgbe_check_link_timeout.__UNIQUE_ID_ddebug370, !172, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1201, i32 3}
!177 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug368, !176, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1203, i32 3}
!181 = !{ptr @__xgbe_phy_config_aneg.__UNIQUE_ID_ddebug369, !180, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-mdio.c", i32 1153, i32 2}
!184 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @xgbe_phy_config_fixed.__UNIQUE_ID_ddebug367, !183, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i64 2148759115, i64 2148759120, i64 2148759133, i64 2148759177, i64 2148759211, i64 2148759232}
!196 = !{!"auto-init"}
!197 = !{i64 2151782045}
!198 = !{i64 4239923}
