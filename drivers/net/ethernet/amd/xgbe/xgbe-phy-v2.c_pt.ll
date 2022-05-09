; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xgbe_mmc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_ext_stats = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.xgbe_phy_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.xgbe_sfp_eeprom, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xgbe_sfp_eeprom = type { [64 x i8], [32 x i8], [32 x i8] }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.xgbe_i2c_op = type { i32, i32, ptr, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.xgbe_sfp_ascii = type { %union.anon.129 }
%union.anon.129 = type { [17 x i8] }

@xgbe_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device is not enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_phy_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr = internal global ptr @xgbe_phy_init._entry, section ".printk_index", align 4
@xgbe_phy_init.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 3, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port mode=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 3, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port id=%u\0A\00", [20 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 3, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"port speeds=%#x\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 3, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"conn type=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 3, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mdio addr=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 3, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"redrv present\0A\00", [17 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 3, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"redrv i/f=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 3, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"redrv addr=%#x\0A\00", [16 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 3, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"redrv lane=%u\0A\00", [17 x i8] zeroinitializer }, align 32
@xgbe_phy_init.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 3, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"redrv model=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 3196, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"phy mode/connection mismatch (%#x/%#x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.19 = internal global ptr @xgbe_phy_init._entry.16, section ".printk_index", align 4
@xgbe_phy_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 3203, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"phy mode/speed mismatch (%#x/%#x)\0A\00", [61 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.22 = internal global ptr @xgbe_phy_init._entry.20, section ".printk_index", align 4
@xgbe_phy_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 3214, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy re-driver settings error\0A\00", [34 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.25 = internal global ptr @xgbe_phy_init._entry.23, section ".printk_index", align 4
@xgbe_phy_init.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.26, i8 3, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy supported=0x%*pb\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 3382, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mdio port/clause not compatible (%d/%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.29 = internal global ptr @xgbe_phy_init._entry.27, section ".printk_index", align 4
@xgbe_phy_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 3393, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"redriver mdio port not compatible (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.32 = internal global ptr @xgbe_phy_init._entry.30, section ".printk_index", align 4
@xgbe_phy_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 3403, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mdiobus_alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.35 = internal global ptr @xgbe_phy_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amd-xgbe-mii\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 3416, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mdiobus_register failed\0A\00", [39 x i8] zeroinitializer }, align 32
@xgbe_phy_init._entry_ptr.40 = internal global ptr @xgbe_phy_init._entry.38, section ".printk_index", align 4
@xgbe_phy_mdio_reset_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 2835, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported MDIO reset (%#x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgbe_phy_mdio_reset_setup\00", [38 x i8] zeroinitializer }, align 32
@xgbe_phy_mdio_reset_setup._entry_ptr = internal global ptr @xgbe_phy_mdio_reset_setup._entry, section ".printk_index", align 4
@xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 2, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_phy_sfp_comm_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SFP: mux_address=%#x\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 2, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SFP: mux_channel=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 2, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_phy_sfp_gpio_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SFP: gpio_address=%#x\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 2, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SFP: gpio_mask=%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 2, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SFP: gpio_rx_los=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 2, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SFP: gpio_tx_fault=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str.2, ptr @.str.51, i8 2, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SFP: gpio_mod_absent=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str.2, ptr @.str.52, i8 2, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SFP: gpio_rate_select=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@xgbe_phy_comm_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xgbe_phy_comm_lock, i64 52), ptr getelementptr (i8, ptr @xgbe_phy_comm_lock, i64 52) }, ptr @xgbe_phy_comm_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.55, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to obtain hardware mutexes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xgbe_phy_comm_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgbe_phy_comm_lock\00", [45 x i8] zeroinitializer }, align 32
@xgbe_phy_power_off.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 2, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgbe_phy_power_off\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy powered off\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 1, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xgbe_phy_perform_ratechange\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"firmware mailbox not ready for command\0A\00", [56 x i8] zeroinitializer }, align 32
@xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 1, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"firmware mailbox command did not complete\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware mailbox reset performed\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xgbe_phy_sfp_signals.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@xgbe_phy_sfp_signals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1310, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: I2C error reading SFP GPIOs\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgbe_phy_sfp_signals\00", [43 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_signals._entry_ptr = internal global ptr @xgbe_phy_sfp_signals._entry, section ".printk_index", align 4
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_read_eeprom.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@xgbe_phy_sfp_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1247, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: I2C error setting SFP MUX\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgbe_phy_sfp_read_eeprom\00", [39 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_read_eeprom._entry_ptr = internal global ptr @xgbe_phy_sfp_read_eeprom._entry, section ".printk_index", align 4
@xgbe_phy_sfp_read_eeprom.__print_once.67 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@xgbe_phy_sfp_read_eeprom._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.2, i32 1258, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: I2C error reading SFP EEPROM\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_read_eeprom._entry_ptr.70 = internal global ptr @xgbe_phy_sfp_read_eeprom._entry.68, section ".printk_index", align 4
@xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgbe_phy_sfp_eeprom_info\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SFP detected:\0A\00", [17 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  vendor:         %s\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.2, ptr @.str.74, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  part number:    %s\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.2, ptr @.str.75, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  revision level: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.71, ptr @.str.2, ptr @.str.76, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  serial number:  %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mdio port/clause not compatible (%u/%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_phy_device failed\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_phy_find_phy_device.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgbe_phy_find_phy_device\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"external PHY id is %#010x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phy_device_register failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"phy_attach_direct failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BEL-FUSE        \00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1GBT-SFP06      \00", [47 x i8] zeroinitializer }, align 32
@phy_10_100_features_array = external dso_local local_unnamed_addr constant [4 x i32], align 4
@phy_gbit_features_array = external dso_local local_unnamed_addr constant [2 x i32], align 4
@xgbe_phy_belfuse_phy_quirks.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xgbe_phy_belfuse_phy_quirks\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BelFuse PHY quirk in place\0A\00", [36 x i8] zeroinitializer }, align 32
@xgbe_phy_finisar_phy_quirks.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xgbe_phy_finisar_phy_quirks\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Finisar PHY quirk in place\0A\00", [36 x i8] zeroinitializer }, align 32
@xgbe_phy_rrc.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 1, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xgbe_phy_rrc\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"receiver reset complete\0A\00", [39 x i8] zeroinitializer }, align 32
@xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 2, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_phy_kx_1000_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"1GbE KX mode set\0A\00", [46 x i8] zeroinitializer }, align 32
@xgbe_phy_redrv_write.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgbe_phy_redrv_write\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Redriver write checksum error\0A\00", [33 x i8] zeroinitializer }, align 32
@xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 2, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_phy_kx_2500_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"2.5GbE KX mode set\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_phy_kr_mode.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 2, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_phy_kr_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"10GbE KR mode set\0A\00", [45 x i8] zeroinitializer }, align 32
@xgbe_phy_sgmii_100_mode.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 2, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_phy_sgmii_100_mode\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"100MbE SGMII mode set\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_phy_sgmii_1000_mode.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 2, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgbe_phy_sgmii_1000_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"1GbE SGMII mode set\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_phy_x_mode.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 2, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgbe_phy_x_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1GbE X mode set\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_phy_sfi_mode.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 2, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_phy_sfi_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"10GbE SFI mode set\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I2C error setting SFP MUX\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I2C error reading SFP EEPROM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I2C error reading SFP DIAGS\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.xgbe_phy_an_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.xgbe_phy_sfp_detect = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.110 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.113 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.117 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.118 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.121 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.127 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 10000, i64 4294967295]
@__sancov_gen_cov_switch_values.130 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.131 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.132 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.145 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.146 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 9]
@__sancov_gen_cov_switch_values.148 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.149 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 10000, i64 4294967295]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3153, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3173, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3174, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3175, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3176, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3177, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3186, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3187, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3188, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3189, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3190, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3195, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3202, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3214, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3371, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3380, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3391, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3403, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3408, i32 14 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3413, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 3416, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2834, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2703, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2705, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2672, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2674, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2676, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2678, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2680, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2682, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"xgbe_phy_comm_lock\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 596, i32 28 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 386, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2053, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2002, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2025, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1976, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1309, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 4963, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1246, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1257, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1201, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1205, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1211, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1217, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1223, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1018, i32 7 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1027, i32 29 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1030, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1037, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1045, i32 29 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 912, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 919, i32 6 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 975, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 894, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2041, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2160, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 450, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2146, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2132, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2118, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2104, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2090, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2076, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1421, i32 29 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1433, i32 7 }
@___asan_gen_.468 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.469 = private constant [47 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1449, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant [30 x i8] c"switch.table.xgbe_phy_an_mode\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [33 x i8] c"switch.table.xgbe_phy_sfp_detect\00", align 1
@llvm.compiler.used = appending global [120 x ptr] [ptr @xgbe_phy_init._entry, ptr @xgbe_phy_init._entry.16, ptr @xgbe_phy_init._entry.20, ptr @xgbe_phy_init._entry.23, ptr @xgbe_phy_init._entry.27, ptr @xgbe_phy_init._entry.30, ptr @xgbe_phy_init._entry.33, ptr @xgbe_phy_init._entry.38, ptr @xgbe_phy_init._entry_ptr, ptr @xgbe_phy_init._entry_ptr.19, ptr @xgbe_phy_init._entry_ptr.22, ptr @xgbe_phy_init._entry_ptr.25, ptr @xgbe_phy_init._entry_ptr.29, ptr @xgbe_phy_init._entry_ptr.32, ptr @xgbe_phy_init._entry_ptr.35, ptr @xgbe_phy_init._entry_ptr.40, ptr @xgbe_phy_mdio_reset_setup._entry, ptr @xgbe_phy_mdio_reset_setup._entry_ptr, ptr @xgbe_phy_sfp_read_eeprom._entry, ptr @xgbe_phy_sfp_read_eeprom._entry.68, ptr @xgbe_phy_sfp_read_eeprom._entry_ptr, ptr @xgbe_phy_sfp_read_eeprom._entry_ptr.70, ptr @xgbe_phy_sfp_signals._entry, ptr @xgbe_phy_sfp_signals._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @xgbe_phy_comm_lock, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @switch.table.xgbe_phy_an_mode, ptr @switch.table.xgbe_phy_sfp_detect], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_mdio_reset_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_comm_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_sfp_signals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_sfp_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_phy_sfp_read_eeprom._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_phy_an_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgbe_phy_sfp_detect to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgbe_init_function_ptrs_phy_v2(ptr noundef writeonly %phy_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %an_pre = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 16
  %16 = ptrtoint ptr %an_pre to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xgbe_phy_an_pre, ptr %an_pre, align 4
  %an_post = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 17
  %17 = ptrtoint ptr %an_post to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xgbe_phy_an_post, ptr %an_post, align 4
  %kr_training_pre = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 18
  %18 = ptrtoint ptr %kr_training_pre to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xgbe_phy_kr_training_pre, ptr %kr_training_pre, align 4
  %kr_training_post = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 19
  %19 = ptrtoint ptr %kr_training_post to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xgbe_phy_kr_training_post, ptr %kr_training_post, align 4
  %module_info = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 20
  %20 = ptrtoint ptr %module_info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xgbe_phy_module_info, ptr %module_info, align 4
  %module_eeprom = getelementptr inbounds %struct.xgbe_phy_if, ptr %phy_if, i32 0, i32 11, i32 21
  %21 = ptrtoint ptr %module_eeprom to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xgbe_phy_module_eeprom, ptr %module_eeprom, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_init(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pp0.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 16
  %0 = ptrtoint ptr %pp0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pp0.i, align 8
  %2 = and i32 %1, 130023424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp ne i32 %2, 0
  %3 = and i32 %1, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not.i = icmp ne i32 %3, 0
  %retval.0.i875 = and i1 %tobool.not.i, %tobool4.not.i
  br i1 %retval.0.i875, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_if = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54
  %6 = ptrtoint ptr %i2c_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_if, align 4
  %call2 = tail call i32 %7(ptr noundef %pdata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 288, i32 noundef 3520) #12
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %phy_data10 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %10 = ptrtoint ptr %phy_data10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %phy_data10, align 8
  %11 = ptrtoint ptr %pp0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pp0.i, align 8
  %shr = lshr i32 %12, 8
  %and = and i32 %shr, 15
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %call.i, align 4
  %and13 = and i32 %12, 255
  %port_id = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and13, ptr %port_id, align 4
  %shr15 = lshr i32 %12, 22
  %and16 = and i32 %shr15, 31
  %port_speeds = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %port_speeds to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and16, ptr %port_speeds, align 4
  %shr18 = lshr i32 %12, 28
  %and19 = and i32 %shr18, 7
  %conn_type = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %conn_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and19, ptr %conn_type, align 4
  %shr21 = lshr i32 %12, 16
  %and22 = and i32 %shr21, 31
  %mdio_addr = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and22, ptr %mdio_addr, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and23 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end9.if.end109_crit_edge, label %do.body26

if.end9.if.end109_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

do.body26:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then31)) #12
          to label %do.body37 [label %if.then31], !srcloc !235

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev5, align 8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug379, ptr noundef %21, ptr noundef nonnull @.str.6, i32 noundef %23) #12
  br label %do.body37

do.body37:                                        ; preds = %if.then31, %do.body26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then49)) #12
          to label %do.body55 [label %if.then49], !srcloc !235

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev5, align 8
  %26 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug380, ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef %27) #12
  br label %do.body55

do.body55:                                        ; preds = %if.then49, %do.body37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then67)) #12
          to label %do.body73 [label %if.then67], !srcloc !235

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev5, align 8
  %30 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_speeds, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug381, ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef %31) #12
  br label %do.body73

do.body73:                                        ; preds = %if.then67, %do.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then85)) #12
          to label %do.body91 [label %if.then85], !srcloc !235

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev5, align 8
  %34 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %conn_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug382, ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef %35) #12
  br label %do.body91

do.body91:                                        ; preds = %if.then85, %do.body73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then103)) #12
          to label %if.end109 [label %if.then103], !srcloc !235

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev5, align 8
  %38 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mdio_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug383, ptr noundef %37, ptr noundef nonnull @.str.10, i32 noundef %39) #12
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %do.body91, %if.end9.if.end109_crit_edge
  %pp4 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 20
  %40 = ptrtoint ptr %pp4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pp4, align 8
  %shr110 = lshr i32 %41, 31
  %redrv = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 34
  %42 = ptrtoint ptr %redrv to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr110, ptr %redrv, align 4
  %shr113 = lshr i32 %41, 23
  %and114 = and i32 %shr113, 1
  %redrv_if = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 35
  %43 = ptrtoint ptr %redrv_if to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and114, ptr %redrv_if, align 4
  %shr116 = lshr i32 %41, 16
  %and117 = and i32 %shr116, 127
  %redrv_addr = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 36
  %44 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and117, ptr %redrv_addr, align 4
  %shr119 = lshr i32 %41, 24
  %and120 = and i32 %shr119, 7
  %redrv_lane = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 37
  %45 = ptrtoint ptr %redrv_lane to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and120, ptr %redrv_lane, align 4
  %shr122 = lshr i32 %41, 28
  %and123 = and i32 %shr122, 7
  %redrv_model = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 38
  %46 = ptrtoint ptr %redrv_model to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and123, ptr %redrv_model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool125.not = icmp sgt i32 %41, -1
  br i1 %tobool125.not, label %if.end109.if.end219_crit_edge, label %land.lhs.true

if.end109.if.end219_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219

land.lhs.true:                                    ; preds = %if.end109
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 4
  %and127 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %land.lhs.true.if.end219_crit_edge, label %do.body130

land.lhs.true.if.end219_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219

do.body130:                                       ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then142)) #12
          to label %do.body147 [label %if.then142], !srcloc !235

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug384, ptr noundef %50, ptr noundef nonnull @.str.11) #12
  br label %do.body147

do.body147:                                       ; preds = %if.then142, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then159)) #12
          to label %do.body165 [label %if.then159], !srcloc !235

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev5, align 8
  %53 = ptrtoint ptr %redrv_if to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %redrv_if, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug385, ptr noundef %52, ptr noundef nonnull @.str.12, i32 noundef %54) #12
  br label %do.body165

do.body165:                                       ; preds = %if.then159, %do.body147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then177)) #12
          to label %do.body183 [label %if.then177], !srcloc !235

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev5, align 8
  %57 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %redrv_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug386, ptr noundef %56, ptr noundef nonnull @.str.13, i32 noundef %58) #12
  br label %do.body183

do.body183:                                       ; preds = %if.then177, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then195)) #12
          to label %do.body201 [label %if.then195], !srcloc !235

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev5, align 8
  %61 = ptrtoint ptr %redrv_lane to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %redrv_lane, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug387, ptr noundef %60, ptr noundef nonnull @.str.14, i32 noundef %62) #12
  br label %do.body201

do.body201:                                       ; preds = %if.then195, %do.body183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then213)) #12
          to label %if.end219 [label %if.then213], !srcloc !235

if.then213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev5, align 8
  %65 = ptrtoint ptr %redrv_model to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %redrv_model, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug388, ptr noundef %64, ptr noundef nonnull @.str.15, i32 noundef %66) #12
  br label %if.end219

if.end219:                                        ; preds = %if.then213, %do.body201, %land.lhs.true.if.end219_crit_edge, %if.end109.if.end219_crit_edge
  %67 = ptrtoint ptr %phy_data10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy_data10, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %70, label %if.end219.do.end224_crit_edge [
    i32 1, label %if.end219.sw.bb.i_crit_edge
    i32 9, label %if.end219.sw.bb.i_crit_edge912
    i32 2, label %if.end219.sw.bb.i_crit_edge913
    i32 3, label %if.end219.sw.bb2.i_crit_edge
    i32 4, label %if.end219.sw.bb2.i_crit_edge914
    i32 5, label %if.end219.sw.bb2.i_crit_edge915
    i32 6, label %if.end219.sw.bb2.i_crit_edge916
    i32 7, label %if.end219.sw.bb2.i_crit_edge917
    i32 8, label %sw.bb7.i
  ]

if.end219.sw.bb2.i_crit_edge917:                  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end219.sw.bb2.i_crit_edge916:                  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end219.sw.bb2.i_crit_edge915:                  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end219.sw.bb2.i_crit_edge914:                  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end219.sw.bb2.i_crit_edge:                     ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end219.sw.bb.i_crit_edge913:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end219.sw.bb.i_crit_edge912:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end219.sw.bb.i_crit_edge:                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end219.do.end224_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end224

sw.bb.i:                                          ; preds = %if.end219.sw.bb.i_crit_edge, %if.end219.sw.bb.i_crit_edge912, %if.end219.sw.bb.i_crit_edge913
  %conn_type.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 3
  %72 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %conn_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %cmp.i = icmp eq i32 %73, 4
  br i1 %cmp.i, label %sw.bb.i.if.end228_crit_edge, label %sw.bb.i.do.end224_crit_edge

sw.bb.i.do.end224_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end224

sw.bb.i.if.end228_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end228

sw.bb2.i:                                         ; preds = %if.end219.sw.bb2.i_crit_edge, %if.end219.sw.bb2.i_crit_edge914, %if.end219.sw.bb2.i_crit_edge915, %if.end219.sw.bb2.i_crit_edge916, %if.end219.sw.bb2.i_crit_edge917
  %conn_type3.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 3
  %74 = ptrtoint ptr %conn_type3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %conn_type3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp4.i = icmp eq i32 %75, 2
  br i1 %cmp4.i, label %sw.bb2.i.if.end228_crit_edge, label %sw.bb2.i.do.end224_crit_edge

sw.bb2.i.do.end224_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end224

sw.bb2.i.if.end228_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end228

sw.bb7.i:                                         ; preds = %if.end219
  %conn_type8.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 3
  %76 = ptrtoint ptr %conn_type8.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %conn_type8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp9.i = icmp eq i32 %77, 1
  br i1 %cmp9.i, label %sw.bb7.i.sw.bb61.i_crit_edge, label %sw.bb7.i.do.end224_crit_edge

sw.bb7.i.do.end224_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end224

sw.bb7.i.sw.bb61.i_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb61.i

do.end224:                                        ; preds = %sw.bb7.i.do.end224_crit_edge, %sw.bb2.i.do.end224_crit_edge, %sw.bb.i.do.end224_crit_edge, %if.end219.do.end224_crit_edge
  %78 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev5, align 8
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call.i, align 4
  %82 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %conn_type, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.17, i32 noundef %81, i32 noundef %83) #15
  br label %cleanup

if.end228:                                        ; preds = %sw.bb2.i.if.end228_crit_edge, %sw.bb.i.if.end228_crit_edge
  %84 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %70, label %if.end228.do.end233_crit_edge [
    i32 1, label %if.end228.sw.bb.i878_crit_edge
    i32 9, label %if.end228.sw.bb.i878_crit_edge918
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb11.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb41.i
    i32 7, label %sw.bb55.i
    i32 8, label %if.end228.sw.bb61.i_crit_edge
  ]

if.end228.sw.bb61.i_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb61.i

if.end228.sw.bb.i878_crit_edge918:                ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i878

if.end228.sw.bb.i878_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i878

if.end228.do.end233_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb.i878:                                       ; preds = %if.end228.sw.bb.i878_crit_edge, %if.end228.sw.bb.i878_crit_edge918
  %port_speeds.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %85 = ptrtoint ptr %port_speeds.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port_speeds.i, align 4
  %87 = and i32 %86, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %sw.bb.i878.do.end233_crit_edge, label %sw.bb.i878.if.end237_crit_edge

sw.bb.i878.if.end237_crit_edge:                   ; preds = %sw.bb.i878
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb.i878.do.end233_crit_edge:                   ; preds = %sw.bb.i878
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb5.i:                                         ; preds = %if.end228
  %port_speeds6.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %89 = ptrtoint ptr %port_speeds6.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port_speeds6.i, align 4
  %and7.i = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %sw.bb5.i.do.end233_crit_edge, label %sw.bb5.i.if.end237_crit_edge

sw.bb5.i.if.end237_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb5.i.do.end233_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb11.i:                                        ; preds = %if.end228
  %port_speeds12.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %91 = ptrtoint ptr %port_speeds12.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port_speeds12.i, align 4
  %93 = and i32 %92, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %sw.bb11.i.do.end233_crit_edge, label %sw.bb11.i.if.end237_crit_edge

sw.bb11.i.if.end237_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb11.i.do.end233_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb21.i:                                        ; preds = %if.end228
  %port_speeds22.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %95 = ptrtoint ptr %port_speeds22.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port_speeds22.i, align 4
  %and23.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %sw.bb21.i.do.end233_crit_edge, label %sw.bb21.i.if.end237_crit_edge

sw.bb21.i.if.end237_crit_edge:                    ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb21.i.do.end233_crit_edge:                    ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb27.i:                                        ; preds = %if.end228
  %port_speeds28.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %97 = ptrtoint ptr %port_speeds28.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port_speeds28.i, align 4
  %99 = and i32 %98, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %sw.bb27.i.do.end233_crit_edge, label %sw.bb27.i.if.end237_crit_edge

sw.bb27.i.if.end237_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb27.i.do.end233_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb41.i:                                        ; preds = %if.end228
  %port_speeds42.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %101 = ptrtoint ptr %port_speeds42.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port_speeds42.i, align 4
  %103 = and i32 %102, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %sw.bb41.i.do.end233_crit_edge, label %sw.bb41.i.if.end237_crit_edge

sw.bb41.i.if.end237_crit_edge:                    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb41.i.do.end233_crit_edge:                    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb55.i:                                        ; preds = %if.end228
  %port_speeds56.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %105 = ptrtoint ptr %port_speeds56.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port_speeds56.i, align 4
  %and57.i = and i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %sw.bb55.i.do.end233_crit_edge, label %sw.bb55.i.if.end237_crit_edge

sw.bb55.i.if.end237_crit_edge:                    ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb55.i.do.end233_crit_edge:                    ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

sw.bb61.i:                                        ; preds = %if.end228.sw.bb61.i_crit_edge, %sw.bb7.i.sw.bb61.i_crit_edge
  %port_speeds62.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 2
  %107 = ptrtoint ptr %port_speeds62.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port_speeds62.i, align 4
  %109 = and i32 %108, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %sw.bb61.i.do.end233_crit_edge, label %sw.bb61.i.if.end237_crit_edge

sw.bb61.i.if.end237_crit_edge:                    ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

sw.bb61.i.do.end233_crit_edge:                    ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end233

do.end233:                                        ; preds = %sw.bb61.i.do.end233_crit_edge, %sw.bb55.i.do.end233_crit_edge, %sw.bb41.i.do.end233_crit_edge, %sw.bb27.i.do.end233_crit_edge, %sw.bb21.i.do.end233_crit_edge, %sw.bb11.i.do.end233_crit_edge, %sw.bb5.i.do.end233_crit_edge, %sw.bb.i878.do.end233_crit_edge, %if.end228.do.end233_crit_edge
  %111 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev5, align 8
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %call.i, align 4
  %115 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port_speeds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.21, i32 noundef %114, i32 noundef %116) #15
  br label %cleanup

if.end237:                                        ; preds = %sw.bb61.i.if.end237_crit_edge, %sw.bb55.i.if.end237_crit_edge, %sw.bb41.i.if.end237_crit_edge, %sw.bb27.i.if.end237_crit_edge, %sw.bb21.i.if.end237_crit_edge, %sw.bb11.i.if.end237_crit_edge, %sw.bb5.i.if.end237_crit_edge, %sw.bb.i878.if.end237_crit_edge
  %conn_type.i882 = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 3
  %117 = ptrtoint ptr %conn_type.i882 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %conn_type.i882, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp.not.i = icmp eq i32 %118, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end237.if.end241_crit_edge

if.end237.if.end241_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end241

if.end.i:                                         ; preds = %if.end237
  %pp3.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 19
  %119 = ptrtoint ptr %pp3.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pp3.i, align 4
  %and.i = and i32 %120, 3
  %mdio_reset.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 31
  %121 = ptrtoint ptr %mdio_reset.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and.i, ptr %mdio_reset.i, align 4
  %122 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %and.i, label %if.end.i.if.end241_crit_edge [
    i32 3, label %xgbe_phy_mdio_reset_setup.exit
    i32 1, label %if.then6.i
    i32 2, label %if.end.i.if.end241.sink.split_crit_edge
  ]

if.end.i.if.end241.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end241.sink.split

if.end.i.if.end241_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end241

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %pp3.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pp3.i, align 4
  %shr8.i = lshr i32 %124, 8
  %and9.i = and i32 %shr8.i, 7
  %add.i = or i32 %and9.i, 32
  %mdio_reset_addr.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 32
  %125 = ptrtoint ptr %mdio_reset_addr.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add.i, ptr %mdio_reset_addr.i, align 4
  br label %if.end241.sink.split

xgbe_phy_mdio_reset_setup.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.41, i32 noundef 3) #15
  br label %cleanup

if.end241.sink.split:                             ; preds = %if.then6.i, %if.end.i.if.end241.sink.split_crit_edge
  %.sink911 = phi i32 [ 12, %if.then6.i ], [ 4, %if.end.i.if.end241.sink.split_crit_edge ]
  %.sink = phi i32 [ 15, %if.then6.i ], [ 3, %if.end.i.if.end241.sink.split_crit_edge ]
  %128 = ptrtoint ptr %pp3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pp3.i, align 4
  %shr17.i = lshr i32 %129, %.sink911
  %and18.i = and i32 %shr17.i, %.sink
  %mdio_reset_gpio19.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %68, i32 0, i32 33
  %130 = ptrtoint ptr %mdio_reset_gpio19.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and18.i, ptr %mdio_reset_gpio19.i, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.end241.sink.split, %if.end.i.if.end241_crit_edge, %if.end237.if.end241_crit_edge
  %131 = ptrtoint ptr %redrv to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %redrv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i884 = icmp eq i32 %132, 0
  br i1 %tobool.not.i884, label %if.end241.if.end248_crit_edge, label %if.end.i886

if.end241.if.end248_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248

if.end.i886:                                      ; preds = %if.end241
  %133 = ptrtoint ptr %redrv_if to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %redrv_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp.i885 = icmp ugt i32 %134, 1
  br i1 %cmp.i885, label %if.end.i886.do.end246_crit_edge, label %if.end2.i

if.end.i886.do.end246_crit_edge:                  ; preds = %if.end.i886
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end246

if.end2.i:                                        ; preds = %if.end.i886
  %135 = ptrtoint ptr %redrv_model to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %redrv_model, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %136, label %if.end2.i.do.end246_crit_edge [
    i32 0, label %sw.bb.i887
    i32 1, label %sw.bb6.i
  ]

if.end2.i.do.end246_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end246

sw.bb.i887:                                       ; preds = %if.end2.i
  %138 = ptrtoint ptr %redrv_lane to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %redrv_lane, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %139)
  %cmp3.i = icmp ugt i32 %139, 3
  br i1 %cmp3.i, label %sw.bb.i887.do.end246_crit_edge, label %sw.bb.i887.if.end248_crit_edge

sw.bb.i887.if.end248_crit_edge:                   ; preds = %sw.bb.i887
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248

sw.bb.i887.do.end246_crit_edge:                   ; preds = %sw.bb.i887
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end246

sw.bb6.i:                                         ; preds = %if.end2.i
  %140 = ptrtoint ptr %redrv_lane to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %redrv_lane, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp8.i = icmp ugt i32 %141, 1
  br i1 %cmp8.i, label %sw.bb6.i.do.end246_crit_edge, label %sw.bb6.i.if.end248_crit_edge

sw.bb6.i.if.end248_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248

sw.bb6.i.do.end246_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end246

do.end246:                                        ; preds = %sw.bb6.i.do.end246_crit_edge, %sw.bb.i887.do.end246_crit_edge, %if.end2.i.do.end246_crit_edge, %if.end.i886.do.end246_crit_edge
  %142 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.end248:                                        ; preds = %sw.bb6.i.if.end248_crit_edge, %sw.bb.i887.if.end248_crit_edge, %if.end241.if.end248_crit_edge
  %kr_redrv = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 144
  %144 = ptrtoint ptr %kr_redrv to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %132, ptr %kr_redrv, align 4
  %cur_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 4
  %145 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 7, ptr %cur_mode, align 4
  %link_modes = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1
  %146 = call ptr @memset(ptr %link_modes, i32 0, i32 12)
  %147 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %call.i, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %148, label %if.end248.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %if.end248.sw.bb254_crit_edge
    i32 2, label %sw.bb288
    i32 3, label %sw.bb303
    i32 4, label %sw.bb335
    i32 5, label %sw.bb353
    i32 6, label %sw.bb394
    i32 7, label %sw.bb435
    i32 8, label %sw.bb470
  ]

if.end248.sw.bb254_crit_edge:                     ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb254

if.end248.cleanup_crit_edge:                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %151, 64
  store i32 %or.i, ptr %link_modes, align 4
  br label %sw.bb254

sw.bb254:                                         ; preds = %sw.bb, %if.end248.sw.bb254_crit_edge
  %152 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %link_modes, align 4
  %or.i820 = or i32 %153, 90112
  store i32 %or.i820, ptr %link_modes, align 4
  %154 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port_speeds, align 4
  %and265 = and i32 %155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %sw.bb254.if.end271_crit_edge, label %if.then267

sw.bb254.if.end271_crit_edge:                     ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271

if.then267:                                       ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #14
  %or.i821 = or i32 %153, 221184
  %156 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or.i821, ptr %link_modes, align 4
  %start_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %157 = ptrtoint ptr %start_mode to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %start_mode, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %sw.bb254.if.end271_crit_edge
  %158 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %port_speeds, align 4
  %and273 = and i32 %159, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %if.end271.if.end287_crit_edge, label %if.then275

if.end271.if.end287_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end287

if.then275:                                       ; preds = %if.end271
  %160 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %link_modes, align 4
  %or.i822 = or i32 %161, 524288
  store i32 %or.i822, ptr %link_modes, align 4
  %fec_ability = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 160
  %162 = ptrtoint ptr %fec_ability to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %fec_ability, align 8
  %and279 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %if.then275.if.end285_crit_edge, label %if.then281

if.then275.if.end285_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end285

if.then281:                                       ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  %or.i823 = or i32 %161, 1572864
  %164 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or.i823, ptr %link_modes, align 4
  br label %if.end285

if.end285:                                        ; preds = %if.then281, %if.then275.if.end285_crit_edge
  %start_mode286 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %165 = ptrtoint ptr %start_mode286 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 2, ptr %start_mode286, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.end285, %if.end271.if.end287_crit_edge
  %phydev_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %166 = ptrtoint ptr %phydev_mode to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %phydev_mode, align 4
  br label %sw.epilog

sw.bb288:                                         ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %link_modes, align 4
  %or.i827 = or i32 %168, 122880
  store i32 %or.i827, ptr %link_modes, align 4
  %start_mode301 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %169 = ptrtoint ptr %start_mode301 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %start_mode301, align 4
  %phydev_mode302 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %170 = ptrtoint ptr %phydev_mode302 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %phydev_mode302, align 4
  br label %sw.epilog

sw.bb303:                                         ; preds = %if.end248
  %171 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %link_modes, align 4
  %or.i831 = or i32 %172, 24768
  store i32 %or.i831, ptr %link_modes, align 4
  %173 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port_speeds, align 4
  %and317 = and i32 %174, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %sw.bb303.if.end324_crit_edge, label %if.then319

sw.bb303.if.end324_crit_edge:                     ; preds = %sw.bb303
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

if.then319:                                       ; preds = %sw.bb303
  call void @__sanitizer_cov_trace_pc() #14
  %or.i832 = or i32 %172, 24776
  %175 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %or.i832, ptr %link_modes, align 4
  %start_mode323 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %176 = ptrtoint ptr %start_mode323 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 4, ptr %start_mode323, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then319, %sw.bb303.if.end324_crit_edge
  %177 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port_speeds, align 4
  %and326 = and i32 %178, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  br i1 %tobool327.not, label %if.end324.if.end333_crit_edge, label %if.then328

if.end324.if.end333_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end333

if.then328:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %link_modes, align 4
  %or.i833 = or i32 %180, 32
  store i32 %or.i833, ptr %link_modes, align 4
  %start_mode332 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %181 = ptrtoint ptr %start_mode332 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 5, ptr %start_mode332, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then328, %if.end324.if.end333_crit_edge
  %phydev_mode334 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %182 = ptrtoint ptr %phydev_mode334 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %phydev_mode334, align 4
  br label %sw.epilog

sw.bb335:                                         ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #14
  %183 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %link_modes, align 4
  %or.i837 = or i32 %184, 25664
  store i32 %or.i837, ptr %link_modes, align 4
  %add.ptr.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %185 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %add.ptr.i, align 4
  %or.i838 = or i32 %186, 512
  store i32 %or.i838, ptr %add.ptr.i, align 4
  %start_mode351 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %187 = ptrtoint ptr %start_mode351 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 3, ptr %start_mode351, align 4
  %phydev_mode352 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %188 = ptrtoint ptr %phydev_mode352 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %phydev_mode352, align 4
  br label %sw.epilog

sw.bb353:                                         ; preds = %if.end248
  %189 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %link_modes, align 4
  %or.i842 = or i32 %190, 24768
  store i32 %or.i842, ptr %link_modes, align 4
  %191 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %port_speeds, align 4
  %and367 = and i32 %192, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and367)
  %tobool368.not = icmp eq i32 %and367, 0
  br i1 %tobool368.not, label %sw.bb353.if.end374_crit_edge, label %if.then369

sw.bb353.if.end374_crit_edge:                     ; preds = %sw.bb353
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end374

if.then369:                                       ; preds = %sw.bb353
  call void @__sanitizer_cov_trace_pc() #14
  %or.i843 = or i32 %190, 24776
  %193 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %or.i843, ptr %link_modes, align 4
  %start_mode373 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %194 = ptrtoint ptr %start_mode373 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 4, ptr %start_mode373, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.then369, %sw.bb353.if.end374_crit_edge
  %195 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %port_speeds, align 4
  %and376 = and i32 %196, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %if.end374.if.end383_crit_edge, label %if.then378

if.end374.if.end383_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end383

if.then378:                                       ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %link_modes, align 4
  %or.i844 = or i32 %198, 32
  store i32 %or.i844, ptr %link_modes, align 4
  %start_mode382 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %199 = ptrtoint ptr %start_mode382 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 5, ptr %start_mode382, align 4
  br label %if.end383

if.end383:                                        ; preds = %if.then378, %if.end374.if.end383_crit_edge
  %200 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %port_speeds, align 4
  %and385 = and i32 %201, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and385)
  %tobool386.not = icmp eq i32 %and385, 0
  br i1 %tobool386.not, label %if.end383.if.end392_crit_edge, label %if.then387

if.end383.if.end392_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end392

if.then387:                                       ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i845 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %202 = ptrtoint ptr %add.ptr.i845 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr.i845, align 4
  %or.i846 = or i32 %203, 32768
  store i32 %or.i846, ptr %add.ptr.i845, align 4
  %start_mode391 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %204 = ptrtoint ptr %start_mode391 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1, ptr %start_mode391, align 4
  br label %if.end392

if.end392:                                        ; preds = %if.then387, %if.end383.if.end392_crit_edge
  %phydev_mode393 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %205 = ptrtoint ptr %phydev_mode393 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 2, ptr %phydev_mode393, align 4
  br label %sw.epilog

sw.bb394:                                         ; preds = %if.end248
  %206 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %link_modes, align 4
  %or.i850 = or i32 %207, 24768
  store i32 %or.i850, ptr %link_modes, align 4
  %208 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %port_speeds, align 4
  %and408 = and i32 %209, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and408)
  %tobool409.not = icmp eq i32 %and408, 0
  br i1 %tobool409.not, label %sw.bb394.if.end415_crit_edge, label %if.then410

sw.bb394.if.end415_crit_edge:                     ; preds = %sw.bb394
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end415

if.then410:                                       ; preds = %sw.bb394
  call void @__sanitizer_cov_trace_pc() #14
  %or.i851 = or i32 %207, 24776
  %210 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %or.i851, ptr %link_modes, align 4
  %start_mode414 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %211 = ptrtoint ptr %start_mode414 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 4, ptr %start_mode414, align 4
  br label %if.end415

if.end415:                                        ; preds = %if.then410, %sw.bb394.if.end415_crit_edge
  %212 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port_speeds, align 4
  %and417 = and i32 %213, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and417)
  %tobool418.not = icmp eq i32 %and417, 0
  br i1 %tobool418.not, label %if.end415.if.end424_crit_edge, label %if.then419

if.end415.if.end424_crit_edge:                    ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end424

if.then419:                                       ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #14
  %214 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %link_modes, align 4
  %or.i852 = or i32 %215, 32
  store i32 %or.i852, ptr %link_modes, align 4
  %start_mode423 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %216 = ptrtoint ptr %start_mode423 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 5, ptr %start_mode423, align 4
  br label %if.end424

if.end424:                                        ; preds = %if.then419, %if.end415.if.end424_crit_edge
  %217 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %port_speeds, align 4
  %and426 = and i32 %218, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and426)
  %tobool427.not = icmp eq i32 %and426, 0
  br i1 %tobool427.not, label %if.end424.if.end433_crit_edge, label %if.then428

if.end424.if.end433_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end433

if.then428:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #14
  %219 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %link_modes, align 4
  %or.i853 = or i32 %220, 4096
  store i32 %or.i853, ptr %link_modes, align 4
  %start_mode432 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %221 = ptrtoint ptr %start_mode432 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 2, ptr %start_mode432, align 4
  br label %if.end433

if.end433:                                        ; preds = %if.then428, %if.end424.if.end433_crit_edge
  %phydev_mode434 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %222 = ptrtoint ptr %phydev_mode434 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 2, ptr %phydev_mode434, align 4
  br label %sw.epilog

sw.bb435:                                         ; preds = %if.end248
  %223 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %link_modes, align 4
  %or.i857 = or i32 %224, 25664
  store i32 %or.i857, ptr %link_modes, align 4
  %add.ptr.i858 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %225 = ptrtoint ptr %add.ptr.i858 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %add.ptr.i858, align 4
  %or.i865 = or i32 %226, 30720
  store i32 %or.i865, ptr %add.ptr.i858, align 4
  %fec_ability460 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 160
  %227 = ptrtoint ptr %fec_ability460 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %fec_ability460, align 8
  %and461 = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and461)
  %tobool462.not = icmp eq i32 %and461, 0
  br i1 %tobool462.not, label %sw.bb435.if.end467_crit_edge, label %if.then463

sw.bb435.if.end467_crit_edge:                     ; preds = %sw.bb435
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end467

if.then463:                                       ; preds = %sw.bb435
  call void @__sanitizer_cov_trace_pc() #14
  %or.i866 = or i32 %224, 1074240
  %229 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %or.i866, ptr %link_modes, align 4
  br label %if.end467

if.end467:                                        ; preds = %if.then463, %sw.bb435.if.end467_crit_edge
  %start_mode468 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %230 = ptrtoint ptr %start_mode468 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 6, ptr %start_mode468, align 4
  %phydev_mode469 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %231 = ptrtoint ptr %phydev_mode469 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %phydev_mode469, align 4
  br label %sw.epilog

sw.bb470:                                         ; preds = %if.end248
  %232 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %link_modes, align 4
  %or.i871 = or i32 %233, 25792
  store i32 %or.i871, ptr %link_modes, align 4
  %234 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %port_speeds, align 4
  %and487 = and i32 %235, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and487)
  %tobool488.not = icmp eq i32 %and487, 0
  br i1 %tobool488.not, label %sw.bb470.if.end491_crit_edge, label %if.then489

sw.bb470.if.end491_crit_edge:                     ; preds = %sw.bb470
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end491

if.then489:                                       ; preds = %sw.bb470
  call void @__sanitizer_cov_trace_pc() #14
  %start_mode490 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %236 = ptrtoint ptr %start_mode490 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 4, ptr %start_mode490, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.then489, %sw.bb470.if.end491_crit_edge
  %237 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %port_speeds, align 4
  %and493 = and i32 %238, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and493)
  %tobool494.not = icmp eq i32 %and493, 0
  br i1 %tobool494.not, label %if.end491.if.end497_crit_edge, label %if.then495

if.end491.if.end497_crit_edge:                    ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end497

if.then495:                                       ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  %start_mode496 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %239 = ptrtoint ptr %start_mode496 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 5, ptr %start_mode496, align 4
  br label %if.end497

if.end497:                                        ; preds = %if.then495, %if.end491.if.end497_crit_edge
  %240 = ptrtoint ptr %port_speeds to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %port_speeds, align 4
  %and499 = and i32 %241, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and499)
  %tobool500.not = icmp eq i32 %and499, 0
  br i1 %tobool500.not, label %if.end497.if.end503_crit_edge, label %if.then501

if.end497.if.end503_crit_edge:                    ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end503

if.then501:                                       ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #14
  %start_mode502 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 5
  %242 = ptrtoint ptr %start_mode502 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 6, ptr %start_mode502, align 4
  br label %if.end503

if.end503:                                        ; preds = %if.then501, %if.end497.if.end503_crit_edge
  %phydev_mode504 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %243 = ptrtoint ptr %phydev_mode504 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1, ptr %phydev_mode504, align 4
  tail call fastcc void @xgbe_phy_sfp_setup(ptr noundef %pdata)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end503, %if.end467, %if.end433, %if.end392, %sw.bb335, %if.end333, %sw.bb288, %if.end287
  %244 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %msg_enable, align 4
  %and506 = and i32 %245, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and506)
  %tobool507.not = icmp eq i32 %and506, 0
  br i1 %tobool507.not, label %sw.epilog.if.end529_crit_edge, label %do.body509

sw.epilog.if.end529_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end529

do.body509:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_init.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_init, %if.then521)) #12
          to label %if.end529 [label %if.then521], !srcloc !235

if.then521:                                       ; preds = %do.body509
  call void @__sanitizer_cov_trace_pc() #14
  %246 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_init.__UNIQUE_ID_ddebug389, ptr noundef %247, ptr noundef nonnull @.str.26, i32 noundef 92, ptr noundef %link_modes) #12
  br label %if.end529

if.end529:                                        ; preds = %if.then521, %do.body509, %sw.epilog.if.end529_crit_edge
  %248 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %conn_type, align 4
  %and531 = and i32 %249, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and531)
  %tobool532.not = icmp eq i32 %and531, 0
  br i1 %tobool532.not, label %if.end529.if.end548_crit_edge, label %land.lhs.true533

if.end529.if.end548_crit_edge:                    ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end548

land.lhs.true533:                                 ; preds = %if.end529
  %phydev_mode534 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 28
  %250 = ptrtoint ptr %phydev_mode534 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %phydev_mode534, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp.not = icmp eq i32 %251, 0
  br i1 %cmp.not, label %land.lhs.true533.if.end548_crit_edge, label %if.then535

land.lhs.true533.if.end548_crit_edge:             ; preds = %land.lhs.true533
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end548

if.then535:                                       ; preds = %land.lhs.true533
  %set_ext_mii_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 13
  %252 = ptrtoint ptr %set_ext_mii_mode to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %set_ext_mii_mode, align 4
  %254 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %mdio_addr, align 4
  %call538 = tail call i32 %253(ptr noundef %pdata, i32 noundef %255, i32 noundef %251) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call538)
  %tobool539.not = icmp eq i32 %call538, 0
  br i1 %tobool539.not, label %if.then535.if.end548_crit_edge, label %do.end543

if.then535.if.end548_crit_edge:                   ; preds = %if.then535
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end548

do.end543:                                        ; preds = %if.then535
  call void @__sanitizer_cov_trace_pc() #14
  %256 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev5, align 8
  %258 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mdio_addr, align 4
  %260 = ptrtoint ptr %phydev_mode534 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %phydev_mode534, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.28, i32 noundef %259, i32 noundef %261) #15
  br label %cleanup

if.end548:                                        ; preds = %if.then535.if.end548_crit_edge, %land.lhs.true533.if.end548_crit_edge, %if.end529.if.end548_crit_edge
  %262 = ptrtoint ptr %redrv to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %redrv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool550.not = icmp eq i32 %263, 0
  br i1 %tobool550.not, label %if.end548.if.end567_crit_edge, label %land.lhs.true551

if.end548.if.end567_crit_edge:                    ; preds = %if.end548
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end567

land.lhs.true551:                                 ; preds = %if.end548
  %264 = ptrtoint ptr %redrv_if to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %redrv_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool553.not = icmp eq i32 %265, 0
  br i1 %tobool553.not, label %if.then554, label %land.lhs.true551.if.end567_crit_edge

land.lhs.true551.if.end567_crit_edge:             ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end567

if.then554:                                       ; preds = %land.lhs.true551
  %set_ext_mii_mode556 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 13
  %266 = ptrtoint ptr %set_ext_mii_mode556 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %set_ext_mii_mode556, align 4
  %268 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %redrv_addr, align 4
  %call558 = tail call i32 %267(ptr noundef %pdata, i32 noundef %269, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call558)
  %tobool559.not = icmp eq i32 %call558, 0
  br i1 %tobool559.not, label %if.then554.if.end567_crit_edge, label %do.end563

if.then554.if.end567_crit_edge:                   ; preds = %if.then554
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end567

do.end563:                                        ; preds = %if.then554
  call void @__sanitizer_cov_trace_pc() #14
  %270 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev5, align 8
  %272 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %redrv_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.31, i32 noundef %273) #15
  br label %cleanup

if.end567:                                        ; preds = %if.then554.if.end567_crit_edge, %land.lhs.true551.if.end567_crit_edge, %if.end548.if.end567_crit_edge
  %phy_cdr_delay = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 40
  %274 = ptrtoint ptr %phy_cdr_delay to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 10000, ptr %phy_cdr_delay, align 4
  %275 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev5, align 8
  %call.i890 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %276, i32 noundef 0) #12
  %tobool570.not = icmp eq ptr %call.i890, null
  br i1 %tobool570.not, label %do.end574, label %if.end576

do.end574:                                        ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #14
  %277 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.34) #15
  br label %cleanup

if.end576:                                        ; preds = %if.end567
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i890, i32 0, i32 3
  %279 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %pdata, ptr %priv, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i890, i32 0, i32 1
  %280 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr @.str.36, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i890, i32 0, i32 4
  %281 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr @xgbe_phy_mii_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i890, i32 0, i32 5
  %282 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr @xgbe_phy_mii_write, ptr %write, align 8
  %283 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev5, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i890, i32 0, i32 9
  %285 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %284, ptr %parent, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %call.i890, i32 0, i32 13
  %286 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 -1, ptr %phy_mask, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i890, i32 0, i32 2
  %287 = load ptr, ptr %dev5, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %287, i32 0, i32 3
  %288 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i891 = icmp eq ptr %289, null
  br i1 %tobool.not.i891, label %if.end.i892, label %if.end576.dev_name.exit_crit_edge

if.end576.dev_name.exit_crit_edge:                ; preds = %if.end576
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i892:                                      ; preds = %if.end576
  call void @__sanitizer_cov_trace_pc() #14
  %290 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %287, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i892, %if.end576.dev_name.exit_crit_edge
  %retval.0.i893 = phi ptr [ %291, %if.end.i892 ], [ %289, %if.end576.dev_name.exit_crit_edge ]
  %call581 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.37, ptr noundef %retval.0.i893)
  %call582 = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i890, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call582)
  %tobool583.not = icmp eq i32 %call582, 0
  br i1 %tobool583.not, label %if.end589, label %do.end587

do.end587:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %292 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end589:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mii590 = getelementptr inbounds %struct.xgbe_phy_data, ptr %call.i, i32 0, i32 29
  %294 = ptrtoint ptr %mii590 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %call.i890, ptr %mii590, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end589, %do.end587, %do.end574, %do.end563, %do.end543, %if.end248.cleanup_crit_edge, %do.end246, %xgbe_phy_mdio_reset_setup.exit, %do.end233, %do.end224, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end224 ], [ -22, %do.end233 ], [ -22, %do.end246 ], [ -22, %do.end543 ], [ %call582, %do.end587 ], [ 0, %if.end589 ], [ -12, %do.end574 ], [ -22, %do.end563 ], [ -19, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ -22, %xgbe_phy_mdio_reset_setup.exit ], [ -22, %if.end248.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_exit(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %mii = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_reset(ptr noundef %pdata) #2 align 64 {
entry:
  %i2c_op.i72.i.i = alloca %struct.xgbe_i2c_op, align 4
  %i2c_op.i68.i.i = alloca %struct.xgbe_i2c_op, align 4
  %i2c_op.i.i.i = alloca %struct.xgbe_i2c_op, align 4
  %gpio_reg.i.i = alloca i8, align 1
  %gpio_ports.i.i = alloca [2 x i8], align 1
  %gpio_data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %cur_mode2 = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur_mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_mode2, align 4
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 0, i32 noundef 0) #12
  %4 = ptrtoint ptr %cur_mode2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %cur_mode2, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.xgbe_phy_power_off.exit_crit_edge, label %do.body2.i

entry.xgbe_phy_power_off.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_power_off.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_power_off.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_reset, %if.then6.i)) #12
          to label %xgbe_phy_power_off.exit [label %if.then6.i], !srcloc !235

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_power_off.__UNIQUE_ID_ddebug363, ptr noundef %8, ptr noundef nonnull @.str.57) #12
  br label %xgbe_phy_power_off.exit

xgbe_phy_power_off.exit:                          ; preds = %if.then6.i, %do.body2.i, %entry.xgbe_phy_power_off.exit_crit_edge
  tail call void @xgbe_phy_set_mode(ptr noundef %pdata, i32 noundef %3)
  %phydev = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 30
  %9 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phydev, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %xgbe_phy_power_off.exit.cleanup_crit_edge, label %if.end

xgbe_phy_power_off.exit.cleanup_crit_edge:        ; preds = %xgbe_phy_power_off.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %xgbe_phy_power_off.exit
  %11 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_data1, align 8
  %conn_type.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %conn_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %conn_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @xgbe_phy_get_comm_ownership(ptr noundef %pdata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i17 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i17, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %mdio_reset.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %12, i32 0, i32 31
  %15 = ptrtoint ptr %mdio_reset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mdio_reset.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %16, label %xgbe_phy_mdio_reset.exit.thread23 [
    i32 1, label %if.then5.i
    i32 2, label %if.then9.i
  ]

xgbe_phy_mdio_reset.exit.thread23:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  br label %if.end5

if.then5.i:                                       ; preds = %if.end3.i
  %18 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gpio_reg.i.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gpio_ports.i.i) #12
  %20 = ptrtoint ptr %gpio_ports.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %gpio_ports.i.i, align 1, !annotation !236
  %21 = getelementptr inbounds [2 x i8], ptr %gpio_ports.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %21, align 1, !annotation !236
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %gpio_data.i.i) #12
  %23 = getelementptr inbounds [3 x i8], ptr %gpio_data.i.i, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %gpio_data.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %gpio_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %gpio_reg.i.i, align 1
  %mdio_reset_addr.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %19, i32 0, i32 32
  %26 = ptrtoint ptr %mdio_reset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mdio_reset_addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i.i.i) #12
  %28 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i.i, i32 0, i32 2
  %30 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i.i, i32 0, i32 3
  %i2c_xfer.i.i.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %31 = ptrtoint ptr %i2c_op.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %i2c_op.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %28, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %30, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %gpio_reg.i.i, ptr %29, align 4
  %35 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %36(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i.i) #12
  %37 = zext i32 %call.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call.i.i.i.i, label %if.then5.i.xgbe_phy_i2c_read.exit.i.i_crit_edge [
    i32 0, label %if.then5.i.again2.i.i.i_crit_edge
    i32 -11, label %land.lhs.true.i.i.i
  ]

if.then5.i.again2.i.i.i_crit_edge:                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i.i.i

if.then5.i.xgbe_phy_i2c_read.exit.i.i_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then5.i
  %38 = ptrtoint ptr %i2c_op.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %i2c_op.i.i.i, align 4
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %27, ptr %28, align 4
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %30, align 4
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %gpio_reg.i.i, ptr %29, align 4
  %42 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i.1.i.i.i = call i32 %43(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i.i) #12
  %44 = zext i32 %call.i.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call.i.1.i.i.i, label %land.lhs.true.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge [
    i32 0, label %land.lhs.true.i.i.i.again2.i.i.i_crit_edge
    i32 -11, label %xgbe_phy_i2c_read.exit.thread.i.i
  ]

land.lhs.true.i.i.i.again2.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i.i.i

land.lhs.true.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i.i

xgbe_phy_i2c_read.exit.thread.i.i:                ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i.i) #12
  br label %xgbe_phy_i2c_mdio_reset.exit.i

again2.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.again2.i.i.i_crit_edge, %if.then5.i.again2.i.i.i_crit_edge
  %45 = ptrtoint ptr %i2c_op.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %i2c_op.i.i.i, align 4
  %46 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %27, ptr %28, align 4
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %30, align 4
  %48 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %gpio_ports.i.i, ptr %29, align 4
  %49 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i2.i.i.i = call i32 %50(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i2.i.i.i)
  %cmp10.i.i.i.not = icmp eq i32 %call.i2.i.i.i, -11
  br i1 %cmp10.i.i.i.not, label %again2.i.i.i.1, label %again2.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge

again2.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge: ; preds = %again2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i.i

again2.i.i.i.1:                                   ; preds = %again2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %i2c_op.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %i2c_op.i.i.i, align 4
  %52 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %27, ptr %28, align 4
  %53 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %30, align 4
  %54 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %gpio_ports.i.i, ptr %29, align 4
  %55 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i2.i.i.i.1 = call i32 %56(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i.i) #12
  br label %xgbe_phy_i2c_read.exit.i.i

xgbe_phy_i2c_read.exit.i.i:                       ; preds = %again2.i.i.i.1, %again2.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge, %land.lhs.true.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge, %if.then5.i.xgbe_phy_i2c_read.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i.i, %if.then5.i.xgbe_phy_i2c_read.exit.i.i_crit_edge ], [ %call.i.1.i.i.i, %land.lhs.true.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge ], [ %call.i2.i.i.i, %again2.i.i.i.xgbe_phy_i2c_read.exit.i.i_crit_edge ], [ %call.i2.i.i.i.1, %again2.i.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %xgbe_phy_i2c_read.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge

xgbe_phy_i2c_read.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge: ; preds = %xgbe_phy_i2c_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_mdio_reset.exit.i

if.end.i.i:                                       ; preds = %xgbe_phy_i2c_read.exit.i.i
  %57 = ptrtoint ptr %gpio_data.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %gpio_data.i.i, align 1
  %58 = ptrtoint ptr %gpio_ports.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %gpio_ports.i.i, align 1
  %60 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %23, align 1
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %21, align 1
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %24, align 1
  %mdio_reset_gpio.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %19, i32 0, i32 33
  %64 = ptrtoint ptr %mdio_reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mdio_reset_gpio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %65)
  %cmp.i.i = icmp ult i32 %65, 8
  %rem11.i.i = and i32 %65, 7
  %.sink84.i.i = select i1 %cmp.i.i, i8 %59, i8 %62
  %.sink.i.i = select i1 %cmp.i.i, ptr %23, ptr %24
  %shl12.i.i = shl nuw nsw i32 1, %rem11.i.i
  %66 = trunc i32 %shl12.i.i to i8
  %conv16.i.i = or i8 %.sink84.i.i, %66
  %67 = ptrtoint ptr %.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv16.i.i, ptr %.sink.i.i, align 1
  %68 = ptrtoint ptr %mdio_reset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mdio_reset_addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i68.i.i) #12
  %70 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i68.i.i, i32 0, i32 1
  %71 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i68.i.i, i32 0, i32 2
  %72 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i68.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %i2c_op.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %i2c_op.i68.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %69, ptr %70, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %72, align 4
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %gpio_data.i.i, ptr %71, align 4
  %77 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i.i70.i.i = call i32 %78(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i68.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i70.i.i)
  %cmp.i.i.i.not = icmp eq i32 %call.i.i70.i.i, -11
  br i1 %cmp.i.i.i.not, label %again.i.i.i.1, label %if.end.i.i.xgbe_phy_i2c_write.exit.i.i_crit_edge

if.end.i.i.xgbe_phy_i2c_write.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_write.exit.i.i

again.i.i.i.1:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %i2c_op.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %i2c_op.i68.i.i, align 4
  %80 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %69, ptr %70, align 4
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %72, align 4
  %82 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %gpio_data.i.i, ptr %71, align 4
  %83 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i.i70.i.i.1 = call i32 %84(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i68.i.i) #12
  br label %xgbe_phy_i2c_write.exit.i.i

xgbe_phy_i2c_write.exit.i.i:                      ; preds = %again.i.i.i.1, %if.end.i.i.xgbe_phy_i2c_write.exit.i.i_crit_edge
  %call.i.i70.i.i.lcssa = phi i32 [ %call.i.i70.i.i, %if.end.i.i.xgbe_phy_i2c_write.exit.i.i_crit_edge ], [ %call.i.i70.i.i.1, %again.i.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i68.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70.i.i.lcssa)
  %tobool21.not.i.i = icmp eq i32 %call.i.i70.i.i.lcssa, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %xgbe_phy_i2c_write.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge

xgbe_phy_i2c_write.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge: ; preds = %xgbe_phy_i2c_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_mdio_reset.exit.i

if.end23.i.i:                                     ; preds = %xgbe_phy_i2c_write.exit.i.i
  %85 = ptrtoint ptr %mdio_reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mdio_reset_gpio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %86)
  %cmp25.i.i = icmp ult i32 %86, 8
  %rem36.i.i = and i32 %86, 7
  %.sink90.i.i = select i1 %cmp25.i.i, ptr %23, ptr %24
  %shl37.i.i = shl nuw nsw i32 1, %rem36.i.i
  %87 = ptrtoint ptr %.sink90.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %.sink90.i.i, align 1
  %89 = trunc i32 %shl37.i.i to i8
  %90 = xor i8 %89, -1
  %conv42.i.i = and i8 %88, %90
  store i8 %conv42.i.i, ptr %.sink90.i.i, align 1
  %91 = ptrtoint ptr %mdio_reset_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mdio_reset_addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i72.i.i) #12
  %93 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i72.i.i, i32 0, i32 1
  %94 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i72.i.i, i32 0, i32 2
  %95 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i72.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %i2c_op.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %i2c_op.i72.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %92, ptr %93, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3, ptr %95, align 4
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %gpio_data.i.i, ptr %94, align 4
  %100 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i.i75.i.i = call i32 %101(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i72.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i75.i.i)
  %cmp.i76.i.i.not = icmp eq i32 %call.i.i75.i.i, -11
  br i1 %cmp.i76.i.i.not, label %again.i80.i.i.1, label %if.end23.i.i.xgbe_phy_i2c_write.exit81.i.i_crit_edge

if.end23.i.i.xgbe_phy_i2c_write.exit81.i.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_write.exit81.i.i

again.i80.i.i.1:                                  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %i2c_op.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %i2c_op.i72.i.i, align 4
  %103 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %92, ptr %93, align 4
  %104 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 3, ptr %95, align 4
  %105 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %gpio_data.i.i, ptr %94, align 4
  %106 = ptrtoint ptr %i2c_xfer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i2c_xfer.i.i.i.i, align 4
  %call.i.i75.i.i.1 = call i32 %107(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i72.i.i) #12
  br label %xgbe_phy_i2c_write.exit81.i.i

xgbe_phy_i2c_write.exit81.i.i:                    ; preds = %again.i80.i.i.1, %if.end23.i.i.xgbe_phy_i2c_write.exit81.i.i_crit_edge
  %call.i.i75.i.i.lcssa = phi i32 [ %call.i.i75.i.i, %if.end23.i.i.xgbe_phy_i2c_write.exit81.i.i_crit_edge ], [ %call.i.i75.i.i.1, %again.i80.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i72.i.i) #12
  br label %xgbe_phy_i2c_mdio_reset.exit.i

xgbe_phy_i2c_mdio_reset.exit.i:                   ; preds = %xgbe_phy_i2c_write.exit81.i.i, %xgbe_phy_i2c_write.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge, %xgbe_phy_i2c_read.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge, %xgbe_phy_i2c_read.exit.thread.i.i
  %retval.0.i.i = phi i32 [ %call.i.i75.i.i.lcssa, %xgbe_phy_i2c_write.exit81.i.i ], [ %retval.0.i.i.i, %xgbe_phy_i2c_read.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge ], [ %call.i.i70.i.i.lcssa, %xgbe_phy_i2c_write.exit.i.i.xgbe_phy_i2c_mdio_reset.exit.i_crit_edge ], [ -11, %xgbe_phy_i2c_read.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %gpio_data.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gpio_ports.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gpio_reg.i.i) #12
  br label %xgbe_phy_mdio_reset.exit

if.then9.i:                                       ; preds = %if.end3.i
  %108 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %phy_data1, align 8
  %set_gpio.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 16
  %110 = ptrtoint ptr %set_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %set_gpio.i.i, align 4
  %mdio_reset_gpio.i23.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %109, i32 0, i32 33
  %112 = ptrtoint ptr %mdio_reset_gpio.i23.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mdio_reset_gpio.i23.i, align 4
  %call.i.i = tail call i32 %111(ptr noundef %pdata, i32 noundef %113) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i24.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i24.i, label %if.end.i25.i, label %xgbe_phy_mdio_reset.exit.thread26

xgbe_phy_mdio_reset.exit.thread26:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  br label %cleanup

if.end.i25.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %clr_gpio.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 17
  %114 = ptrtoint ptr %clr_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clr_gpio.i.i, align 4
  %116 = ptrtoint ptr %mdio_reset_gpio.i23.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mdio_reset_gpio.i23.i, align 4
  %call4.i.i = tail call i32 %115(ptr noundef %pdata, i32 noundef %117) #12
  br label %xgbe_phy_mdio_reset.exit

xgbe_phy_mdio_reset.exit:                         ; preds = %if.end.i25.i, %xgbe_phy_i2c_mdio_reset.exit.i
  %ret.0.i = phi i32 [ %retval.0.i.i, %xgbe_phy_i2c_mdio_reset.exit.i ], [ %call4.i.i, %if.end.i25.i ]
  call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool3.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool3.not, label %xgbe_phy_mdio_reset.exit.if.end5_crit_edge, label %xgbe_phy_mdio_reset.exit.cleanup_crit_edge

xgbe_phy_mdio_reset.exit.cleanup_crit_edge:       ; preds = %xgbe_phy_mdio_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xgbe_phy_mdio_reset.exit.if.end5_crit_edge:       ; preds = %xgbe_phy_mdio_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %xgbe_phy_mdio_reset.exit.if.end5_crit_edge, %xgbe_phy_mdio_reset.exit.thread23, %if.end.if.end5_crit_edge
  %118 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %phydev, align 4
  %call7 = call i32 @phy_init_hw(ptr noundef %119) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %xgbe_phy_mdio_reset.exit.cleanup_crit_edge, %xgbe_phy_mdio_reset.exit.thread26, %if.end.i.cleanup_crit_edge, %xgbe_phy_power_off.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %xgbe_phy_power_off.exit.cleanup_crit_edge ], [ %ret.0.i, %xgbe_phy_mdio_reset.exit.cleanup_crit_edge ], [ %call.i.i, %xgbe_phy_mdio_reset.exit.thread26 ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_start(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %i2c_start = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 1
  %2 = ptrtoint ptr %i2c_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_start, align 4
  %call = tail call i32 %3(ptr noundef %pdata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %redrv = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %redrv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %redrv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %redrv_if = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %redrv_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %redrv_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then4:                                         ; preds = %land.lhs.true
  %set_ext_mii_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 13
  %8 = ptrtoint ptr %set_ext_mii_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_ext_mii_mode, align 4
  %redrv_addr = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 36
  %10 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %redrv_addr, align 4
  %call5 = tail call i32 %9(ptr noundef %pdata, i32 noundef %11, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end10_crit_edge, label %if.then7

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 8
  %14 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %redrv_addr, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.31, i32 noundef %15) #15
  br label %cleanup

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %start_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %start_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_mode, align 4
  tail call void @xgbe_phy_set_mode(ptr noundef %pdata, i32 noundef %17)
  %18 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_data1, align 8
  %debugfs_an_cdr_workaround.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  %20 = ptrtoint ptr %debugfs_an_cdr_workaround.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %debugfs_an_cdr_workaround.i, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end10.xgbe_phy_cdr_track.exit_crit_edge, label %if.end.i

if.end10.xgbe_phy_cdr_track.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_cdr_track.exit

if.end.i:                                         ; preds = %if.end10
  %phy_cdr_notrack.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %19, i32 0, i32 39
  %22 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phy_cdr_notrack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i = icmp eq i32 %23, 0
  br i1 %tobool2.not.i, label %if.end.i.xgbe_phy_cdr_track.exit_crit_edge, label %if.end4.i

if.end.i.xgbe_phy_cdr_track.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_cdr_track.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %phy_cdr_delay.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %19, i32 0, i32 40
  %24 = ptrtoint ptr %phy_cdr_delay.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_cdr_delay.i, align 4
  %add.i = add i32 %25, 500
  tail call void @usleep_range_state(i32 noundef %25, i32 noundef %add.i, i32 noundef 2) #12
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %26 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %27(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214) #12
  %or.i = or i32 %call.i, 1
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %28 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %29(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214, i32 noundef %or.i) #12
  %30 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %phy_cdr_notrack.i, align 4
  br label %xgbe_phy_cdr_track.exit

xgbe_phy_cdr_track.exit:                          ; preds = %if.end4.i, %if.end.i.xgbe_phy_cdr_track.exit_crit_edge, %if.end10.xgbe_phy_cdr_track.exit_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %32)
  %cond = icmp eq i32 %32, 8
  br i1 %cond, label %sw.bb, label %xgbe_phy_cdr_track.exit.sw.epilog_crit_edge

xgbe_phy_cdr_track.exit.sw.epilog_crit_edge:      ; preds = %xgbe_phy_cdr_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %xgbe_phy_cdr_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xgbe_phy_sfp_detect(ptr noundef %pdata)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %xgbe_phy_cdr_track.exit.sw.epilog_crit_edge
  %call11 = tail call fastcc i32 @xgbe_phy_find_phy_device(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.epilog.cleanup_crit_edge, label %err_i2c

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_i2c:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %i2c_stop = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 2
  %33 = ptrtoint ptr %i2c_stop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_stop, align 4
  tail call void %34(ptr noundef %pdata) #12
  br label %cleanup

cleanup:                                          ; preds = %err_i2c, %sw.epilog.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %err_i2c ], [ %call5, %if.then7 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_stop(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %phydev.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.xgbe_phy_free_phy_device.exit_crit_edge, label %if.then.i

entry.xgbe_phy_free_phy_device.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_free_phy_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_detach(ptr noundef nonnull %3) #12
  %4 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev.i, align 4
  tail call void @phy_device_remove(ptr noundef %5) #12
  %6 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev.i, align 4
  tail call void @phy_device_free(ptr noundef %7) #12
  %8 = ptrtoint ptr %phydev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %phydev.i, align 4
  br label %xgbe_phy_free_phy_device.exit

xgbe_phy_free_phy_device.exit:                    ; preds = %if.then.i, %entry.xgbe_phy_free_phy_device.exit_crit_edge
  %sfp_rx_los.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %sfp_rx_los.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sfp_rx_los.i, align 4
  %sfp_tx_fault.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %sfp_tx_fault.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sfp_tx_fault.i, align 4
  %sfp_mod_absent.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %sfp_mod_absent.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sfp_mod_absent.i, align 4
  %sfp_base.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %sfp_base.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sfp_base.i, align 4
  %sfp_cable.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %sfp_cable.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sfp_cable.i, align 4
  %sfp_speed.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %sfp_speed.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sfp_speed.i, align 4
  %15 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_data1, align 8
  %phydev.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %16, i32 0, i32 30
  %17 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phydev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %xgbe_phy_free_phy_device.exit.xgbe_phy_sfp_mod_absent.exit_crit_edge, label %if.then.i.i

xgbe_phy_free_phy_device.exit.xgbe_phy_sfp_mod_absent.exit_crit_edge: ; preds = %xgbe_phy_free_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_mod_absent.exit

if.then.i.i:                                      ; preds = %xgbe_phy_free_phy_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_detach(ptr noundef nonnull %18) #12
  %19 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev.i.i, align 4
  tail call void @phy_device_remove(ptr noundef %20) #12
  %21 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phydev.i.i, align 4
  tail call void @phy_device_free(ptr noundef %22) #12
  %23 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %phydev.i.i, align 4
  br label %xgbe_phy_sfp_mod_absent.exit

xgbe_phy_sfp_mod_absent.exit:                     ; preds = %if.then.i.i, %xgbe_phy_free_phy_device.exit.xgbe_phy_sfp_mod_absent.exit_crit_edge
  %sfp_mod_absent.i9 = getelementptr inbounds %struct.xgbe_phy_data, ptr %16, i32 0, i32 20
  %24 = ptrtoint ptr %sfp_mod_absent.i9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %sfp_mod_absent.i9, align 4
  %sfp_phy_avail.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %16, i32 0, i32 22
  %25 = ptrtoint ptr %sfp_phy_avail.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sfp_phy_avail.i, align 4
  %sfp_eeprom.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %16, i32 0, i32 27
  %26 = call ptr @memset(ptr %sfp_eeprom.i, i32 0, i32 128)
  %27 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_data1, align 8
  %debugfs_an_cdr_workaround.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  %29 = ptrtoint ptr %debugfs_an_cdr_workaround.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %debugfs_an_cdr_workaround.i, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i11 = icmp eq i8 %30, 0
  br i1 %tobool.not.i11, label %xgbe_phy_sfp_mod_absent.exit.xgbe_phy_cdr_track.exit_crit_edge, label %if.end.i

xgbe_phy_sfp_mod_absent.exit.xgbe_phy_cdr_track.exit_crit_edge: ; preds = %xgbe_phy_sfp_mod_absent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_cdr_track.exit

if.end.i:                                         ; preds = %xgbe_phy_sfp_mod_absent.exit
  %phy_cdr_notrack.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %28, i32 0, i32 39
  %31 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phy_cdr_notrack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool2.not.i = icmp eq i32 %32, 0
  br i1 %tobool2.not.i, label %if.end.i.xgbe_phy_cdr_track.exit_crit_edge, label %if.end4.i

if.end.i.xgbe_phy_cdr_track.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_cdr_track.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %phy_cdr_delay.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %28, i32 0, i32 40
  %33 = ptrtoint ptr %phy_cdr_delay.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phy_cdr_delay.i, align 4
  %add.i = add i32 %34, 500
  tail call void @usleep_range_state(i32 noundef %34, i32 noundef %add.i, i32 noundef 2) #12
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %35 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %36(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214) #12
  %or.i = or i32 %call.i, 1
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %37 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %38(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214, i32 noundef %or.i) #12
  %39 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %phy_cdr_notrack.i, align 4
  br label %xgbe_phy_cdr_track.exit

xgbe_phy_cdr_track.exit:                          ; preds = %if.end4.i, %if.end.i.xgbe_phy_cdr_track.exit_crit_edge, %xgbe_phy_sfp_mod_absent.exit.xgbe_phy_cdr_track.exit_crit_edge
  %40 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_data1, align 8
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 0, i32 noundef 0) #12
  %cur_mode.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7, ptr %cur_mode.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %43 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i13 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i13, label %xgbe_phy_cdr_track.exit.xgbe_phy_power_off.exit_crit_edge, label %do.body2.i

xgbe_phy_cdr_track.exit.xgbe_phy_power_off.exit_crit_edge: ; preds = %xgbe_phy_cdr_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_power_off.exit

do.body2.i:                                       ; preds = %xgbe_phy_cdr_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_power_off.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_stop, %if.then6.i)) #12
          to label %xgbe_phy_power_off.exit [label %if.then6.i], !srcloc !235

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_power_off.__UNIQUE_ID_ddebug363, ptr noundef %46, ptr noundef nonnull @.str.57) #12
  br label %xgbe_phy_power_off.exit

xgbe_phy_power_off.exit:                          ; preds = %if.then6.i, %do.body2.i, %xgbe_phy_cdr_track.exit.xgbe_phy_power_off.exit_crit_edge
  %i2c_stop = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 2
  %47 = ptrtoint ptr %i2c_stop to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_stop, align 4
  tail call void %48(ptr noundef %pdata) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_link_status(ptr noundef %pdata, ptr nocapture noundef writeonly %an_restart) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = ptrtoint ptr %an_restart to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %an_restart, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp eq i32 %4, 8
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call fastcc void @xgbe_phy_sfp_detect(ptr noundef %pdata)
  %sfp_changed = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %sfp_changed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sfp_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %an_restart to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %an_restart, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sfp_mod_absent = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %sfp_mod_absent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sfp_mod_absent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %sfp_rx_los = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %sfp_rx_los to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sfp_rx_los, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false.if.end7_crit_edge, %entry.if.end7_crit_edge
  %phydev = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end24_crit_edge, label %if.then9

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then9:                                         ; preds = %if.end7
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drv.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.end.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  %read_status.i = getelementptr inbounds %struct.phy_driver, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_status.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %17(ptr noundef nonnull %13) #12
  br label %phy_read_status.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = tail call i32 @genphy_read_status(ptr noundef nonnull %13) #12
  br label %phy_read_status.exit

phy_read_status.exit:                             ; preds = %if.else.i, %if.then3.i
  %retval.0.i = phi i32 [ %call.i, %if.then3.i ], [ %call6.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp11 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp11, label %phy_read_status.exit.cleanup_crit_edge, label %if.end13

phy_read_status.exit.cleanup_crit_edge:           ; preds = %phy_read_status.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %phy_read_status.exit
  %autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %18 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp14 = icmp eq i32 %19, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end13
  %20 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phydev, align 4
  %call16 = tail call i32 @phy_aneg_done(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %22 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %link, align 8
  %25 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool21.not = icmp eq i16 %25, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end19.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %26 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_mmd_regs, align 4
  %call25 = tail call i32 %27(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938433) #12
  %28 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_mmd_regs, align 4
  %call28 = tail call i32 %29(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073938433) #12
  %and = and i32 %call28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %autoneg33 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %30 = ptrtoint ptr %autoneg33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %autoneg33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp34 = icmp eq i32 %31, 1
  br i1 %cmp34, label %land.lhs.true35, label %if.end31.if.end43_crit_edge

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true35:                                  ; preds = %if.end31
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp37 = icmp eq i32 %33, 1
  br i1 %cmp37, label %if.then38, label %land.lhs.true35.if.end43_crit_edge

land.lhs.true35.if.end43_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then38:                                        ; preds = %land.lhs.true35
  %dev_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 29
  %34 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %dev_state, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool40.not = icmp eq i32 %36, 0
  br i1 %tobool40.not, label %if.then41, label %if.then38.if.end43_crit_edge

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata, align 8
  tail call void @netif_carrier_off(ptr noundef %38) #12
  %39 = ptrtoint ptr %an_restart to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %an_restart, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then38.if.end43_crit_edge, %land.lhs.true35.if.end43_crit_edge, %if.end31.if.end43_crit_edge
  %rrc_count = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %rrc_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rrc_count, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %rrc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %41)
  %cmp44 = icmp ugt i32 %41, 10
  br i1 %cmp44, label %if.then45, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  %42 = ptrtoint ptr %rrc_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rrc_count, align 4
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 5, i32 noundef 0) #12
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %43 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i72 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i72, label %if.then45.cleanup_crit_edge, label %do.body1.i

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_rrc.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_link_status, %if.then5.i)) #12
          to label %cleanup [label %if.then5.i], !srcloc !235

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_rrc.__UNIQUE_ID_ddebug362, ptr noundef %46, ptr noundef nonnull @.str.90) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %do.body1.i, %if.then45.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %phy_read_status.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %phy_read_status.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 1, %if.end24.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.then45.cleanup_crit_edge ], [ 0, %do.body1.i ], [ 0, %if.then5.i ], [ 0, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xgbe_phy_valid_speed(ptr nocapture noundef readonly %pdata, i32 noundef %speed) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb_crit_edge22
    i32 2, label %sw.bb2
    i32 3, label %entry.sw.bb4_crit_edge
    i32 5, label %entry.sw.bb4_crit_edge23
    i32 6, label %entry.sw.bb4_crit_edge24
    i32 4, label %entry.sw.bb6_crit_edge
    i32 7, label %entry.sw.bb6_crit_edge25
    i32 8, label %sw.bb8
  ]

entry.sw.bb6_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb4_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %switch.selectcmp.case1.i = icmp eq i32 %speed, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %speed)
  %switch.selectcmp.case2.i = icmp eq i32 %speed, 10000
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %speed)
  %cond.i = icmp eq i32 %speed, 2500
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge23, %entry.sw.bb4_crit_edge24
  %5 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %speed, label %sw.default.i [
    i32 100, label %sw.bb4.cleanup_crit_edge
    i32 1000, label %sw.bb4.cleanup_crit_edge26
    i32 2500, label %sw.bb1.i
    i32 10000, label %sw.bb2.i
  ]

sw.bb4.cleanup_crit_edge26:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.i = icmp eq i32 %3, 5
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp4.i = icmp eq i32 %3, 6
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge25
  %6 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %speed, label %sw.bb6.cleanup_crit_edge [
    i32 1000, label %sw.bb6.return.sink.split.i_crit_edge
    i32 10000, label %sw.bb1.i17
  ]

sw.bb6.return.sink.split.i_crit_edge:             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i17:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i17, %sw.bb6.return.sink.split.i_crit_edge
  %.sink5.i = phi i32 [ 7, %sw.bb1.i17 ], [ 4, %sw.bb6.return.sink.split.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %.sink5.i)
  %cmp3.i = icmp eq i32 %3, %.sink5.i
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %7 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %speed, label %sw.bb8.cleanup_crit_edge [
    i32 100, label %sw.bb.i
    i32 1000, label %sw.bb1.i20
    i32 10000, label %sw.bb6.i
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_speed.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %sfp_speed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sfp_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i19 = icmp eq i32 %9, 1
  br label %cleanup

sw.bb1.i20:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_speed2.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %sfp_speed2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sfp_speed2.i, align 4
  %12 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %13 = icmp ult i32 %12, 2
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_speed7.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %sfp_speed7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sfp_speed7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp8.i = icmp eq i32 %15, 3
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6.i, %sw.bb1.i20, %sw.bb.i, %sw.bb8.cleanup_crit_edge, %return.sink.split.i, %sw.bb6.cleanup_crit_edge, %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb4.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge26, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cond.i, %sw.bb2 ], [ %switch.selectcmp.i, %sw.bb ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.default.i ], [ %cmp4.i, %sw.bb2.i ], [ %cmp.i, %sw.bb1.i ], [ true, %sw.bb4.cleanup_crit_edge ], [ true, %sw.bb4.cleanup_crit_edge26 ], [ false, %sw.bb6.cleanup_crit_edge ], [ %cmp3.i, %return.sink.split.i ], [ %cmp8.i, %sw.bb6.i ], [ %13, %sw.bb1.i20 ], [ %cmp.i19, %sw.bb.i ], [ false, %sw.bb8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @xgbe_phy_use_mode(ptr noundef %pdata, i32 noundef %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb_crit_edge39
    i32 2, label %sw.bb2
    i32 3, label %entry.sw.bb4_crit_edge
    i32 5, label %entry.sw.bb4_crit_edge40
    i32 6, label %entry.sw.bb4_crit_edge41
    i32 4, label %entry.sw.bb6_crit_edge
    i32 7, label %entry.sw.bb6_crit_edge42
    i32 8, label %sw.bb8
  ]

entry.sw.bb6_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb4_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge39
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %mode, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.cleanup.sink.split.i_crit_edge
    i32 2, label %sw.bb3.i
  ]

sw.bb.cleanup.sink.split.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb3.i, %sw.bb.cleanup.sink.split.i_crit_edge
  %.sink19.i = phi i32 [ 524288, %sw.bb3.i ], [ 131072, %sw.bb.cleanup.sink.split.i_crit_edge ]
  %advertising5.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %advertising5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %advertising5.i, align 4
  %8 = and i32 %7, %.sink19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.i = icmp ne i32 %8, 0
  %call9.i = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef %mode, i1 noundef zeroext %tobool8.i) #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond.i = icmp eq i32 %mode, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %advertising.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %advertising.i, align 4
  %11 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i = icmp ne i32 %11, 0
  %call2.i = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef 1, i1 noundef zeroext %tobool.i) #12
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge40, %entry.sw.bb4_crit_edge41
  %12 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %mode, label %sw.bb4.cleanup_crit_edge [
    i32 4, label %sw.bb.i21
    i32 5, label %sw.bb3.i23
    i32 1, label %sw.bb10.i
    i32 2, label %sw.bb17.i
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i21:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %advertising.i20 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  br label %cleanup.sink.split.i24

sw.bb3.i23:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %advertising5.i22 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  br label %cleanup.sink.split.i24

sw.bb10.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1, i32 1
  br label %cleanup.sink.split.i24

sw.bb17.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %advertising19.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  br label %cleanup.sink.split.i24

cleanup.sink.split.i24:                           ; preds = %sw.bb17.i, %sw.bb10.i, %sw.bb3.i23, %sw.bb.i21
  %advertising19.sink.i = phi ptr [ %advertising19.i, %sw.bb17.i ], [ %arrayidx.i.i, %sw.bb10.i ], [ %advertising5.i22, %sw.bb3.i23 ], [ %advertising.i20, %sw.bb.i21 ]
  %.sink43.i = phi i32 [ 4096, %sw.bb17.i ], [ 32768, %sw.bb10.i ], [ 32, %sw.bb3.i23 ], [ 8, %sw.bb.i21 ]
  %13 = ptrtoint ptr %advertising19.sink.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %advertising19.sink.i, align 4
  %15 = and i32 %14, %.sink43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.i = icmp ne i32 %15, 0
  %call23.i = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef %mode, i1 noundef zeroext %tobool22.i) #12
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge42
  %16 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %mode, label %sw.bb6.cleanup_crit_edge [
    i32 3, label %sw.bb.i27
    i32 2, label %sw.bb3.i29
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i27:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i26 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1, i32 1
  br label %cleanup.sink.split.i33

sw.bb3.i29:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %advertising5.i28 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  br label %cleanup.sink.split.i33

cleanup.sink.split.i33:                           ; preds = %sw.bb3.i29, %sw.bb.i27
  %advertising5.sink.i = phi ptr [ %advertising5.i28, %sw.bb3.i29 ], [ %arrayidx.i.i26, %sw.bb.i27 ]
  %.sink19.i30 = phi i32 [ 524288, %sw.bb3.i29 ], [ 512, %sw.bb.i27 ]
  %17 = ptrtoint ptr %advertising5.sink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %advertising5.sink.i, align 4
  %19 = and i32 %18, %.sink19.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.i31 = icmp ne i32 %19, 0
  %call9.i32 = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef %mode, i1 noundef zeroext %tobool8.i31) #12
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %20 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %mode, label %sw.bb8.cleanup_crit_edge [
    i32 3, label %sw.bb.i35
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb15.i
    i32 6, label %sw.bb26.i
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i35:                                        ; preds = %sw.bb8
  %sfp_base.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %sfp_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sfp_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  br i1 %cmp.i, label %sw.bb.i35.cleanup_crit_edge, label %if.end.i

sw.bb.i35.cleanup_crit_edge:                      ; preds = %sw.bb.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i35
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i36 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i36, align 4
  %25 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i37 = icmp ne i32 %25, 0
  %call3.i = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef 3, i1 noundef zeroext %tobool.i37) #12
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb8
  %sfp_base5.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %sfp_base5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sfp_base5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp6.not.i = icmp eq i32 %27, 1
  br i1 %cmp6.not.i, label %if.end8.i, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  %advertising10.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %advertising10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %advertising10.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.i = icmp ne i32 %30, 0
  %call14.i = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef 4, i1 noundef zeroext %tobool13.i) #12
  br label %cleanup

sw.bb15.i:                                        ; preds = %sw.bb8
  %sfp_base16.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %31 = ptrtoint ptr %sfp_base16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sfp_base16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp17.not.i = icmp eq i32 %32, 1
  br i1 %cmp17.not.i, label %if.end19.i, label %sw.bb15.i.cleanup_crit_edge

sw.bb15.i.cleanup_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #14
  %advertising21.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %advertising21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %advertising21.i, align 4
  %35 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool24.i = icmp ne i32 %35, 0
  %call25.i = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef 5, i1 noundef zeroext %tobool24.i) #12
  br label %cleanup

sw.bb26.i:                                        ; preds = %sw.bb8
  %sfp_mod_absent.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 20
  %36 = ptrtoint ptr %sfp_mod_absent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sfp_mod_absent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not.i = icmp eq i32 %37, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %sw.bb26.i.cleanup_crit_edge

sw.bb26.i.cleanup_crit_edge:                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29.i:                                       ; preds = %sw.bb26.i
  %arrayidx.i82.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i82.i, align 4
  %40 = and i32 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool34.not.i = icmp eq i32 %40, 0
  br i1 %tobool34.not.i, label %lor.lhs.false.i, label %if.end29.i.lor.end.i_crit_edge

if.end29.i.lor.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %if.end29.i
  %41 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i82.i, align 4
  %43 = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool39.not.i = icmp eq i32 %43, 0
  br i1 %tobool39.not.i, label %lor.lhs.false40.i, label %lor.lhs.false.i.lor.end.i_crit_edge

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.lhs.false40.i:                                ; preds = %lor.lhs.false.i
  %44 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i82.i, align 4
  %46 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool45.not.i = icmp eq i32 %46, 0
  br i1 %tobool45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false40.i.lor.end.i_crit_edge

lor.lhs.false40.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false40.i
  %47 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i82.i, align 4
  %49 = and i32 %48, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool51.not.i = icmp eq i32 %49, 0
  br i1 %tobool51.not.i, label %lor.rhs.i, label %lor.lhs.false46.i.lor.end.i_crit_edge

lor.lhs.false46.i.lor.end.i_crit_edge:            ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i82.i, align 4
  %52 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool56.i = icmp ne i32 %52, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false46.i.lor.end.i_crit_edge, %lor.lhs.false40.i.lor.end.i_crit_edge, %lor.lhs.false.i.lor.end.i_crit_edge, %if.end29.i.lor.end.i_crit_edge
  %53 = phi i1 [ true, %lor.lhs.false46.i.lor.end.i_crit_edge ], [ true, %lor.lhs.false40.i.lor.end.i_crit_edge ], [ true, %lor.lhs.false.i.lor.end.i_crit_edge ], [ true, %if.end29.i.lor.end.i_crit_edge ], [ %tobool56.i, %lor.rhs.i ]
  %call57.i = tail call fastcc zeroext i1 @xgbe_phy_check_mode(ptr noundef %pdata, i32 noundef 6, i1 noundef zeroext %53) #12
  br label %cleanup

cleanup:                                          ; preds = %lor.end.i, %sw.bb26.i.cleanup_crit_edge, %if.end19.i, %sw.bb15.i.cleanup_crit_edge, %if.end8.i, %sw.bb4.i.cleanup_crit_edge, %if.end.i, %sw.bb.i35.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %cleanup.sink.split.i33, %sw.bb6.cleanup_crit_edge, %cleanup.sink.split.i24, %sw.bb4.cleanup_crit_edge, %sw.bb.i, %sw.bb2.cleanup_crit_edge, %cleanup.sink.split.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ %call9.i, %cleanup.sink.split.i ], [ %call2.i, %sw.bb.i ], [ false, %sw.bb2.cleanup_crit_edge ], [ false, %sw.bb4.cleanup_crit_edge ], [ %call23.i, %cleanup.sink.split.i24 ], [ false, %sw.bb6.cleanup_crit_edge ], [ %call9.i32, %cleanup.sink.split.i33 ], [ %call57.i, %lor.end.i ], [ %call25.i, %if.end19.i ], [ %call14.i, %if.end8.i ], [ %call3.i, %if.end.i ], [ false, %sw.bb.i35.cleanup_crit_edge ], [ false, %sw.bb4.i.cleanup_crit_edge ], [ false, %sw.bb15.i.cleanup_crit_edge ], [ true, %sw.bb26.i.cleanup_crit_edge ], [ false, %sw.bb8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_set_mode(ptr noundef %pdata, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 3, label %sw.bb5
    i32 6, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %phy_data1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %1 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_data1.i, align 8
  tail call fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) #12
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 1, i32 noundef 3) #12
  %cur_mode.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cur_mode.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %do.body2.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_set_mode, %if.then6.i)) #12
          to label %sw.epilog [label %if.then6.i], !srcloc !235

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug370, ptr noundef %7, ptr noundef nonnull @.str.92) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %phy_data1.i13 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %8 = ptrtoint ptr %phy_data1.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_data1.i13, align 8
  tail call fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) #12
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 2, i32 noundef 0) #12
  %cur_mode.i14 = getelementptr inbounds %struct.xgbe_phy_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %cur_mode.i14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cur_mode.i14, align 4
  %msg_enable.i15 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %11 = ptrtoint ptr %msg_enable.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i15, align 4
  %and.i16 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %sw.bb1.sw.epilog_crit_edge, label %do.body2.i18

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body2.i18:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_set_mode, %if.then6.i19)) #12
          to label %sw.epilog [label %if.then6.i19], !srcloc !235

if.then6.i19:                                     ; preds = %do.body2.i18
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug369, ptr noundef %14, ptr noundef nonnull @.str.96) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %phy_data1.i20 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %15 = ptrtoint ptr %phy_data1.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_data1.i20, align 8
  tail call fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) #12
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 4, i32 noundef 0) #12
  %cur_mode.i21 = getelementptr inbounds %struct.xgbe_phy_data, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %cur_mode.i21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %cur_mode.i21, align 4
  %msg_enable.i22 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %18 = ptrtoint ptr %msg_enable.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable.i22, align 4
  %and.i23 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %sw.bb2.sw.epilog_crit_edge, label %do.body2.i25

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body2.i25:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_kr_mode.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_set_mode, %if.then6.i26)) #12
          to label %sw.epilog [label %if.then6.i26], !srcloc !235

if.then6.i26:                                     ; preds = %do.body2.i25
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_kr_mode.__UNIQUE_ID_ddebug368, ptr noundef %21, ptr noundef nonnull @.str.98) #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %phy_data1.i27 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %22 = ptrtoint ptr %phy_data1.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_data1.i27, align 8
  tail call fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) #12
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 1, i32 noundef 1) #12
  %cur_mode.i28 = getelementptr inbounds %struct.xgbe_phy_data, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %cur_mode.i28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %cur_mode.i28, align 4
  %msg_enable.i29 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %25 = ptrtoint ptr %msg_enable.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable.i29, align 4
  %and.i30 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %sw.bb3.sw.epilog_crit_edge, label %do.body2.i32

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body2.i32:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sgmii_100_mode.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_set_mode, %if.then6.i33)) #12
          to label %sw.epilog [label %if.then6.i33], !srcloc !235

if.then6.i33:                                     ; preds = %do.body2.i32
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sgmii_100_mode.__UNIQUE_ID_ddebug367, ptr noundef %28, ptr noundef nonnull @.str.100) #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %phy_data1.i34 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %29 = ptrtoint ptr %phy_data1.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_data1.i34, align 8
  tail call fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) #12
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 1, i32 noundef 2) #12
  %cur_mode.i35 = getelementptr inbounds %struct.xgbe_phy_data, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %cur_mode.i35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %cur_mode.i35, align 4
  %msg_enable.i36 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %32 = ptrtoint ptr %msg_enable.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable.i36, align 4
  %and.i37 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %sw.bb4.sw.epilog_crit_edge, label %do.body2.i39

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body2.i39:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sgmii_1000_mode.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_set_mode, %if.then6.i40)) #12
          to label %sw.epilog [label %if.then6.i40], !srcloc !235

if.then6.i40:                                     ; preds = %do.body2.i39
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sgmii_1000_mode.__UNIQUE_ID_ddebug366, ptr noundef %35, ptr noundef nonnull @.str.102) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %phy_data1.i41 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %36 = ptrtoint ptr %phy_data1.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_data1.i41, align 8
  tail call fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) #12
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 1, i32 noundef 3) #12
  %cur_mode.i42 = getelementptr inbounds %struct.xgbe_phy_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %cur_mode.i42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %cur_mode.i42, align 4
  %msg_enable.i43 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %39 = ptrtoint ptr %msg_enable.i43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i43, align 4
  %and.i44 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %sw.bb5.sw.epilog_crit_edge, label %do.body2.i46

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body2.i46:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_x_mode.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_set_mode, %if.then6.i47)) #12
          to label %sw.epilog [label %if.then6.i47], !srcloc !235

if.then6.i47:                                     ; preds = %do.body2.i46
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_x_mode.__UNIQUE_ID_ddebug365, ptr noundef %42, ptr noundef nonnull @.str.104) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %phy_data1.i48 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %43 = ptrtoint ptr %phy_data1.i48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_data1.i48, align 8
  tail call fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) #12
  %sfp_cable.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %44, i32 0, i32 25
  %45 = ptrtoint ptr %sfp_cable.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sfp_cable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.not.i = icmp eq i32 %46, 2
  br i1 %cmp.not.i, label %if.else.i, label %sw.bb6.if.end10.i_crit_edge

sw.bb6.if.end10.i_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.else.i:                                        ; preds = %sw.bb6
  %sfp_cable_len.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %44, i32 0, i32 23
  %47 = ptrtoint ptr %sfp_cable_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sfp_cable_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp2.i = icmp ult i32 %48, 2
  br i1 %cmp2.i, label %if.else.i.if.end10.i_crit_edge, label %if.else4.i

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp6.inv.i = icmp ugt i32 %48, 3
  %..i = select i1 %cmp6.inv.i, i32 3, i32 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else4.i, %if.else.i.if.end10.i_crit_edge, %sw.bb6.if.end10.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.bb6.if.end10.i_crit_edge ], [ 1, %if.else.i.if.end10.i_crit_edge ], [ %..i, %if.else4.i ]
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 3, i32 noundef %.sink.i) #12
  %cur_mode.i49 = getelementptr inbounds %struct.xgbe_phy_data, ptr %44, i32 0, i32 4
  %49 = ptrtoint ptr %cur_mode.i49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %cur_mode.i49, align 4
  %msg_enable.i50 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %50 = ptrtoint ptr %msg_enable.i50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_enable.i50, align 4
  %and.i51 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %if.end10.i.sw.epilog_crit_edge, label %do.body12.i

if.end10.i.sw.epilog_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfi_mode.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_set_mode, %if.then16.i)) #12
          to label %sw.epilog [label %if.then16.i], !srcloc !235

if.then16.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sfi_mode.__UNIQUE_ID_ddebug364, ptr noundef %53, ptr noundef nonnull @.str.106) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then16.i, %do.body12.i, %if.end10.i.sw.epilog_crit_edge, %if.then6.i47, %do.body2.i46, %sw.bb5.sw.epilog_crit_edge, %if.then6.i40, %do.body2.i39, %sw.bb4.sw.epilog_crit_edge, %if.then6.i33, %do.body2.i32, %sw.bb3.sw.epilog_crit_edge, %if.then6.i26, %do.body2.i25, %sw.bb2.sw.epilog_crit_edge, %if.then6.i19, %do.body2.i18, %sw.bb1.sw.epilog_crit_edge, %if.then6.i, %do.body2.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_get_mode(ptr nocapture noundef readonly %pdata, i32 noundef %speed) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb_crit_edge24
    i32 2, label %sw.bb2
    i32 3, label %entry.sw.bb4_crit_edge
    i32 5, label %entry.sw.bb4_crit_edge25
    i32 6, label %entry.sw.bb4_crit_edge26
    i32 4, label %entry.sw.bb6_crit_edge
    i32 7, label %entry.sw.bb6_crit_edge27
    i32 8, label %sw.bb8
  ]

entry.sw.bb6_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge24
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %speed)
  %switch.selectcmp.i = icmp eq i32 %speed, 10000
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %switch.selectcmp2.i = icmp eq i32 %speed, 1000
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %speed)
  %cond.i = icmp eq i32 %speed, 2500
  %..i = select i1 %cond.i, i32 1, i32 7
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge25, %entry.sw.bb4_crit_edge26
  %5 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %speed, label %sw.default.i [
    i32 100, label %sw.bb4.cleanup_crit_edge
    i32 1000, label %sw.bb1.i
    i32 2500, label %sw.bb2.i
    i32 10000, label %sw.bb3.i
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default.i:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %speed)
  %switch.selectcmp.i17 = icmp eq i32 %speed, 10000
  %switch.select.i18 = select i1 %switch.selectcmp.i17, i32 2, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %switch.selectcmp1.i = icmp eq i32 %speed, 1000
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 3, i32 %switch.select.i18
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %6 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %speed, label %sw.default.i22 [
    i32 100, label %sw.bb8.cleanup_crit_edge
    i32 1000, label %sw.bb1.i20
    i32 10000, label %sw.bb8.sw.bb2.i21_crit_edge
    i32 -1, label %sw.bb8.sw.bb2.i21_crit_edge28
  ]

sw.bb8.sw.bb2.i21_crit_edge28:                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i21

sw.bb8.sw.bb2.i21_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i21

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1.i20:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_base.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %sfp_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sfp_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  %..i19 = select i1 %cmp.i, i32 5, i32 3
  br label %cleanup

sw.bb2.i21:                                       ; preds = %sw.bb8.sw.bb2.i21_crit_edge, %sw.bb8.sw.bb2.i21_crit_edge28
  br label %cleanup

sw.default.i22:                                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i22, %sw.bb2.i21, %sw.bb1.i20, %sw.bb8.cleanup_crit_edge, %sw.bb6, %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb4.cleanup_crit_edge, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.select2.i, %sw.bb6 ], [ %..i, %sw.bb2 ], [ %switch.select3.i, %sw.bb ], [ 7, %entry.cleanup_crit_edge ], [ 7, %sw.default.i ], [ 2, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 5, %sw.bb1.i ], [ 4, %sw.bb4.cleanup_crit_edge ], [ 7, %sw.default.i22 ], [ 6, %sw.bb2.i21 ], [ 4, %sw.bb8.cleanup_crit_edge ], [ %..i19, %sw.bb1.i20 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_switch_mode(ptr nocapture noundef readonly %pdata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb_crit_edge14
    i32 2, label %sw.bb2
    i32 3, label %entry.sw.bb4_crit_edge
    i32 5, label %entry.sw.bb4_crit_edge15
    i32 6, label %entry.sw.bb4_crit_edge16
    i32 4, label %entry.sw.bb6_crit_edge
    i32 7, label %entry.sw.bb6_crit_edge17
    i32 8, label %entry.sw.bb6_crit_edge18
  ]

entry.sw.bb6_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb4_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14
  %cur_mode.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %cur_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond.i = icmp eq i32 %6, 0
  %..i = select i1 %cond.i, i32 2, i32 0
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge15, %entry.sw.bb4_crit_edge16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 6
  %cur_mode.i7.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %cur_mode.i7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_mode.i7.i, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %switch.i = icmp eq i32 %9, 4
  %..i12 = select i1 %switch.i, i32 2, i32 5
  %retval.0.i = select i1 %cmp.not.i, i32 %..i12, i32 %8
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge17, %entry.sw.bb6_crit_edge18
  %cur_mode.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %cur_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_mode.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %sw.bb6 ], [ %retval.0.i, %sw.bb4 ], [ 1, %sw.bb2 ], [ %..i, %sw.bb ], [ 7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_cur_mode(ptr nocapture noundef readonly %pdata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %cur_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_mode, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_an_mode(ptr nocapture noundef readonly %pdata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %redrv = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %redrv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %redrv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %5, label %sw.default [
    i32 1, label %if.end.cleanup_crit_edge
    i32 9, label %if.end.sw.bb2_crit_edge
    i32 2, label %if.end.sw.bb2_crit_edge11
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %if.end.cleanup_crit_edge12
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
  ]

if.end.cleanup_crit_edge12:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.sw.bb2_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge11
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %sfp_base.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %sfp_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sfp_base.i, align 4
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 4
  br i1 %9, label %switch.lookup, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.xgbe_phy_an_mode, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.default, %sw.bb8.cleanup_crit_edge, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %sw.default ], [ 4, %sw.bb7 ], [ 3, %sw.bb5 ], [ 2, %sw.bb4 ], [ 3, %sw.bb3 ], [ 4, %sw.bb2 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge12 ], [ %switch.load, %switch.lookup ], [ 4, %sw.bb8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_an_config(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data2, align 8
  %call = tail call fastcc i32 @xgbe_phy_find_phy_device(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg, align 4
  %autoneg8 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %6 = trunc i32 %5 to i16
  %7 = ptrtoint ptr %autoneg8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %autoneg8, align 8
  %bf.value = shl i16 %6, 3
  %bf.shl = and i16 %bf.value, 8
  %bf.clear = and i16 %bf.load, -9
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %autoneg8, align 8
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev, align 4
  %advertising = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 17
  %supported = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 16
  %advertising12 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %advertising, ptr noundef %supported, ptr noundef %advertising12, i32 noundef 92) #12
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end5.if.end23_crit_edge, label %if.then16

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %speed = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 4
  %14 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phydev, align 4
  %speed19 = getelementptr inbounds %struct.phy_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %speed19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %speed19, align 8
  %duplex = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %17 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %duplex, align 4
  %19 = load ptr, ptr %phydev, align 4
  %duplex22 = getelementptr inbounds %struct.phy_device, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %duplex22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %duplex22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end5.if.end23_crit_edge
  %21 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phydev, align 4
  %call25 = tail call i32 @phy_start_aneg(ptr noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end23 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgbe_phy_an_advertising(ptr nocapture noundef readonly %pdata, ptr noundef %dlks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %dlks, i32 0, i32 1, i32 1
  %advertising3 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %2 = call ptr @memcpy(ptr %advertising, ptr %advertising3, i32 12)
  %redrv = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 34
  %3 = ptrtoint ptr %redrv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %redrv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %advertising, align 4
  %and.i75 = and i32 %6, -655361
  store i32 %and.i75, ptr %advertising, align 4
  %fec_ability = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 160
  %7 = ptrtoint ptr %fec_ability to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fec_ability, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %and.i75, 1048576
  %9 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %advertising, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %11, label %sw.default51 [
    i32 1, label %if.end16.sw.bb_crit_edge
    i32 9, label %if.end16.sw.bb_crit_edge85
    i32 2, label %sw.bb20
    i32 3, label %if.end16.sw.bb24_crit_edge
    i32 4, label %if.end16.sw.bb24_crit_edge86
    i32 5, label %if.end16.sw.bb24_crit_edge87
    i32 6, label %sw.bb28
    i32 7, label %sw.bb39
    i32 8, label %sw.bb43
  ]

if.end16.sw.bb24_crit_edge87:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24

if.end16.sw.bb24_crit_edge86:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24

if.end16.sw.bb24_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb24

if.end16.sw.bb_crit_edge85:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge85
  %13 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %advertising, align 4
  %or.i76 = or i32 %14, 524288
  br label %cleanup.sink.split

sw.bb20:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %advertising, align 4
  %or.i77 = or i32 %16, 131072
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %if.end16.sw.bb24_crit_edge, %if.end16.sw.bb24_crit_edge86, %if.end16.sw.bb24_crit_edge87
  %17 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %advertising, align 4
  %or.i78 = or i32 %18, 131072
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %if.end16
  %phydev = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 30
  %19 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev, align 4
  %tobool29.not = icmp eq ptr %20, null
  br i1 %tobool29.not, label %sw.bb28.if.else_crit_edge, label %land.lhs.true

sw.bb28.if.else_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb28
  %speed = getelementptr inbounds %struct.phy_device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %22)
  %cmp = icmp eq i32 %22, 10000
  br i1 %cmp, label %if.then31, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %advertising, align 4
  %or.i79 = or i32 %24, 524288
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb28.if.else_crit_edge
  %25 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %advertising, align 4
  %or.i80 = or i32 %26, 131072
  br label %cleanup.sink.split

sw.bb39:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %advertising, align 4
  %or.i81 = or i32 %28, 524288
  br label %cleanup.sink.split

sw.bb43:                                          ; preds = %if.end16
  %sfp_base = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %sfp_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sfp_base, align 4
  %.off = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  %31 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %advertising, align 4
  br i1 %switch, label %sw.bb44, label %sw.default

sw.bb44:                                          ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  %or.i82 = or i32 %32, 131072
  br label %cleanup.sink.split

sw.default:                                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  %or.i83 = or i32 %32, 524288
  br label %cleanup.sink.split

sw.default51:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %advertising, align 4
  %or.i84 = or i32 %34, 524288
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default51, %sw.default, %sw.bb44, %sw.bb39, %if.else, %if.then31, %sw.bb24, %sw.bb20, %sw.bb
  %or.i76.sink = phi i32 [ %or.i76, %sw.bb ], [ %or.i77, %sw.bb20 ], [ %or.i78, %sw.bb24 ], [ %or.i81, %sw.bb39 ], [ %or.i84, %sw.default51 ], [ %or.i80, %if.else ], [ %or.i79, %if.then31 ], [ %or.i83, %sw.default ], [ %or.i82, %sw.bb44 ]
  %35 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i76.sink, ptr %advertising, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_an_outcome(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %an_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %0 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %an_mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  %lp_advertising.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lp_advertising.i, align 4
  %or.i133.i = or i32 %4, 65600
  store i32 %or.i133.i, ptr %lp_advertising.i, align 4
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %5 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %6(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200592) #12
  %7 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_mmd_regs.i, align 4
  %call7.i = tail call i32 %8(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200595) #12
  %and.i = and i32 %call7.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lp_advertising.i, align 4
  %or.i134.i = or i32 %10, 8192
  store i32 %or.i134.i, ptr %lp_advertising.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %and11.i = and i32 %call7.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then13.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lp_advertising.i, align 4
  %or.i135.i = or i32 %12, 16384
  store i32 %or.i135.i, ptr %lp_advertising.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end.i.if.end17.i_crit_edge
  %pause_autoneg.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %13 = ptrtoint ptr %pause_autoneg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pause_autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not.i = icmp eq i32 %14, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end50.i_crit_edge, label %if.then20.i

if.end17.i.if.end50.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then20.i:                                      ; preds = %if.end17.i
  %tx_pause.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 7
  %15 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_pause.i, align 4
  %rx_pause.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 8
  %16 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_pause.i, align 4
  %and23.i = and i32 %call7.i, %call.i
  %and24.i = and i32 %and23.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tx_pause.i, align 4
  br label %if.end50.sink.split.i

if.else.i:                                        ; preds = %if.then20.i
  %and32.i = and i32 %and23.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else.i.if.end50.i_crit_edge, label %if.then34.i

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then34.i:                                      ; preds = %if.else.i
  %and35.i = and i32 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp ne i32 %and35.i, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %tobool36.not.i, i1 true, i1 %tobool.not.not.i
  %rx_pause.mux.i = select i1 %tobool36.not.i, ptr %rx_pause.i, ptr %tx_pause.i
  br i1 %brmerge.i, label %if.then34.i.if.end50.sink.split.i_crit_edge, label %if.then34.i.if.end50.i_crit_edge

if.then34.i.if.end50.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then34.i.if.end50.sink.split.i_crit_edge:      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split.i

if.end50.sink.split.i:                            ; preds = %if.then34.i.if.end50.sink.split.i_crit_edge, %if.then26.i
  %rx_pause.sink.i = phi ptr [ %rx_pause.i, %if.then26.i ], [ %rx_pause.mux.i, %if.then34.i.if.end50.sink.split.i_crit_edge ]
  %18 = ptrtoint ptr %rx_pause.sink.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %rx_pause.sink.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50.sink.split.i, %if.then34.i.if.end50.i_crit_edge, %if.else.i.if.end50.i_crit_edge, %if.end17.i.if.end50.i_crit_edge
  %19 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_mmd_regs.i, align 4
  %call53.i = tail call i32 %20(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200593) #12
  %21 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_mmd_regs.i, align 4
  %call56.i = tail call i32 %22(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200596) #12
  %and57.i = and i32 %call56.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end50.i.if.end63.i_crit_edge, label %if.then59.i

if.end50.i.if.end63.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lp_advertising.i, align 4
  %or.i136.i = or i32 %24, 524288
  store i32 %or.i136.i, ptr %lp_advertising.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.end50.i.if.end63.i_crit_edge
  %and64.i = and i32 %call56.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end63.i.if.end70.i_crit_edge, label %if.then66.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lp_advertising.i, align 4
  %or.i137.i = or i32 %26, 131072
  store i32 %or.i137.i, ptr %lp_advertising.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end63.i.if.end70.i_crit_edge
  %27 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_mmd_regs.i, align 4
  %call84.i = tail call i32 %28(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200594) #12
  %29 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_mmd_regs.i, align 4
  %call87.i = tail call i32 %30(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200597) #12
  %and88.i = and i32 %call87.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end70.i.xgbe_phy_an73_outcome.exit_crit_edge, label %if.then90.i

if.end70.i.xgbe_phy_an73_outcome.exit_crit_edge:  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_an73_outcome.exit

if.then90.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %lp_advertising.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lp_advertising.i, align 4
  %or.i138.i = or i32 %32, 1048576
  store i32 %or.i138.i, ptr %lp_advertising.i, align 4
  br label %xgbe_phy_an73_outcome.exit

xgbe_phy_an73_outcome.exit:                       ; preds = %if.then90.i, %if.end70.i.xgbe_phy_an73_outcome.exit_crit_edge
  %and71.i = and i32 %call56.i, %call53.i
  %and72.i = and i32 %and71.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  %and76.i = and i32 %and71.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  %..i = select i1 %tobool77.not.i, i32 7, i32 0
  %mode.0.i = select i1 %tobool73.not.i, i32 %..i, i32 2
  br label %return

sw.bb1:                                           ; preds = %entry
  %phy_data2.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %33 = ptrtoint ptr %phy_data2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_data2.i, align 8
  %lp_advertising.i11 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %lp_advertising.i11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lp_advertising.i11, align 4
  %or.i97.i = or i32 %36, 65600
  store i32 %or.i97.i, ptr %lp_advertising.i11, align 4
  %pause_autoneg.i12 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %37 = ptrtoint ptr %pause_autoneg.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pause_autoneg.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i13 = icmp eq i32 %38, 0
  br i1 %tobool.not.i13, label %sw.bb1.if.end.i18_crit_edge, label %if.then.i14

sw.bb1.if.end.i18_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i18

if.then.i14:                                      ; preds = %sw.bb1
  %tx_pause.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 7
  %39 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tx_pause.i.i, align 4
  %rx_pause.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 8
  %40 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %rx_pause.i.i, align 4
  %phydev.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %34, i32 0, i32 30
  %41 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phydev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.then.i14.if.end.i18_crit_edge, label %if.end.i.i

if.then.i14.if.end.i18_crit_edge:                 ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i18

if.end.i.i:                                       ; preds = %if.then.i14
  %advertising.i.i = getelementptr inbounds %struct.phy_device, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %advertising.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %advertising.i.i, align 4
  %45 = lshr i32 %44, 3
  %46 = and i32 %45, 1024
  %47 = load volatile i32, ptr %advertising.i.i, align 4
  %48 = lshr i32 %47, 3
  %49 = and i32 %48, 2048
  %50 = or i32 %49, %46
  %conv.i.i = trunc i32 %50 to i16
  %pause.i.i = getelementptr inbounds %struct.phy_device, ptr %42, i32 0, i32 11
  %51 = ptrtoint ptr %pause.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pause.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool7.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i.i = or i32 %36, 73792
  %53 = ptrtoint ptr %lp_advertising.i11 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i.i.i, ptr %lp_advertising.i11, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i.if.end12.i.i_crit_edge
  %rmt_adv.0.i.i = phi i16 [ 1024, %if.then8.i.i ], [ 0, %if.end.i.i.if.end12.i.i_crit_edge ]
  %54 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phydev.i.i, align 4
  %asym_pause.i.i = getelementptr inbounds %struct.phy_device, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %asym_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %asym_pause.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool14.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool14.not.i.i, label %if.end12.i.i.if.end22.i.i_crit_edge, label %if.then15.i.i

if.end12.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %lp_advertising.i11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lp_advertising.i11, align 4
  %or.i53.i.i = or i32 %59, 16384
  store i32 %or.i53.i.i, ptr %lp_advertising.i11, align 4
  %60 = or i16 %rmt_adv.0.i.i, 2048
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then15.i.i, %if.end12.i.i.if.end22.i.i_crit_edge
  %rmt_adv.1.i.i = phi i16 [ %60, %if.then15.i.i ], [ %rmt_adv.0.i.i, %if.end12.i.i.if.end22.i.i_crit_edge ]
  %and25.i.i.i = and i16 %rmt_adv.1.i.i, %conv.i.i
  %and.i.i.i = zext i16 %and25.i.i.i to i32
  %and2.i.i.i = and i32 %and.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end29.i.i

if.else.i.i.i:                                    ; preds = %if.end22.i.i
  %and6.i.i.i = and i32 %and.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.else.i.i.i.if.end.i18_crit_edge, label %if.then8.i.i.i

if.else.i.i.i.if.end.i18_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i18

if.then8.i.i.i:                                   ; preds = %if.else.i.i.i
  %61 = and i16 %conv.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool11.not.i.i.i = icmp eq i16 %61, 0
  br i1 %tobool11.not.i.i.i, label %mii_resolve_flowctrl_fdx.exit.i.i, label %if.then8.i.i.i.cleanup.sink.split.i.i_crit_edge

if.then8.i.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

mii_resolve_flowctrl_fdx.exit.i.i:                ; preds = %if.then8.i.i.i
  %62 = and i16 %rmt_adv.1.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool25.not.i.i = icmp eq i16 %62, 0
  br i1 %tobool25.not.i.i, label %mii_resolve_flowctrl_fdx.exit.i.i.if.end.i18_crit_edge, label %mii_resolve_flowctrl_fdx.exit.i.i.cleanup.sink.split.i.i_crit_edge

mii_resolve_flowctrl_fdx.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

mii_resolve_flowctrl_fdx.exit.i.i.if.end.i18_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i18

if.end29.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %tx_pause.i.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end29.i.i, %mii_resolve_flowctrl_fdx.exit.i.i.cleanup.sink.split.i.i_crit_edge, %if.then8.i.i.i.cleanup.sink.split.i.i_crit_edge
  %tx_pause.sink.i.i = phi ptr [ %tx_pause.i.i, %mii_resolve_flowctrl_fdx.exit.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rx_pause.i.i, %if.then8.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rx_pause.i.i, %if.end29.i.i ]
  %64 = ptrtoint ptr %tx_pause.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %tx_pause.sink.i.i, align 4
  br label %if.end.i18

if.end.i18:                                       ; preds = %cleanup.sink.split.i.i, %mii_resolve_flowctrl_fdx.exit.i.i.if.end.i18_crit_edge, %if.else.i.i.i.if.end.i18_crit_edge, %if.then.i14.if.end.i18_crit_edge, %sw.bb1.if.end.i18_crit_edge
  %read_mmd_regs.i15 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %65 = ptrtoint ptr %read_mmd_regs.i15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_mmd_regs.i15, align 4
  %call.i16 = tail call i32 %66(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200593) #12
  %67 = ptrtoint ptr %read_mmd_regs.i15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_mmd_regs.i15, align 4
  %call9.i = tail call i32 %68(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200596) #12
  %and.i17 = and i32 %call9.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool10.not.i = icmp eq i32 %and.i17, 0
  br i1 %tobool10.not.i, label %if.end.i18.if.end15.i_crit_edge, label %if.then11.i

if.end.i18.if.end15.i_crit_edge:                  ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %lp_advertising.i11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lp_advertising.i11, align 4
  %or.i98.i = or i32 %70, 524288
  store i32 %or.i98.i, ptr %lp_advertising.i11, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.end.i18.if.end15.i_crit_edge
  %and16.i = and i32 %call9.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end22.i_crit_edge, label %if.then18.i

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %lp_advertising.i11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lp_advertising.i11, align 4
  %or.i99.i = or i32 %72, 131072
  store i32 %or.i99.i, ptr %lp_advertising.i11, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end22.i_crit_edge
  %and23.i19 = and i32 %call9.i, %call.i16
  %and24.i20 = and i32 %and23.i19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i20)
  %tobool25.not.i21 = icmp eq i32 %and24.i20, 0
  br i1 %tobool25.not.i21, label %if.else.i23, label %if.then26.i22

if.then26.i22:                                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %34, align 4
  %75 = add i32 %74, -1
  %switch.and.i = and i32 %75, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %76 = select i1 %switch.selectcmp.i, i32 2, i32 6
  br label %if.end56.i

if.else.i23:                                      ; preds = %if.end22.i
  %and27.i = and i32 %and23.i19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else.i23.if.end56.i_crit_edge, label %if.then29.i

if.else.i23.if.end56.i_crit_edge:                 ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then29.i:                                      ; preds = %if.else.i23
  %77 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %34, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %78, label %sw.default43.i [
    i32 1, label %if.then29.i.if.end56.i_crit_edge
    i32 9, label %if.then29.i.if.end56.i_crit_edge100
    i32 4, label %sw.bb32.i
    i32 8, label %sw.bb33.i
  ]

if.then29.i.if.end56.i_crit_edge100:              ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then29.i.if.end56.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

sw.bb32.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

sw.bb33.i:                                        ; preds = %if.then29.i
  %sfp_base.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %34, i32 0, i32 24
  %80 = ptrtoint ptr %sfp_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sfp_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cond.i = icmp eq i32 %81, 1
  br i1 %cond.i, label %sw.bb34.i, label %sw.bb33.i.if.end56.i_crit_edge

sw.bb33.i.if.end56.i_crit_edge:                   ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

sw.bb34.i:                                        ; preds = %sw.bb33.i
  %phydev.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %34, i32 0, i32 30
  %82 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phydev.i, align 4
  %tobool35.not.i = icmp eq ptr %83, null
  br i1 %tobool35.not.i, label %sw.bb34.i.if.else38.i_crit_edge, label %land.lhs.true.i

sw.bb34.i.if.else38.i_crit_edge:                  ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38.i

land.lhs.true.i:                                  ; preds = %sw.bb34.i
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %85)
  %cmp.i = icmp eq i32 %85, 100
  br i1 %cmp.i, label %land.lhs.true.i.if.end56.i_crit_edge, label %land.lhs.true.i.if.else38.i_crit_edge

land.lhs.true.i.if.else38.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38.i

land.lhs.true.i.if.end56.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.else38.i:                                      ; preds = %land.lhs.true.i.if.else38.i_crit_edge, %sw.bb34.i.if.else38.i_crit_edge
  br label %if.end56.i

sw.default43.i:                                   ; preds = %if.then29.i
  %phydev44.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %34, i32 0, i32 30
  %86 = ptrtoint ptr %phydev44.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phydev44.i, align 4
  %tobool45.not.i = icmp eq ptr %87, null
  br i1 %tobool45.not.i, label %sw.default43.i.if.else51.i_crit_edge, label %land.lhs.true46.i

sw.default43.i.if.else51.i_crit_edge:             ; preds = %sw.default43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else51.i

land.lhs.true46.i:                                ; preds = %sw.default43.i
  %speed48.i = getelementptr inbounds %struct.phy_device, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %speed48.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %speed48.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %89)
  %cmp49.i = icmp eq i32 %89, 100
  br i1 %cmp49.i, label %land.lhs.true46.i.if.end56.i_crit_edge, label %land.lhs.true46.i.if.else51.i_crit_edge

land.lhs.true46.i.if.else51.i_crit_edge:          ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else51.i

land.lhs.true46.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.else51.i:                                      ; preds = %land.lhs.true46.i.if.else51.i_crit_edge, %sw.default43.i.if.else51.i_crit_edge
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else51.i, %land.lhs.true46.i.if.end56.i_crit_edge, %if.else38.i, %land.lhs.true.i.if.end56.i_crit_edge, %sw.bb33.i.if.end56.i_crit_edge, %sw.bb32.i, %if.then29.i.if.end56.i_crit_edge, %if.then29.i.if.end56.i_crit_edge100, %if.else.i23.if.end56.i_crit_edge, %if.then26.i22
  %mode.0.i24 = phi i32 [ 5, %if.else51.i ], [ 5, %if.else38.i ], [ 3, %sw.bb32.i ], [ %76, %if.then26.i22 ], [ 0, %if.then29.i.if.end56.i_crit_edge ], [ 0, %if.then29.i.if.end56.i_crit_edge100 ], [ 4, %land.lhs.true.i.if.end56.i_crit_edge ], [ 3, %sw.bb33.i.if.end56.i_crit_edge ], [ 4, %land.lhs.true46.i.if.end56.i_crit_edge ], [ 7, %if.else.i23.if.end56.i_crit_edge ]
  %90 = ptrtoint ptr %read_mmd_regs.i15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_mmd_regs.i15, align 4
  %call59.i = tail call i32 %91(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200594) #12
  %92 = ptrtoint ptr %read_mmd_regs.i15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read_mmd_regs.i15, align 4
  %call62.i = tail call i32 %93(ptr noundef %pdata, i32 noundef 0, i32 noundef 1074200597) #12
  %and63.i = and i32 %call62.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end56.i.return_crit_edge, label %if.then65.i

if.end56.i.return_crit_edge:                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then65.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %lp_advertising.i11 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lp_advertising.i11, align 4
  %or.i100.i = or i32 %95, 1048576
  store i32 %or.i100.i, ptr %lp_advertising.i11, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %lp_advertising.i25 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %lp_advertising.i25 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %lp_advertising.i25, align 4
  %or.i86.i = or i32 %97, 1088
  store i32 %or.i86.i, ptr %lp_advertising.i25, align 4
  %read_mmd_regs.i26 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %98 = ptrtoint ptr %read_mmd_regs.i26 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read_mmd_regs.i26, align 4
  %call.i27 = tail call i32 %99(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773444) #12
  %100 = ptrtoint ptr %read_mmd_regs.i26 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read_mmd_regs.i26, align 4
  %call7.i28 = tail call i32 %101(ptr noundef %pdata, i32 noundef 0, i32 noundef 1075773445) #12
  %and.i29 = and i32 %call7.i28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %sw.bb3.if.end.i34_crit_edge, label %if.then.i31

sw.bb3.if.end.i34_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i34

if.then.i31:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %lp_advertising.i25 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %lp_advertising.i25, align 4
  %or.i87.i = or i32 %103, 8192
  store i32 %or.i87.i, ptr %lp_advertising.i25, align 4
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.then.i31, %sw.bb3.if.end.i34_crit_edge
  %and11.i32 = and i32 %call7.i28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i32)
  %tobool12.not.i33 = icmp eq i32 %and11.i32, 0
  br i1 %tobool12.not.i33, label %if.end.i34.if.end17.i38_crit_edge, label %if.then13.i35

if.end.i34.if.end17.i38_crit_edge:                ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i38

if.then13.i35:                                    ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %lp_advertising.i25 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lp_advertising.i25, align 4
  %or.i88.i = or i32 %105, 16384
  store i32 %or.i88.i, ptr %lp_advertising.i25, align 4
  br label %if.end17.i38

if.end17.i38:                                     ; preds = %if.then13.i35, %if.end.i34.if.end17.i38_crit_edge
  %pause_autoneg.i36 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %106 = ptrtoint ptr %pause_autoneg.i36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pause_autoneg.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool19.not.i37 = icmp eq i32 %107, 0
  br i1 %tobool19.not.i37, label %if.end17.i38.if.end50.i57_crit_edge, label %if.then20.i44

if.end17.i38.if.end50.i57_crit_edge:              ; preds = %if.end17.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i57

if.then20.i44:                                    ; preds = %if.end17.i38
  %tx_pause.i39 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 7
  %108 = ptrtoint ptr %tx_pause.i39 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %tx_pause.i39, align 4
  %rx_pause.i40 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 8
  %109 = ptrtoint ptr %rx_pause.i40 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %rx_pause.i40, align 4
  %and23.i41 = and i32 %call7.i28, %call.i27
  %and24.i42 = and i32 %and23.i41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i42)
  %tobool25.not.i43 = icmp eq i32 %and24.i42, 0
  br i1 %tobool25.not.i43, label %if.else.i48, label %if.then26.i45

if.then26.i45:                                    ; preds = %if.then20.i44
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %tx_pause.i39 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %tx_pause.i39, align 4
  br label %if.end50.sink.split.i56

if.else.i48:                                      ; preds = %if.then20.i44
  %and32.i46 = and i32 %and23.i41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i46)
  %tobool33.not.i47 = icmp eq i32 %and32.i46, 0
  br i1 %tobool33.not.i47, label %if.else.i48.if.end50.i57_crit_edge, label %if.then34.i54

if.else.i48.if.end50.i57_crit_edge:               ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i57

if.then34.i54:                                    ; preds = %if.else.i48
  %and35.i49 = and i32 %call.i27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i49)
  %tobool36.not.i50 = icmp ne i32 %and35.i49, 0
  %tobool.not.not.i51 = xor i1 %tobool.not.i30, true
  %brmerge.i52 = select i1 %tobool36.not.i50, i1 true, i1 %tobool.not.not.i51
  %rx_pause.mux.i53 = select i1 %tobool36.not.i50, ptr %rx_pause.i40, ptr %tx_pause.i39
  br i1 %brmerge.i52, label %if.then34.i54.if.end50.sink.split.i56_crit_edge, label %if.then34.i54.if.end50.i57_crit_edge

if.then34.i54.if.end50.i57_crit_edge:             ; preds = %if.then34.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i57

if.then34.i54.if.end50.sink.split.i56_crit_edge:  ; preds = %if.then34.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split.i56

if.end50.sink.split.i56:                          ; preds = %if.then34.i54.if.end50.sink.split.i56_crit_edge, %if.then26.i45
  %rx_pause.sink.i55 = phi ptr [ %rx_pause.i40, %if.then26.i45 ], [ %rx_pause.mux.i53, %if.then34.i54.if.end50.sink.split.i56_crit_edge ]
  %111 = ptrtoint ptr %rx_pause.sink.i55 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %rx_pause.sink.i55, align 4
  br label %if.end50.i57

if.end50.i57:                                     ; preds = %if.end50.sink.split.i56, %if.then34.i54.if.end50.i57_crit_edge, %if.else.i48.if.end50.i57_crit_edge, %if.end17.i38.if.end50.i57_crit_edge
  %and51.i = and i32 %call7.i28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i57.xgbe_phy_an37_outcome.exit_crit_edge, label %if.then53.i

if.end50.i57.xgbe_phy_an37_outcome.exit_crit_edge: ; preds = %if.end50.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_an37_outcome.exit

if.then53.i:                                      ; preds = %if.end50.i57
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2, i32 1
  %112 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i, align 4
  %or.i89.i = or i32 %113, 512
  store i32 %or.i89.i, ptr %add.ptr.i.i, align 4
  br label %xgbe_phy_an37_outcome.exit

xgbe_phy_an37_outcome.exit:                       ; preds = %if.then53.i, %if.end50.i57.xgbe_phy_an37_outcome.exit_crit_edge
  %and58.i = and i32 %call7.i28, %call.i27
  %and59.i = and i32 %and58.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  %cond.i58 = select i1 %tobool60.not.i, i32 7, i32 3
  br label %return

sw.bb5:                                           ; preds = %entry
  %lp_advertising.i59 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 2
  %114 = ptrtoint ptr %lp_advertising.i59 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lp_advertising.i59, align 4
  %or.i40.i = or i32 %115, 192
  store i32 %or.i40.i, ptr %lp_advertising.i59, align 4
  %pause_autoneg.i60 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %116 = ptrtoint ptr %pause_autoneg.i60 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pause_autoneg.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i61 = icmp eq i32 %117, 0
  br i1 %tobool.not.i61, label %sw.bb5.if.end.i97_crit_edge, label %if.then.i66

sw.bb5.if.end.i97_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i97

if.then.i66:                                      ; preds = %sw.bb5
  %phy_data2.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %118 = ptrtoint ptr %phy_data2.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %phy_data2.i.i, align 8
  %tx_pause.i.i62 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 7
  %120 = ptrtoint ptr %tx_pause.i.i62 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %tx_pause.i.i62, align 4
  %rx_pause.i.i63 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 8
  %121 = ptrtoint ptr %rx_pause.i.i63 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %rx_pause.i.i63, align 4
  %phydev.i.i64 = getelementptr inbounds %struct.xgbe_phy_data, ptr %119, i32 0, i32 30
  %122 = ptrtoint ptr %phydev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %phydev.i.i64, align 4
  %tobool.not.i.i65 = icmp eq ptr %123, null
  br i1 %tobool.not.i.i65, label %if.then.i66.if.end.i97_crit_edge, label %if.end.i.i71

if.then.i66.if.end.i97_crit_edge:                 ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i97

if.end.i.i71:                                     ; preds = %if.then.i66
  %advertising.i.i67 = getelementptr inbounds %struct.phy_device, ptr %123, i32 0, i32 17
  %124 = ptrtoint ptr %advertising.i.i67 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %advertising.i.i67, align 4
  %126 = lshr i32 %125, 3
  %127 = and i32 %126, 1024
  %128 = load volatile i32, ptr %advertising.i.i67, align 4
  %129 = lshr i32 %128, 3
  %130 = and i32 %129, 2048
  %131 = or i32 %130, %127
  %conv.i.i68 = trunc i32 %131 to i16
  %pause.i.i69 = getelementptr inbounds %struct.phy_device, ptr %123, i32 0, i32 11
  %132 = ptrtoint ptr %pause.i.i69 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pause.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool7.not.i.i70 = icmp eq i32 %133, 0
  br i1 %tobool7.not.i.i70, label %if.end.i.i71.if.end12.i.i77_crit_edge, label %if.then8.i.i73

if.end.i.i71.if.end12.i.i77_crit_edge:            ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i77

if.then8.i.i73:                                   ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i.i72 = or i32 %115, 8384
  %134 = ptrtoint ptr %lp_advertising.i59 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or.i.i.i72, ptr %lp_advertising.i59, align 4
  br label %if.end12.i.i77

if.end12.i.i77:                                   ; preds = %if.then8.i.i73, %if.end.i.i71.if.end12.i.i77_crit_edge
  %rmt_adv.0.i.i74 = phi i16 [ 1024, %if.then8.i.i73 ], [ 0, %if.end.i.i71.if.end12.i.i77_crit_edge ]
  %135 = ptrtoint ptr %phydev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %phydev.i.i64, align 4
  %asym_pause.i.i75 = getelementptr inbounds %struct.phy_device, ptr %136, i32 0, i32 12
  %137 = ptrtoint ptr %asym_pause.i.i75 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %asym_pause.i.i75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool14.not.i.i76 = icmp eq i32 %138, 0
  br i1 %tobool14.not.i.i76, label %if.end12.i.i77.if.end22.i.i85_crit_edge, label %if.then15.i.i79

if.end12.i.i77.if.end22.i.i85_crit_edge:          ; preds = %if.end12.i.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i.i85

if.then15.i.i79:                                  ; preds = %if.end12.i.i77
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %lp_advertising.i59 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %lp_advertising.i59, align 4
  %or.i53.i.i78 = or i32 %140, 16384
  store i32 %or.i53.i.i78, ptr %lp_advertising.i59, align 4
  %141 = or i16 %rmt_adv.0.i.i74, 2048
  br label %if.end22.i.i85

if.end22.i.i85:                                   ; preds = %if.then15.i.i79, %if.end12.i.i77.if.end22.i.i85_crit_edge
  %rmt_adv.1.i.i80 = phi i16 [ %141, %if.then15.i.i79 ], [ %rmt_adv.0.i.i74, %if.end12.i.i77.if.end22.i.i85_crit_edge ]
  %and25.i.i.i81 = and i16 %rmt_adv.1.i.i80, %conv.i.i68
  %and.i.i.i82 = zext i16 %and25.i.i.i81 to i32
  %and2.i.i.i83 = and i32 %and.i.i.i82, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i83)
  %tobool.not.i.i.i84 = icmp eq i32 %and2.i.i.i83, 0
  br i1 %tobool.not.i.i.i84, label %if.else.i.i.i88, label %if.end29.i.i93

if.else.i.i.i88:                                  ; preds = %if.end22.i.i85
  %and6.i.i.i86 = and i32 %and.i.i.i82, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i86)
  %tobool7.not.i.i.i87 = icmp eq i32 %and6.i.i.i86, 0
  br i1 %tobool7.not.i.i.i87, label %if.else.i.i.i88.if.end.i97_crit_edge, label %if.then8.i.i.i90

if.else.i.i.i88.if.end.i97_crit_edge:             ; preds = %if.else.i.i.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i97

if.then8.i.i.i90:                                 ; preds = %if.else.i.i.i88
  %142 = and i16 %conv.i.i68, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool11.not.i.i.i89 = icmp eq i16 %142, 0
  br i1 %tobool11.not.i.i.i89, label %mii_resolve_flowctrl_fdx.exit.i.i92, label %if.then8.i.i.i90.cleanup.sink.split.i.i95_crit_edge

if.then8.i.i.i90.cleanup.sink.split.i.i95_crit_edge: ; preds = %if.then8.i.i.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i95

mii_resolve_flowctrl_fdx.exit.i.i92:              ; preds = %if.then8.i.i.i90
  %143 = and i16 %rmt_adv.1.i.i80, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool25.not.i.i91 = icmp eq i16 %143, 0
  br i1 %tobool25.not.i.i91, label %mii_resolve_flowctrl_fdx.exit.i.i92.if.end.i97_crit_edge, label %mii_resolve_flowctrl_fdx.exit.i.i92.cleanup.sink.split.i.i95_crit_edge

mii_resolve_flowctrl_fdx.exit.i.i92.cleanup.sink.split.i.i95_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i95

mii_resolve_flowctrl_fdx.exit.i.i92.if.end.i97_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i97

if.end29.i.i93:                                   ; preds = %if.end22.i.i85
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %tx_pause.i.i62 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %tx_pause.i.i62, align 4
  br label %cleanup.sink.split.i.i95

cleanup.sink.split.i.i95:                         ; preds = %if.end29.i.i93, %mii_resolve_flowctrl_fdx.exit.i.i92.cleanup.sink.split.i.i95_crit_edge, %if.then8.i.i.i90.cleanup.sink.split.i.i95_crit_edge
  %tx_pause.sink.i.i94 = phi ptr [ %tx_pause.i.i62, %mii_resolve_flowctrl_fdx.exit.i.i92.cleanup.sink.split.i.i95_crit_edge ], [ %rx_pause.i.i63, %if.then8.i.i.i90.cleanup.sink.split.i.i95_crit_edge ], [ %rx_pause.i.i63, %if.end29.i.i93 ]
  %145 = ptrtoint ptr %tx_pause.sink.i.i94 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %tx_pause.sink.i.i94, align 4
  br label %if.end.i97

if.end.i97:                                       ; preds = %cleanup.sink.split.i.i95, %mii_resolve_flowctrl_fdx.exit.i.i92.if.end.i97_crit_edge, %if.else.i.i.i88.if.end.i97_crit_edge, %if.then.i66.if.end.i97_crit_edge, %sw.bb5.if.end.i97_crit_edge
  %an_status.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 150
  %146 = ptrtoint ptr %an_status.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %an_status.i, align 8
  %and.i96 = and i32 %147, 12
  %148 = zext i32 %and.i96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %and.i96, label %if.end.i97.return_crit_edge [
    i32 4, label %sw.bb.i
    i32 8, label %sw.bb17.i
  ]

if.end.i97.return_crit_edge:                      ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.i:                                          ; preds = %if.end.i97
  %and7.i = and i32 %147, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %149 = ptrtoint ptr %lp_advertising.i59 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %lp_advertising.i59, align 4
  br i1 %tobool8.not.i, label %if.else.i98, label %if.then9.i

if.then9.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i41.i = or i32 %150, 8
  br label %sw.epilog.sink.split.i

if.else.i98:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i42.i = or i32 %150, 4
  br label %sw.epilog.sink.split.i

sw.bb17.i:                                        ; preds = %if.end.i97
  %and19.i = and i32 %147, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %151 = ptrtoint ptr %lp_advertising.i59 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %lp_advertising.i59, align 4
  br i1 %tobool20.not.i, label %if.else25.i, label %if.then21.i

if.then21.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i43.i = or i32 %152, 32
  br label %sw.epilog.sink.split.i

if.else25.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i44.i = or i32 %152, 16
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.else25.i, %if.then21.i, %if.else.i98, %if.then9.i
  %or.i43.sink.i = phi i32 [ %or.i43.i, %if.then21.i ], [ %or.i44.i, %if.else25.i ], [ %or.i41.i, %if.then9.i ], [ %or.i42.i, %if.else.i98 ]
  %mode.0.ph.i = phi i32 [ 5, %if.then21.i ], [ 7, %if.else25.i ], [ 4, %if.then9.i ], [ 7, %if.else.i98 ]
  %153 = ptrtoint ptr %lp_advertising.i59 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or.i43.sink.i, ptr %lp_advertising.i59, align 4
  br label %return

return:                                           ; preds = %sw.epilog.sink.split.i, %if.end.i97.return_crit_edge, %xgbe_phy_an37_outcome.exit, %if.then65.i, %if.end56.i.return_crit_edge, %xgbe_phy_an73_outcome.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond.i58, %xgbe_phy_an37_outcome.exit ], [ %mode.0.i, %xgbe_phy_an73_outcome.exit ], [ 7, %entry.return_crit_edge ], [ %mode.0.i24, %if.end56.i.return_crit_edge ], [ %mode.0.i24, %if.then65.i ], [ 7, %if.end.i97.return_crit_edge ], [ %mode.0.ph.i, %sw.epilog.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_an_pre(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %an_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %0 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %an_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %2 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1, align 8
  %cur_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %debugfs_an_cdr_workaround.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  %6 = ptrtoint ptr %debugfs_an_cdr_workaround.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %debugfs_an_cdr_workaround.i, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.sw.epilog_crit_edge, label %if.end.i

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end
  %phy_cdr_notrack.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 39
  %8 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_cdr_notrack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %do.body.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body.i:                                        ; preds = %if.end.i
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %10 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214) #12
  %and.i = and i32 %call.i, -2
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %12 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214, i32 noundef %and.i) #12
  tail call fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef 5, i32 noundef 0) #12
  %msg_enable.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %14 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.xgbe_phy_rrc.exit.i_crit_edge, label %do.body1.i.i

do.body.i.xgbe_phy_rrc.exit.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_rrc.exit.i

do.body1.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_rrc.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_an_pre, %if.then5.i.i)) #12
          to label %xgbe_phy_rrc.exit.i [label %if.then5.i.i], !srcloc !235

if.then5.i.i:                                     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_rrc.__UNIQUE_ID_ddebug362, ptr noundef %17, ptr noundef nonnull @.str.90) #12
  br label %xgbe_phy_rrc.exit.i

xgbe_phy_rrc.exit.i:                              ; preds = %if.then5.i.i, %do.body1.i.i, %do.body.i.xgbe_phy_rrc.exit.i_crit_edge
  %18 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %phy_cdr_notrack.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %xgbe_phy_rrc.exit.i, %if.end.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_an_post(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %an_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 162
  %2 = ptrtoint ptr %an_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %an_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog9_crit_edge

entry.sw.epilog9_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog9

sw.bb:                                            ; preds = %entry
  %cur_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog9_crit_edge

sw.bb.sw.epilog9_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog9

if.end:                                           ; preds = %sw.bb
  %debugfs_an_cdr_workaround.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  %6 = ptrtoint ptr %debugfs_an_cdr_workaround.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %debugfs_an_cdr_workaround.i, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.xgbe_phy_cdr_track.exit_crit_edge, label %if.end.i

if.end.xgbe_phy_cdr_track.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_cdr_track.exit

if.end.i:                                         ; preds = %if.end
  %phy_cdr_notrack.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_cdr_notrack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %if.end.i.xgbe_phy_cdr_track.exit_crit_edge, label %if.end4.i

if.end.i.xgbe_phy_cdr_track.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_cdr_track.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %phy_cdr_delay.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %phy_cdr_delay.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_cdr_delay.i, align 4
  %add.i = add i32 %11, 500
  tail call void @usleep_range_state(i32 noundef %11, i32 noundef %add.i, i32 noundef 2) #12
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %12 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214) #12
  %or.i = or i32 %call.i, 1
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %14 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %15(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214, i32 noundef %or.i) #12
  %16 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %phy_cdr_notrack.i, align 4
  br label %xgbe_phy_cdr_track.exit

xgbe_phy_cdr_track.exit:                          ; preds = %if.end4.i, %if.end.i.xgbe_phy_cdr_track.exit_crit_edge, %if.end.xgbe_phy_cdr_track.exit_crit_edge
  %an_result = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 152
  %17 = ptrtoint ptr %an_result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %an_result, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %18, label %sw.default [
    i32 0, label %xgbe_phy_cdr_track.exit.sw.epilog9_crit_edge
    i32 3, label %xgbe_phy_cdr_track.exit.sw.epilog9_crit_edge16
  ]

xgbe_phy_cdr_track.exit.sw.epilog9_crit_edge16:   ; preds = %xgbe_phy_cdr_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog9

xgbe_phy_cdr_track.exit.sw.epilog9_crit_edge:     ; preds = %xgbe_phy_cdr_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog9

sw.default:                                       ; preds = %xgbe_phy_cdr_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  %phy_cdr_delay = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 40
  %20 = ptrtoint ptr %phy_cdr_delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_cdr_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %21)
  %cmp3 = icmp ult i32 %21, 100000
  %add = add nuw nsw i32 %21, 10000
  %.sink = select i1 %cmp3, i32 %add, i32 10000
  %22 = ptrtoint ptr %phy_cdr_delay to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %phy_cdr_delay, align 4
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.default, %xgbe_phy_cdr_track.exit.sw.epilog9_crit_edge, %xgbe_phy_cdr_track.exit.sw.epilog9_crit_edge16, %sw.bb.sw.epilog9_crit_edge, %entry.sw.epilog9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_kr_training_pre(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_an_cdr_track_early = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 180
  %0 = ptrtoint ptr %debugfs_an_cdr_track_early to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %debugfs_an_cdr_track_early, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %phy_data1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %2 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1.i, align 8
  %debugfs_an_cdr_workaround.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  %4 = ptrtoint ptr %debugfs_an_cdr_workaround.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %debugfs_an_cdr_workaround.i, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %phy_cdr_notrack.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 39
  %6 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_cdr_notrack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %phy_cdr_delay.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 40
  %8 = ptrtoint ptr %phy_cdr_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_cdr_delay.i, align 4
  %add.i = add i32 %9, 500
  tail call void @usleep_range_state(i32 noundef %9, i32 noundef %add.i, i32 noundef 2) #12
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %10 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214) #12
  %or.i = or i32 %call.i, 1
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %12 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214, i32 noundef %or.i) #12
  %14 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %phy_cdr_notrack.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_phy_kr_training_post(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_an_cdr_track_early = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 180
  %0 = ptrtoint ptr %debugfs_an_cdr_track_early to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %debugfs_an_cdr_track_early, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %phy_data1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %2 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1.i, align 8
  %debugfs_an_cdr_workaround.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 179
  %4 = ptrtoint ptr %debugfs_an_cdr_workaround.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %debugfs_an_cdr_workaround.i, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %phy_cdr_notrack.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 39
  %6 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_cdr_notrack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %phy_cdr_delay.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 40
  %8 = ptrtoint ptr %phy_cdr_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_cdr_delay.i, align 4
  %add.i = add i32 %9, 500
  tail call void @usleep_range_state(i32 noundef %9, i32 noundef %add.i, i32 noundef 2) #12
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %10 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %11(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214) #12
  %or.i = or i32 %call.i, 1
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %12 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %13(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840214, i32 noundef %or.i) #12
  %14 = ptrtoint ptr %phy_cdr_notrack.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %phy_cdr_notrack.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_phy_module_info(ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %modinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.not = icmp eq i32 %3, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sfp_mod_absent = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %sfp_mod_absent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sfp_mod_absent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %arrayidx = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 27, i32 1, i32 30
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end5.if.else_crit_edge, label %land.lhs.true

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %arrayidx9 = getelementptr %struct.xgbe_phy_data, ptr %1, i32 0, i32 27, i32 1, i32 28
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end5.if.else_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %land.lhs.true.cleanup.sink.split_crit_edge
  %.sink23 = phi i32 [ 1, %if.else ], [ 2, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 256, %if.else ], [ 512, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink23, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %16 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %eeprom_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_module_eeprom(ptr noundef %pdata, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %eeprom_addr = alloca i8, align 1
  %eeprom_data = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eeprom_addr) #12
  %2 = ptrtoint ptr %eeprom_addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %eeprom_addr, align 1, !annotation !236
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %eeprom_data) #12
  %3 = call ptr @memset(ptr %eeprom_data, i32 255, i32 512)
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp = icmp ugt i32 %add, 512
  br i1 %cmp, label %if.end.done_crit_edge, label %if.end5

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp6.not = icmp eq i32 %9, 8
  br i1 %cmp6.not, label %if.end8, label %if.end5.done_crit_edge

if.end5.done_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end8:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end8.done_crit_edge, label %if.end10

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end10:                                         ; preds = %if.end8
  %sfp_mod_absent = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %sfp_mod_absent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sfp_mod_absent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.done_crit_edge

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end13:                                         ; preds = %if.end10
  %call14 = tail call fastcc i32 @xgbe_phy_get_comm_ownership(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.done_crit_edge

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @xgbe_phy_sfp_get_mux(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.107) #15
  br label %put_own

if.end22:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %eeprom_addr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %eeprom_addr, align 1
  %call23 = call fastcc i32 @xgbe_phy_i2c_read(ptr noundef %pdata, i32 noundef 80, ptr noundef nonnull %eeprom_addr, ptr noundef nonnull %eeprom_data, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %if.end22.put_mux.sink.split_crit_edge

if.end22.put_mux.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_mux.sink.split

if.end27:                                         ; preds = %if.end22
  %arrayidx = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %eeprom_data, i32 0, i32 1, i32 30
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not = icmp eq i8 %20, 0
  br i1 %tobool29.not, label %if.end27.if.end41_crit_edge, label %land.lhs.true

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end27
  %arrayidx31 = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %eeprom_data, i32 0, i32 1, i32 28
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx31, align 1
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not = icmp eq i8 %23, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then34:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %eeprom_addr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %eeprom_addr, align 1
  %add.ptr = getelementptr inbounds i8, ptr %eeprom_data, i32 256
  %call36 = call fastcc i32 @xgbe_phy_i2c_read(ptr noundef %pdata, i32 noundef 81, ptr noundef nonnull %eeprom_addr, ptr noundef %add.ptr, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then34.if.end41_crit_edge, label %if.then34.put_mux.sink.split_crit_edge

if.then34.put_mux.sink.split_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_mux.sink.split

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.end41:                                         ; preds = %if.then34.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %arrayidx55 = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %eeprom_data, i32 0, i32 1, i32 28
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp4495.not = icmp eq i32 %26, 0
  br i1 %cmp4495.not, label %if.end41.put_mux_crit_edge, label %for.body.preheader

if.end41.put_mux_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_mux

for.body.preheader:                               ; preds = %if.end41
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  br label %for.body

for.body:                                         ; preds = %if.end60.for.body_crit_edge, %for.body.preheader
  %rem.098 = phi i32 [ %dec, %if.end60.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %j.097 = phi i32 [ %inc63, %if.end60.for.body_crit_edge ], [ %28, %for.body.preheader ]
  %i.096 = phi i32 [ %inc, %if.end60.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %j.097)
  %cmp46 = icmp ugt i32 %j.097, 255
  br i1 %cmp46, label %land.lhs.true48, label %for.body.if.end60_crit_edge

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

land.lhs.true48:                                  ; preds = %for.body
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool52.not = icmp eq i8 %30, 0
  br i1 %tobool52.not, label %land.lhs.true48.put_mux_crit_edge, label %land.lhs.true53

land.lhs.true48.put_mux_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_mux

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %31 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx55, align 1
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool58.not = icmp eq i8 %33, 0
  br i1 %tobool58.not, label %land.lhs.true53.if.end60_crit_edge, label %land.lhs.true53.put_mux_crit_edge

land.lhs.true53.put_mux_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_mux

land.lhs.true53.if.end60_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true53.if.end60_crit_edge, %for.body.if.end60_crit_edge
  %arrayidx61 = getelementptr [512 x i8], ptr %eeprom_data, i32 0, i32 %j.097
  %34 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx61, align 1
  %arrayidx62 = getelementptr i8, ptr %data, i32 %i.096
  %36 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx62, align 1
  %dec = add i32 %rem.098, -1
  %inc = add nuw i32 %i.096, 1
  %inc63 = add i32 %j.097, 1
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %cmp44 = icmp ult i32 %inc, %38
  br i1 %cmp44, label %if.end60.for.body_crit_edge, label %if.end60.put_mux_crit_edge

if.end60.put_mux_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_mux

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

put_mux.sink.split:                               ; preds = %if.then34.put_mux.sink.split_crit_edge, %if.end22.put_mux.sink.split_crit_edge
  %.str.109.sink = phi ptr [ @.str.108, %if.end22.put_mux.sink.split_crit_edge ], [ @.str.109, %if.then34.put_mux.sink.split_crit_edge ]
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull %.str.109.sink) #15
  br label %put_mux

put_mux:                                          ; preds = %put_mux.sink.split, %if.end60.put_mux_crit_edge, %land.lhs.true53.put_mux_crit_edge, %land.lhs.true48.put_mux_crit_edge, %if.end41.put_mux_crit_edge
  %rem.1 = phi i32 [ %5, %if.end41.put_mux_crit_edge ], [ %5, %put_mux.sink.split ], [ %rem.098, %land.lhs.true48.put_mux_crit_edge ], [ %rem.098, %land.lhs.true53.put_mux_crit_edge ], [ %dec, %if.end60.put_mux_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end41.put_mux_crit_edge ], [ -5, %put_mux.sink.split ], [ 0, %if.end60.put_mux_crit_edge ], [ 0, %land.lhs.true53.put_mux_crit_edge ], [ 0, %land.lhs.true48.put_mux_crit_edge ]
  call fastcc void @xgbe_phy_sfp_put_mux(ptr noundef %pdata)
  br label %put_own

put_own:                                          ; preds = %put_mux, %if.then20
  %rem.2 = phi i32 [ %5, %if.then20 ], [ %rem.1, %put_mux ]
  %ret.2 = phi i32 [ -5, %if.then20 ], [ %ret.1, %put_mux ]
  call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  br label %done

done:                                             ; preds = %put_own, %if.end13.done_crit_edge, %if.end10.done_crit_edge, %if.end8.done_crit_edge, %if.end5.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %rem.3 = phi i32 [ %rem.2, %put_own ], [ 0, %entry.done_crit_edge ], [ %5, %if.end.done_crit_edge ], [ %5, %if.end5.done_crit_edge ], [ %5, %if.end8.done_crit_edge ], [ %5, %if.end10.done_crit_edge ], [ %5, %if.end13.done_crit_edge ]
  %ret.3 = phi i32 [ %ret.2, %put_own ], [ -22, %entry.done_crit_edge ], [ -22, %if.end.done_crit_edge ], [ -6, %if.end5.done_crit_edge ], [ -5, %if.end8.done_crit_edge ], [ -5, %if.end10.done_crit_edge ], [ -5, %if.end13.done_crit_edge ]
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %sub = sub i32 %42, %rem.3
  store i32 %sub, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %eeprom_data) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eeprom_addr) #12
  ret i32 %ret.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_sfp_setup(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pp4.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 20
  %0 = ptrtoint ptr %pp4.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pp4.i, align 8
  %and4.i = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and4.i)
  %cmp.i = icmp eq i32 %and4.i, 7
  br i1 %cmp.i, label %entry.xgbe_phy_sfp_comm_setup.exit_crit_edge, label %if.end.i

entry.xgbe_phy_sfp_comm_setup.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_comm_setup.exit

if.end.i:                                         ; preds = %entry
  %phy_data1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %2 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1.i, align 8
  %sfp_comm.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sfp_comm.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sfp_comm.i, align 4
  %5 = lshr i32 %1, 6
  %shl.i = and i32 %5, 124
  %add.i = add nuw nsw i32 %shl.i, %and4.i
  %sfp_mux_address.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %sfp_mux_address.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %sfp_mux_address.i, align 4
  %7 = ptrtoint ptr %pp4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pp4.i, align 8
  %shr6.i = lshr i32 %8, 4
  %and7.i = and i32 %shr6.i, 7
  %sfp_mux_channel.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %sfp_mux_channel.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and7.i, ptr %sfp_mux_channel.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %if.end.i.xgbe_phy_sfp_comm_setup.exit_crit_edge, label %do.body.i

if.end.i.xgbe_phy_sfp_comm_setup.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_comm_setup.exit

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_setup, %if.then13.i)) #12
          to label %do.body16.i [label %if.then13.i], !srcloc !235

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %14 = ptrtoint ptr %sfp_mux_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sfp_mux_address.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug377, ptr noundef %13, ptr noundef nonnull @.str.44, i32 noundef %15) #12
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.then13.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_setup, %if.then28.i)) #12
          to label %xgbe_phy_sfp_comm_setup.exit [label %if.then28.i], !srcloc !235

if.then28.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev29.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %16 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev29.i, align 8
  %18 = ptrtoint ptr %sfp_mux_channel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sfp_mux_channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug378, ptr noundef %17, ptr noundef nonnull @.str.45, i32 noundef %19) #12
  br label %xgbe_phy_sfp_comm_setup.exit

xgbe_phy_sfp_comm_setup.exit:                     ; preds = %if.then28.i, %do.body16.i, %if.end.i.xgbe_phy_sfp_comm_setup.exit_crit_edge, %entry.xgbe_phy_sfp_comm_setup.exit_crit_edge
  tail call fastcc void @xgbe_phy_sfp_gpio_setup(ptr noundef %pdata)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_mii_read(ptr nocapture noundef readonly %mii, i32 noundef %addr, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %mii, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 139
  %2 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1, align 8
  %call = tail call fastcc i32 @xgbe_phy_get_comm_ownership(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn_type = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call fastcc i32 @xgbe_phy_i2c_mii_read(ptr noundef %1, i32 noundef %reg)
  br label %if.end10

if.else:                                          ; preds = %if.end
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else.if.end10_crit_edge, label %if.then6

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %if.else
  %6 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_data1, align 8
  %and.i = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %phydev_mode3.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %phydev_mode3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phydev_mode3.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 2
  br i1 %cmp.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.if.end10_crit_edge

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4.not.i = icmp eq i32 %9, 1
  br i1 %cmp4.not.i, label %if.else.i.if.end7.i_crit_edge, label %if.else.i.if.end10_crit_edge

if.else.i.if.end10_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge
  %read_ext_mii_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 14
  %10 = ptrtoint ptr %read_ext_mii_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_ext_mii_regs.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef %addr, i32 noundef %reg) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end7.i, %if.else.i.if.end10_crit_edge, %if.then.i.if.end10_crit_edge, %if.else.if.end10_crit_edge, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ -524, %if.else.if.end10_crit_edge ], [ %call.i, %if.end7.i ], [ -524, %if.then.i.if.end10_crit_edge ], [ -524, %if.else.i.if.end10_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_phy_mii_write(ptr nocapture noundef readonly %mii, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  %i2c_op.i15.i = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel.i16.i = alloca i8, align 1
  %i2c_op.i10.i = alloca %struct.xgbe_i2c_op, align 4
  %i2c_op.i.i = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel.i.i = alloca i8, align 1
  %mii_data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %mii, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 139
  %2 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data1, align 8
  %call = tail call fastcc i32 @xgbe_phy_get_comm_ownership(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn_type = getelementptr inbounds %struct.xgbe_phy_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conn_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mii_data.i) #12
  %6 = getelementptr inbounds [3 x i8], ptr %mii_data.i, i32 0, i32 1
  %7 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel.i.i) #12
  %sfp_comm.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %sfp_comm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sfp_comm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %xgbe_phy_sfp_get_mux.exit.thread.i, label %xgbe_phy_sfp_get_mux.exit.i

xgbe_phy_sfp_get_mux.exit.thread.i:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i) #12
  br label %if.end.i

xgbe_phy_sfp_get_mux.exit.i:                      ; preds = %if.then2
  %11 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i, i32 0, i32 1
  %sfp_mux_channel.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %8, i32 0, i32 10
  %14 = ptrtoint ptr %sfp_mux_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sfp_mux_channel.i.i, align 4
  %shl.i.i = shl nuw i32 1, %15
  %conv.i.i = trunc i32 %shl.i.i to i8
  %16 = ptrtoint ptr %mux_channel.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i.i, ptr %mux_channel.i.i, align 1
  %17 = ptrtoint ptr %i2c_op.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %i2c_op.i.i, align 4
  %sfp_mux_address.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %8, i32 0, i32 9
  %18 = ptrtoint ptr %sfp_mux_address.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sfp_mux_address.i.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %13, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %11, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mux_channel.i.i, ptr %12, align 4
  %i2c_xfer.i.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 54, i32 3
  %23 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %1, ptr noundef nonnull %i2c_op.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %xgbe_phy_sfp_get_mux.exit.i.if.end.i_crit_edge, label %xgbe_phy_sfp_get_mux.exit.i.xgbe_phy_i2c_mii_write.exit_crit_edge

xgbe_phy_sfp_get_mux.exit.i.xgbe_phy_i2c_mii_write.exit_crit_edge: ; preds = %xgbe_phy_sfp_get_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_mii_write.exit

xgbe_phy_sfp_get_mux.exit.i.if.end.i_crit_edge:   ; preds = %xgbe_phy_sfp_get_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %xgbe_phy_sfp_get_mux.exit.i.if.end.i_crit_edge, %xgbe_phy_sfp_get_mux.exit.thread.i
  %conv.i = trunc i32 %reg to i8
  %25 = ptrtoint ptr %mii_data.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %mii_data.i, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %val, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i10.i) #12
  %27 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i10.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i10.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i10.i, i32 0, i32 3
  %i2c_xfer.i.i11.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 54, i32 3
  %30 = ptrtoint ptr %i2c_op.i10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %i2c_op.i10.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 86, ptr %27, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %29, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mii_data.i, ptr %28, align 4
  %34 = ptrtoint ptr %i2c_xfer.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_xfer.i.i11.i, align 4
  %call.i.i12.i = call i32 %35(ptr noundef %1, ptr noundef nonnull %i2c_op.i10.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i12.i)
  %cmp.i13.i.not = icmp eq i32 %call.i.i12.i, -11
  br i1 %cmp.i13.i.not, label %again.i.i.1, label %if.end.i.xgbe_phy_i2c_write.exit.i_crit_edge

if.end.i.xgbe_phy_i2c_write.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_write.exit.i

again.i.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %i2c_op.i10.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %i2c_op.i10.i, align 4
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 86, ptr %27, align 4
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %29, align 4
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mii_data.i, ptr %28, align 4
  %40 = ptrtoint ptr %i2c_xfer.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_xfer.i.i11.i, align 4
  %call.i.i12.i.1 = call i32 %41(ptr noundef %1, ptr noundef nonnull %i2c_op.i10.i) #12
  br label %xgbe_phy_i2c_write.exit.i

xgbe_phy_i2c_write.exit.i:                        ; preds = %again.i.i.1, %if.end.i.xgbe_phy_i2c_write.exit.i_crit_edge
  %call.i.i12.i.lcssa = phi i32 [ %call.i.i12.i, %if.end.i.xgbe_phy_i2c_write.exit.i_crit_edge ], [ %call.i.i12.i.1, %again.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i10.i) #12
  %42 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i15.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel.i16.i) #12
  %sfp_comm.i18.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %sfp_comm.i18.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sfp_comm.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i19.i = icmp eq i32 %45, 0
  br i1 %cmp.i19.i, label %xgbe_phy_i2c_write.exit.i.xgbe_phy_sfp_put_mux.exit.i_crit_edge, label %if.end.i23.i

xgbe_phy_i2c_write.exit.i.xgbe_phy_sfp_put_mux.exit.i_crit_edge: ; preds = %xgbe_phy_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_put_mux.exit.i

if.end.i23.i:                                     ; preds = %xgbe_phy_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i15.i, i32 0, i32 3
  %47 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i15.i, i32 0, i32 2
  %48 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i15.i, i32 0, i32 1
  %49 = ptrtoint ptr %mux_channel.i16.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %mux_channel.i16.i, align 1
  %50 = ptrtoint ptr %i2c_op.i15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %i2c_op.i15.i, align 4
  %sfp_mux_address.i20.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %43, i32 0, i32 9
  %51 = ptrtoint ptr %sfp_mux_address.i20.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sfp_mux_address.i20.i, align 4
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %48, align 4
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %46, align 4
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %mux_channel.i16.i, ptr %47, align 4
  %56 = ptrtoint ptr %i2c_xfer.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_xfer.i.i11.i, align 4
  %call.i.i22.i = call i32 %57(ptr noundef %1, ptr noundef nonnull %i2c_op.i15.i) #12
  br label %xgbe_phy_sfp_put_mux.exit.i

xgbe_phy_sfp_put_mux.exit.i:                      ; preds = %if.end.i23.i, %xgbe_phy_i2c_write.exit.i.xgbe_phy_sfp_put_mux.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i16.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i15.i) #12
  br label %xgbe_phy_i2c_mii_write.exit

xgbe_phy_i2c_mii_write.exit:                      ; preds = %xgbe_phy_sfp_put_mux.exit.i, %xgbe_phy_sfp_get_mux.exit.i.xgbe_phy_i2c_mii_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i12.i.lcssa, %xgbe_phy_sfp_put_mux.exit.i ], [ %call.i.i.i, %xgbe_phy_sfp_get_mux.exit.i.xgbe_phy_i2c_mii_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mii_data.i) #12
  br label %if.end10

if.else:                                          ; preds = %if.end
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else.if.end10_crit_edge, label %if.then6

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %if.else
  %58 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_data1, align 8
  %and.i = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  %phydev_mode3.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %59, i32 0, i32 28
  %60 = ptrtoint ptr %phydev_mode3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phydev_mode3.i, align 4
  br i1 %tobool.not.i22, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.not.i = icmp eq i32 %61, 2
  br i1 %cmp.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.if.end10_crit_edge

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp4.not.i = icmp eq i32 %61, 1
  br i1 %cmp4.not.i, label %if.else.i.if.end7.i_crit_edge, label %if.else.i.if.end10_crit_edge

if.else.i.if.end10_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge
  %write_ext_mii_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 15
  %62 = ptrtoint ptr %write_ext_mii_regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_ext_mii_regs.i, align 4
  %call.i = tail call i32 %63(ptr noundef %1, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end7.i, %if.else.i.if.end10_crit_edge, %if.then.i.if.end10_crit_edge, %if.else.if.end10_crit_edge, %xgbe_phy_i2c_mii_write.exit
  %ret.0 = phi i32 [ %retval.0.i, %xgbe_phy_i2c_mii_write.exit ], [ -524, %if.else.if.end10_crit_edge ], [ %call.i, %if.end7.i ], [ -524, %if.then.i.if.end10_crit_edge ], [ -524, %if.else.i.if.end10_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_sfp_gpio_setup(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %pp3 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 19
  %2 = ptrtoint ptr %pp3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pp3, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 7
  %add = or i32 %and, 32
  %sfp_gpio_address = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %sfp_gpio_address to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %sfp_gpio_address, align 4
  %5 = load i32, ptr %pp3, align 4
  %shr3 = lshr i32 %5, 28
  %sfp_gpio_mask = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %sfp_gpio_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr3, ptr %sfp_gpio_mask, align 4
  %7 = load i32, ptr %pp3, align 4
  %shr6 = lshr i32 %7, 24
  %and7 = and i32 %shr6, 15
  %sfp_gpio_rx_los = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %sfp_gpio_rx_los to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and7, ptr %sfp_gpio_rx_los, align 4
  %9 = load i32, ptr %pp3, align 4
  %shr9 = lshr i32 %9, 12
  %and10 = and i32 %shr9, 15
  %sfp_gpio_tx_fault = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %sfp_gpio_tx_fault to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and10, ptr %sfp_gpio_tx_fault, align 4
  %11 = load i32, ptr %pp3, align 4
  %shr12 = lshr i32 %11, 20
  %and13 = and i32 %shr12, 15
  %sfp_gpio_mod_absent = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %sfp_gpio_mod_absent to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and13, ptr %sfp_gpio_mod_absent, align 4
  %13 = load i32, ptr %pp3, align 4
  %shr15 = lshr i32 %13, 16
  %and16 = and i32 %shr15, 15
  %sfp_gpio_rate_select = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %sfp_gpio_rate_select to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and16, ptr %sfp_gpio_rate_select, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %entry.if.end113_crit_edge, label %do.body

entry.if.end113_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_gpio_setup, %if.then21)) #12
          to label %do.body23 [label %if.then21], !srcloc !235

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = ptrtoint ptr %sfp_gpio_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sfp_gpio_address, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug371, ptr noundef %18, ptr noundef nonnull @.str.47, i32 noundef %20) #12
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_gpio_setup, %if.then35)) #12
          to label %do.body41 [label %if.then35], !srcloc !235

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %dev36 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %21 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev36, align 8
  %23 = ptrtoint ptr %sfp_gpio_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sfp_gpio_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug372, ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef %24) #12
  br label %do.body41

do.body41:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_gpio_setup, %if.then53)) #12
          to label %do.body59 [label %if.then53], !srcloc !235

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %dev54 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %25 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev54, align 8
  %27 = ptrtoint ptr %sfp_gpio_rx_los to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sfp_gpio_rx_los, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug373, ptr noundef %26, ptr noundef nonnull @.str.49, i32 noundef %28) #12
  br label %do.body59

do.body59:                                        ; preds = %if.then53, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_gpio_setup, %if.then71)) #12
          to label %do.body77 [label %if.then71], !srcloc !235

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %dev72 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %29 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev72, align 8
  %31 = ptrtoint ptr %sfp_gpio_tx_fault to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sfp_gpio_tx_fault, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug374, ptr noundef %30, ptr noundef nonnull @.str.50, i32 noundef %32) #12
  br label %do.body77

do.body77:                                        ; preds = %if.then71, %do.body59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_gpio_setup, %if.then89)) #12
          to label %do.body95 [label %if.then89], !srcloc !235

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  %dev90 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %33 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev90, align 8
  %35 = ptrtoint ptr %sfp_gpio_mod_absent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sfp_gpio_mod_absent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug375, ptr noundef %34, ptr noundef nonnull @.str.51, i32 noundef %36) #12
  br label %do.body95

do.body95:                                        ; preds = %if.then89, %do.body77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_gpio_setup, %if.then107)) #12
          to label %if.end113 [label %if.then107], !srcloc !235

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  %dev108 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %37 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev108, align 8
  %39 = ptrtoint ptr %sfp_gpio_rate_select to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sfp_gpio_rate_select, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug376, ptr noundef %38, ptr noundef nonnull @.str.52, i32 noundef %40) #12
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %do.body95, %entry.if.end113_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_phy_get_comm_ownership(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @xgbe_phy_comm_lock, i32 noundef 0) #12
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 14
  %2 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xprop_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #12, !srcloc !239
  %4 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xprop_regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 128) #12, !srcloc !239
  %port_id = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_id, align 4
  %and4 = shl i32 %7, 29
  %shl = and i32 %and4, 1610612736
  %or7 = or i32 %shl, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -500, %8
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub34 = add i32 %add.neg, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35 = icmp slt i32 %sub34, 0
  br i1 %cmp35, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then.while.body_crit_edge, %entry.while.body_crit_edge
  %10 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xprop_regs, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #12, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %13 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xprop_regs, align 8
  %add.ptr13 = getelementptr i8, ptr %14, i32 132
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #12, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %16
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then.while.body_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xprop_regs, align 8
  %add.ptr17 = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %or7) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %19) #12, !srcloc !239
  %20 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xprop_regs, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %19) #12, !srcloc !239
  br label %cleanup

while.end:                                        ; preds = %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.53) #15
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_phy_i2c_mii_read(ptr noundef %pdata, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  %i2c_op.i18 = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel.i19 = alloca i8, align 1
  %i2c_op.i14 = alloca %struct.xgbe_i2c_op, align 4
  %i2c_op.i = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel.i = alloca i8, align 1
  %mii_val = alloca i16, align 2
  %mii_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_val) #12
  %0 = ptrtoint ptr %mii_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %mii_val, align 2, !annotation !236
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mii_reg) #12
  %phy_data1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %1 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_data1.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel.i) #12
  %sfp_comm.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %sfp_comm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sfp_comm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %xgbe_phy_sfp_get_mux.exit.thread, label %xgbe_phy_sfp_get_mux.exit

xgbe_phy_sfp_get_mux.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i) #12
  br label %if.end

xgbe_phy_sfp_get_mux.exit:                        ; preds = %entry
  %5 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i, i32 0, i32 1
  %sfp_mux_channel.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %2, i32 0, i32 10
  %8 = ptrtoint ptr %sfp_mux_channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sfp_mux_channel.i, align 4
  %shl.i = shl nuw i32 1, %9
  %conv.i = trunc i32 %shl.i to i8
  %10 = ptrtoint ptr %mux_channel.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %mux_channel.i, align 1
  %11 = ptrtoint ptr %i2c_op.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %i2c_op.i, align 4
  %sfp_mux_address.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %2, i32 0, i32 9
  %12 = ptrtoint ptr %sfp_mux_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sfp_mux_address.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %7, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mux_channel.i, ptr %6, align 4
  %i2c_xfer.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %17 = ptrtoint ptr %i2c_xfer.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_xfer.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %xgbe_phy_sfp_get_mux.exit.if.end_crit_edge, label %xgbe_phy_sfp_get_mux.exit.cleanup_crit_edge

xgbe_phy_sfp_get_mux.exit.cleanup_crit_edge:      ; preds = %xgbe_phy_sfp_get_mux.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xgbe_phy_sfp_get_mux.exit.if.end_crit_edge:       ; preds = %xgbe_phy_sfp_get_mux.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %xgbe_phy_sfp_get_mux.exit.if.end_crit_edge, %xgbe_phy_sfp_get_mux.exit.thread
  %conv = trunc i32 %reg to i8
  %19 = ptrtoint ptr %mii_reg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %mii_reg, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i14) #12
  %20 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i14, i32 0, i32 1
  %21 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i14, i32 0, i32 2
  %22 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i14, i32 0, i32 3
  %i2c_xfer.i.i15 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %23 = ptrtoint ptr %i2c_op.i14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %i2c_op.i14, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 86, ptr %20, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %22, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mii_reg, ptr %21, align 4
  %27 = ptrtoint ptr %i2c_xfer.i.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_xfer.i.i15, align 4
  %call.i.i16 = call i32 %28(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i14) #12
  %29 = zext i32 %call.i.i16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call.i.i16, label %if.end.xgbe_phy_i2c_read.exit_crit_edge [
    i32 0, label %if.end.again2.i_crit_edge
    i32 -11, label %land.lhs.true.i
  ]

if.end.again2.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i

if.end.xgbe_phy_i2c_read.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit

land.lhs.true.i:                                  ; preds = %if.end
  %30 = ptrtoint ptr %i2c_op.i14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %i2c_op.i14, align 4
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 86, ptr %20, align 4
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %22, align 4
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mii_reg, ptr %21, align 4
  %34 = ptrtoint ptr %i2c_xfer.i.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_xfer.i.i15, align 4
  %call.i.1.i = call i32 %35(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i14) #12
  %36 = zext i32 %call.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call.i.1.i, label %land.lhs.true.i.xgbe_phy_i2c_read.exit_crit_edge [
    i32 0, label %land.lhs.true.i.again2.i_crit_edge
    i32 -11, label %xgbe_phy_i2c_read.exit.thread
  ]

land.lhs.true.i.again2.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i

land.lhs.true.i.xgbe_phy_i2c_read.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit

xgbe_phy_i2c_read.exit.thread:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i14) #12
  br label %if.end5

again2.i:                                         ; preds = %land.lhs.true.i.again2.i_crit_edge, %if.end.again2.i_crit_edge
  %37 = ptrtoint ptr %i2c_op.i14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %i2c_op.i14, align 4
  %38 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 86, ptr %20, align 4
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %22, align 4
  %40 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mii_val, ptr %21, align 4
  %41 = ptrtoint ptr %i2c_xfer.i.i15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_xfer.i.i15, align 4
  %call.i2.i = call i32 %42(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i2.i)
  %cmp10.i.not = icmp eq i32 %call.i2.i, -11
  br i1 %cmp10.i.not, label %again2.i.1, label %again2.i.xgbe_phy_i2c_read.exit_crit_edge

again2.i.xgbe_phy_i2c_read.exit_crit_edge:        ; preds = %again2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit

again2.i.1:                                       ; preds = %again2.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %i2c_op.i14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %i2c_op.i14, align 4
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 86, ptr %20, align 4
  %45 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %22, align 4
  %46 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %mii_val, ptr %21, align 4
  %47 = ptrtoint ptr %i2c_xfer.i.i15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_xfer.i.i15, align 4
  %call.i2.i.1 = call i32 %48(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i14) #12
  br label %xgbe_phy_i2c_read.exit

xgbe_phy_i2c_read.exit:                           ; preds = %again2.i.1, %again2.i.xgbe_phy_i2c_read.exit_crit_edge, %land.lhs.true.i.xgbe_phy_i2c_read.exit_crit_edge, %if.end.xgbe_phy_i2c_read.exit_crit_edge
  %retval.0.i17 = phi i32 [ %call.i.i16, %if.end.xgbe_phy_i2c_read.exit_crit_edge ], [ %call.i.1.i, %land.lhs.true.i.xgbe_phy_i2c_read.exit_crit_edge ], [ %call.i2.i, %again2.i.xgbe_phy_i2c_read.exit_crit_edge ], [ %call.i2.i.1, %again2.i.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i17)
  %tobool2.not = icmp eq i32 %retval.0.i17, 0
  br i1 %tobool2.not, label %if.then3, label %xgbe_phy_i2c_read.exit.if.end5_crit_edge

xgbe_phy_i2c_read.exit.if.end5_crit_edge:         ; preds = %xgbe_phy_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %xgbe_phy_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %mii_val to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mii_val, align 2
  %conv4 = zext i16 %50 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %xgbe_phy_i2c_read.exit.if.end5_crit_edge, %xgbe_phy_i2c_read.exit.thread
  %ret.0 = phi i32 [ %retval.0.i17, %xgbe_phy_i2c_read.exit.if.end5_crit_edge ], [ %conv4, %if.then3 ], [ -11, %xgbe_phy_i2c_read.exit.thread ]
  %51 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy_data1.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i18) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel.i19) #12
  %sfp_comm.i21 = getelementptr inbounds %struct.xgbe_phy_data, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %sfp_comm.i21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sfp_comm.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i22 = icmp eq i32 %54, 0
  br i1 %cmp.i22, label %if.end5.xgbe_phy_sfp_put_mux.exit_crit_edge, label %if.end.i26

if.end5.xgbe_phy_sfp_put_mux.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_put_mux.exit

if.end.i26:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %55 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i18, i32 0, i32 3
  %56 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i18, i32 0, i32 2
  %57 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i18, i32 0, i32 1
  %58 = ptrtoint ptr %mux_channel.i19 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %mux_channel.i19, align 1
  %59 = ptrtoint ptr %i2c_op.i18 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %i2c_op.i18, align 4
  %sfp_mux_address.i23 = getelementptr inbounds %struct.xgbe_phy_data, ptr %52, i32 0, i32 9
  %60 = ptrtoint ptr %sfp_mux_address.i23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sfp_mux_address.i23, align 4
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %57, align 4
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %55, align 4
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %mux_channel.i19, ptr %56, align 4
  %65 = ptrtoint ptr %i2c_xfer.i.i15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_xfer.i.i15, align 4
  %call.i.i25 = call i32 %66(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i18) #12
  br label %xgbe_phy_sfp_put_mux.exit

xgbe_phy_sfp_put_mux.exit:                        ; preds = %if.end.i26, %if.end5.xgbe_phy_sfp_put_mux.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i19) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i18) #12
  br label %cleanup

cleanup:                                          ; preds = %xgbe_phy_sfp_put_mux.exit, %xgbe_phy_sfp_get_mux.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %xgbe_phy_sfp_put_mux.exit ], [ %call.i.i, %xgbe_phy_sfp_get_mux.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mii_reg) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_phy_sfp_get_mux(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  %i2c_op = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel) #12
  %sfp_comm = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sfp_comm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sfp_comm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 1
  %sfp_mux_channel = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %sfp_mux_channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sfp_mux_channel, align 4
  %shl = shl nuw i32 1, %8
  %conv = trunc i32 %shl to i8
  %9 = ptrtoint ptr %mux_channel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %mux_channel, align 1
  %10 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %i2c_op, align 4
  %sfp_mux_address = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %sfp_mux_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sfp_mux_address, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %6, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mux_channel, ptr %5, align 4
  %i2c_xfer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %16 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i = call i32 %17(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_phy_i2c_read(ptr noundef %pdata, i32 noundef %target, ptr noundef %reg, ptr noundef %val, i32 noundef %val_len) unnamed_addr #2 align 64 {
entry:
  %i2c_op = alloca %struct.xgbe_i2c_op, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op) #12
  %0 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 3
  %i2c_xfer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %3 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %i2c_op, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %target, ptr %0, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reg, ptr %1, align 4
  %7 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i = call i32 %8(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  %9 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.again2_crit_edge
    i32 -11, label %land.lhs.true
  ]

entry.again2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %i2c_op, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %target, ptr %0, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %2, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg, ptr %1, align 4
  %14 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i.1 = call i32 %15(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  %16 = zext i32 %call.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call.i.1, label %land.lhs.true.cleanup_crit_edge [
    i32 0, label %land.lhs.true.again2_crit_edge
    i32 -11, label %land.lhs.true.1
  ]

land.lhs.true.again2_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

again2:                                           ; preds = %land.lhs.true.again2_crit_edge, %entry.again2_crit_edge
  %17 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %i2c_op, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %target, ptr %0, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %val_len, ptr %2, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %val, ptr %1, align 4
  %21 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i2 = call i32 %22(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i2)
  %cmp10.not = icmp eq i32 %call.i2, -11
  br i1 %cmp10.not, label %again2.1, label %again2.cleanup_crit_edge

again2.cleanup_crit_edge:                         ; preds = %again2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

again2.1:                                         ; preds = %again2
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %i2c_op, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %target, ptr %0, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %val_len, ptr %2, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %val, ptr %1, align 4
  %27 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i2.1 = call i32 %28(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  br label %cleanup

cleanup:                                          ; preds = %again2.1, %again2.cleanup_crit_edge, %land.lhs.true.1, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.1, %land.lhs.true.cleanup_crit_edge ], [ -11, %land.lhs.true.1 ], [ %call.i2, %again2.cleanup_crit_edge ], [ %call.i2.1, %again2.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_sfp_put_mux(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  %i2c_op = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel) #12
  %sfp_comm = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sfp_comm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sfp_comm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 1
  %7 = ptrtoint ptr %mux_channel to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mux_channel, align 1
  %8 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %i2c_op, align 4
  %sfp_mux_address = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %sfp_mux_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sfp_mux_address, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %6, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mux_channel, ptr %5, align 4
  %i2c_xfer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %14 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i = call i32 %15(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_perform_ratechange(ptr noundef %pdata, i32 noundef %cmd, i32 noundef %sub_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %read_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %0 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i = tail call i32 %1(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840272) #12
  %and.i = and i32 %call.i, -32769
  %write_mmd_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %2 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840272, i32 noundef %and.i) #12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 14
  %4 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xprop_regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %do.body

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.do.end12_crit_edge, label %do.body4

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_perform_ratechange, %if.then9)) #12
          to label %do.end12 [label %if.then9], !srcloc !235

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug360, ptr noundef %11, ptr noundef nonnull @.str.59) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body4, %do.body.do.end12_crit_edge
  tail call fastcc void @xgbe_phy_rx_reset(ptr noundef %pdata)
  br label %do.body14

do.body14:                                        ; preds = %do.end12, %entry.do.body14_crit_edge
  %and16 = and i32 %cmd, 255
  %and21 = shl i32 %sub_cmd, 8
  %shl22 = and i32 %and21, 65280
  %or23 = or i32 %shl22, %and16
  %12 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xprop_regs, align 8
  %add.ptr27 = getelementptr i8, ptr %13, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %or23) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %14) #12, !srcloc !239
  %15 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xprop_regs, align 8
  %add.ptr29 = getelementptr i8, ptr %16, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #12, !srcloc !239
  %17 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xprop_regs, align 8
  %add.ptr32 = getelementptr i8, ptr %18, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #12, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  %20 = or i32 %19, 16777216
  %21 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xprop_regs, align 8
  %add.ptr40 = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %20) #12, !srcloc !239
  br label %while.body

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %do.body14
  %dec105 = phi i32 [ 499, %do.body14 ], [ %dec, %if.end51.while.body_crit_edge ]
  %23 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xprop_regs, align 8
  %add.ptr45 = getelementptr i8, ptr %24, i32 100
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #12, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool49.not = icmp eq i32 %26, 0
  br i1 %tobool49.not, label %while.body.reenable_pll_crit_edge, label %if.end51

while.body.reenable_pll_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %reenable_pll

if.end51:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %dec = add nsw i32 %dec105, -1
  %tobool43.not = icmp eq i32 %dec105, 0
  br i1 %tobool43.not, label %do.body52, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

do.body52:                                        ; preds = %if.end51
  %msg_enable53 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %27 = ptrtoint ptr %msg_enable53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable53, align 4
  %and54 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body52.do.end76_crit_edge, label %do.body57

do.body52.do.end76_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end76

do.body57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_perform_ratechange, %if.then69)) #12
          to label %do.end76 [label %if.then69], !srcloc !235

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug361, ptr noundef %30, ptr noundef nonnull @.str.60) #12
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %do.body57, %do.body52.do.end76_crit_edge
  tail call fastcc void @xgbe_phy_rx_reset(ptr noundef %pdata)
  br label %reenable_pll

reenable_pll:                                     ; preds = %do.end76, %while.body.reenable_pll_crit_edge
  %31 = ptrtoint ptr %read_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_mmd_regs.i, align 4
  %call.i100 = tail call i32 %32(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840272) #12
  %or.i = or i32 %call.i100, 32768
  %33 = ptrtoint ptr %write_mmd_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_mmd_regs.i, align 4
  tail call void %34(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840272, i32 noundef %or.i) #12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_rx_reset(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 10
  %0 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmd_regs, align 4
  %call = tail call i32 %1(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073971216) #12
  %and = and i32 %call, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp = icmp eq i32 %and, 16
  br i1 %cmp, label %do.body, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_mmd_regs, align 4
  %call3 = tail call i32 %3(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840209) #12
  %or = or i32 %call3, 16
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 11
  %4 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %5(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840209, i32 noundef %or) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #12
  %7 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_mmd_regs, align 4
  %call10 = tail call i32 %8(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840209) #12
  %and11 = and i32 %call10, -17
  %9 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %10(ptr noundef %pdata, i32 noundef 0, i32 noundef 1073840209, i32 noundef %and11) #12
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 50, i32 noundef 2) #12
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and18 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %do.body.if.end22_crit_edge, label %if.then19

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.61) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_sfp_detect(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  %i2c_op.i99.i = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel.i100.i = alloca i8, align 1
  %i2c_op.i69.i = alloca %struct.xgbe_i2c_op, align 4
  %i2c_op.i.i26 = alloca %struct.xgbe_i2c_op, align 4
  %mux_channel.i.i = alloca i8, align 1
  %sfp_eeprom.i27 = alloca %struct.xgbe_sfp_eeprom, align 1
  %eeprom_addr.i = alloca i8, align 1
  %i2c_op.i.i = alloca %struct.xgbe_i2c_op, align 4
  %gpio_reg.i = alloca i8, align 1
  %gpio_ports.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %sfp_rx_los.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %sfp_rx_los.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sfp_rx_los.i, align 4
  %sfp_tx_fault.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %sfp_tx_fault.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sfp_tx_fault.i, align 4
  %sfp_mod_absent.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %sfp_mod_absent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sfp_mod_absent.i, align 4
  %sfp_base.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %sfp_base.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sfp_base.i, align 4
  %sfp_cable.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %sfp_cable.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sfp_cable.i, align 4
  %sfp_speed.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %sfp_speed.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sfp_speed.i, align 4
  %call = tail call fastcc i32 @xgbe_phy_get_comm_ownership(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gpio_reg.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gpio_ports.i) #12
  %10 = ptrtoint ptr %gpio_ports.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %gpio_ports.i, align 1, !annotation !236
  %11 = getelementptr inbounds [2 x i8], ptr %gpio_ports.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !236
  %13 = ptrtoint ptr %gpio_reg.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %gpio_reg.i, align 1
  %sfp_gpio_address.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %9, i32 0, i32 11
  %14 = ptrtoint ptr %sfp_gpio_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sfp_gpio_address.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i.i) #12
  %16 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i, i32 0, i32 2
  %18 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i, i32 0, i32 3
  %i2c_xfer.i.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %19 = ptrtoint ptr %i2c_op.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %i2c_op.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %18, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %gpio_reg.i, ptr %17, align 4
  %23 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i.i.i = call i32 %24(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i) #12
  %25 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call.i.i.i, label %if.end.xgbe_phy_i2c_read.exit.i_crit_edge [
    i32 0, label %if.end.again2.i.i_crit_edge
    i32 -11, label %land.lhs.true.i.i
  ]

if.end.again2.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i.i

if.end.xgbe_phy_i2c_read.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %26 = ptrtoint ptr %i2c_op.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %i2c_op.i.i, align 4
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %15, ptr %16, align 4
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %18, align 4
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %gpio_reg.i, ptr %17, align 4
  %30 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i.1.i.i = call i32 %31(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i) #12
  %32 = zext i32 %call.i.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call.i.1.i.i, label %land.lhs.true.i.i.xgbe_phy_i2c_read.exit.i_crit_edge [
    i32 0, label %land.lhs.true.i.i.again2.i.i_crit_edge
    i32 -11, label %xgbe_phy_i2c_read.exit.thread.i
  ]

land.lhs.true.i.i.again2.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i.i

land.lhs.true.i.i.xgbe_phy_i2c_read.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i

xgbe_phy_i2c_read.exit.thread.i:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i) #12
  br label %do.body.i

again2.i.i:                                       ; preds = %land.lhs.true.i.i.again2.i.i_crit_edge, %if.end.again2.i.i_crit_edge
  %33 = ptrtoint ptr %i2c_op.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %i2c_op.i.i, align 4
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %15, ptr %16, align 4
  %35 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %18, align 4
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %gpio_ports.i, ptr %17, align 4
  %37 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i2.i.i = call i32 %38(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i2.i.i)
  %cmp10.i.i.not = icmp eq i32 %call.i2.i.i, -11
  br i1 %cmp10.i.i.not, label %again2.i.i.1, label %again2.i.i.xgbe_phy_i2c_read.exit.i_crit_edge

again2.i.i.xgbe_phy_i2c_read.exit.i_crit_edge:    ; preds = %again2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i

again2.i.i.1:                                     ; preds = %again2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %i2c_op.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %i2c_op.i.i, align 4
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %15, ptr %16, align 4
  %41 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %18, align 4
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %gpio_ports.i, ptr %17, align 4
  %43 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i2.i.i.1 = call i32 %44(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i) #12
  br label %xgbe_phy_i2c_read.exit.i

xgbe_phy_i2c_read.exit.i:                         ; preds = %again2.i.i.1, %again2.i.i.xgbe_phy_i2c_read.exit.i_crit_edge, %land.lhs.true.i.i.xgbe_phy_i2c_read.exit.i_crit_edge, %if.end.xgbe_phy_i2c_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.end.xgbe_phy_i2c_read.exit.i_crit_edge ], [ %call.i.1.i.i, %land.lhs.true.i.i.xgbe_phy_i2c_read.exit.i_crit_edge ], [ %call.i2.i.i, %again2.i.i.xgbe_phy_i2c_read.exit.i_crit_edge ], [ %call.i2.i.i.1, %again2.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %xgbe_phy_i2c_read.exit.i.do.body.i_crit_edge

xgbe_phy_i2c_read.exit.i.do.body.i_crit_edge:     ; preds = %xgbe_phy_i2c_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %xgbe_phy_i2c_read.exit.i.do.body.i_crit_edge, %xgbe_phy_i2c_read.exit.thread.i
  %.b22.i = load i1, ptr @xgbe_phy_sfp_signals.__print_once, align 1
  br i1 %.b22.i, label %do.body.i.xgbe_phy_sfp_signals.exit_crit_edge, label %if.then3.i

do.body.i.xgbe_phy_sfp_signals.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_signals.exit

if.then3.i:                                       ; preds = %do.body.i
  store i1 true, ptr @xgbe_phy_sfp_signals.__print_once, align 1
  %dev.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  %47 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i, label %if.then3.i.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then3.i.netdev_name.exit.i_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call ptr @strchr(ptr noundef %48, i32 noundef 37) #12
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %48, ptr @.str.64
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %if.then3.i.netdev_name.exit.i_crit_edge
  %retval.0.i23.i = phi ptr [ @.str.64, %if.then3.i.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.62, ptr noundef %retval.0.i23.i) #15
  br label %xgbe_phy_sfp_signals.exit

if.end8.i:                                        ; preds = %xgbe_phy_i2c_read.exit.i
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %11, align 1
  %conv.i = zext i8 %52 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %53 = ptrtoint ptr %gpio_ports.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %gpio_ports.i, align 1
  %conv10.i = zext i8 %54 to i32
  %or.i = or i32 %shl.i, %conv10.i
  %sfp_gpio_inputs.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %9, i32 0, i32 13
  %55 = ptrtoint ptr %sfp_gpio_inputs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i, ptr %sfp_gpio_inputs.i, align 4
  %sfp_gpio_mask.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %9, i32 0, i32 12
  %56 = ptrtoint ptr %sfp_gpio_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sfp_gpio_mask.i.i, align 4
  %and.i.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i24.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i24.i, label %if.end.i.i, label %if.end8.i.xgbe_phy_check_sfp_mod_absent.exit.i_crit_edge

if.end8.i.xgbe_phy_check_sfp_mod_absent.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_check_sfp_mod_absent.exit.i

if.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_gpio_mod_absent.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %9, i32 0, i32 16
  %58 = ptrtoint ptr %sfp_gpio_mod_absent.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sfp_gpio_mod_absent.i.i, align 4
  %60 = lshr i32 %or.i, %59
  %61 = and i32 %60, 1
  br label %xgbe_phy_check_sfp_mod_absent.exit.i

xgbe_phy_check_sfp_mod_absent.exit.i:             ; preds = %if.end.i.i, %if.end8.i.xgbe_phy_check_sfp_mod_absent.exit.i_crit_edge
  %retval.0.i26.i = phi i32 [ 0, %if.end8.i.xgbe_phy_check_sfp_mod_absent.exit.i_crit_edge ], [ %61, %if.end.i.i ]
  %sfp_mod_absent.i22 = getelementptr inbounds %struct.xgbe_phy_data, ptr %9, i32 0, i32 20
  %62 = ptrtoint ptr %sfp_mod_absent.i22 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i26.i, ptr %sfp_mod_absent.i22, align 4
  br label %xgbe_phy_sfp_signals.exit

xgbe_phy_sfp_signals.exit:                        ; preds = %xgbe_phy_check_sfp_mod_absent.exit.i, %netdev_name.exit.i, %do.body.i.xgbe_phy_sfp_signals.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gpio_ports.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gpio_reg.i) #12
  %63 = ptrtoint ptr %sfp_mod_absent.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sfp_mod_absent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool2.not = icmp eq i32 %64, 0
  %65 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %phy_data1, align 8
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %xgbe_phy_sfp_signals.exit
  %phydev.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 30
  %67 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phydev.i.i, align 4
  %tobool.not.i.i24 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i24, label %if.then3.xgbe_phy_sfp_mod_absent.exit_crit_edge, label %if.then.i.i

if.then3.xgbe_phy_sfp_mod_absent.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_mod_absent.exit

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  call void @phy_detach(ptr noundef nonnull %68) #12
  %69 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phydev.i.i, align 4
  call void @phy_device_remove(ptr noundef %70) #12
  %71 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phydev.i.i, align 4
  call void @phy_device_free(ptr noundef %72) #12
  %73 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %phydev.i.i, align 4
  br label %xgbe_phy_sfp_mod_absent.exit

xgbe_phy_sfp_mod_absent.exit:                     ; preds = %if.then.i.i, %if.then3.xgbe_phy_sfp_mod_absent.exit_crit_edge
  %sfp_mod_absent.i25 = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 20
  %74 = ptrtoint ptr %sfp_mod_absent.i25 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %sfp_mod_absent.i25, align 4
  %sfp_phy_avail.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 22
  %75 = ptrtoint ptr %sfp_phy_avail.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %sfp_phy_avail.i, align 4
  %sfp_eeprom.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 27
  %76 = call ptr @memset(ptr %sfp_eeprom.i, i32 0, i32 128)
  br label %put

if.end4:                                          ; preds = %xgbe_phy_sfp_signals.exit
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sfp_eeprom.i27) #12
  %77 = call ptr @memset(ptr %sfp_eeprom.i27, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eeprom_addr.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i.i26) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel.i.i) #12
  %sfp_comm.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 8
  %78 = ptrtoint ptr %sfp_comm.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sfp_comm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.i = icmp eq i32 %79, 0
  br i1 %cmp.i.i, label %xgbe_phy_sfp_get_mux.exit.thread.i, label %xgbe_phy_sfp_get_mux.exit.i

xgbe_phy_sfp_get_mux.exit.thread.i:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i26) #12
  br label %if.end8.i41

xgbe_phy_sfp_get_mux.exit.i:                      ; preds = %if.end4
  %80 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i26, i32 0, i32 3
  %81 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i26, i32 0, i32 2
  %82 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i.i26, i32 0, i32 1
  %sfp_mux_channel.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 10
  %83 = ptrtoint ptr %sfp_mux_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sfp_mux_channel.i.i, align 4
  %shl.i.i = shl nuw i32 1, %84
  %conv.i.i = trunc i32 %shl.i.i to i8
  %85 = ptrtoint ptr %mux_channel.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.i.i, ptr %mux_channel.i.i, align 1
  %86 = ptrtoint ptr %i2c_op.i.i26 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %i2c_op.i.i26, align 4
  %sfp_mux_address.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 9
  %87 = ptrtoint ptr %sfp_mux_address.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sfp_mux_address.i.i, align 4
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %82, align 4
  %90 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %80, align 4
  %91 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %mux_channel.i.i, ptr %81, align 4
  %92 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i.i.i30 = call i32 %93(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i.i26) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i.i26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i30)
  %tobool.not.i31 = icmp eq i32 %call.i.i.i30, 0
  br i1 %tobool.not.i31, label %xgbe_phy_sfp_get_mux.exit.i.if.end8.i41_crit_edge, label %do.body.i32

xgbe_phy_sfp_get_mux.exit.i.if.end8.i41_crit_edge: ; preds = %xgbe_phy_sfp_get_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i41

do.body.i32:                                      ; preds = %xgbe_phy_sfp_get_mux.exit.i
  %.b67.i = load i1, ptr @xgbe_phy_sfp_read_eeprom.__print_once, align 1
  br i1 %.b67.i, label %do.body.i32.xgbe_phy_sfp_read_eeprom.exit.thread_crit_edge, label %if.then3.i35

do.body.i32.xgbe_phy_sfp_read_eeprom.exit.thread_crit_edge: ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_read_eeprom.exit.thread

if.then3.i35:                                     ; preds = %do.body.i32
  store i1 true, ptr @xgbe_phy_sfp_read_eeprom.__print_once, align 1
  %dev.i33 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %94 = ptrtoint ptr %dev.i33 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i33, align 8
  %96 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdata, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i.i34 = icmp eq i8 %99, 0
  br i1 %tobool.not.i.i34, label %if.then3.i35.netdev_name.exit.i40_crit_edge, label %lor.lhs.false.i.i39

if.then3.i35.netdev_name.exit.i40_crit_edge:      ; preds = %if.then3.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit.i40

lor.lhs.false.i.i39:                              ; preds = %if.then3.i35
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i36 = call ptr @strchr(ptr noundef %97, i32 noundef 37) #12
  %tobool2.not.i.i37 = icmp eq ptr %call.i.i36, null
  %spec.select.i.i38 = select i1 %tobool2.not.i.i37, ptr %97, ptr @.str.64
  br label %netdev_name.exit.i40

netdev_name.exit.i40:                             ; preds = %lor.lhs.false.i.i39, %if.then3.i35.netdev_name.exit.i40_crit_edge
  %retval.0.i68.i = phi ptr [ @.str.64, %if.then3.i35.netdev_name.exit.i40_crit_edge ], [ %spec.select.i.i38, %lor.lhs.false.i.i39 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i68.i) #15
  br label %xgbe_phy_sfp_read_eeprom.exit.thread

if.end8.i41:                                      ; preds = %xgbe_phy_sfp_get_mux.exit.i.if.end8.i41_crit_edge, %xgbe_phy_sfp_get_mux.exit.thread.i
  %100 = ptrtoint ptr %eeprom_addr.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %eeprom_addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i69.i) #12
  %101 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i69.i, i32 0, i32 1
  %102 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i69.i, i32 0, i32 2
  %103 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i69.i, i32 0, i32 3
  %104 = ptrtoint ptr %i2c_op.i69.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %i2c_op.i69.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 80, ptr %101, align 4
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %103, align 4
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %eeprom_addr.i, ptr %102, align 4
  %108 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i.i71.i = call i32 %109(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i69.i) #12
  %110 = zext i32 %call.i.i71.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call.i.i71.i, label %if.end8.i41.xgbe_phy_i2c_read.exit.i53_crit_edge [
    i32 0, label %if.end8.i41.again2.i.i52_crit_edge
    i32 -11, label %land.lhs.true.i.i44
  ]

if.end8.i41.again2.i.i52_crit_edge:               ; preds = %if.end8.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i.i52

if.end8.i41.xgbe_phy_i2c_read.exit.i53_crit_edge: ; preds = %if.end8.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i53

land.lhs.true.i.i44:                              ; preds = %if.end8.i41
  %111 = ptrtoint ptr %i2c_op.i69.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %i2c_op.i69.i, align 4
  %112 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 80, ptr %101, align 4
  %113 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %103, align 4
  %114 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %eeprom_addr.i, ptr %102, align 4
  %115 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i.1.i.i43 = call i32 %116(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i69.i) #12
  %117 = zext i32 %call.i.1.i.i43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %call.i.1.i.i43, label %land.lhs.true.i.i44.xgbe_phy_i2c_read.exit.i53_crit_edge [
    i32 0, label %land.lhs.true.i.i44.again2.i.i52_crit_edge
    i32 -11, label %xgbe_phy_i2c_read.exit.thread.i45
  ]

land.lhs.true.i.i44.again2.i.i52_crit_edge:       ; preds = %land.lhs.true.i.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.i.i52

land.lhs.true.i.i44.xgbe_phy_i2c_read.exit.i53_crit_edge: ; preds = %land.lhs.true.i.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i53

xgbe_phy_i2c_read.exit.thread.i45:                ; preds = %land.lhs.true.i.i44
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i69.i) #12
  br label %do.body12.i

again2.i.i52:                                     ; preds = %land.lhs.true.i.i44.again2.i.i52_crit_edge, %if.end8.i41.again2.i.i52_crit_edge
  %118 = ptrtoint ptr %i2c_op.i69.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %i2c_op.i69.i, align 4
  %119 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 80, ptr %101, align 4
  %120 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 128, ptr %103, align 4
  %121 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %sfp_eeprom.i27, ptr %102, align 4
  %122 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i2.i.i47 = call i32 %123(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i69.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i2.i.i47)
  %cmp10.i.i48.not = icmp eq i32 %call.i2.i.i47, -11
  br i1 %cmp10.i.i48.not, label %again2.i.i52.1, label %again2.i.i52.xgbe_phy_i2c_read.exit.i53_crit_edge

again2.i.i52.xgbe_phy_i2c_read.exit.i53_crit_edge: ; preds = %again2.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_i2c_read.exit.i53

again2.i.i52.1:                                   ; preds = %again2.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %i2c_op.i69.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %i2c_op.i69.i, align 4
  %125 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 80, ptr %101, align 4
  %126 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 128, ptr %103, align 4
  %127 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %sfp_eeprom.i27, ptr %102, align 4
  %128 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i2.i.i47.1 = call i32 %129(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i69.i) #12
  br label %xgbe_phy_i2c_read.exit.i53

xgbe_phy_i2c_read.exit.i53:                       ; preds = %again2.i.i52.1, %again2.i.i52.xgbe_phy_i2c_read.exit.i53_crit_edge, %land.lhs.true.i.i44.xgbe_phy_i2c_read.exit.i53_crit_edge, %if.end8.i41.xgbe_phy_i2c_read.exit.i53_crit_edge
  %retval.0.i72.i = phi i32 [ %call.i.i71.i, %if.end8.i41.xgbe_phy_i2c_read.exit.i53_crit_edge ], [ %call.i.1.i.i43, %land.lhs.true.i.i44.xgbe_phy_i2c_read.exit.i53_crit_edge ], [ %call.i2.i.i47, %again2.i.i52.xgbe_phy_i2c_read.exit.i53_crit_edge ], [ %call.i2.i.i47.1, %again2.i.i52.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i69.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i72.i)
  %tobool10.not.i = icmp eq i32 %retval.0.i72.i, 0
  br i1 %tobool10.not.i, label %if.end24.i, label %xgbe_phy_i2c_read.exit.i53.do.body12.i_crit_edge

xgbe_phy_i2c_read.exit.i53.do.body12.i_crit_edge: ; preds = %xgbe_phy_i2c_read.exit.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body12.i:                                      ; preds = %xgbe_phy_i2c_read.exit.i53.do.body12.i_crit_edge, %xgbe_phy_i2c_read.exit.thread.i45
  %retval.0.i72112.i = phi i32 [ -11, %xgbe_phy_i2c_read.exit.thread.i45 ], [ %retval.0.i72.i, %xgbe_phy_i2c_read.exit.i53.do.body12.i_crit_edge ]
  %.b6566.i = load i1, ptr @xgbe_phy_sfp_read_eeprom.__print_once.67, align 1
  br i1 %.b6566.i, label %do.body12.i.put.i_crit_edge, label %if.then14.i

do.body12.i.put.i_crit_edge:                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put.i

if.then14.i:                                      ; preds = %do.body12.i
  store i1 true, ptr @xgbe_phy_sfp_read_eeprom.__print_once.67, align 1
  %dev18.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %130 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev18.i, align 8
  %132 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdata, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i73.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i73.i, label %if.then14.i.netdev_name.exit79.i_crit_edge, label %lor.lhs.false.i77.i

if.then14.i.netdev_name.exit79.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit79.i

lor.lhs.false.i77.i:                              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i74.i = call ptr @strchr(ptr noundef %133, i32 noundef 37) #12
  %tobool2.not.i75.i = icmp eq ptr %call.i74.i, null
  %spec.select.i76.i = select i1 %tobool2.not.i75.i, ptr %133, ptr @.str.64
  br label %netdev_name.exit79.i

netdev_name.exit79.i:                             ; preds = %lor.lhs.false.i77.i, %if.then14.i.netdev_name.exit79.i_crit_edge
  %retval.0.i78.i = phi ptr [ @.str.64, %if.then14.i.netdev_name.exit79.i_crit_edge ], [ %spec.select.i76.i, %lor.lhs.false.i77.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.69, ptr noundef %retval.0.i78.i) #15
  br label %put.i

if.end24.i:                                       ; preds = %xgbe_phy_i2c_read.exit.i53
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr %sfp_eeprom.i27, i32 0, i32 63
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end24.i
  %cc.012.i.i = phi i32 [ %phi.cast.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end24.i ]
  %len.addr.011.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 63, %if.end24.i ]
  %buf.addr.010.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sfp_eeprom.i27, %if.end24.i ]
  %138 = ptrtoint ptr %buf.addr.010.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %buf.addr.010.i.i, align 1
  %conv.i80.i = zext i8 %139 to i32
  %add.i.i = add nuw nsw i32 %cc.012.i.i, %conv.i80.i
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.010.i.i, i32 1
  %dec.i.i = add nsw i32 %len.addr.011.i.i, -1
  %phi.cast.i.i = and i32 %add.i.i, 255
  %tobool.not.i81.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i81.i, label %xgbe_phy_sfp_verify_eeprom.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

xgbe_phy_sfp_verify_eeprom.exit.i:                ; preds = %for.body.i.i
  %140 = trunc i32 %add.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %137, i8 %140)
  %cmp.i82.i = icmp eq i8 %137, %140
  br i1 %cmp.i82.i, label %if.end28.i, label %xgbe_phy_sfp_verify_eeprom.exit.i.put.i_crit_edge

xgbe_phy_sfp_verify_eeprom.exit.i.put.i_crit_edge: ; preds = %xgbe_phy_sfp_verify_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put.i

if.end28.i:                                       ; preds = %xgbe_phy_sfp_verify_eeprom.exit.i
  %extd.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1
  %arrayidx29.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 31
  %141 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx29.i, align 1
  %143 = ptrtoint ptr %extd.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %extd.i, align 1
  %incdec.ptr.i88.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 1
  %145 = ptrtoint ptr %incdec.ptr.i88.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %incdec.ptr.i88.i, align 1
  %add.i87.1.i = add i8 %146, %144
  %incdec.ptr.i88.1.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 2
  %147 = ptrtoint ptr %incdec.ptr.i88.1.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %incdec.ptr.i88.1.i, align 1
  %add.i87.2.i = add i8 %add.i87.1.i, %148
  %incdec.ptr.i88.2.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 3
  %149 = ptrtoint ptr %incdec.ptr.i88.2.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %incdec.ptr.i88.2.i, align 1
  %add.i87.3.i = add i8 %add.i87.2.i, %150
  %incdec.ptr.i88.3.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 4
  %151 = ptrtoint ptr %incdec.ptr.i88.3.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %incdec.ptr.i88.3.i, align 1
  %add.i87.4.i = add i8 %add.i87.3.i, %152
  %incdec.ptr.i88.4.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 5
  %153 = ptrtoint ptr %incdec.ptr.i88.4.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %incdec.ptr.i88.4.i, align 1
  %add.i87.5.i = add i8 %add.i87.4.i, %154
  %incdec.ptr.i88.5.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 6
  %155 = ptrtoint ptr %incdec.ptr.i88.5.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %incdec.ptr.i88.5.i, align 1
  %add.i87.6.i = add i8 %add.i87.5.i, %156
  %incdec.ptr.i88.6.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 7
  %157 = ptrtoint ptr %incdec.ptr.i88.6.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %incdec.ptr.i88.6.i, align 1
  %add.i87.7.i = add i8 %add.i87.6.i, %158
  %incdec.ptr.i88.7.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 8
  %159 = ptrtoint ptr %incdec.ptr.i88.7.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %incdec.ptr.i88.7.i, align 1
  %add.i87.8.i = add i8 %add.i87.7.i, %160
  %incdec.ptr.i88.8.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 9
  %161 = ptrtoint ptr %incdec.ptr.i88.8.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %incdec.ptr.i88.8.i, align 1
  %add.i87.9.i = add i8 %add.i87.8.i, %162
  %incdec.ptr.i88.9.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 10
  %163 = ptrtoint ptr %incdec.ptr.i88.9.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %incdec.ptr.i88.9.i, align 1
  %add.i87.10.i = add i8 %add.i87.9.i, %164
  %incdec.ptr.i88.10.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 11
  %165 = ptrtoint ptr %incdec.ptr.i88.10.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %incdec.ptr.i88.10.i, align 1
  %add.i87.11.i = add i8 %add.i87.10.i, %166
  %incdec.ptr.i88.11.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 12
  %167 = ptrtoint ptr %incdec.ptr.i88.11.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %incdec.ptr.i88.11.i, align 1
  %add.i87.12.i = add i8 %add.i87.11.i, %168
  %incdec.ptr.i88.12.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 13
  %169 = ptrtoint ptr %incdec.ptr.i88.12.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %incdec.ptr.i88.12.i, align 1
  %add.i87.13.i = add i8 %add.i87.12.i, %170
  %incdec.ptr.i88.13.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 14
  %171 = ptrtoint ptr %incdec.ptr.i88.13.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %incdec.ptr.i88.13.i, align 1
  %add.i87.14.i = add i8 %add.i87.13.i, %172
  %incdec.ptr.i88.14.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 15
  %173 = ptrtoint ptr %incdec.ptr.i88.14.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %incdec.ptr.i88.14.i, align 1
  %add.i87.15.i = add i8 %add.i87.14.i, %174
  %incdec.ptr.i88.15.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 16
  %175 = ptrtoint ptr %incdec.ptr.i88.15.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %incdec.ptr.i88.15.i, align 1
  %add.i87.16.i = add i8 %add.i87.15.i, %176
  %incdec.ptr.i88.16.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 17
  %177 = ptrtoint ptr %incdec.ptr.i88.16.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %incdec.ptr.i88.16.i, align 1
  %add.i87.17.i = add i8 %add.i87.16.i, %178
  %incdec.ptr.i88.17.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 18
  %179 = ptrtoint ptr %incdec.ptr.i88.17.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %incdec.ptr.i88.17.i, align 1
  %add.i87.18.i = add i8 %add.i87.17.i, %180
  %incdec.ptr.i88.18.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 19
  %181 = ptrtoint ptr %incdec.ptr.i88.18.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %incdec.ptr.i88.18.i, align 1
  %add.i87.19.i = add i8 %add.i87.18.i, %182
  %incdec.ptr.i88.19.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 20
  %183 = ptrtoint ptr %incdec.ptr.i88.19.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %incdec.ptr.i88.19.i, align 1
  %add.i87.20.i = add i8 %add.i87.19.i, %184
  %incdec.ptr.i88.20.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 21
  %185 = ptrtoint ptr %incdec.ptr.i88.20.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %incdec.ptr.i88.20.i, align 1
  %add.i87.21.i = add i8 %add.i87.20.i, %186
  %incdec.ptr.i88.21.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 22
  %187 = ptrtoint ptr %incdec.ptr.i88.21.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %incdec.ptr.i88.21.i, align 1
  %add.i87.22.i = add i8 %add.i87.21.i, %188
  %incdec.ptr.i88.22.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 23
  %189 = ptrtoint ptr %incdec.ptr.i88.22.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %incdec.ptr.i88.22.i, align 1
  %add.i87.23.i = add i8 %add.i87.22.i, %190
  %incdec.ptr.i88.23.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 24
  %191 = ptrtoint ptr %incdec.ptr.i88.23.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %incdec.ptr.i88.23.i, align 1
  %add.i87.24.i = add i8 %add.i87.23.i, %192
  %incdec.ptr.i88.24.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 25
  %193 = ptrtoint ptr %incdec.ptr.i88.24.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %incdec.ptr.i88.24.i, align 1
  %add.i87.25.i = add i8 %add.i87.24.i, %194
  %incdec.ptr.i88.25.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 26
  %195 = ptrtoint ptr %incdec.ptr.i88.25.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %incdec.ptr.i88.25.i, align 1
  %add.i87.26.i = add i8 %add.i87.25.i, %196
  %incdec.ptr.i88.26.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 27
  %197 = ptrtoint ptr %incdec.ptr.i88.26.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %incdec.ptr.i88.26.i, align 1
  %add.i87.27.i = add i8 %add.i87.26.i, %198
  %incdec.ptr.i88.27.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 28
  %199 = ptrtoint ptr %incdec.ptr.i88.27.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %incdec.ptr.i88.27.i, align 1
  %add.i87.28.i = add i8 %add.i87.27.i, %200
  %incdec.ptr.i88.28.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 29
  %201 = ptrtoint ptr %incdec.ptr.i88.28.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %incdec.ptr.i88.28.i, align 1
  %add.i87.29.i = add i8 %add.i87.28.i, %202
  %incdec.ptr.i88.29.i = getelementptr inbounds %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom.i27, i32 0, i32 1, i32 30
  %203 = ptrtoint ptr %incdec.ptr.i88.29.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %incdec.ptr.i88.29.i, align 1
  %add.i87.30.i = add i8 %add.i87.29.i, %204
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %add.i87.30.i)
  %cmp.i94.i = icmp eq i8 %142, %add.i87.30.i
  br i1 %cmp.i94.i, label %if.end34.i, label %if.end28.i.put.i_crit_edge

if.end28.i.put.i_crit_edge:                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put.i

if.end34.i:                                       ; preds = %if.end28.i
  %sfp_eeprom35.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 27
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(128) %sfp_eeprom35.i, ptr noundef nonnull dereferenceable(128) %sfp_eeprom.i27, i32 128) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool37.not.i = icmp eq i32 %bcmp.i, 0
  %sfp_changed43.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %66, i32 0, i32 21
  br i1 %tobool37.not.i, label %if.else.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  %205 = ptrtoint ptr %sfp_changed43.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1, ptr %sfp_changed43.i, align 4
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %206 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %207, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %if.then38.i.if.end41.i_crit_edge, label %if.then40.i

if.then38.i.if.end41.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then40.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @xgbe_phy_sfp_eeprom_info(ptr noundef %pdata, ptr noundef nonnull %sfp_eeprom.i27) #12
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %if.then38.i.if.end41.i_crit_edge
  %208 = call ptr @memcpy(ptr %sfp_eeprom35.i, ptr %sfp_eeprom.i27, i32 128)
  %209 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %phy_data1, align 8
  %phydev.i.i54 = getelementptr inbounds %struct.xgbe_phy_data, ptr %210, i32 0, i32 30
  %211 = ptrtoint ptr %phydev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %phydev.i.i54, align 4
  %tobool.not.i97.i = icmp eq ptr %212, null
  br i1 %tobool.not.i97.i, label %if.end41.i.put.i_crit_edge, label %if.then.i.i55

if.end41.i.put.i_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put.i

if.then.i.i55:                                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @phy_detach(ptr noundef nonnull %212) #12
  %213 = ptrtoint ptr %phydev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %phydev.i.i54, align 4
  call void @phy_device_remove(ptr noundef %214) #12
  %215 = ptrtoint ptr %phydev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %phydev.i.i54, align 4
  call void @phy_device_free(ptr noundef %216) #12
  %217 = ptrtoint ptr %phydev.i.i54 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %phydev.i.i54, align 4
  br label %put.i

if.else.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %218 = ptrtoint ptr %sfp_changed43.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %sfp_changed43.i, align 4
  br label %put.i

put.i:                                            ; preds = %if.else.i, %if.then.i.i55, %if.end41.i.put.i_crit_edge, %if.end28.i.put.i_crit_edge, %xgbe_phy_sfp_verify_eeprom.exit.i.put.i_crit_edge, %netdev_name.exit79.i, %do.body12.i.put.i_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i72112.i, %do.body12.i.put.i_crit_edge ], [ %retval.0.i72112.i, %netdev_name.exit79.i ], [ 0, %if.else.i ], [ -22, %xgbe_phy_sfp_verify_eeprom.exit.i.put.i_crit_edge ], [ -22, %if.end28.i.put.i_crit_edge ], [ 0, %if.end41.i.put.i_crit_edge ], [ 0, %if.then.i.i55 ]
  %219 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op.i99.i) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mux_channel.i100.i) #12
  %sfp_comm.i102.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %220, i32 0, i32 8
  %221 = ptrtoint ptr %sfp_comm.i102.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %sfp_comm.i102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp.i103.i = icmp eq i32 %222, 0
  br i1 %cmp.i103.i, label %put.i.xgbe_phy_sfp_read_eeprom.exit_crit_edge, label %if.end.i107.i

put.i.xgbe_phy_sfp_read_eeprom.exit_crit_edge:    ; preds = %put.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_read_eeprom.exit

if.end.i107.i:                                    ; preds = %put.i
  call void @__sanitizer_cov_trace_pc() #14
  %223 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i99.i, i32 0, i32 3
  %224 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i99.i, i32 0, i32 2
  %225 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op.i99.i, i32 0, i32 1
  %226 = ptrtoint ptr %mux_channel.i100.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %mux_channel.i100.i, align 1
  %227 = ptrtoint ptr %i2c_op.i99.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %i2c_op.i99.i, align 4
  %sfp_mux_address.i104.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %220, i32 0, i32 9
  %228 = ptrtoint ptr %sfp_mux_address.i104.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %sfp_mux_address.i104.i, align 4
  %230 = ptrtoint ptr %225 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %225, align 4
  %231 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 1, ptr %223, align 4
  %232 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %mux_channel.i100.i, ptr %224, align 4
  %233 = ptrtoint ptr %i2c_xfer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %i2c_xfer.i.i.i, align 4
  %call.i.i106.i = call i32 %234(ptr noundef %pdata, ptr noundef nonnull %i2c_op.i99.i) #12
  br label %xgbe_phy_sfp_read_eeprom.exit

xgbe_phy_sfp_read_eeprom.exit.thread:             ; preds = %netdev_name.exit.i40, %do.body.i32.xgbe_phy_sfp_read_eeprom.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eeprom_addr.i) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sfp_eeprom.i27) #12
  br label %if.then7

xgbe_phy_sfp_read_eeprom.exit:                    ; preds = %if.end.i107.i, %put.i.xgbe_phy_sfp_read_eeprom.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mux_channel.i100.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op.i99.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eeprom_addr.i) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sfp_eeprom.i27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not, label %if.end8, label %xgbe_phy_sfp_read_eeprom.exit.if.then7_crit_edge

xgbe_phy_sfp_read_eeprom.exit.if.then7_crit_edge: ; preds = %xgbe_phy_sfp_read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %xgbe_phy_sfp_read_eeprom.exit.if.then7_crit_edge, %xgbe_phy_sfp_read_eeprom.exit.thread
  %235 = ptrtoint ptr %sfp_rx_los.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %sfp_rx_los.i, align 4
  %236 = ptrtoint ptr %sfp_tx_fault.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %sfp_tx_fault.i, align 4
  %237 = ptrtoint ptr %sfp_mod_absent.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 1, ptr %sfp_mod_absent.i, align 4
  %238 = ptrtoint ptr %sfp_base.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %sfp_base.i, align 4
  %239 = ptrtoint ptr %sfp_cable.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %sfp_cable.i, align 4
  %240 = ptrtoint ptr %sfp_speed.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 0, ptr %sfp_speed.i, align 4
  %241 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %phy_data1, align 8
  %phydev.i.i63 = getelementptr inbounds %struct.xgbe_phy_data, ptr %242, i32 0, i32 30
  %243 = ptrtoint ptr %phydev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %phydev.i.i63, align 4
  %tobool.not.i.i64 = icmp eq ptr %244, null
  br i1 %tobool.not.i.i64, label %if.then7.xgbe_phy_sfp_mod_absent.exit69_crit_edge, label %if.then.i.i65

if.then7.xgbe_phy_sfp_mod_absent.exit69_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_mod_absent.exit69

if.then.i.i65:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  call void @phy_detach(ptr noundef nonnull %244) #12
  %245 = ptrtoint ptr %phydev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %phydev.i.i63, align 4
  call void @phy_device_remove(ptr noundef %246) #12
  %247 = ptrtoint ptr %phydev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %phydev.i.i63, align 4
  call void @phy_device_free(ptr noundef %248) #12
  %249 = ptrtoint ptr %phydev.i.i63 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr null, ptr %phydev.i.i63, align 4
  br label %xgbe_phy_sfp_mod_absent.exit69

xgbe_phy_sfp_mod_absent.exit69:                   ; preds = %if.then.i.i65, %if.then7.xgbe_phy_sfp_mod_absent.exit69_crit_edge
  %sfp_mod_absent.i66 = getelementptr inbounds %struct.xgbe_phy_data, ptr %242, i32 0, i32 20
  %250 = ptrtoint ptr %sfp_mod_absent.i66 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %sfp_mod_absent.i66, align 4
  %sfp_phy_avail.i67 = getelementptr inbounds %struct.xgbe_phy_data, ptr %242, i32 0, i32 22
  %251 = ptrtoint ptr %sfp_phy_avail.i67 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 0, ptr %sfp_phy_avail.i67, align 4
  %sfp_eeprom.i68 = getelementptr inbounds %struct.xgbe_phy_data, ptr %242, i32 0, i32 27
  %252 = call ptr @memset(ptr %sfp_eeprom.i68, i32 0, i32 128)
  br label %put

if.end8:                                          ; preds = %xgbe_phy_sfp_read_eeprom.exit
  %253 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %phy_data1, align 8
  %sfp_eeprom2.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 27
  %255 = ptrtoint ptr %sfp_eeprom2.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %sfp_eeprom2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %256)
  %cmp.not.i = icmp eq i8 %256, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.end8.xgbe_phy_sfp_parse_eeprom.exit_crit_edge

if.end8.xgbe_phy_sfp_parse_eeprom.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_parse_eeprom.exit

if.end.i:                                         ; preds = %if.end8
  %arrayidx4.i = getelementptr %struct.xgbe_phy_data, ptr %254, i32 0, i32 27, i32 0, i32 1
  %257 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %258)
  %cmp6.not.i = icmp eq i8 %258, 4
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end.i.xgbe_phy_sfp_parse_eeprom.exit_crit_edge

if.end.i.xgbe_phy_sfp_parse_eeprom.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_parse_eeprom.exit

if.end9.i:                                        ; preds = %if.end.i
  %arrayidx.i.i = getelementptr %struct.xgbe_phy_data, ptr %254, i32 0, i32 27, i32 1, i32 1
  %259 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx.i.i, align 1
  %261 = and i8 %260, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool.not.i.i71 = icmp eq i8 %261, 0
  br i1 %tobool.not.i.i71, label %if.end9.i.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge, label %if.end.i.i74

if.end9.i.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_check_sfp_tx_fault.exit.i

if.end.i.i74:                                     ; preds = %if.end9.i
  %sfp_gpio_mask.i.i72 = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 12
  %262 = ptrtoint ptr %sfp_gpio_mask.i.i72 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %sfp_gpio_mask.i.i72, align 4
  %and1.i.i = and i32 %263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i73 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i73, label %if.end4.i.i, label %if.end.i.i74.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge

if.end.i.i74.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge: ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_check_sfp_tx_fault.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_gpio_inputs.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 13
  %264 = ptrtoint ptr %sfp_gpio_inputs.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %sfp_gpio_inputs.i.i, align 4
  %sfp_gpio_tx_fault.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 15
  %266 = ptrtoint ptr %sfp_gpio_tx_fault.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %sfp_gpio_tx_fault.i.i, align 4
  %268 = lshr i32 %265, %267
  %269 = and i32 %268, 1
  br label %xgbe_phy_check_sfp_tx_fault.exit.i

xgbe_phy_check_sfp_tx_fault.exit.i:               ; preds = %if.end4.i.i, %if.end.i.i74.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge, %if.end9.i.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge
  %retval.0.i.i75 = phi i32 [ 0, %if.end9.i.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge ], [ 0, %if.end.i.i74.xgbe_phy_check_sfp_tx_fault.exit.i_crit_edge ], [ %269, %if.end4.i.i ]
  %sfp_tx_fault.i76 = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 19
  %270 = ptrtoint ptr %sfp_tx_fault.i76 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %retval.0.i.i75, ptr %sfp_tx_fault.i76, align 4
  %271 = and i8 %260, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool.not.i133.i = icmp eq i8 %271, 0
  br i1 %tobool.not.i133.i, label %xgbe_phy_check_sfp_tx_fault.exit.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge, label %if.end.i137.i

xgbe_phy_check_sfp_tx_fault.exit.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge: ; preds = %xgbe_phy_check_sfp_tx_fault.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_check_sfp_rx_los.exit.i

if.end.i137.i:                                    ; preds = %xgbe_phy_check_sfp_tx_fault.exit.i
  %sfp_gpio_mask.i134.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 12
  %272 = ptrtoint ptr %sfp_gpio_mask.i134.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %sfp_gpio_mask.i134.i, align 4
  %and1.i135.i = and i32 %273, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i135.i)
  %tobool2.not.i136.i = icmp eq i32 %and1.i135.i, 0
  br i1 %tobool2.not.i136.i, label %if.end4.i142.i, label %if.end.i137.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge

if.end.i137.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge: ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_check_sfp_rx_los.exit.i

if.end4.i142.i:                                   ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_gpio_inputs.i138.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 13
  %274 = ptrtoint ptr %sfp_gpio_inputs.i138.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %sfp_gpio_inputs.i138.i, align 4
  %sfp_gpio_rx_los.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 14
  %276 = ptrtoint ptr %sfp_gpio_rx_los.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %sfp_gpio_rx_los.i.i, align 4
  %278 = lshr i32 %275, %277
  %279 = and i32 %278, 1
  br label %xgbe_phy_check_sfp_rx_los.exit.i

xgbe_phy_check_sfp_rx_los.exit.i:                 ; preds = %if.end4.i142.i, %if.end.i137.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge, %xgbe_phy_check_sfp_tx_fault.exit.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge
  %retval.0.i143.i = phi i32 [ 0, %xgbe_phy_check_sfp_tx_fault.exit.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge ], [ 0, %if.end.i137.i.xgbe_phy_check_sfp_rx_los.exit.i_crit_edge ], [ %279, %if.end4.i142.i ]
  %sfp_rx_los.i77 = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 18
  %280 = ptrtoint ptr %sfp_rx_los.i77 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %retval.0.i143.i, ptr %sfp_rx_los.i77, align 4
  %arrayidx13.i = getelementptr %struct.xgbe_phy_data, ptr %254, i32 0, i32 27, i32 0, i32 8
  %281 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx13.i, align 1
  %283 = and i8 %282, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i78 = icmp eq i8 %283, 0
  br i1 %tobool.not.i78, label %xgbe_phy_check_sfp_rx_los.exit.i.if.end19.i_crit_edge, label %if.then15.i

xgbe_phy_check_sfp_rx_los.exit.i.if.end19.i_crit_edge: ; preds = %xgbe_phy_check_sfp_rx_los.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then15.i:                                      ; preds = %xgbe_phy_check_sfp_rx_los.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx16.i = getelementptr %struct.xgbe_phy_data, ptr %254, i32 0, i32 27, i32 0, i32 18
  %284 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %285 to i32
  %sfp_cable_len.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 23
  %286 = ptrtoint ptr %sfp_cable_len.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %conv17.i, ptr %sfp_cable_len.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %xgbe_phy_check_sfp_rx_los.exit.i.if.end19.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.then15.i ], [ 1, %xgbe_phy_check_sfp_rx_los.exit.i.if.end19.i_crit_edge ]
  %287 = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 25
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %.sink.i, ptr %287, align 4
  %arrayidx20.i = getelementptr %struct.xgbe_phy_data, ptr %254, i32 0, i32 27, i32 0, i32 3
  %289 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %290 to i32
  %and22.i = and i32 %conv21.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else26.i, label %if.end19.i.if.end91.sink.split.i_crit_edge

if.end19.i.if.end91.sink.split.i_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else26.i:                                      ; preds = %if.end19.i
  %and29.i = and i32 %conv21.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else33.i, label %if.else26.i.if.end91.sink.split.i_crit_edge

if.else26.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else33.i:                                      ; preds = %if.else26.i
  %and36.i = and i32 %conv21.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i79 = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i79, label %if.else40.i, label %if.else33.i.if.end91.sink.split.i_crit_edge

if.else33.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else40.i:                                      ; preds = %if.else33.i
  %and43.i = and i32 %conv21.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.else47.i, label %if.else40.i.if.end91.sink.split.i_crit_edge

if.else40.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else47.i:                                      ; preds = %if.else40.i
  %arrayidx48.i = getelementptr %struct.xgbe_phy_data, ptr %254, i32 0, i32 27, i32 0, i32 6
  %291 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %292 to i32
  %and50.i = and i32 %conv49.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.else54.i, label %if.else47.i.if.end91.sink.split.i_crit_edge

if.else47.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else54.i:                                      ; preds = %if.else47.i
  %and57.i = and i32 %conv49.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.else61.i, label %if.else54.i.if.end91.sink.split.i_crit_edge

if.else54.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else61.i:                                      ; preds = %if.else54.i
  %and64.i = and i32 %conv49.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.else68.i, label %if.else61.i.if.end91.sink.split.i_crit_edge

if.else61.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else68.i:                                      ; preds = %if.else61.i
  %and71.i = and i32 %conv49.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.else75.i, label %if.else68.i.if.end91.sink.split.i_crit_edge

if.else68.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.else75.i:                                      ; preds = %if.else68.i
  br i1 %tobool.not.i78, label %if.else75.i.if.end91.i_crit_edge, label %land.lhs.true.i

if.else75.i.if.end91.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.i

land.lhs.true.i:                                  ; preds = %if.else75.i
  %arrayidx.i144.i = getelementptr %struct.xgbe_phy_data, ptr %254, i32 0, i32 27, i32 0, i32 12
  %293 = ptrtoint ptr %arrayidx.i144.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx.i144.i, align 1
  %295 = add i8 %294, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %295)
  %296 = icmp ult i8 %295, 5
  br i1 %296, label %land.lhs.true.i.if.end91.sink.split.i_crit_edge, label %land.lhs.true.i.if.end91.i_crit_edge

land.lhs.true.i.if.end91.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.i

land.lhs.true.i.if.end91.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.sink.split.i

if.end91.sink.split.i:                            ; preds = %land.lhs.true.i.if.end91.sink.split.i_crit_edge, %if.else68.i.if.end91.sink.split.i_crit_edge, %if.else61.i.if.end91.sink.split.i_crit_edge, %if.else54.i.if.end91.sink.split.i_crit_edge, %if.else47.i.if.end91.sink.split.i_crit_edge, %if.else40.i.if.end91.sink.split.i_crit_edge, %if.else33.i.if.end91.sink.split.i_crit_edge, %if.else26.i.if.end91.sink.split.i_crit_edge, %if.end19.i.if.end91.sink.split.i_crit_edge
  %.sink145.i = phi i32 [ 5, %if.end19.i.if.end91.sink.split.i_crit_edge ], [ 6, %if.else26.i.if.end91.sink.split.i_crit_edge ], [ 7, %if.else33.i.if.end91.sink.split.i_crit_edge ], [ 8, %if.else40.i.if.end91.sink.split.i_crit_edge ], [ 2, %if.else47.i.if.end91.sink.split.i_crit_edge ], [ 3, %if.else54.i.if.end91.sink.split.i_crit_edge ], [ 4, %if.else61.i.if.end91.sink.split.i_crit_edge ], [ 1, %if.else68.i.if.end91.sink.split.i_crit_edge ], [ 9, %land.lhs.true.i.if.end91.sink.split.i_crit_edge ]
  %sfp_base32.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 24
  %297 = ptrtoint ptr %sfp_base32.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %.sink145.i, ptr %sfp_base32.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end91.sink.split.i, %land.lhs.true.i.if.end91.i_crit_edge, %if.else75.i.if.end91.i_crit_edge
  %sfp_base92.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 24
  %298 = ptrtoint ptr %sfp_base92.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %sfp_base92.i, align 4
  %switch.tableidx = add i32 %299, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %300 = icmp ult i32 %switch.tableidx, 9
  br i1 %300, label %switch.lookup, label %if.end91.i.xgbe_phy_sfp_parse_eeprom.exit_crit_edge

if.end91.i.xgbe_phy_sfp_parse_eeprom.exit_crit_edge: ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_parse_eeprom.exit

switch.lookup:                                    ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.xgbe_phy_sfp_detect, i32 0, i32 %switch.tableidx
  %301 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %301)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sfp_speed.i80 = getelementptr inbounds %struct.xgbe_phy_data, ptr %254, i32 0, i32 26
  %302 = ptrtoint ptr %sfp_speed.i80 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %switch.load, ptr %sfp_speed.i80, align 4
  br label %xgbe_phy_sfp_parse_eeprom.exit

xgbe_phy_sfp_parse_eeprom.exit:                   ; preds = %switch.lookup, %if.end91.i.xgbe_phy_sfp_parse_eeprom.exit_crit_edge, %if.end.i.xgbe_phy_sfp_parse_eeprom.exit_crit_edge, %if.end8.xgbe_phy_sfp_parse_eeprom.exit_crit_edge
  %303 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %phy_data1, align 8
  %sfp_changed.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %304, i32 0, i32 21
  %305 = ptrtoint ptr %sfp_changed.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %sfp_changed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool.not.i82 = icmp eq i32 %306, 0
  br i1 %tobool.not.i82, label %xgbe_phy_sfp_parse_eeprom.exit.put_crit_edge, label %if.end.i86

xgbe_phy_sfp_parse_eeprom.exit.put_crit_edge:     ; preds = %xgbe_phy_sfp_parse_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %put

if.end.i86:                                       ; preds = %xgbe_phy_sfp_parse_eeprom.exit
  %sfp_phy_avail.i83 = getelementptr inbounds %struct.xgbe_phy_data, ptr %304, i32 0, i32 22
  %307 = ptrtoint ptr %sfp_phy_avail.i83 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 0, ptr %sfp_phy_avail.i83, align 4
  %sfp_base.i84 = getelementptr inbounds %struct.xgbe_phy_data, ptr %304, i32 0, i32 24
  %308 = ptrtoint ptr %sfp_base.i84 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %sfp_base.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %309)
  %cmp.not.i85 = icmp eq i32 %309, 1
  br i1 %cmp.not.i85, label %if.end3.i, label %if.end.i86.put_crit_edge

if.end.i86.put_crit_edge:                         ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %put

if.end3.i:                                        ; preds = %if.end.i86
  %call.i = call fastcc i32 @xgbe_phy_i2c_mii_read(ptr noundef %pdata, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end3.i.put_crit_edge, label %if.end6.i

if.end3.i.put_crit_edge:                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %310 = ptrtoint ptr %sfp_phy_avail.i83 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 1, ptr %sfp_phy_avail.i83, align 4
  br label %put

put:                                              ; preds = %if.end6.i, %if.end3.i.put_crit_edge, %if.end.i86.put_crit_edge, %xgbe_phy_sfp_parse_eeprom.exit.put_crit_edge, %xgbe_phy_sfp_mod_absent.exit69, %xgbe_phy_sfp_mod_absent.exit
  %311 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %phy_data1, align 8
  %sfp_mod_absent.i87 = getelementptr inbounds %struct.xgbe_phy_data, ptr %312, i32 0, i32 20
  %313 = ptrtoint ptr %sfp_mod_absent.i87 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %sfp_mod_absent.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i88 = icmp eq i32 %314, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i90, label %put.if.end.i91_crit_edge

put.if.end.i91_crit_edge:                         ; preds = %put
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i91

land.lhs.true.i90:                                ; preds = %put
  %sfp_changed.i89 = getelementptr inbounds %struct.xgbe_phy_data, ptr %312, i32 0, i32 21
  %315 = ptrtoint ptr %sfp_changed.i89 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %sfp_changed.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool3.not.i = icmp eq i32 %316, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i90.xgbe_phy_sfp_phy_settings.exit_crit_edge, label %land.lhs.true.i90.if.end.i91_crit_edge

land.lhs.true.i90.if.end.i91_crit_edge:           ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i91

land.lhs.true.i90.xgbe_phy_sfp_phy_settings.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_sfp_phy_settings.exit

if.end.i91:                                       ; preds = %land.lhs.true.i90.if.end.i91_crit_edge, %put.if.end.i91_crit_edge
  %link_modes.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1
  %317 = call ptr @memset(ptr %link_modes.i, i32 0, i32 12)
  %318 = ptrtoint ptr %sfp_mod_absent.i87 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %sfp_mod_absent.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool5.not.i = icmp eq i32 %319, 0
  br i1 %tobool5.not.i, label %if.end31.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #14
  %speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %320 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -1, ptr %speed.i, align 4
  %duplex.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %321 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 255, ptr %duplex.i, align 4
  %autoneg.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %322 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 1, ptr %autoneg.i, align 4
  %pause_autoneg.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %323 = ptrtoint ptr %pause_autoneg.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 1, ptr %pause_autoneg.i, align 4
  br label %cleanup.sink.split.i96

if.end31.i:                                       ; preds = %if.end.i91
  %sfp_base.i92 = getelementptr inbounds %struct.xgbe_phy_data, ptr %312, i32 0, i32 24
  %324 = ptrtoint ptr %sfp_base.i92 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %sfp_base.i92, align 4
  %326 = zext i32 %325 to i64
  call void @__sanitizer_cov_trace_switch(i64 %326, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %325, label %sw.default109.i [
    i32 1, label %if.end31.i.sw.bb.i_crit_edge
    i32 2, label %if.end31.i.sw.bb.i_crit_edge99
    i32 3, label %if.end31.i.sw.bb.i_crit_edge100
    i32 4, label %if.end31.i.sw.bb.i_crit_edge101
    i32 5, label %if.end31.i.sw.bb74.i_crit_edge
    i32 6, label %if.end31.i.sw.bb74.i_crit_edge102
    i32 7, label %if.end31.i.sw.bb74.i_crit_edge103
    i32 8, label %if.end31.i.sw.bb74.i_crit_edge104
    i32 9, label %if.end31.i.sw.bb74.i_crit_edge105
  ]

if.end31.i.sw.bb74.i_crit_edge105:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb74.i

if.end31.i.sw.bb74.i_crit_edge104:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb74.i

if.end31.i.sw.bb74.i_crit_edge103:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb74.i

if.end31.i.sw.bb74.i_crit_edge102:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb74.i

if.end31.i.sw.bb74.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb74.i

if.end31.i.sw.bb.i_crit_edge101:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end31.i.sw.bb.i_crit_edge100:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end31.i.sw.bb.i_crit_edge99:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end31.i.sw.bb.i_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end31.i.sw.bb.i_crit_edge, %if.end31.i.sw.bb.i_crit_edge99, %if.end31.i.sw.bb.i_crit_edge100, %if.end31.i.sw.bb.i_crit_edge101
  %speed33.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %327 = ptrtoint ptr %speed33.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 -1, ptr %speed33.i, align 4
  %duplex35.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %328 = ptrtoint ptr %duplex35.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 255, ptr %duplex35.i, align 4
  %autoneg37.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %329 = ptrtoint ptr %autoneg37.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 1, ptr %autoneg37.i, align 4
  %pause_autoneg39.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %330 = ptrtoint ptr %pause_autoneg39.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 1, ptr %pause_autoneg39.i, align 4
  %331 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %link_modes.i, align 4
  %or.i191.i = or i32 %332, 24640
  store i32 %or.i191.i, ptr %link_modes.i, align 4
  %333 = ptrtoint ptr %sfp_base.i92 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %sfp_base.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %334)
  %cmp.i = icmp eq i32 %334, 1
  %port_speeds.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %312, i32 0, i32 2
  %335 = ptrtoint ptr %port_speeds.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %port_speeds.i, align 4
  br i1 %cmp.i, label %if.then50.i, label %if.else.i95

if.then50.i:                                      ; preds = %sw.bb.i
  %and.i93 = and i32 %336, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool51.not.i94 = icmp eq i32 %and.i93, 0
  br i1 %tobool51.not.i94, label %if.then50.i.if.end56.i_crit_edge, label %if.then52.i

if.then50.i.if.end56.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then52.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i192.i = or i32 %332, 24648
  %337 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %or.i192.i, ptr %link_modes.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then52.i, %if.then50.i.if.end56.i_crit_edge
  %338 = ptrtoint ptr %port_speeds.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %port_speeds.i, align 4
  %and58.i = and i32 %339, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.sw.epilog118thread-pre-split.i_crit_edge, label %if.then60.i

if.end56.i.sw.epilog118thread-pre-split.i_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog118thread-pre-split.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %340 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %link_modes.i, align 4
  %or.i193.i = or i32 %341, 32
  store i32 %or.i193.i, ptr %link_modes.i, align 4
  br label %sw.epilog118thread-pre-split.i

if.else.i95:                                      ; preds = %sw.bb.i
  %and66.i = and i32 %336, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.else.i95.sw.epilog118thread-pre-split.i_crit_edge, label %if.then68.i

if.else.i95.sw.epilog118thread-pre-split.i_crit_edge: ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog118thread-pre-split.i

if.then68.i:                                      ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %342 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %add.ptr.i.i, align 4
  %or.i194.i = or i32 %343, 512
  store i32 %or.i194.i, ptr %add.ptr.i.i, align 4
  br label %sw.epilog118thread-pre-split.i

sw.bb74.i:                                        ; preds = %if.end31.i.sw.bb74.i_crit_edge, %if.end31.i.sw.bb74.i_crit_edge102, %if.end31.i.sw.bb74.i_crit_edge103, %if.end31.i.sw.bb74.i_crit_edge104, %if.end31.i.sw.bb74.i_crit_edge105
  %speed76.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %344 = ptrtoint ptr %speed76.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 10000, ptr %speed76.i, align 4
  %duplex78.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %345 = ptrtoint ptr %duplex78.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 1, ptr %duplex78.i, align 4
  %autoneg80.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %346 = ptrtoint ptr %autoneg80.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 0, ptr %autoneg80.i, align 4
  %pause_autoneg82.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %347 = ptrtoint ptr %pause_autoneg82.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 0, ptr %pause_autoneg82.i, align 4
  %port_speeds83.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %312, i32 0, i32 2
  %348 = ptrtoint ptr %port_speeds83.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %port_speeds83.i, align 4
  %and84.i = and i32 %349, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %sw.bb74.i.sw.epilog118thread-pre-split.i_crit_edge, label %if.then86.i

sw.bb74.i.sw.epilog118thread-pre-split.i_crit_edge: ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog118thread-pre-split.i

if.then86.i:                                      ; preds = %sw.bb74.i
  %350 = ptrtoint ptr %sfp_base.i92 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %sfp_base.i92, align 4
  %352 = zext i32 %351 to i64
  call void @__sanitizer_cov_trace_switch(i64 %352, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %351, label %if.then86.i.sw.epilog118.i_crit_edge [
    i32 5, label %sw.bb88.i
    i32 6, label %sw.bb92.i
    i32 7, label %sw.bb96.i
    i32 8, label %sw.bb100.i
    i32 9, label %sw.bb104.i
  ]

if.then86.i.sw.epilog118.i_crit_edge:             ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog118.i

sw.bb88.i:                                        ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i195.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %353 = ptrtoint ptr %add.ptr.i195.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %add.ptr.i195.i, align 4
  %or.i196.i = or i32 %354, 2048
  store i32 %or.i196.i, ptr %add.ptr.i195.i, align 4
  br label %sw.epilog118thread-pre-split.i

sw.bb92.i:                                        ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i197.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %355 = ptrtoint ptr %add.ptr.i197.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %add.ptr.i197.i, align 4
  %or.i198.i = or i32 %356, 4096
  store i32 %or.i198.i, ptr %add.ptr.i197.i, align 4
  br label %sw.epilog118thread-pre-split.i

sw.bb96.i:                                        ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i199.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %357 = ptrtoint ptr %add.ptr.i199.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %add.ptr.i199.i, align 4
  %or.i200.i = or i32 %358, 8192
  store i32 %or.i200.i, ptr %add.ptr.i199.i, align 4
  br label %sw.epilog118thread-pre-split.i

sw.bb100.i:                                       ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i201.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %359 = ptrtoint ptr %add.ptr.i201.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %add.ptr.i201.i, align 4
  %or.i202.i = or i32 %360, 16384
  store i32 %or.i202.i, ptr %add.ptr.i201.i, align 4
  br label %sw.epilog118thread-pre-split.i

sw.bb104.i:                                       ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i203.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 0, i32 1
  %361 = ptrtoint ptr %add.ptr.i203.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %add.ptr.i203.i, align 4
  %or.i204.i = or i32 %362, 1024
  store i32 %or.i204.i, ptr %add.ptr.i203.i, align 4
  br label %sw.epilog118thread-pre-split.i

sw.default109.i:                                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %speed111.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %363 = ptrtoint ptr %speed111.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 -1, ptr %speed111.i, align 4
  %duplex113.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 4
  %364 = ptrtoint ptr %duplex113.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 255, ptr %duplex113.i, align 4
  %autoneg115.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %365 = ptrtoint ptr %autoneg115.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 0, ptr %autoneg115.i, align 4
  %pause_autoneg117.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 6
  %366 = ptrtoint ptr %pause_autoneg117.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 0, ptr %pause_autoneg117.i, align 4
  br label %sw.epilog118thread-pre-split.i

sw.epilog118thread-pre-split.i:                   ; preds = %sw.default109.i, %sw.bb104.i, %sw.bb100.i, %sw.bb96.i, %sw.bb92.i, %sw.bb88.i, %sw.bb74.i.sw.epilog118thread-pre-split.i_crit_edge, %if.then68.i, %if.else.i95.sw.epilog118thread-pre-split.i_crit_edge, %if.then60.i, %if.end56.i.sw.epilog118thread-pre-split.i_crit_edge
  %367 = ptrtoint ptr %sfp_base.i92 to i32
  call void @__asan_load4_noabort(i32 %367)
  %.pr.i = load i32, ptr %sfp_base.i92, align 4
  br label %sw.epilog118.i

sw.epilog118.i:                                   ; preds = %sw.epilog118thread-pre-split.i, %if.then86.i.sw.epilog118.i_crit_edge
  %368 = phi i32 [ %.pr.i, %sw.epilog118thread-pre-split.i ], [ %351, %if.then86.i.sw.epilog118.i_crit_edge ]
  %369 = zext i32 %368 to i64
  call void @__sanitizer_cov_trace_switch(i64 %369, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %368, label %sw.default124.i [
    i32 1, label %sw.epilog118.i.cleanup.sink.split.i96_crit_edge
    i32 4, label %sw.epilog118.i.cleanup.sink.split.i96_crit_edge106
    i32 9, label %sw.epilog118.i.cleanup.sink.split.i96_crit_edge107
  ]

sw.epilog118.i.cleanup.sink.split.i96_crit_edge107: ; preds = %sw.epilog118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i96

sw.epilog118.i.cleanup.sink.split.i96_crit_edge106: ; preds = %sw.epilog118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i96

sw.epilog118.i.cleanup.sink.split.i96_crit_edge:  ; preds = %sw.epilog118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i96

sw.default124.i:                                  ; preds = %sw.epilog118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i96

cleanup.sink.split.i96:                           ; preds = %sw.default124.i, %sw.epilog118.i.cleanup.sink.split.i96_crit_edge, %sw.epilog118.i.cleanup.sink.split.i96_crit_edge106, %sw.epilog118.i.cleanup.sink.split.i96_crit_edge107, %if.then6.i
  %.sink207.sink.i = phi i32 [ 25792, %if.then6.i ], [ 1024, %sw.default124.i ], [ 128, %sw.epilog118.i.cleanup.sink.split.i96_crit_edge ], [ 128, %sw.epilog118.i.cleanup.sink.split.i96_crit_edge106 ], [ 128, %sw.epilog118.i.cleanup.sink.split.i96_crit_edge107 ]
  %370 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %link_modes.i, align 4
  %or.i206.i = or i32 %371, %.sink207.sink.i
  store i32 %or.i206.i, ptr %link_modes.i, align 4
  %advertising130.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %372 = call ptr @memcpy(ptr %advertising130.i, ptr %link_modes.i, i32 12)
  br label %xgbe_phy_sfp_phy_settings.exit

xgbe_phy_sfp_phy_settings.exit:                   ; preds = %cleanup.sink.split.i96, %land.lhs.true.i90.xgbe_phy_sfp_phy_settings.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %xgbe_phy_sfp_phy_settings.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_phy_find_phy_device(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data2, align 8
  %phydev3 = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %phydev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %an_again = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 157
  %4 = ptrtoint ptr %an_again to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %an_again, align 4
  %phydev_mode = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %phydev_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phydev_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp6 = icmp eq i32 %8, 8
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %sfp_phy_avail = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %sfp_phy_avail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sfp_phy_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %set_ext_mii_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 13
  %11 = ptrtoint ptr %set_ext_mii_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_ext_mii_mode, align 4
  %mdio_addr = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdio_addr, align 4
  %call = tail call i32 %12(ptr noundef %pdata, i32 noundef %14, i32 noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata, align 8
  %17 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdio_addr, align 4
  %19 = ptrtoint ptr %phydev_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phydev_mode, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.77, i32 noundef %18, i32 noundef %20) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %mii = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 29
  %21 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mii, align 4
  %23 = ptrtoint ptr %mdio_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mdio_addr, align 4
  %25 = ptrtoint ptr %phydev_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phydev_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp18 = icmp eq i32 %26, 2
  %call19 = tail call ptr @get_phy_device(ptr noundef %22, i32 noundef %24, i1 noundef zeroext %cmp18) #12
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %do.body

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.78) #15
  br label %cleanup

do.body:                                          ; preds = %if.end15
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body.do.end36_crit_edge, label %do.body26

do.body.do.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

do.body26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_find_phy_device.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_find_phy_device, %if.then31)) #12
          to label %do.end36 [label %if.then31], !srcloc !235

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata, align 8
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %call19, i32 0, i32 2
  %33 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phy_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_find_phy_device.__UNIQUE_ID_ddebug354, ptr noundef %32, ptr noundef nonnull @.str.80, i32 noundef %34) #12
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body26, %do.body.do.end36_crit_edge
  %call37 = tail call i32 @phy_device_register(ptr noundef %call19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %35 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata, align 8
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.81) #15
  tail call void @phy_device_free(ptr noundef %call19) #12
  br label %cleanup

if.end41:                                         ; preds = %do.end36
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %call19, i32 0, i32 6
  %37 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_flags, align 8
  %call43 = tail call i32 @phy_attach_direct(ptr noundef %36, ptr noundef %call19, i32 noundef %38, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.82) #15
  tail call void @phy_device_remove(ptr noundef %call19) #12
  tail call void @phy_device_free(ptr noundef %call19) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %41 = ptrtoint ptr %phydev3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call19, ptr %phydev3, align 4
  %call.i = tail call fastcc zeroext i1 @xgbe_phy_belfuse_phy_quirks(ptr noundef %pdata) #12
  br i1 %call.i, label %if.end47.xgbe_phy_external_phy_quirks.exit_crit_edge, label %if.end.i

if.end47.xgbe_phy_external_phy_quirks.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_external_phy_quirks.exit

if.end.i:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xgbe_phy_finisar_phy_quirks(ptr noundef %pdata) #12
  br label %xgbe_phy_external_phy_quirks.exit

xgbe_phy_external_phy_quirks.exit:                ; preds = %if.end.i, %if.end47.xgbe_phy_external_phy_quirks.exit_crit_edge
  %advertising = getelementptr inbounds %struct.phy_device, ptr %call19, i32 0, i32 17
  %advertising51 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %advertising, ptr noundef %advertising, ptr noundef %advertising51, i32 noundef 92) #12
  %42 = ptrtoint ptr %phydev3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phydev3, align 4
  %call54 = tail call i32 @phy_start_aneg(ptr noundef %43) #12
  br label %cleanup

cleanup:                                          ; preds = %xgbe_phy_external_phy_quirks.exit, %if.then45, %if.then39, %if.then21, %if.then12, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then12 ], [ -19, %if.then21 ], [ %call37, %if.then39 ], [ %call43, %if.then45 ], [ 0, %xgbe_phy_external_phy_quirks.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_detach(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_remove(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_sfp_eeprom_info(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %sfp_eeprom) unnamed_addr #2 align 64 {
entry:
  %sfp_ascii = alloca %struct.xgbe_sfp_ascii, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %sfp_ascii) #12
  %0 = getelementptr inbounds [17 x i8], ptr %sfp_ascii, i32 0, i32 4
  %1 = getelementptr inbounds [17 x i8], ptr %sfp_ascii, i32 0, i32 16
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %2 = call ptr @memset(ptr %sfp_ascii, i32 255, i32 17)
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_eeprom_info, %if.then5)) #12
          to label %do.end8 [label %if.then5], !srcloc !235

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug355, ptr noundef %6, ptr noundef nonnull @.str.72) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %arrayidx = getelementptr [64 x i8], ptr %sfp_eeprom, i32 0, i32 20
  %7 = call ptr @memcpy(ptr %sfp_ascii, ptr %arrayidx, i32 16)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 4
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and12 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end8.do.end34_crit_edge, label %do.body15

do.end8.do.end34_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.body15:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_eeprom_info, %if.then27)) #12
          to label %do.end34 [label %if.then27], !srcloc !235

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug356, ptr noundef %12, ptr noundef nonnull @.str.73, ptr noundef nonnull %sfp_ascii) #12
  br label %do.end34

do.end34:                                         ; preds = %if.then27, %do.body15, %do.end8.do.end34_crit_edge
  %arrayidx36 = getelementptr [64 x i8], ptr %sfp_eeprom, i32 0, i32 40
  %13 = call ptr @memcpy(ptr %sfp_ascii, ptr %arrayidx36, i32 16)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %1, align 4
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and40 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end34.do.end62_crit_edge, label %do.body43

do.end34.do.end62_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

do.body43:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_eeprom_info, %if.then55)) #12
          to label %do.end62 [label %if.then55], !srcloc !235

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug357, ptr noundef %18, ptr noundef nonnull @.str.74, ptr noundef nonnull %sfp_ascii) #12
  br label %do.end62

do.end62:                                         ; preds = %if.then55, %do.body43, %do.end34.do.end62_crit_edge
  %arrayidx64 = getelementptr [64 x i8], ptr %sfp_eeprom, i32 0, i32 56
  %19 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx64, align 1
  %21 = ptrtoint ptr %sfp_ascii to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sfp_ascii, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %0, align 4
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and68 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.end62.do.end90_crit_edge, label %do.body71

do.end62.do.end90_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end90

do.body71:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_eeprom_info, %if.then83)) #12
          to label %do.end90 [label %if.then83], !srcloc !235

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug358, ptr noundef %26, ptr noundef nonnull @.str.75, ptr noundef nonnull %sfp_ascii) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then83, %do.body71, %do.end62.do.end90_crit_edge
  %arrayidx91 = getelementptr %struct.xgbe_sfp_eeprom, ptr %sfp_eeprom, i32 0, i32 1, i32 4
  %27 = call ptr @memcpy(ptr %sfp_ascii, ptr %arrayidx91, i32 16)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %1, align 4
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 4
  %and95 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.end90.do.end117_crit_edge, label %do.body98

do.end90.do.end117_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end117

do.body98:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_sfp_eeprom_info, %if.then110)) #12
          to label %do.end117 [label %if.then110], !srcloc !235

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug359, ptr noundef %32, ptr noundef nonnull @.str.76, ptr noundef nonnull %sfp_ascii) #12
  br label %do.end117

do.end117:                                        ; preds = %if.then110, %do.body98, %do.end90.do.end117_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %sfp_ascii) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_attach_direct(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xgbe_phy_belfuse_phy_quirks(ptr nocapture noundef %pdata) unnamed_addr #2 align 64 {
entry:
  %supported = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %supported) #12
  %0 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %1 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_data1, align 8
  %phydev = getelementptr inbounds %struct.xgbe_phy_data, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev, align 4
  %phy_id3 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %phy_id3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_id3, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp.not = icmp eq i32 %8, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.xgbe_phy_data, ptr %2, i32 0, i32 27, i32 0, i32 20
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef nonnull dereferenceable(16) @.str.83, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %an_again = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 157
  %9 = ptrtoint ptr %an_again to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %an_again, align 4
  %arrayidx7 = getelementptr %struct.xgbe_phy_data, ptr %2, i32 0, i32 27, i32 0, i32 40
  %bcmp135 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx7, ptr noundef nonnull dereferenceable(16) @.str.84, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp135)
  %tobool9.not = icmp eq i32 %bcmp135, 0
  %and = and i32 %6, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 56778000, i32 %and)
  %cmp12.not = icmp eq i32 %and, 56778000
  %or.cond = select i1 %tobool9.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.end14, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 4
  %call16 = tail call i32 @genphy_soft_reset(ptr noundef %11) #12
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 24, i16 noundef zeroext 28679) #12
  %18 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phydev, align 4
  %bus.i136 = getelementptr inbounds %struct.mdio_device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus.i136 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i136, align 8
  %addr.i137 = getelementptr inbounds %struct.mdio_device, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %addr.i137 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i137, align 8
  %call.i138 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %23, i32 noundef 24) #12
  %24 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phydev, align 4
  %26 = trunc i32 %call.i138 to i16
  %conv = and i16 %26, -129
  %bus.i139 = getelementptr inbounds %struct.mdio_device, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %bus.i139 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i139, align 8
  %addr.i140 = getelementptr inbounds %struct.mdio_device, ptr %25, i32 0, i32 6
  %29 = ptrtoint ptr %addr.i140 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i140, align 8
  %call.i141 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 24, i16 noundef zeroext %conv) #12
  %31 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phydev, align 4
  %bus.i142 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i142 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i142, align 8
  %addr.i143 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %addr.i143 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i143, align 8
  %call.i144 = tail call i32 @mdiobus_write(ptr noundef %34, i32 noundef %36, i32 noundef 28, i16 noundef zeroext 31744) #12
  %37 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phydev, align 4
  %bus.i145 = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %bus.i145 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i145, align 8
  %addr.i146 = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %addr.i146 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i146, align 8
  %call.i147 = tail call i32 @mdiobus_read(ptr noundef %40, i32 noundef %42, i32 noundef 28) #12
  %43 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phydev, align 4
  %45 = trunc i32 %call.i147 to i16
  %conv32 = or i16 %45, -1023
  %bus.i148 = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %bus.i148 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i148, align 8
  %addr.i149 = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 6
  %48 = ptrtoint ptr %addr.i149 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i149, align 8
  %call.i150 = tail call i32 @mdiobus_write(ptr noundef %47, i32 noundef %49, i32 noundef 28, i16 noundef zeroext %conv32) #12
  %50 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phydev, align 4
  %bus.i151 = getelementptr inbounds %struct.mdio_device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bus.i151 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i151, align 8
  %addr.i152 = getelementptr inbounds %struct.mdio_device, ptr %51, i32 0, i32 6
  %54 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i152, align 8
  %call.i153 = tail call i32 @mdiobus_read(ptr noundef %53, i32 noundef %55, i32 noundef 0) #12
  %56 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phydev, align 4
  %58 = trunc i32 %call.i153 to i16
  %conv38 = or i16 %58, 2048
  %bus.i154 = getelementptr inbounds %struct.mdio_device, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %bus.i154 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i154, align 8
  %addr.i155 = getelementptr inbounds %struct.mdio_device, ptr %57, i32 0, i32 6
  %61 = ptrtoint ptr %addr.i155 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i155, align 8
  %call.i156 = tail call i32 @mdiobus_write(ptr noundef %60, i32 noundef %62, i32 noundef 0, i16 noundef zeroext %conv38) #12
  %63 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phydev, align 4
  %bus.i157 = getelementptr inbounds %struct.mdio_device, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %bus.i157 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i157, align 8
  %addr.i158 = getelementptr inbounds %struct.mdio_device, ptr %64, i32 0, i32 6
  %67 = ptrtoint ptr %addr.i158 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr.i158, align 8
  %call.i159 = tail call i32 @mdiobus_write(ptr noundef %66, i32 noundef %68, i32 noundef 28, i16 noundef zeroext 31744) #12
  %69 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phydev, align 4
  %bus.i160 = getelementptr inbounds %struct.mdio_device, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %bus.i160 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i160, align 8
  %addr.i161 = getelementptr inbounds %struct.mdio_device, ptr %70, i32 0, i32 6
  %73 = ptrtoint ptr %addr.i161 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr.i161, align 8
  %call.i162 = tail call i32 @mdiobus_read(ptr noundef %72, i32 noundef %74, i32 noundef 28) #12
  %75 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phydev, align 4
  %77 = trunc i32 %call.i162 to i16
  %78 = and i16 %77, 1017
  %conv49 = or i16 %78, -1020
  %bus.i163 = getelementptr inbounds %struct.mdio_device, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %bus.i163 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i163, align 8
  %addr.i164 = getelementptr inbounds %struct.mdio_device, ptr %76, i32 0, i32 6
  %81 = ptrtoint ptr %addr.i164 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr.i164, align 8
  %call.i165 = tail call i32 @mdiobus_write(ptr noundef %80, i32 noundef %82, i32 noundef 28, i16 noundef zeroext %conv49) #12
  %83 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phydev, align 4
  %bus.i166 = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %bus.i166 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus.i166, align 8
  %addr.i167 = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 6
  %87 = ptrtoint ptr %addr.i167 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr.i167, align 8
  %call.i168 = tail call i32 @mdiobus_read(ptr noundef %86, i32 noundef %88, i32 noundef 0) #12
  %89 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %phydev, align 4
  %91 = trunc i32 %call.i168 to i16
  %conv55 = and i16 %91, -2049
  %bus.i169 = getelementptr inbounds %struct.mdio_device, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %bus.i169 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i169, align 8
  %addr.i170 = getelementptr inbounds %struct.mdio_device, ptr %90, i32 0, i32 6
  %94 = ptrtoint ptr %addr.i170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i170, align 8
  %call.i171 = tail call i32 @mdiobus_write(ptr noundef %93, i32 noundef %95, i32 noundef 0, i16 noundef zeroext %conv55) #12
  %96 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %phydev, align 4
  %bus.i172 = getelementptr inbounds %struct.mdio_device, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %bus.i172 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i172, align 8
  %addr.i173 = getelementptr inbounds %struct.mdio_device, ptr %97, i32 0, i32 6
  %100 = ptrtoint ptr %addr.i173 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %addr.i173, align 8
  %call.i174 = tail call i32 @mdiobus_write(ptr noundef %99, i32 noundef %101, i32 noundef 28, i16 noundef zeroext 31744) #12
  %102 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %phydev, align 4
  %bus.i175 = getelementptr inbounds %struct.mdio_device, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %bus.i175 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i175, align 8
  %addr.i176 = getelementptr inbounds %struct.mdio_device, ptr %103, i32 0, i32 6
  %106 = ptrtoint ptr %addr.i176 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr.i176, align 8
  %call.i177 = tail call i32 @mdiobus_read(ptr noundef %105, i32 noundef %107, i32 noundef 28) #12
  %108 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %phydev, align 4
  %110 = trunc i32 %call.i177 to i16
  %111 = and i16 %110, 1022
  %conv65 = or i16 %111, -1024
  %bus.i178 = getelementptr inbounds %struct.mdio_device, ptr %109, i32 0, i32 1
  %112 = ptrtoint ptr %bus.i178 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus.i178, align 8
  %addr.i179 = getelementptr inbounds %struct.mdio_device, ptr %109, i32 0, i32 6
  %114 = ptrtoint ptr %addr.i179 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %addr.i179, align 8
  %call.i180 = tail call i32 @mdiobus_write(ptr noundef %113, i32 noundef %115, i32 noundef 28, i16 noundef zeroext %conv65) #12
  %116 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %phydev, align 4
  %bus.i181 = getelementptr inbounds %struct.mdio_device, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %bus.i181 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus.i181, align 8
  %addr.i182 = getelementptr inbounds %struct.mdio_device, ptr %117, i32 0, i32 6
  %120 = ptrtoint ptr %addr.i182 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %addr.i182, align 8
  %call.i183 = tail call i32 @mdiobus_read(ptr noundef %119, i32 noundef %121, i32 noundef 0) #12
  %122 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %phydev, align 4
  %124 = trunc i32 %call.i183 to i16
  %conv71 = and i16 %124, -2049
  %bus.i184 = getelementptr inbounds %struct.mdio_device, ptr %123, i32 0, i32 1
  %125 = ptrtoint ptr %bus.i184 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bus.i184, align 8
  %addr.i185 = getelementptr inbounds %struct.mdio_device, ptr %123, i32 0, i32 6
  %127 = ptrtoint ptr %addr.i185 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %addr.i185, align 8
  %call.i186 = tail call i32 @mdiobus_write(ptr noundef %126, i32 noundef %128, i32 noundef 0, i16 noundef zeroext %conv71) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phy_10_100_features_array to i32))
  %129 = load i32, ptr @phy_10_100_features_array, align 4
  %rem.i.i.i = and i32 %129, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %129, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %supported, i32 %div2.i.i.i
  %130 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %131
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 1) to i32))
  %132 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 1), align 4
  %rem.i.i.i.1 = and i32 %132, 31
  %shl.i.i.i.1 = shl nuw i32 1, %rem.i.i.i.1
  %div2.i.i.i.1 = lshr i32 %132, 5
  %add.ptr.i.i.i.1 = getelementptr i32, ptr %supported, i32 %div2.i.i.i.1
  %133 = ptrtoint ptr %add.ptr.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr.i.i.i.1, align 4
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, %134
  store i32 %or.i.i.i.1, ptr %add.ptr.i.i.i.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 2) to i32))
  %135 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 2), align 4
  %rem.i.i.i.2 = and i32 %135, 31
  %shl.i.i.i.2 = shl nuw i32 1, %rem.i.i.i.2
  %div2.i.i.i.2 = lshr i32 %135, 5
  %add.ptr.i.i.i.2 = getelementptr i32, ptr %supported, i32 %div2.i.i.i.2
  %136 = ptrtoint ptr %add.ptr.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr.i.i.i.2, align 4
  %or.i.i.i.2 = or i32 %shl.i.i.i.2, %137
  store i32 %or.i.i.i.2, ptr %add.ptr.i.i.i.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 3) to i32))
  %138 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 3), align 4
  %rem.i.i.i.3 = and i32 %138, 31
  %shl.i.i.i.3 = shl nuw i32 1, %rem.i.i.i.3
  %div2.i.i.i.3 = lshr i32 %138, 5
  %add.ptr.i.i.i.3 = getelementptr i32, ptr %supported, i32 %div2.i.i.i.3
  %139 = ptrtoint ptr %add.ptr.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr.i.i.i.3, align 4
  %or.i.i.i.3 = or i32 %shl.i.i.i.3, %140
  store i32 %or.i.i.i.3, ptr %add.ptr.i.i.i.3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phy_gbit_features_array to i32))
  %141 = load i32, ptr @phy_gbit_features_array, align 4
  %rem.i.i.i189 = and i32 %141, 31
  %shl.i.i.i190 = shl nuw i32 1, %rem.i.i.i189
  %div2.i.i.i191 = lshr i32 %141, 5
  %add.ptr.i.i.i192 = getelementptr i32, ptr %supported, i32 %div2.i.i.i191
  %142 = ptrtoint ptr %add.ptr.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr.i.i.i192, align 4
  %or.i.i.i193 = or i32 %shl.i.i.i190, %143
  store i32 %or.i.i.i193, ptr %add.ptr.i.i.i192, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([2 x i32], ptr @phy_gbit_features_array, i32 0, i32 1) to i32))
  %144 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @phy_gbit_features_array, i32 0, i32 1), align 4
  %rem.i.i.i189.1 = and i32 %144, 31
  %shl.i.i.i190.1 = shl nuw i32 1, %rem.i.i.i189.1
  %div2.i.i.i191.1 = lshr i32 %144, 5
  %add.ptr.i.i.i192.1 = getelementptr i32, ptr %supported, i32 %div2.i.i.i191.1
  %145 = ptrtoint ptr %add.ptr.i.i.i192.1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i.i.i192.1, align 4
  %or.i.i.i193.1 = or i32 %shl.i.i.i190.1, %146
  store i32 %or.i.i.i193.1, ptr %add.ptr.i.i.i192.1, align 4
  %147 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %phydev, align 4
  %supported75 = getelementptr inbounds %struct.phy_device, ptr %148, i32 0, i32 16
  %149 = call ptr @memcpy(ptr %supported75, ptr %supported, i32 12)
  %150 = load ptr, ptr %phydev, align 4
  tail call void @phy_support_asym_pause(ptr noundef %150) #12
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %151 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %msg_enable, align 4
  %and79 = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end14.cleanup_crit_edge, label %do.body82

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body82:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_belfuse_phy_quirks.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_belfuse_phy_quirks, %if.then87)) #12
          to label %cleanup [label %if.then87], !srcloc !235

if.then87:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_belfuse_phy_quirks.__UNIQUE_ID_ddebug353, ptr noundef %154, ptr noundef nonnull @.str.86) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %do.body82, %if.end14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ true, %if.then87 ], [ true, %if.end14.cleanup_crit_edge ], [ true, %do.body82 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %supported) #12
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_finisar_phy_quirks(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  %supported = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %supported) #12
  %0 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %1 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_data1, align 8
  %phydev = getelementptr inbounds %struct.xgbe_phy_data, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.not = icmp eq i32 %6, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_id2 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %phy_id2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_id2, align 4
  %and = and i32 %8, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 33492160, i32 %and)
  %cmp3.not = icmp eq i32 %and, 33492160
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 22, i16 noundef zeroext 1) #12
  %13 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev, align 4
  %bus.i1 = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i1, align 8
  %addr.i2 = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %addr.i2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i2, align 8
  %call.i3 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 0, i16 noundef zeroext -28352) #12
  %19 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev, align 4
  %bus.i4 = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bus.i4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i4, align 8
  %addr.i5 = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %addr.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i5, align 8
  %call.i6 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 22, i16 noundef zeroext 0) #12
  %25 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phydev, align 4
  %bus.i7 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bus.i7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i7, align 8
  %addr.i8 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %addr.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i8, align 8
  %call.i9 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 27, i16 noundef zeroext -28540) #12
  %31 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phydev, align 4
  %bus.i10 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i10, align 8
  %addr.i11 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %addr.i11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i11, align 8
  %call.i12 = tail call i32 @mdiobus_write(ptr noundef %34, i32 noundef %36, i32 noundef 9, i16 noundef zeroext 3584) #12
  %37 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phydev, align 4
  %bus.i13 = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %bus.i13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i13, align 8
  %addr.i14 = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %addr.i14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i14, align 8
  %call.i15 = tail call i32 @mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 0, i16 noundef zeroext -32448) #12
  %43 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phydev, align 4
  %bus.i16 = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %bus.i16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i16, align 8
  %addr.i17 = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %addr.i17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i17, align 8
  %call.i18 = tail call i32 @mdiobus_write(ptr noundef %46, i32 noundef %48, i32 noundef 4, i16 noundef zeroext 3329) #12
  %49 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phydev, align 4
  %bus.i19 = getelementptr inbounds %struct.mdio_device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %bus.i19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i19, align 8
  %addr.i20 = getelementptr inbounds %struct.mdio_device, ptr %50, i32 0, i32 6
  %53 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr.i20, align 8
  %call.i21 = tail call i32 @mdiobus_write(ptr noundef %52, i32 noundef %54, i32 noundef 0, i16 noundef zeroext -28352) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phy_10_100_features_array to i32))
  %55 = load i32, ptr @phy_10_100_features_array, align 4
  %rem.i.i.i = and i32 %55, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %55, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %supported, i32 %div2.i.i.i
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %57
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 1) to i32))
  %58 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 1), align 4
  %rem.i.i.i.1 = and i32 %58, 31
  %shl.i.i.i.1 = shl nuw i32 1, %rem.i.i.i.1
  %div2.i.i.i.1 = lshr i32 %58, 5
  %add.ptr.i.i.i.1 = getelementptr i32, ptr %supported, i32 %div2.i.i.i.1
  %59 = ptrtoint ptr %add.ptr.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i.i.1, align 4
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, %60
  store i32 %or.i.i.i.1, ptr %add.ptr.i.i.i.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 2) to i32))
  %61 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 2), align 4
  %rem.i.i.i.2 = and i32 %61, 31
  %shl.i.i.i.2 = shl nuw i32 1, %rem.i.i.i.2
  %div2.i.i.i.2 = lshr i32 %61, 5
  %add.ptr.i.i.i.2 = getelementptr i32, ptr %supported, i32 %div2.i.i.i.2
  %62 = ptrtoint ptr %add.ptr.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i.2, align 4
  %or.i.i.i.2 = or i32 %shl.i.i.i.2, %63
  store i32 %or.i.i.i.2, ptr %add.ptr.i.i.i.2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 3) to i32))
  %64 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @phy_10_100_features_array, i32 0, i32 3), align 4
  %rem.i.i.i.3 = and i32 %64, 31
  %shl.i.i.i.3 = shl nuw i32 1, %rem.i.i.i.3
  %div2.i.i.i.3 = lshr i32 %64, 5
  %add.ptr.i.i.i.3 = getelementptr i32, ptr %supported, i32 %div2.i.i.i.3
  %65 = ptrtoint ptr %add.ptr.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i.i.i.3, align 4
  %or.i.i.i.3 = or i32 %shl.i.i.i.3, %66
  store i32 %or.i.i.i.3, ptr %add.ptr.i.i.i.3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @phy_gbit_features_array to i32))
  %67 = load i32, ptr @phy_gbit_features_array, align 4
  %rem.i.i.i24 = and i32 %67, 31
  %shl.i.i.i25 = shl nuw i32 1, %rem.i.i.i24
  %div2.i.i.i26 = lshr i32 %67, 5
  %add.ptr.i.i.i27 = getelementptr i32, ptr %supported, i32 %div2.i.i.i26
  %68 = ptrtoint ptr %add.ptr.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i.i27, align 4
  %or.i.i.i28 = or i32 %shl.i.i.i25, %69
  store i32 %or.i.i.i28, ptr %add.ptr.i.i.i27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([2 x i32], ptr @phy_gbit_features_array, i32 0, i32 1) to i32))
  %70 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @phy_gbit_features_array, i32 0, i32 1), align 4
  %rem.i.i.i24.1 = and i32 %70, 31
  %shl.i.i.i25.1 = shl nuw i32 1, %rem.i.i.i24.1
  %div2.i.i.i26.1 = lshr i32 %70, 5
  %add.ptr.i.i.i27.1 = getelementptr i32, ptr %supported, i32 %div2.i.i.i26.1
  %71 = ptrtoint ptr %add.ptr.i.i.i27.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i.i27.1, align 4
  %or.i.i.i28.1 = or i32 %shl.i.i.i25.1, %72
  store i32 %or.i.i.i28.1, ptr %add.ptr.i.i.i27.1, align 4
  %73 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %phydev, align 4
  %supported23 = getelementptr inbounds %struct.phy_device, ptr %74, i32 0, i32 16
  %75 = call ptr @memcpy(ptr %supported23, ptr %supported, i32 12)
  %76 = load ptr, ptr %phydev, align 4
  tail call void @phy_support_asym_pause(ptr noundef %76) #12
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %77 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable, align 4
  %and27 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %do.body29

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body29:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_finisar_phy_quirks.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_finisar_phy_quirks, %if.then34)) #12
          to label %cleanup [label %if.then34], !srcloc !235

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_finisar_phy_quirks.__UNIQUE_ID_ddebug352, ptr noundef %80, ptr noundef nonnull @.str.88) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body29, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %supported) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_aneg_done(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @xgbe_phy_check_mode(ptr nocapture noundef readonly %pdata, i32 noundef %mode, i1 noundef zeroext %advert) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 2
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else:                                          ; preds = %entry
  %speed = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 140, i32 3
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %phy_data1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %4 = ptrtoint ptr %phy_data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_data1.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %7, label %if.else.xgbe_phy_get_mode.exit_crit_edge [
    i32 1, label %if.else.sw.bb.i_crit_edge
    i32 9, label %if.else.sw.bb.i_crit_edge7
    i32 2, label %sw.bb2.i
    i32 3, label %if.else.sw.bb4.i_crit_edge
    i32 5, label %if.else.sw.bb4.i_crit_edge8
    i32 6, label %if.else.sw.bb4.i_crit_edge9
    i32 4, label %if.else.sw.bb6.i_crit_edge
    i32 7, label %if.else.sw.bb6.i_crit_edge10
    i32 8, label %sw.bb8.i
  ]

if.else.sw.bb6.i_crit_edge10:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.i

if.else.sw.bb6.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6.i

if.else.sw.bb4.i_crit_edge9:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4.i

if.else.sw.bb4.i_crit_edge8:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4.i

if.else.sw.bb4.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4.i

if.else.sw.bb.i_crit_edge7:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.else.xgbe_phy_get_mode.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

sw.bb.i:                                          ; preds = %if.else.sw.bb.i_crit_edge, %if.else.sw.bb.i_crit_edge7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %3)
  %switch.selectcmp.i.i = icmp eq i32 %3, 10000
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %3)
  %switch.selectcmp2.i.i = icmp eq i32 %3, 1000
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 0, i32 %switch.select.i.i
  br label %xgbe_phy_get_mode.exit

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %3)
  %cond.i.i = icmp eq i32 %3, 2500
  %..i.i = select i1 %cond.i.i, i32 1, i32 7
  br label %xgbe_phy_get_mode.exit

sw.bb4.i:                                         ; preds = %if.else.sw.bb4.i_crit_edge, %if.else.sw.bb4.i_crit_edge8, %if.else.sw.bb4.i_crit_edge9
  %9 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %3, label %sw.default.i.i [
    i32 100, label %sw.bb4.i.xgbe_phy_get_mode.exit_crit_edge
    i32 1000, label %sw.bb1.i.i
    i32 2500, label %sw.bb2.i.i
    i32 10000, label %sw.bb3.i.i
  ]

sw.bb4.i.xgbe_phy_get_mode.exit_crit_edge:        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

sw.bb1.i.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

sw.bb2.i.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

sw.bb3.i.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

sw.default.i.i:                                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

sw.bb6.i:                                         ; preds = %if.else.sw.bb6.i_crit_edge, %if.else.sw.bb6.i_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %3)
  %switch.selectcmp.i17.i = icmp eq i32 %3, 10000
  %switch.select.i18.i = select i1 %switch.selectcmp.i17.i, i32 2, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %3)
  %switch.selectcmp1.i.i = icmp eq i32 %3, 1000
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 3, i32 %switch.select.i18.i
  br label %xgbe_phy_get_mode.exit

sw.bb8.i:                                         ; preds = %if.else
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %3, label %sw.default.i22.i [
    i32 100, label %sw.bb8.i.xgbe_phy_get_mode.exit_crit_edge
    i32 1000, label %sw.bb1.i20.i
    i32 10000, label %sw.bb8.i.sw.bb2.i21.i_crit_edge
    i32 -1, label %sw.bb8.i.sw.bb2.i21.i_crit_edge11
  ]

sw.bb8.i.sw.bb2.i21.i_crit_edge11:                ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i21.i

sw.bb8.i.sw.bb2.i21.i_crit_edge:                  ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i21.i

sw.bb8.i.xgbe_phy_get_mode.exit_crit_edge:        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

sw.bb1.i20.i:                                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_base.i.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %5, i32 0, i32 24
  %11 = ptrtoint ptr %sfp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sfp_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 1
  %..i19.i = select i1 %cmp.i.i, i32 5, i32 3
  br label %xgbe_phy_get_mode.exit

sw.bb2.i21.i:                                     ; preds = %sw.bb8.i.sw.bb2.i21.i_crit_edge, %sw.bb8.i.sw.bb2.i21.i_crit_edge11
  br label %xgbe_phy_get_mode.exit

sw.default.i22.i:                                 ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xgbe_phy_get_mode.exit

xgbe_phy_get_mode.exit:                           ; preds = %sw.default.i22.i, %sw.bb2.i21.i, %sw.bb1.i20.i, %sw.bb8.i.xgbe_phy_get_mode.exit_crit_edge, %sw.bb6.i, %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb4.i.xgbe_phy_get_mode.exit_crit_edge, %sw.bb2.i, %sw.bb.i, %if.else.xgbe_phy_get_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.select2.i.i, %sw.bb6.i ], [ %..i.i, %sw.bb2.i ], [ %switch.select3.i.i, %sw.bb.i ], [ 7, %if.else.xgbe_phy_get_mode.exit_crit_edge ], [ 7, %sw.default.i.i ], [ 2, %sw.bb3.i.i ], [ 1, %sw.bb2.i.i ], [ 5, %sw.bb1.i.i ], [ 4, %sw.bb4.i.xgbe_phy_get_mode.exit_crit_edge ], [ 7, %sw.default.i22.i ], [ 6, %sw.bb2.i21.i ], [ 4, %sw.bb8.i.xgbe_phy_get_mode.exit_crit_edge ], [ %..i19.i, %sw.bb1.i20.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %mode)
  %cmp2.not = icmp eq i32 %retval.0.i, %mode
  br label %return

return:                                           ; preds = %xgbe_phy_get_mode.exit, %entry.return_crit_edge
  %retval.1 = phi i1 [ %advert, %entry.return_crit_edge ], [ %cmp2.not, %xgbe_phy_get_mode.exit ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_set_redrv_mode(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  %redrv = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %redrv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %redrv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp eq i32 %5, 8
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_base = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %sfp_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sfp_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch.selectcmp.case1 = icmp eq i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %switch.selectcmp.case2 = icmp eq i32 %7, 9
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %8 = select i1 %switch.selectcmp, i32 5, i32 9
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end.if.end7_crit_edge
  %mode.0 = phi i32 [ 5, %if.end.if.end7_crit_edge ], [ %8, %land.lhs.true ]
  %call = tail call fastcc i32 @xgbe_phy_get_comm_ownership(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %redrv_if = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 35
  %9 = ptrtoint ptr %redrv_if to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %redrv_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_data1, align 8
  %redrv_lane.i28 = getelementptr inbounds %struct.xgbe_phy_data, ptr %12, i32 0, i32 37
  %13 = ptrtoint ptr %redrv_lane.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %redrv_lane.i28, align 4
  %15 = shl i32 %14, 12
  %conv.i = add i32 %15, 4784
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xgbe_phy_redrv_write(ptr noundef %pdata, i32 noundef %conv.i, i32 noundef %mode.0) #12
  br label %if.end15

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %conv2.i = trunc i32 %mode.0 to i16
  %write_ext_mii_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 15
  %16 = ptrtoint ptr %write_ext_mii_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_ext_mii_regs.i, align 4
  %redrv_addr.i = getelementptr inbounds %struct.xgbe_phy_data, ptr %12, i32 0, i32 36
  %18 = ptrtoint ptr %redrv_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %redrv_addr.i, align 4
  %conv3.i = and i32 %conv.i, 62128
  %call.i = tail call i32 %17(ptr noundef %pdata, i32 noundef %19, i32 noundef %conv3.i, i16 noundef zeroext %conv2.i) #12
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  tail call void @mutex_unlock(ptr noundef nonnull @xgbe_phy_comm_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_phy_redrv_write(ptr noundef %pdata, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %i2c_op = alloca %struct.xgbe_i2c_op, align 4
  %redrv_data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_data1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 139
  %0 = ptrtoint ptr %phy_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_data1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i2c_op) #12
  %2 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xgbe_i2c_op, ptr %i2c_op, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %redrv_data) #12
  %5 = getelementptr inbounds [5 x i8], ptr %redrv_data, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i8], ptr %redrv_data, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i8], ptr %redrv_data, i32 0, i32 4
  %8 = lshr i32 %reg, 7
  %9 = trunc i32 %8 to i8
  %conv = and i8 %9, -2
  %10 = ptrtoint ptr %redrv_data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %redrv_data, align 1
  %conv3 = trunc i32 %reg to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %5, align 1
  %conv6 = trunc i32 %val to i16
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6, ptr %6, align 2
  %add.1 = add i8 %conv, %conv3
  call void @__sanitizer_cov_trace_cmp1(i8 %add.1, i8 %conv3)
  %cmp15.1 = icmp ult i8 %add.1, %conv3
  %inc.1 = zext i1 %cmp15.1 to i8
  %spec.select.1 = add i8 %add.1, %inc.1
  %13 = lshr i32 %val, 8
  %14 = trunc i32 %13 to i8
  %add.2 = add i8 %spec.select.1, %14
  call void @__sanitizer_cov_trace_cmp1(i8 %add.2, i8 %14)
  %cmp15.2 = icmp ult i8 %add.2, %14
  %inc.2 = zext i1 %cmp15.2 to i8
  %spec.select.2 = add i8 %add.2, %inc.2
  %15 = trunc i32 %val to i8
  %add.3 = add i8 %spec.select.2, %15
  call void @__sanitizer_cov_trace_cmp1(i8 %add.3, i8 %15)
  %cmp15.3 = icmp ult i8 %add.3, %15
  %inc.3 = zext i1 %cmp15.3 to i8
  %spec.select.3 = add i8 %add.3, %inc.3
  %neg = xor i8 %spec.select.3, -1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %neg, ptr %7, align 1
  %redrv_addr = getelementptr inbounds %struct.xgbe_phy_data, ptr %1, i32 0, i32 36
  %i2c_xfer.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 54, i32 3
  %17 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %i2c_op, align 4
  %18 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %redrv_addr, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %2, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %4, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %redrv_data, ptr %3, align 4
  %23 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i = call i32 %24(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  %25 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %call.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.again2.preheader_crit_edge
    i32 -11, label %land.lhs.true
  ]

entry.again2.preheader_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

again2.preheader:                                 ; preds = %land.lhs.true.again2.preheader_crit_edge, %entry.again2.preheader_crit_edge
  %26 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %i2c_op, align 4
  %27 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %redrv_addr, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %2, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %4, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %redrv_data, ptr %3, align 4
  %32 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i2 = call i32 %33(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  %34 = zext i32 %call.i2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %call.i2, label %again2.preheader.cleanup_crit_edge [
    i32 0, label %again2.preheader.if.end44_crit_edge
    i32 -11, label %land.lhs.true39
  ]

again2.preheader.if.end44_crit_edge:              ; preds = %again2.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

again2.preheader.cleanup_crit_edge:               ; preds = %again2.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %35 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %i2c_op, align 4
  %36 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %redrv_addr, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %2, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %4, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %redrv_data, ptr %3, align 4
  %41 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i.1 = call i32 %42(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cond = icmp eq i32 %call.i.1, 0
  br i1 %cond, label %land.lhs.true.again2.preheader_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.again2.preheader_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %again2.preheader

land.lhs.true39:                                  ; preds = %again2.preheader
  %43 = ptrtoint ptr %i2c_op to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %i2c_op, align 4
  %44 = ptrtoint ptr %redrv_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %redrv_addr, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %2, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %4, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %redrv_data, ptr %3, align 4
  %49 = ptrtoint ptr %i2c_xfer.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c_xfer.i, align 4
  %call.i2.1 = call i32 %50(ptr noundef %pdata, ptr noundef nonnull %i2c_op) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.1)
  %cond10 = icmp eq i32 %call.i2.1, 0
  br i1 %cond10, label %land.lhs.true39.if.end44_crit_edge, label %land.lhs.true39.cleanup_crit_edge

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true39.if.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true39.if.end44_crit_edge, %again2.preheader.if.end44_crit_edge
  %51 = ptrtoint ptr %redrv_data to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %redrv_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp47.not = icmp eq i8 %52, -1
  br i1 %cmp47.not, label %if.end44.cleanup_crit_edge, label %do.body

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end44
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %53 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable, align 4
  %and50 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body.cleanup_crit_edge, label %do.body53

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_phy_redrv_write.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_phy_redrv_write, %if.then58)) #12
          to label %cleanup [label %if.then58], !srcloc !235

if.then58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdata, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_phy_redrv_write.__UNIQUE_ID_ddebug351, ptr noundef %56, ptr noundef nonnull @.str.94) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body53, %do.body.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %again2.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %redrv_data) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i2c_op) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !127, !128, !129, !130, !131, !133, !135, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !164, !166, !167, !168, !170, !172, !174, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3153, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xgbe_phy_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @xgbe_phy_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3173, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug379, !9, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3174, i32 3}
!14 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug380, !13, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3175, i32 3}
!17 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug381, !16, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3176, i32 3}
!20 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug382, !19, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3177, i32 3}
!23 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug383, !22, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3186, i32 3}
!26 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug384, !25, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3187, i32 3}
!29 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug385, !28, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3188, i32 3}
!32 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug386, !31, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3189, i32 3}
!35 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug387, !34, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3190, i32 3}
!38 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug388, !37, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3195, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xgbe_phy_init._entry.16, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @xgbe_phy_init._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3202, i32 3}
!46 = !{ptr @xgbe_phy_init._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xgbe_phy_init._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3214, i32 3}
!50 = !{ptr @xgbe_phy_init._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xgbe_phy_init._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3371, i32 3}
!54 = !{ptr @xgbe_phy_init.__UNIQUE_ID_ddebug389, !53, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3380, i32 4}
!57 = !{ptr @xgbe_phy_init._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @xgbe_phy_init._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3391, i32 4}
!61 = !{ptr @xgbe_phy_init._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @xgbe_phy_init._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3403, i32 3}
!65 = !{ptr @xgbe_phy_init._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @xgbe_phy_init._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3408, i32 14}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3413, i32 37}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 3416, i32 3}
!73 = !{ptr @xgbe_phy_init._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @xgbe_phy_init._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2834, i32 3}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xgbe_phy_mdio_reset_setup._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @xgbe_phy_mdio_reset_setup._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2703, i32 3}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug377, !81, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2705, i32 3}
!86 = !{ptr @xgbe_phy_sfp_comm_setup.__UNIQUE_ID_ddebug378, !85, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2672, i32 3}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug371, !88, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2674, i32 3}
!93 = !{ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug372, !92, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2676, i32 3}
!96 = !{ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug373, !95, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2678, i32 3}
!99 = !{ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug374, !98, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2680, i32 3}
!102 = !{ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug375, !101, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2682, i32 3}
!105 = !{ptr @xgbe_phy_sfp_gpio_setup.__UNIQUE_ID_ddebug376, !104, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 596, i32 28}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 386, i32 8}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @xgbe_phy_comm_lock, !109, !"xgbe_phy_comm_lock", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2053, i32 2}
!114 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @xgbe_phy_power_off.__UNIQUE_ID_ddebug363, !113, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2002, i32 3}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug360, !117, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2025, i32 2}
!122 = !{ptr @xgbe_phy_perform_ratechange.__UNIQUE_ID_ddebug361, !121, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1976, i32 3}
!125 = distinct !{null, !126, !"__print_once", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1309, i32 3}
!127 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @xgbe_phy_sfp_signals._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @xgbe_phy_sfp_signals._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!133 = distinct !{null, !134, !"__print_once", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1246, i32 3}
!135 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @xgbe_phy_sfp_read_eeprom._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @xgbe_phy_sfp_read_eeprom._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = distinct !{null, !140, !"__print_once", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1257, i32 3}
!141 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @xgbe_phy_sfp_read_eeprom._entry.68, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @xgbe_phy_sfp_read_eeprom._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1201, i32 2}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug355, !145, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1205, i32 2}
!150 = !{ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug356, !149, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1211, i32 2}
!153 = !{ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug357, !152, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1217, i32 2}
!156 = !{ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug358, !155, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1223, i32 2}
!159 = !{ptr @xgbe_phy_sfp_eeprom_info.__UNIQUE_ID_ddebug359, !158, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1018, i32 7}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1027, i32 29}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1030, i32 2}
!166 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @xgbe_phy_find_phy_device.__UNIQUE_ID_ddebug354, !165, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1037, i32 29}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1045, i32 29}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 912, i32 6}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 919, i32 6}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 975, i32 2}
!178 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @xgbe_phy_belfuse_phy_quirks.__UNIQUE_ID_ddebug353, !177, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 894, i32 2}
!182 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @xgbe_phy_finisar_phy_quirks.__UNIQUE_ID_ddebug352, !181, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2041, i32 2}
!186 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @xgbe_phy_rrc.__UNIQUE_ID_ddebug362, !185, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2160, i32 2}
!190 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @xgbe_phy_kx_1000_mode.__UNIQUE_ID_ddebug370, !189, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 450, i32 3}
!194 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @xgbe_phy_redrv_write.__UNIQUE_ID_ddebug351, !193, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2146, i32 2}
!198 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @xgbe_phy_kx_2500_mode.__UNIQUE_ID_ddebug369, !197, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2132, i32 2}
!202 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @xgbe_phy_kr_mode.__UNIQUE_ID_ddebug368, !201, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2118, i32 2}
!206 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @xgbe_phy_sgmii_100_mode.__UNIQUE_ID_ddebug367, !205, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2104, i32 2}
!210 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @xgbe_phy_sgmii_1000_mode.__UNIQUE_ID_ddebug366, !209, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2090, i32 2}
!214 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @xgbe_phy_x_mode.__UNIQUE_ID_ddebug365, !213, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 2076, i32 2}
!218 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @xgbe_phy_sfi_mode.__UNIQUE_ID_ddebug364, !217, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1421, i32 29}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1433, i32 7}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c", i32 1449, i32 8}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i64 2149043589, i64 2149043594, i64 2149043607, i64 2149043651, i64 2149043685, i64 2149043706}
!236 = !{!"auto-init"}
!237 = !{i8 0, i8 2}
!238 = !{i64 2154266317}
!239 = !{i64 6724195}
!240 = !{i64 6724613}
!241 = !{i64 2154264962}
