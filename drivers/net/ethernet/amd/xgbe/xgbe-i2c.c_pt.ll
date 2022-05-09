; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-i2c.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.xgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xgbe_phy = type { %struct.ethtool_link_ksettings, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.xgbe_i2c_op = type { i32, i32, ptr, i32 }
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xgbe_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable i2c master\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_i2c_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-i2c.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgbe_i2c_init._entry_ptr = internal global ptr @xgbe_i2c_init._entry, section ".printk_index", align 4
@xgbe_i2c_get_features.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_i2c_get_features\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I2C features: %s=%u, %s=%u, %s=%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MAX_SPEED_MODE\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX_BUFFER_DEPTH\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX_BUFFER_DEPTH\00", [16 x i8] zeroinitializer }, align 32
@xgbe_i2c_start.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_i2c_start\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"starting I2C\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c irq request failed\0A\00", [40 x i8] zeroinitializer }, align 32
@xgbe_i2c_isr_task.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_i2c_isr_task\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"I2C interrupt received: status=%#010x\0A\00", [57 x i8] zeroinitializer }, align 32
@xgbe_i2c_isr_task.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"I2C TX_ABRT received (%#010x) for target %#04x\0A\00", [48 x i8] zeroinitializer }, align 32
@xgbe_i2c_stop.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_i2c_stop\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stopping I2C\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable i2c master\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c operation timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 489, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 359, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 461, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 471, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 287, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 293, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 442, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 404, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [44 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 414, i32 29 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @xgbe_i2c_init._entry, ptr @xgbe_i2c_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgbe_init_function_ptrs_i2c(ptr nocapture noundef writeonly %i2c_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2c_if to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgbe_i2c_init, ptr %i2c_if, align 4
  %i2c_start = getelementptr inbounds %struct.xgbe_i2c_if, ptr %i2c_if, i32 0, i32 1
  %1 = ptrtoint ptr %i2c_start to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgbe_i2c_start, ptr %i2c_start, align 4
  %i2c_stop = getelementptr inbounds %struct.xgbe_i2c_if, ptr %i2c_if, i32 0, i32 2
  %2 = ptrtoint ptr %i2c_stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xgbe_i2c_stop, ptr %i2c_stop, align 4
  %i2c_xfer = getelementptr inbounds %struct.xgbe_i2c_if, ptr %i2c_if, i32 0, i32 3
  %3 = ptrtoint ptr %i2c_xfer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgbe_i2c_xfer, ptr %i2c_xfer, align 4
  %i2c_isr = getelementptr inbounds %struct.xgbe_i2c_if, ptr %i2c_if, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_isr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xgbe_i2c_combined_isr, ptr %i2c_isr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_i2c_init(ptr nocapture noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xi2c_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !47
  %call = tail call fastcc i32 @xgbe_i2c_disable(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 244
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #5, !srcloc !48
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %shr.i = lshr i32 %7, 2
  %and.i = and i32 %shr.i, 3
  %max_speed_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 1
  %8 = ptrtoint ptr %max_speed_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %max_speed_mode.i, align 4
  %shr2.i = lshr i32 %7, 8
  %and3.i = and i32 %shr2.i, 255
  %rx_fifo_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 2
  %9 = ptrtoint ptr %rx_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and3.i, ptr %rx_fifo_size.i, align 4
  %shr4.i = lshr i32 %7, 16
  %and5.i = and i32 %shr4.i, 255
  %tx_fifo_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 3
  %10 = ptrtoint ptr %tx_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and5.i, ptr %tx_fifo_size.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %11 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i, align 4
  %and6.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %if.end.xgbe_i2c_get_features.exit_crit_edge, label %do.body.i

if.end.xgbe_i2c_get_features.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_i2c_get_features.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_i2c_get_features.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_i2c_init, %if.then11.i)) #5
          to label %xgbe_i2c_get_features.exit [label %if.then11.i], !srcloc !50

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %15 = ptrtoint ptr %max_speed_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_speed_mode.i, align 4
  %17 = ptrtoint ptr %rx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_fifo_size.i, align 4
  %19 = ptrtoint ptr %tx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_fifo_size.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_i2c_get_features.__UNIQUE_ID_ddebug353, ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %16, ptr noundef nonnull @.str.9, i32 noundef %18, ptr noundef nonnull @.str.10, i32 noundef %20) #5
  br label %xgbe_i2c_get_features.exit

xgbe_i2c_get_features.exit:                       ; preds = %if.then11.i, %do.body.i, %if.end.xgbe_i2c_get_features.exit_crit_edge
  %21 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xi2c_regs.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %24 = and i32 %23, -1728184321
  %25 = or i32 %24, 1661075456
  %26 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xi2c_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !47
  %28 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %29, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %xgbe_i2c_get_features.exit, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_i2c_start(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end11_crit_edge, label %do.body3

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_i2c_start.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_i2c_start, %if.then7)) #5
          to label %do.end11 [label %if.then7], !srcloc !50

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_i2c_start.__UNIQUE_ID_ddebug355, ptr noundef %5, ptr noundef nonnull @.str.12) #5
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body3, %do.body.do.end11_crit_edge
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %6 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_irq, align 8
  %i2c_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 44
  %8 = ptrtoint ptr %i2c_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_irq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %do.end11.if.end19_crit_edge, label %if.then12

do.end11.if.end19_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then12:                                        ; preds = %do.end11
  %tasklet_i2c = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 171
  tail call void @tasklet_setup(ptr noundef %tasklet_i2c, ptr noundef nonnull @xgbe_i2c_isr_task) #5
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %i2c_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i2c_irq, align 8
  %i2c_name = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 166
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %13, ptr noundef nonnull @xgbe_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %i2c_name, ptr noundef %pdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.then12.if.end19_crit_edge, label %if.then16

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %do.end11.if.end19_crit_edge
  %16 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %i2c, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then16 ], [ 0, %if.end19 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_i2c_stop(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end10_crit_edge, label %do.body3

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_i2c_stop.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_i2c_stop, %if.then7)) #5
          to label %do.end10 [label %if.then7], !srcloc !50

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_i2c_stop.__UNIQUE_ID_ddebug354, ptr noundef %5, ptr noundef nonnull @.str.18) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body3, %do.body.do.end10_crit_edge
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i2c, align 4
  %xi2c_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 15
  %7 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !47
  %call13 = tail call fastcc i32 @xgbe_i2c_disable(ptr noundef %pdata)
  %9 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %10, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %12 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_irq, align 8
  %i2c_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 44
  %14 = ptrtoint ptr %i2c_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i2c_irq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %do.end10.if.end16_crit_edge, label %if.then14

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void @devm_free_irq(ptr noundef %17, i32 noundef %15, ptr noundef %pdata) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.end10.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_i2c_xfer(ptr noundef %pdata, ptr noundef %op) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_mutex = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 164
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #5
  %i2c_complete = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 165
  %0 = ptrtoint ptr %i2c_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i2c_complete, align 4
  %call = tail call fastcc i32 @xgbe_i2c_disable(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str) #8
  br label %unlock

if.end:                                           ; preds = %entry
  %op_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4
  %target = getelementptr inbounds %struct.xgbe_i2c_op, ptr %op, i32 0, i32 1
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target, align 4
  %xi2c_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 15
  %5 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #5, !srcloc !47
  %8 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 24)
  %10 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %op, ptr %op_state, align 4
  %len = getelementptr inbounds %struct.xgbe_i2c_op, ptr %op, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %tx_len = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4, i32 1
  %13 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_len, align 4
  %buf = getelementptr inbounds %struct.xgbe_i2c_op, ptr %op, i32 0, i32 2
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %tx_buf = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4, i32 2
  %16 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %tx_buf, align 4
  %17 = load i32, ptr %len, align 4
  %rx_len = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4, i32 3
  %18 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rx_len, align 4
  %19 = load ptr, ptr %buf, align 4
  %rx_buf = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4, i32 4
  %20 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %rx_buf, align 4
  %21 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %22, i32 64
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end
  %dec18.i.i = phi i32 [ 999, %if.end ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 108
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %27 = or i32 %26, 16777216
  %28 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %29, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %27) #5, !srcloc !47
  %30 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %31, i32 156
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.not.i = icmp eq i32 %33, 0
  br i1 %cmp.i.not.i, label %if.end.i.i, label %if.end8

if.end.i.i:                                       ; preds = %do.body.i.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %dec.i.i = add nsw i32 %dec18.i.i, -1
  %tobool1.not.i.i = icmp eq i32 %dec18.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then6, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.then6:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.19) #8
  br label %unlock

if.end8:                                          ; preds = %do.body.i.i
  %36 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 1409417216) #5, !srcloc !47
  %call10 = tail call i32 @wait_for_completion_timeout(ptr noundef %i2c_complete, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.20) #8
  br label %disable

if.end14:                                         ; preds = %if.end8
  %ret15 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4, i32 6
  %40 = ptrtoint ptr %ret15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ret15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool16.not = icmp eq i32 %41, 0
  br i1 %tobool16.not, label %if.end14.disable_crit_edge, label %if.then17

if.end14.disable_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.then17:                                        ; preds = %if.end14
  %tx_abort_source = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 163, i32 4, i32 5
  %42 = ptrtoint ptr %tx_abort_source to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_abort_source, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.then17.disable_crit_edge

if.then17.disable_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %and21 = and i32 %43, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %spec.select = select i1 %tobool22.not, i32 %41, i32 -11
  br label %disable

disable:                                          ; preds = %if.else, %if.then17.disable_crit_edge, %if.end14.disable_crit_edge, %if.then12
  %ret.0 = phi i32 [ 0, %if.end14.disable_crit_edge ], [ -110, %if.then12 ], [ -107, %if.then17.disable_crit_edge ], [ %spec.select, %if.else ]
  %44 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 0) #5, !srcloc !47
  %call27 = tail call fastcc i32 @xgbe_i2c_disable(ptr noundef %pdata)
  br label %unlock

unlock:                                           ; preds = %disable, %if.then6, %if.then
  %ret.1 = phi i32 [ %call, %if.then ], [ -16, %if.then6 ], [ %ret.0, %disable ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_i2c_combined_isr(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet_i2c = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 171
  tail call void @xgbe_i2c_isr_task(ptr noundef %tasklet_i2c)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_i2c_disable(ptr nocapture noundef readonly %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xi2c_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 15
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %dec18.i = phi i32 [ 999, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %5, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %3) #5, !srcloc !47
  %6 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %7, i32 156
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.body.i.cleanup_crit_edge, label %if.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %dec.i = add nsw i32 %dec18.i, -1
  %tobool1.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool1.not.i, label %if.then, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then:                                          ; preds = %if.end.i
  %10 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 108
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %13) #5, !srcloc !47
  %16 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr9.i13 = getelementptr i8, ptr %17, i32 108
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i13) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %19 = or i32 %18, 33554432
  %20 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %21, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %19) #5, !srcloc !47
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i15.while.body.i_crit_edge, %if.then
  %dec33.i = phi i32 [ 499, %if.then ], [ %dec.i14, %if.end.i15.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %23, i32 108
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %25 = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not.i = icmp eq i32 %25, 0
  br i1 %tobool24.not.i, label %while.body.i.do.body.i24_crit_edge, label %if.end.i15

while.body.i.do.body.i24_crit_edge:               ; preds = %while.body.i
  br label %do.body.i24

if.end.i15:                                       ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #5
  %dec.i14 = add nsw i32 %dec33.i, -1
  %tobool.not.i = icmp eq i32 %dec33.i, 0
  br i1 %tobool.not.i, label %if.end.i15.cleanup_crit_edge, label %if.end.i15.while.body.i_crit_edge

if.end.i15.while.body.i_crit_edge:                ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i24:                                      ; preds = %if.end.i27.do.body.i24_crit_edge, %while.body.i.do.body.i24_crit_edge
  %dec18.i18 = phi i32 [ %dec.i25, %if.end.i27.do.body.i24_crit_edge ], [ 999, %while.body.i.do.body.i24_crit_edge ]
  %26 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %27, i32 108
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %29 = and i32 %28, -16777217
  %30 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr5.i20 = getelementptr i8, ptr %31, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i20, i32 %29) #5, !srcloc !47
  %32 = ptrtoint ptr %xi2c_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xi2c_regs.i, align 4
  %add.ptr9.i21 = getelementptr i8, ptr %33, i32 156
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i21) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i23 = icmp eq i32 %35, 0
  br i1 %cmp.i23, label %do.body.i24.cleanup_crit_edge, label %if.end.i27

do.body.i24.cleanup_crit_edge:                    ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i27:                                       ; preds = %do.body.i24
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %dec.i25 = add nsw i32 %dec18.i18, -1
  %tobool1.not.i26 = icmp eq i32 %dec18.i18, 0
  br i1 %tobool1.not.i26, label %if.end.i27.cleanup_crit_edge, label %if.end.i27.do.body.i24_crit_edge

if.end.i27.do.body.i24_crit_edge:                 ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i24

if.end.i27.cleanup_crit_edge:                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i27.cleanup_crit_edge, %do.body.i24.cleanup_crit_edge, %if.end.i15.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end.i27.cleanup_crit_edge ], [ 0, %do.body.i24.cleanup_crit_edge ], [ -16, %if.end.i15.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_i2c_isr_task(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -5604
  %op_state = getelementptr i8, ptr %t, i32 -280
  %xi2c_regs = getelementptr i8, ptr %t, i32 -5544
  %0 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !48
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.reissue_check_crit_edge, label %do.body

entry.reissue_check_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reissue_check

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %t, i32 -792
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end14_crit_edge, label %do.body4

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_i2c_isr_task.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_i2c_isr_task, %if.then10)) #5
          to label %do.end14 [label %if.then10], !srcloc !50

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_i2c_isr_task.__UNIQUE_ID_ddebug351, ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %3) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body4, %do.body.do.end14_crit_edge
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end14.if.end.i_crit_edge, label %if.then.i

do.end14.if.end.i_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 128
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %tx_abort_source.i = getelementptr i8, ptr %t, i32 -260
  %12 = ptrtoint ptr %tx_abort_source.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_abort_source.i, align 4
  %13 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 84
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end14.if.end.i_crit_edge
  %and4.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.xgbe_i2c_clear_isr_interrupts.exit_crit_edge, label %if.then6.i

if.end.i.xgbe_i2c_clear_isr_interrupts.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_i2c_clear_isr_interrupts.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %17, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  br label %xgbe_i2c_clear_isr_interrupts.exit

xgbe_i2c_clear_isr_interrupts.exit:               ; preds = %if.then6.i, %if.end.i.xgbe_i2c_clear_isr_interrupts.exit_crit_edge
  br i1 %tobool.not.i, label %if.end43, label %do.body18

do.body18:                                        ; preds = %xgbe_i2c_clear_isr_interrupts.exit
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and20 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.do.end42_crit_edge, label %do.body23

do.body18.do.end42_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

do.body23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_i2c_isr_task.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_i2c_isr_task, %if.then35)) #5
          to label %do.end42 [label %if.then35], !srcloc !50

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %tx_abort_source = getelementptr i8, ptr %t, i32 -260
  %23 = ptrtoint ptr %tx_abort_source to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_abort_source, align 4
  %25 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %op_state, align 4
  %target = getelementptr inbounds %struct.xgbe_i2c_op, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %target, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_i2c_isr_task.__UNIQUE_ID_ddebug352, ptr noundef %22, ptr noundef nonnull @.str.16, i32 noundef %24, i32 noundef %28) #5
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %do.body23, %do.body18.do.end42_crit_edge
  %29 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr.i77 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 0) #5, !srcloc !47
  %ret = getelementptr i8, ptr %t, i32 -256
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -5, ptr %ret, align 4
  br label %out

if.end43:                                         ; preds = %xgbe_i2c_clear_isr_interrupts.exit
  %32 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_state, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 0
  br i1 %cmp.not.i, label %if.end.i80, label %if.end43.xgbe_i2c_read.exit_crit_edge

if.end43.xgbe_i2c_read.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_i2c_read.exit

if.end.i80:                                       ; preds = %if.end43
  %36 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr.i79 = getelementptr i8, ptr %37, i32 120
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %rx_len.i = getelementptr i8, ptr %t, i32 -268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not14.i = icmp eq i32 %38, 0
  br i1 %tobool.not14.i, label %if.end.i80.xgbe_i2c_read.exit_crit_edge, label %land.rhs.lr.ph.i

if.end.i80.xgbe_i2c_read.exit_crit_edge:          ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_i2c_read.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end.i80
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %rx_buf.i = getelementptr i8, ptr %t, i32 -264
  %40 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr.i = load i32, ptr %rx_len.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %41 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %rx_slots.015.i = phi i32 [ %39, %land.rhs.lr.ph.i ], [ %dec6.i, %while.body.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool1.not.i = icmp eq i32 %41, 0
  br i1 %tobool1.not.i, label %land.rhs.i.xgbe_i2c_read.exit_crit_edge, label %while.body.i

land.rhs.i.xgbe_i2c_read.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_i2c_read.exit

while.body.i:                                     ; preds = %land.rhs.i
  %42 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #5, !srcloc !48
  %45 = lshr i32 %44, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %conv.i = trunc i32 %45 to i8
  %46 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_buf.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %47, i32 1
  store ptr %incdec.ptr.i, ptr %rx_buf.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i, ptr %47, align 1
  %49 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_len.i, align 4
  %dec.i = add i32 %50, -1
  store i32 %dec.i, ptr %rx_len.i, align 4
  %dec6.i = add i32 %rx_slots.015.i, -1
  %tobool.not.i81 = icmp eq i32 %dec6.i, 0
  br i1 %tobool.not.i81, label %while.body.i.xgbe_i2c_read.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.xgbe_i2c_read.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_i2c_read.exit

xgbe_i2c_read.exit:                               ; preds = %while.body.i.xgbe_i2c_read.exit_crit_edge, %land.rhs.i.xgbe_i2c_read.exit_crit_edge, %if.end.i80.xgbe_i2c_read.exit_crit_edge, %if.end43.xgbe_i2c_read.exit_crit_edge
  %tx_fifo_size.i = getelementptr i8, ptr %t, i32 -284
  %51 = ptrtoint ptr %tx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_fifo_size.i, align 4
  %53 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr.i84 = getelementptr i8, ptr %54, i32 116
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #5, !srcloc !48
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %sub.i = sub i32 %52, %56
  %tx_len.i = getelementptr i8, ptr %t, i32 -276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not45.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not45.i, label %xgbe_i2c_read.exit.while.endthread-pre-split.i_crit_edge, label %land.rhs.lr.ph.i86

xgbe_i2c_read.exit.while.endthread-pre-split.i_crit_edge: ; preds = %xgbe_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.endthread-pre-split.i

land.rhs.lr.ph.i86:                               ; preds = %xgbe_i2c_read.exit
  %tx_buf.i = getelementptr i8, ptr %t, i32 -272
  %57 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr.i85 = load i32, ptr %tx_len.i, align 4
  br label %land.rhs.i87

land.rhs.i87:                                     ; preds = %if.end.i93.land.rhs.i87_crit_edge, %land.rhs.lr.ph.i86
  %58 = phi i32 [ %.pr.i85, %land.rhs.lr.ph.i86 ], [ %dec12.i, %if.end.i93.land.rhs.i87_crit_edge ]
  %tx_slots.046.i = phi i32 [ %sub.i, %land.rhs.lr.ph.i86 ], [ %dec.i91, %if.end.i93.land.rhs.i87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool2.not.i = icmp eq i32 %58, 0
  br i1 %tobool2.not.i, label %land.rhs.i87.while.endthread-pre-split.i_crit_edge, label %while.body.i88

land.rhs.i87.while.endthread-pre-split.i_crit_edge: ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.endthread-pre-split.i

while.body.i88:                                   ; preds = %land.rhs.i87
  %59 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %op_state, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i = icmp eq i32 %62, 0
  br i1 %cmp.i, label %while.body.i88.if.end.i93_crit_edge, label %if.else.i

while.body.i88.if.end.i93_crit_edge:              ; preds = %while.body.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i93

if.else.i:                                        ; preds = %while.body.i88
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_buf.i, align 4
  %incdec.ptr.i89 = getelementptr i8, ptr %64, i32 1
  store ptr %incdec.ptr.i89, ptr %tx_buf.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv.i90 = zext i8 %66 to i32
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.else.i, %while.body.i88.if.end.i93_crit_edge
  %cmd.0.i = phi i32 [ %conv.i90, %if.else.i ], [ 256, %while.body.i88.if.end.i93_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp5.i = icmp eq i32 %58, 1
  %or.i = or i32 %cmd.0.i, 512
  %spec.select.i = select i1 %cmp5.i, i32 %or.i, i32 %cmd.0.i
  %67 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr10.i = getelementptr i8, ptr %68, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %69 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %69) #5, !srcloc !47
  %dec.i91 = add i32 %tx_slots.046.i, -1
  %70 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_len.i, align 4
  %dec12.i = add i32 %71, -1
  store i32 %dec12.i, ptr %tx_len.i, align 4
  %tobool.not.i92 = icmp eq i32 %dec.i91, 0
  br i1 %tobool.not.i92, label %if.end.i93.while.end.i_crit_edge, label %if.end.i93.land.rhs.i87_crit_edge

if.end.i93.land.rhs.i87_crit_edge:                ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i87

if.end.i93.while.end.i_crit_edge:                 ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.endthread-pre-split.i:                      ; preds = %land.rhs.i87.while.endthread-pre-split.i_crit_edge, %xgbe_i2c_read.exit.while.endthread-pre-split.i_crit_edge
  %72 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr47.i = load i32, ptr %tx_len.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.endthread-pre-split.i, %if.end.i93.while.end.i_crit_edge
  %73 = phi i32 [ %.pr47.i, %while.endthread-pre-split.i ], [ %dec12.i, %if.end.i93.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool14.not.i = icmp eq i32 %73, 0
  br i1 %tobool14.not.i, label %do.body16.i, label %while.end.i.out_crit_edge

while.end.i.out_crit_edge:                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body16.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr18.i = getelementptr i8, ptr %75, i32 48
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %77 = and i32 %76, -268435457
  %78 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %xi2c_regs, align 4
  %add.ptr26.i = getelementptr i8, ptr %79, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %77) #5, !srcloc !47
  br label %out

out:                                              ; preds = %do.body16.i, %while.end.i.out_crit_edge, %do.end42
  %ret44 = getelementptr i8, ptr %t, i32 -256
  %80 = ptrtoint ptr %ret44 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ret44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool45.not = icmp eq i32 %81, 0
  %or.cond = select i1 %tobool45.not, i1 %tobool5.not.i, i1 false
  br i1 %or.cond, label %out.reissue_check_crit_edge, label %if.then48

out.reissue_check_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %reissue_check

if.then48:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %i2c_complete = getelementptr i8, ptr %t, i32 -160
  tail call void @complete(ptr noundef %i2c_complete) #5
  br label %reissue_check

reissue_check:                                    ; preds = %if.then48, %out.reissue_check_crit_edge, %entry.reissue_check_crit_edge
  %vdata = getelementptr i8, ptr %t, i32 -5576
  %82 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vdata, align 4
  %irq_reissue_support = getelementptr inbounds %struct.xgbe_version_data, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %irq_reissue_support to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq_reissue_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool50.not = icmp eq i32 %85, 0
  br i1 %tobool50.not, label %reissue_check.if.end53_crit_edge, label %if.then51

reissue_check.if.end53_crit_edge:                 ; preds = %reissue_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then51:                                        ; preds = %reissue_check
  call void @__sanitizer_cov_trace_pc() #7
  %xprop_regs = getelementptr i8, ptr %t, i32 -5548
  %86 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xprop_regs, align 8
  %add.ptr52 = getelementptr i8, ptr %87, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 67108864) #5, !srcloc !47
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %reissue_check.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_i2c_isr(i32 noundef %irq, ptr noundef %data) #1 align 64 {
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
  %state.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 171, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %tasklet_i2c = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 171
  tail call void @__tasklet_schedule(ptr noundef %tasklet_i2c) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tasklet_i2c1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %data, i32 0, i32 171
  tail call void @xgbe_i2c_isr_task(ptr noundef %tasklet_i2c1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 489, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xgbe_i2c_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @xgbe_i2c_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 359, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @xgbe_i2c_get_features.__UNIQUE_ID_ddebug353, !9, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 461, i32 2}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xgbe_i2c_start.__UNIQUE_ID_ddebug355, !17, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 471, i32 30}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 287, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @xgbe_i2c_isr_task.__UNIQUE_ID_ddebug351, !23, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 293, i32 3}
!28 = !{ptr @xgbe_i2c_isr_task.__UNIQUE_ID_ddebug352, !27, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 442, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xgbe_i2c_stop.__UNIQUE_ID_ddebug354, !30, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 404, i32 29}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-i2c.c", i32 414, i32 29}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2152171843}
!47 = !{i64 4629721}
!48 = !{i64 4630139}
!49 = !{i64 2152170488}
!50 = !{i64 2148967216, i64 2148967221, i64 2148967234, i64 2148967278, i64 2148967312, i64 2148967333}
