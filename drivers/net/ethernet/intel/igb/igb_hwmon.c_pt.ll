; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/igb_hwmon.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/igb_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [28 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.133], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [60 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.129, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.129 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.121, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.125, [88 x i8], %struct.xdp_rxq_info }
%union.anon.121 = type { ptr }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { %struct.igb_tx_queue_stats, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.igb_tx_queue_stats = type { i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.133 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.hwmon_buff = type { %struct.attribute_group, [2 x ptr], [13 x ptr], [12 x %struct.hwmon_attr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_attr = type { %struct.device_attribute, ptr, ptr, [12 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@i350_sensor_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"i350bb\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 124, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@igb_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create new i2c device.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igb_sysfs_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/igb/igb_hwmon.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@igb_sysfs_init._entry_ptr = internal global ptr @igb_sysfs_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%u_label\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%u_input\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%u_max\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp%u_crit\00", [20 x i8] zeroinitializer }, align 32
@igb_add_hwmon_attr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loc%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"i350_sensor_info\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 18, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 203, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 103, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 108, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 113, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 118, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 132, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 29, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [46 x i8] c"../drivers/net/ethernet/intel/igb/igb_hwmon.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 49, i32 22 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @igb_sysfs_init._entry, ptr @igb_sysfs_init._entry_ptr, ptr @i350_sensor_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @igb_add_hwmon_attr.__key, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i350_sensor_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_add_hwmon_attr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @igb_sysfs_exit(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_sysfs_init(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init_thermal_sensor_thresh = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 0, i32 11
  %0 = ptrtoint ptr %init_thermal_sensor_thresh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_thermal_sensor_thresh, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %call = tail call i32 %1(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end7:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 660, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.exit_crit_edge, label %if.end11

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end11:                                         ; preds = %if.end7
  %igb_hwmon_buff = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 76
  %4 = ptrtoint ptr %igb_hwmon_buff to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %igb_hwmon_buff, align 8
  %thermal_sensor_data = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.0149 = phi i32 [ 0, %if.end11 ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.e1000_thermal_diode_data], ptr %thermal_sensor_data, i32 0, i32 %i.0149
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp15 = icmp eq i8 %6, 0
  br i1 %cmp15, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = add nuw nsw i32 %i.0149, 1
  br label %for.inc

if.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %igb_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon.i = getelementptr inbounds %struct.hwmon_buff, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %n_hwmon.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_hwmon.i, align 4
  %arrayidx.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10
  %show18.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 1
  %11 = ptrtoint ptr %show18.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @igb_hwmon_show_cautionthresh, ptr %show18.i, align 4
  %name19.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10, i32 3
  %add21.i = add nuw nsw i32 %i.0149, 1
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i, i32 noundef 12, ptr noundef nonnull @.str.7, i32 noundef %add21.i) #6
  %sensor24.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10, i32 2
  %12 = ptrtoint ptr %sensor24.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %sensor24.i, align 4
  %hw26.i = getelementptr %struct.hwmon_buff, ptr %8, i32 0, i32 3, i32 %10, i32 1
  %13 = ptrtoint ptr %hw26.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hw, ptr %hw26.i, align 4
  %store.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 2
  %14 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %store.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 1
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 292, ptr %mode.i, align 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name19.i, ptr %arrayidx.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 3
  %17 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @igb_add_hwmon_attr.__key, ptr %key.i, align 4
  %18 = ptrtoint ptr %igb_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %igb_hwmon_buff, align 8
  %arrayidx39.i = getelementptr %struct.hwmon_buff, ptr %19, i32 0, i32 2, i32 %10
  %20 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.i, ptr %arrayidx39.i, align 4
  %21 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon41.i = getelementptr inbounds %struct.hwmon_buff, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %n_hwmon41.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_hwmon41.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %n_hwmon41.i, align 4
  %24 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon.i92 = getelementptr inbounds %struct.hwmon_buff, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %n_hwmon.i92 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_hwmon.i92, align 4
  %arrayidx.i93 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26
  %show18.i94 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i93, i32 0, i32 1
  %27 = ptrtoint ptr %show18.i94 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @igb_hwmon_show_location, ptr %show18.i94, align 4
  %name19.i95 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26, i32 3
  %call22.i97 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i95, i32 noundef 12, ptr noundef nonnull @.str.5, i32 noundef %add21.i) #6
  %sensor24.i101 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26, i32 2
  %28 = ptrtoint ptr %sensor24.i101 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx, ptr %sensor24.i101, align 4
  %hw26.i102 = getelementptr %struct.hwmon_buff, ptr %24, i32 0, i32 3, i32 %26, i32 1
  %29 = ptrtoint ptr %hw26.i102 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %hw, ptr %hw26.i102, align 4
  %store.i103 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i93, i32 0, i32 2
  %30 = ptrtoint ptr %store.i103 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %store.i103, align 4
  %mode.i104 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i93, i32 0, i32 1
  %31 = ptrtoint ptr %mode.i104 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 292, ptr %mode.i104, align 4
  %32 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %name19.i95, ptr %arrayidx.i93, align 4
  %key.i106 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i93, i32 0, i32 3
  %33 = ptrtoint ptr %key.i106 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @igb_add_hwmon_attr.__key, ptr %key.i106, align 4
  %34 = ptrtoint ptr %igb_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %igb_hwmon_buff, align 8
  %arrayidx39.i107 = getelementptr %struct.hwmon_buff, ptr %35, i32 0, i32 2, i32 %26
  %36 = ptrtoint ptr %arrayidx39.i107 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.i93, ptr %arrayidx39.i107, align 4
  %37 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon41.i108 = getelementptr inbounds %struct.hwmon_buff, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %n_hwmon41.i108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_hwmon41.i108, align 4
  %inc.i109 = add i32 %39, 1
  store i32 %inc.i109, ptr %n_hwmon41.i108, align 4
  %40 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon.i111 = getelementptr inbounds %struct.hwmon_buff, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %n_hwmon.i111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_hwmon.i111, align 4
  %arrayidx.i112 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42
  %show18.i113 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i112, i32 0, i32 1
  %43 = ptrtoint ptr %show18.i113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @igb_hwmon_show_temp, ptr %show18.i113, align 4
  %name19.i114 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42, i32 3
  %call22.i116 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i114, i32 noundef 12, ptr noundef nonnull @.str.6, i32 noundef %add21.i) #6
  %sensor24.i120 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42, i32 2
  %44 = ptrtoint ptr %sensor24.i120 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx, ptr %sensor24.i120, align 4
  %hw26.i121 = getelementptr %struct.hwmon_buff, ptr %40, i32 0, i32 3, i32 %42, i32 1
  %45 = ptrtoint ptr %hw26.i121 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %hw, ptr %hw26.i121, align 4
  %store.i122 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i112, i32 0, i32 2
  %46 = ptrtoint ptr %store.i122 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %store.i122, align 4
  %mode.i123 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i112, i32 0, i32 1
  %47 = ptrtoint ptr %mode.i123 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 292, ptr %mode.i123, align 4
  %48 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %name19.i114, ptr %arrayidx.i112, align 4
  %key.i125 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i112, i32 0, i32 3
  %49 = ptrtoint ptr %key.i125 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @igb_add_hwmon_attr.__key, ptr %key.i125, align 4
  %50 = ptrtoint ptr %igb_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %igb_hwmon_buff, align 8
  %arrayidx39.i126 = getelementptr %struct.hwmon_buff, ptr %51, i32 0, i32 2, i32 %42
  %52 = ptrtoint ptr %arrayidx39.i126 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx.i112, ptr %arrayidx39.i126, align 4
  %53 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon41.i127 = getelementptr inbounds %struct.hwmon_buff, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %n_hwmon41.i127 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_hwmon41.i127, align 4
  %inc.i128 = add i32 %55, 1
  store i32 %inc.i128, ptr %n_hwmon41.i127, align 4
  %56 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon.i130 = getelementptr inbounds %struct.hwmon_buff, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %n_hwmon.i130 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_hwmon.i130, align 4
  %arrayidx.i131 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58
  %show18.i132 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i131, i32 0, i32 1
  %59 = ptrtoint ptr %show18.i132 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @igb_hwmon_show_maxopthresh, ptr %show18.i132, align 4
  %name19.i133 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58, i32 3
  %call22.i135 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name19.i133, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef %add21.i) #6
  %sensor24.i139 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58, i32 2
  %60 = ptrtoint ptr %sensor24.i139 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx, ptr %sensor24.i139, align 4
  %hw26.i140 = getelementptr %struct.hwmon_buff, ptr %56, i32 0, i32 3, i32 %58, i32 1
  %61 = ptrtoint ptr %hw26.i140 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %hw, ptr %hw26.i140, align 4
  %store.i141 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i131, i32 0, i32 2
  %62 = ptrtoint ptr %store.i141 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %store.i141, align 4
  %mode.i142 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i131, i32 0, i32 1
  %63 = ptrtoint ptr %mode.i142 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 292, ptr %mode.i142, align 4
  %64 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %name19.i133, ptr %arrayidx.i131, align 4
  %key.i144 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i131, i32 0, i32 3
  %65 = ptrtoint ptr %key.i144 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @igb_add_hwmon_attr.__key, ptr %key.i144, align 4
  %66 = ptrtoint ptr %igb_hwmon_buff to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %igb_hwmon_buff, align 8
  %arrayidx39.i145 = getelementptr %struct.hwmon_buff, ptr %67, i32 0, i32 2, i32 %58
  %68 = ptrtoint ptr %arrayidx39.i145 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.i131, ptr %arrayidx39.i145, align 4
  %69 = load ptr, ptr %igb_hwmon_buff, align 8
  %n_hwmon41.i146 = getelementptr inbounds %struct.hwmon_buff, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %n_hwmon41.i146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_hwmon41.i146, align 4
  %inc.i147 = add i32 %71, 1
  store i32 %inc.i147, ptr %n_hwmon41.i146, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add21.i, %if.end30 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %i2c_adap = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 79
  %call35 = tail call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull @i350_sensor_info) #6
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end41

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 16
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39, ptr noundef nonnull @.str) #9
  %74 = ptrtoint ptr %call35 to i32
  br label %exit

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 80
  %75 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call35, ptr %i2c_client, align 8
  %groups = getelementptr inbounds %struct.hwmon_buff, ptr %call.i, i32 0, i32 1
  %76 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %groups, align 4
  %attrs = getelementptr inbounds %struct.hwmon_buff, ptr %call.i, i32 0, i32 2
  %attrs44 = getelementptr inbounds %struct.attribute_group, ptr %call.i, i32 0, i32 3
  %77 = ptrtoint ptr %attrs44 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %attrs, ptr %attrs44, align 4
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 16
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %name = getelementptr inbounds %struct.i2c_client, ptr %call35, i32 0, i32 2
  %call50 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev46, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #6
  %cmp.i148 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  %80 = ptrtoint ptr %call50 to i32
  %spec.select = select i1 %cmp.i148, i32 %80, i32 0
  br label %exit

exit:                                             ; preds = %if.end41, %do.end, %if.end7.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %rc.2 = phi i32 [ 0, %entry.exit_crit_edge ], [ %call, %if.end.exit_crit_edge ], [ %74, %do.end ], [ -12, %if.end7.exit_crit_edge ], [ %spec.select, %if.end41 ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_location(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_temp(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %get_thermal_sensor_data = getelementptr inbounds %struct.e1000_hw, ptr %1, i32 0, i32 4, i32 0, i32 10
  %2 = ptrtoint ptr %get_thermal_sensor_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_thermal_sensor_data, align 4
  %call = tail call i32 %3(ptr noundef %1) #6
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 4
  %temp = getelementptr inbounds %struct.e1000_thermal_diode_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp, align 1
  %conv = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_cautionthresh(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %caution_thresh = getelementptr inbounds %struct.e1000_thermal_diode_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %caution_thresh to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %caution_thresh, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_hwmon_show_maxopthresh(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.hwmon_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %max_op_thresh = getelementptr inbounds %struct.e1000_thermal_diode_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_op_thresh to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_op_thresh, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %mul)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 203, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @igb_sysfs_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @igb_sysfs_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 103, i32 5}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 108, i32 5}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 113, i32 5}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 118, i32 5}
!16 = !{ptr @igb_add_hwmon_attr.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 132, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 29, i32 22}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 49, i32 22}
!22 = !{ptr @i350_sensor_info, !23, !"i350_sensor_info", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/igb/igb_hwmon.c", i32 18, i32 30}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
