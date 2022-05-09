; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.91, %struct.list_head, %struct.list_head, %union.anon.92 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.40, ptr }
%union.anon.40 = type { i64 }
%struct.lockref = type { %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { %struct.spinlock, i32 }
%union.anon.91 = type { %struct.list_head }
%union.anon.92 = type { %struct.hlist_node }
%struct.file = type { %union.anon.39, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amd-xgbe-%s\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgmac_register\00", [17 x i8] zeroinitializer }, align 32
@xgmac_reg_addr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xgmac_reg_addr_read, ptr @xgmac_reg_addr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgmac_register_value\00", [43 x i8] zeroinitializer }, align 32
@xgmac_reg_value_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xgmac_reg_value_read, ptr @xgmac_reg_value_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xpcs_mmd\00", [23 x i8] zeroinitializer }, align 32
@xpcs_mmd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xpcs_mmd_read, ptr @xpcs_mmd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xpcs_register\00", [18 x i8] zeroinitializer }, align 32
@xpcs_reg_addr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xpcs_reg_addr_read, ptr @xpcs_reg_addr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xpcs_register_value\00", [44 x i8] zeroinitializer }, align 32
@xpcs_reg_value_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xpcs_reg_value_read, ptr @xpcs_reg_value_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xprop_register\00", [17 x i8] zeroinitializer }, align 32
@xprop_reg_addr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xprop_reg_addr_read, ptr @xprop_reg_addr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xprop_register_value\00", [43 x i8] zeroinitializer }, align 32
@xprop_reg_value_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xprop_reg_value_read, ptr @xprop_reg_value_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xi2c_register\00", [18 x i8] zeroinitializer }, align 32
@xi2c_reg_addr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xi2c_reg_addr_read, ptr @xi2c_reg_addr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xi2c_register_value\00", [44 x i8] zeroinitializer }, align 32
@xi2c_reg_value_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @xi2c_reg_value_read, ptr @xi2c_reg_value_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"an_cdr_workaround\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"an_cdr_track_early\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 448, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 454, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"xgmac_reg_addr_fops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 220, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 457, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"xgmac_reg_value_fops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 227, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 460, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"xpcs_mmd_fops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 298, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 463, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"xpcs_reg_addr_fops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 305, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 466, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"xpcs_reg_value_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 312, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 470, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"xprop_reg_addr_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 365, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 473, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"xprop_reg_value_fops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 372, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 479, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"xi2c_reg_addr_fops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 425, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 482, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"xi2c_reg_value_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 432, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 488, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 492, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [48 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 133, i32 30 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @xgmac_reg_addr_fops, ptr @.str.2, ptr @xgmac_reg_value_fops, ptr @.str.3, ptr @xpcs_mmd_fops, ptr @.str.4, ptr @xpcs_reg_addr_fops, ptr @.str.5, ptr @xpcs_reg_value_fops, ptr @.str.6, ptr @xprop_reg_addr_fops, ptr @.str.7, ptr @xprop_reg_value_fops, ptr @.str.8, ptr @xi2c_reg_addr_fops, ptr @.str.9, ptr @xi2c_reg_value_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_reg_addr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_reg_value_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpcs_mmd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpcs_reg_addr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpcs_reg_value_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprop_reg_addr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprop_reg_value_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xi2c_reg_addr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xi2c_reg_value_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_debugfs_init(ptr noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_xgmac_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 174
  %0 = ptrtoint ptr %debugfs_xgmac_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %debugfs_xgmac_reg, align 8
  %debugfs_xpcs_mmd = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 175
  %1 = ptrtoint ptr %debugfs_xpcs_mmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %debugfs_xpcs_mmd, align 4
  %debugfs_xpcs_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 176
  %2 = ptrtoint ptr %debugfs_xpcs_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %debugfs_xpcs_reg, align 8
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 8
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %call, ptr noundef null) #5
  %xgbe_debugfs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 173
  %5 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %xgbe_debugfs, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %pdata, ptr noundef nonnull @xgmac_reg_addr_fops) #5
  %6 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgbe_debugfs, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef %7, ptr noundef %pdata, ptr noundef nonnull @xgmac_reg_value_fops) #5
  %8 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgbe_debugfs, align 4
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %9, ptr noundef %pdata, ptr noundef nonnull @xpcs_mmd_fops) #5
  %10 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgbe_debugfs, align 4
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %11, ptr noundef %pdata, ptr noundef nonnull @xpcs_reg_addr_fops) #5
  %12 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgbe_debugfs, align 4
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %13, ptr noundef %pdata, ptr noundef nonnull @xpcs_reg_value_fops) #5
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 14
  %14 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xprop_regs, align 8
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgbe_debugfs, align 4
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 384, ptr noundef %17, ptr noundef %pdata, ptr noundef nonnull @xprop_reg_addr_fops) #5
  %18 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgbe_debugfs, align 4
  %call17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef %19, ptr noundef %pdata, ptr noundef nonnull @xprop_reg_value_fops) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end.if.end18_crit_edge
  %xi2c_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 15
  %20 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xi2c_regs, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgbe_debugfs, align 4
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %23, ptr noundef %pdata, ptr noundef nonnull @xi2c_reg_addr_fops) #5
  %24 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xgbe_debugfs, align 4
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %25, ptr noundef %pdata, ptr noundef nonnull @xi2c_reg_value_fops) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18.if.end25_crit_edge
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %26 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdata, align 4
  %an_cdr_workaround = getelementptr inbounds %struct.xgbe_version_data, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %an_cdr_workaround to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %an_cdr_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not = icmp eq i32 %29, 0
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xgbe_debugfs, align 4
  %debugfs_an_cdr_workaround = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %31, ptr noundef %debugfs_an_cdr_workaround) #5
  %32 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xgbe_debugfs, align 4
  %debugfs_an_cdr_track_early = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 180
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %33, ptr noundef %debugfs_an_cdr_track_early) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_debugfs_exit(ptr nocapture noundef %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xgbe_debugfs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 173
  %0 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgbe_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #5
  %2 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xgbe_debugfs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_debugfs_rename(ptr nocapture noundef readonly %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xgbe_debugfs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 173
  %0 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgbe_debugfs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %3) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %xgbe_debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgbe_debugfs, align 4
  %name5 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name5, align 8
  %call6 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end3.out_crit_edge, label %if.end9

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %d_parent = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_parent, align 8
  %call14 = tail call ptr @debugfs_rename(ptr noundef %9, ptr noundef %5, ptr noundef %9, ptr noundef nonnull %call) #5
  br label %out

out:                                              ; preds = %if.end9, %if.end3.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_reg_addr_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %debugfs_xgmac_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %3, i32 0, i32 174
  %4 = ptrtoint ptr %debugfs_xgmac_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xgmac_reg, align 8
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %5) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_reg_addr_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_xgmac_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 174
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %2 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit_crit_edge

entry.xgbe_common_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef %debugfs_xgmac_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  %call..i = select i1 %tobool.not.i, i32 %call.i, i32 -5
  br label %xgbe_common_write.exit

xgbe_common_write.exit:                           ; preds = %if.end6.i, %if.end3.i.xgbe_common_write.exit_crit_edge, %if.end.i.xgbe_common_write.exit_crit_edge, %entry.xgbe_common_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.xgbe_common_write.exit_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit_crit_edge ], [ %call..i, %if.end6.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_reg_value_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %debugfs_xgmac_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 174
  %4 = ptrtoint ptr %debugfs_xgmac_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xgmac_reg, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %9) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_reg_value_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %3 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit.thread_crit_edge

entry.xgbe_common_write.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit.thread_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit.thread_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end6.i.xgbe_common_write.exit.thread_crit_edge

if.end6.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

xgbe_common_write.exit.thread:                    ; preds = %if.end6.i.xgbe_common_write.exit.thread_crit_edge, %if.end3.i.xgbe_common_write.exit.thread_crit_edge, %if.end.i.xgbe_common_write.exit.thread_crit_edge, %entry.xgbe_common_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end6.i.xgbe_common_write.exit.thread_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit.thread_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit.thread_crit_edge ], [ -22, %entry.xgbe_common_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs, align 4
  %debugfs_xgmac_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 174
  %11 = ptrtoint ptr %debugfs_xgmac_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debugfs_xgmac_reg, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  call void @arm_heavy_mb() #5
  %13 = call i32 @llvm.bswap.i32(i32 %8) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #5, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xgbe_common_write.exit.thread
  %retval.0.i8 = phi i32 [ %retval.0.i.ph, %xgbe_common_write.exit.thread ], [ %call.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0.i8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpcs_mmd_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %debugfs_xpcs_mmd = getelementptr inbounds %struct.xgbe_prv_data, ptr %3, i32 0, i32 175
  %4 = ptrtoint ptr %debugfs_xpcs_mmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xpcs_mmd, align 4
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %5) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpcs_mmd_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_xpcs_mmd = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 175
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %2 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit_crit_edge

entry.xgbe_common_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef %debugfs_xpcs_mmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  %call..i = select i1 %tobool.not.i, i32 %call.i, i32 -5
  br label %xgbe_common_write.exit

xgbe_common_write.exit:                           ; preds = %if.end6.i, %if.end3.i.xgbe_common_write.exit_crit_edge, %if.end.i.xgbe_common_write.exit_crit_edge, %entry.xgbe_common_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.xgbe_common_write.exit_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit_crit_edge ], [ %call..i, %if.end6.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpcs_reg_addr_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %debugfs_xpcs_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %3, i32 0, i32 176
  %4 = ptrtoint ptr %debugfs_xpcs_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xpcs_reg, align 8
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %5) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpcs_reg_addr_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_xpcs_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 176
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %2 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit_crit_edge

entry.xgbe_common_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef %debugfs_xpcs_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  %call..i = select i1 %tobool.not.i, i32 %call.i, i32 -5
  br label %xgbe_common_write.exit

xgbe_common_write.exit:                           ; preds = %if.end6.i, %if.end3.i.xgbe_common_write.exit_crit_edge, %if.end.i.xgbe_common_write.exit_crit_edge, %entry.xgbe_common_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.xgbe_common_write.exit_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit_crit_edge ], [ %call..i, %if.end6.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpcs_reg_value_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 10
  %2 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs, align 4
  %debugfs_xpcs_mmd = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 175
  %4 = ptrtoint ptr %debugfs_xpcs_mmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xpcs_mmd, align 4
  %shl = shl i32 %5, 16
  %debugfs_xpcs_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 176
  %6 = ptrtoint ptr %debugfs_xpcs_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debugfs_xpcs_reg, align 8
  %and = and i32 %7, 65535
  %or = or i32 %and, %shl
  %or1 = or i32 %or, 1073741824
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 0, i32 noundef %or1) #5
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.not.i = icmp eq i64 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %call) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpcs_reg_value_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %3 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit.thread_crit_edge

entry.xgbe_common_write.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit.thread_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit.thread_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end6.i.xgbe_common_write.exit.thread_crit_edge

if.end6.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

xgbe_common_write.exit.thread:                    ; preds = %if.end6.i.xgbe_common_write.exit.thread_crit_edge, %if.end3.i.xgbe_common_write.exit.thread_crit_edge, %if.end.i.xgbe_common_write.exit.thread_crit_edge, %entry.xgbe_common_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end6.i.xgbe_common_write.exit.thread_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit.thread_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit.thread_crit_edge ], [ -22, %entry.xgbe_common_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 11
  %7 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_mmd_regs, align 4
  %debugfs_xpcs_mmd = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 175
  %9 = ptrtoint ptr %debugfs_xpcs_mmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debugfs_xpcs_mmd, align 4
  %shl = shl i32 %10, 16
  %debugfs_xpcs_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 176
  %11 = ptrtoint ptr %debugfs_xpcs_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debugfs_xpcs_reg, align 8
  %and = and i32 %12, 65535
  %or = or i32 %and, %shl
  %or1 = or i32 %or, 1073741824
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void %8(ptr noundef %1, i32 noundef 0, i32 noundef %or1, i32 noundef %14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xgbe_common_write.exit.thread
  %retval.0.i11 = phi i32 [ %retval.0.i.ph, %xgbe_common_write.exit.thread ], [ %call.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0.i11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprop_reg_addr_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %debugfs_xprop_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %3, i32 0, i32 177
  %4 = ptrtoint ptr %debugfs_xprop_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xprop_reg, align 4
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %5) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprop_reg_addr_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_xprop_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 177
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %2 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit_crit_edge

entry.xgbe_common_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef %debugfs_xprop_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  %call..i = select i1 %tobool.not.i, i32 %call.i, i32 -5
  br label %xgbe_common_write.exit

xgbe_common_write.exit:                           ; preds = %if.end6.i, %if.end3.i.xgbe_common_write.exit_crit_edge, %if.end.i.xgbe_common_write.exit_crit_edge, %entry.xgbe_common_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.xgbe_common_write.exit_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit_crit_edge ], [ %call..i, %if.end6.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprop_reg_value_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xprop_regs, align 8
  %debugfs_xprop_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 177
  %4 = ptrtoint ptr %debugfs_xprop_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xprop_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %9) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprop_reg_value_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %3 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit.thread_crit_edge

entry.xgbe_common_write.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit.thread_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit.thread_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end6.i.xgbe_common_write.exit.thread_crit_edge

if.end6.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

xgbe_common_write.exit.thread:                    ; preds = %if.end6.i.xgbe_common_write.exit.thread_crit_edge, %if.end3.i.xgbe_common_write.exit.thread_crit_edge, %if.end.i.xgbe_common_write.exit.thread_crit_edge, %entry.xgbe_common_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end6.i.xgbe_common_write.exit.thread_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit.thread_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit.thread_crit_edge ], [ -22, %entry.xgbe_common_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xprop_regs, align 8
  %debugfs_xprop_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 177
  %11 = ptrtoint ptr %debugfs_xprop_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debugfs_xprop_reg, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  call void @arm_heavy_mb() #5
  %13 = call i32 @llvm.bswap.i32(i32 %8) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #5, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xgbe_common_write.exit.thread
  %retval.0.i8 = phi i32 [ %retval.0.i.ph, %xgbe_common_write.exit.thread ], [ %call.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xi2c_reg_addr_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %debugfs_xi2c_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %3, i32 0, i32 178
  %4 = ptrtoint ptr %debugfs_xi2c_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xi2c_reg, align 8
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %5) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xi2c_reg_addr_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %debugfs_xi2c_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 178
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %2 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not.i = icmp eq i64 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit_crit_edge

entry.xgbe_common_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef %debugfs_xi2c_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  %call..i = select i1 %tobool.not.i, i32 %call.i, i32 -5
  br label %xgbe_common_write.exit

xgbe_common_write.exit:                           ; preds = %if.end6.i, %if.end3.i.xgbe_common_write.exit_crit_edge, %if.end.i.xgbe_common_write.exit_crit_edge, %entry.xgbe_common_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.xgbe_common_write.exit_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit_crit_edge ], [ %call..i, %if.end6.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xi2c_reg_value_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %xi2c_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xi2c_regs, align 4
  %debugfs_xi2c_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 178
  %4 = ptrtoint ptr %debugfs_xi2c_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debugfs_xi2c_reg, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_read.exit_crit_edge

entry.xgbe_common_read.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end.i:                                         ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %9) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.xgbe_common_read.exit_crit_edge, label %if.end2.i

if.end.i.xgbe_common_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_read.exit

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %count)
  %cmp4.i = icmp ugt i32 %call3.i, %count
  br i1 %cmp4.i, label %if.end2.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call.i, i32 noundef %call3.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end6.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call8.i, %if.end6.i ], [ -28, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  br label %xgbe_common_read.exit

xgbe_common_read.exit:                            ; preds = %cleanup.sink.split.i, %if.end.i.xgbe_common_read.exit_crit_edge, %entry.xgbe_common_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.xgbe_common_read.exit_crit_edge ], [ -12, %if.end.i.xgbe_common_read.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xi2c_reg_value_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %workarea.i = alloca [32 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workarea.i) #5
  %3 = call ptr @memset(ptr %workarea.i, i32 255, i32 32)
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xgbe_common_write.exit.thread_crit_edge

entry.xgbe_common_write.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp1.i = icmp ugt i32 %count, 31
  br i1 %cmp1.i, label %if.end.i.xgbe_common_write.exit.thread_crit_edge, label %if.end3.i

if.end.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @simple_write_to_buffer(ptr noundef nonnull %workarea.i, i32 noundef 31, ptr noundef %ppos, ptr noundef %buffer, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.xgbe_common_write.exit.thread_crit_edge, label %if.end6.i

if.end3.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  %arrayidx.i = getelementptr [32 x i8], ptr %workarea.i, i32 0, i32 %call.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call i32 @kstrtouint(ptr noundef nonnull %workarea.i, i32 noundef 16, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end6.i.xgbe_common_write.exit.thread_crit_edge

if.end6.i.xgbe_common_write.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xgbe_common_write.exit.thread

xgbe_common_write.exit.thread:                    ; preds = %if.end6.i.xgbe_common_write.exit.thread_crit_edge, %if.end3.i.xgbe_common_write.exit.thread_crit_edge, %if.end.i.xgbe_common_write.exit.thread_crit_edge, %entry.xgbe_common_write.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end6.i.xgbe_common_write.exit.thread_crit_edge ], [ %call.i, %if.end3.i.xgbe_common_write.exit.thread_crit_edge ], [ -28, %if.end.i.xgbe_common_write.exit.thread_crit_edge ], [ -22, %entry.xgbe_common_write.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workarea.i) #5
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %xi2c_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xi2c_regs, align 4
  %debugfs_xi2c_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 178
  %11 = ptrtoint ptr %debugfs_xi2c_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debugfs_xi2c_reg, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  call void @arm_heavy_mb() #5
  %13 = call i32 @llvm.bswap.i32(i32 %8) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #5, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xgbe_common_write.exit.thread
  %retval.0.i8 = phi i32 [ %retval.0.i.ph, %xgbe_common_write.exit.thread ], [ %call.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 448, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 454, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 457, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 460, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 463, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 466, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 470, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 473, i32 23}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 479, i32 23}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 482, i32 23}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 488, i32 23}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 492, i32 23}
!24 = !{ptr @xgmac_reg_addr_fops, !25, !"xgmac_reg_addr_fops", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 220, i32 37}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 133, i32 30}
!28 = !{ptr @xgmac_reg_value_fops, !29, !"xgmac_reg_value_fops", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 227, i32 37}
!30 = !{ptr @xpcs_mmd_fops, !31, !"xpcs_mmd_fops", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 298, i32 37}
!32 = !{ptr @xpcs_reg_addr_fops, !33, !"xpcs_reg_addr_fops", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 305, i32 37}
!34 = !{ptr @xpcs_reg_value_fops, !35, !"xpcs_reg_value_fops", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 312, i32 37}
!36 = !{ptr @xprop_reg_addr_fops, !37, !"xprop_reg_addr_fops", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 365, i32 37}
!38 = !{ptr @xprop_reg_value_fops, !39, !"xprop_reg_value_fops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 372, i32 37}
!40 = !{ptr @xi2c_reg_addr_fops, !41, !"xi2c_reg_addr_fops", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 425, i32 37}
!42 = !{ptr @xi2c_reg_value_fops, !43, !"xi2c_reg_value_fops", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-debugfs.c", i32 432, i32 37}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 6348479}
!54 = !{i64 2153888828}
!55 = !{!"auto-init"}
!56 = !{i64 2153890183}
!57 = !{i64 6348061}
