; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sparx5_main_io_resource = type { i32, i32, i32 }
%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sparx5_ram_config = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sparx5 = type { ptr, ptr, i32, i32, [332 x ptr], i32, %struct.mutex, [65 x ptr], i32, i32, i32, ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, [6 x i8], ptr, [3 x i32], [3 x i32], [3 x i32], [4096 x [3 x i32]], %struct.list_head, %struct.mutex, %struct.delayed_work, ptr, i8, i32, i32, %struct.sparx5_rx, %struct.sparx5_tx }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.initial_port_config = type { i32, ptr, %struct.sparx5_port_config, ptr }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }

@__initcall__kmod_sparx5_switch__618_897_mchp_sparx5_driver_init6 = internal global ptr @mchp_sparx5_driver_init, section ".initcall6.init", align 4
@mchp_sparx5_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mchp_sparx5_probe, ptr @mchp_sparx5_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp_sparx5_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mchp_sparx5_driver_exit = internal global ptr @mchp_sparx5_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description619 = internal constant [57 x i8] c"sparx5_switch.description=Microchip Sparx5 switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [67 x i8] c"sparx5_switch.author=Steen Hegelund <steen.hegelund@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file621 = internal constant [71 x i8] c"sparx5_switch.file=drivers/net/ethernet/microchip/sparx5/sparx5-switch\00", section ".modinfo", align 1
@__UNIQUE_ID_license622 = internal constant [35 x i8] c"sparx5_switch.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sparx5-switch\00", [18 x i8] zeroinitializer }, align 32
@mchp_sparx5_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sparx5-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get switch reset controller.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 738, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no ethernet-ports child node found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mchp_sparx5_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_main.c\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr = internal global ptr @mchp_sparx5_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 757, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"port reg property error\0A\00", [39 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.12 = internal global ptr @mchp_sparx5_probe._entry.10, section ".printk_index", align 4
@mchp_sparx5_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 767, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port %u: missing phy-mode\0A\00", [37 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.15 = internal global ptr @mchp_sparx5_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"microchip,bandwidth\00", [44 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 774, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port %u: missing bandwidth\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.19 = internal global ptr @mchp_sparx5_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"microchip,sd-sgpio\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"port %u: missing serdes\0A\00", [39 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 806, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MAC addr was not set, use random MAC\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.25 = internal global ptr @mchp_sparx5_probe._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fdma\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xtr\00", [28 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 823, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Switchcore initialization error\0A\00", [63 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.30 = internal global ptr @mchp_sparx5_probe._entry.28, section ".printk_index", align 4
@mchp_sparx5_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.6, i32 830, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LC-PLL initialization error\0A\00", [35 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.33 = internal global ptr @mchp_sparx5_probe._entry.31, section ".printk_index", align 4
@mchp_sparx5_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 841, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port create error\0A\00", [45 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.36 = internal global ptr @mchp_sparx5_probe._entry.34, section ".printk_index", align 4
@mchp_sparx5_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.6, i32 848, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Start failed\0A\00", [18 x i8] zeroinitializer }, align 32
@mchp_sparx5_probe._entry_ptr.39 = internal global ptr @mchp_sparx5_probe._entry.37, section ".printk_index", align 4
@sparx5_main_iomap = internal constant { [156 x %struct.sparx5_main_io_resource], [464 x i8] } { [156 x %struct.sparx5_main_io_resource] [%struct.sparx5_main_io_resource { i32 12, i32 0, i32 0 }, %struct.sparx5_main_io_resource { i32 117, i32 524288, i32 0 }, %struct.sparx5_main_io_resource { i32 129, i32 4194304, i32 0 }, %struct.sparx5_main_io_resource { i32 37, i32 268451840, i32 1 }, %struct.sparx5_main_io_resource { i32 102, i32 268468224, i32 1 }, %struct.sparx5_main_io_resource { i32 160, i32 268484608, i32 1 }, %struct.sparx5_main_io_resource { i32 38, i32 268500992, i32 1 }, %struct.sparx5_main_io_resource { i32 103, i32 268517376, i32 1 }, %struct.sparx5_main_io_resource { i32 161, i32 268533760, i32 1 }, %struct.sparx5_main_io_resource { i32 39, i32 268550144, i32 1 }, %struct.sparx5_main_io_resource { i32 104, i32 268566528, i32 1 }, %struct.sparx5_main_io_resource { i32 162, i32 268582912, i32 1 }, %struct.sparx5_main_io_resource { i32 43, i32 268599296, i32 1 }, %struct.sparx5_main_io_resource { i32 108, i32 268615680, i32 1 }, %struct.sparx5_main_io_resource { i32 166, i32 268632064, i32 1 }, %struct.sparx5_main_io_resource { i32 44, i32 268648448, i32 1 }, %struct.sparx5_main_io_resource { i32 109, i32 268664832, i32 1 }, %struct.sparx5_main_io_resource { i32 167, i32 268681216, i32 1 }, %struct.sparx5_main_io_resource { i32 45, i32 268697600, i32 1 }, %struct.sparx5_main_io_resource { i32 110, i32 268713984, i32 1 }, %struct.sparx5_main_io_resource { i32 168, i32 268730368, i32 1 }, %struct.sparx5_main_io_resource { i32 46, i32 268746752, i32 1 }, %struct.sparx5_main_io_resource { i32 111, i32 268763136, i32 1 }, %struct.sparx5_main_io_resource { i32 169, i32 268779520, i32 1 }, %struct.sparx5_main_io_resource { i32 47, i32 268795904, i32 1 }, %struct.sparx5_main_io_resource { i32 112, i32 268812288, i32 1 }, %struct.sparx5_main_io_resource { i32 170, i32 268828672, i32 1 }, %struct.sparx5_main_io_resource { i32 48, i32 268845056, i32 1 }, %struct.sparx5_main_io_resource { i32 113, i32 268861440, i32 1 }, %struct.sparx5_main_io_resource { i32 171, i32 268877824, i32 1 }, %struct.sparx5_main_io_resource { i32 49, i32 268894208, i32 1 }, %struct.sparx5_main_io_resource { i32 17, i32 268910592, i32 1 }, %struct.sparx5_main_io_resource { i32 132, i32 268926976, i32 1 }, %struct.sparx5_main_io_resource { i32 51, i32 268943360, i32 1 }, %struct.sparx5_main_io_resource { i32 19, i32 268959744, i32 1 }, %struct.sparx5_main_io_resource { i32 134, i32 268976128, i32 1 }, %struct.sparx5_main_io_resource { i32 52, i32 268992512, i32 1 }, %struct.sparx5_main_io_resource { i32 20, i32 269008896, i32 1 }, %struct.sparx5_main_io_resource { i32 135, i32 269025280, i32 1 }, %struct.sparx5_main_io_resource { i32 53, i32 269041664, i32 1 }, %struct.sparx5_main_io_resource { i32 54, i32 269058048, i32 1 }, %struct.sparx5_main_io_resource { i32 55, i32 269074432, i32 1 }, %struct.sparx5_main_io_resource { i32 56, i32 269090816, i32 1 }, %struct.sparx5_main_io_resource { i32 57, i32 269107200, i32 1 }, %struct.sparx5_main_io_resource { i32 58, i32 269123584, i32 1 }, %struct.sparx5_main_io_resource { i32 59, i32 269139968, i32 1 }, %struct.sparx5_main_io_resource { i32 60, i32 269156352, i32 1 }, %struct.sparx5_main_io_resource { i32 69, i32 269172736, i32 1 }, %struct.sparx5_main_io_resource { i32 70, i32 269189120, i32 1 }, %struct.sparx5_main_io_resource { i32 71, i32 269205504, i32 1 }, %struct.sparx5_main_io_resource { i32 72, i32 269221888, i32 1 }, %struct.sparx5_main_io_resource { i32 73, i32 269238272, i32 1 }, %struct.sparx5_main_io_resource { i32 74, i32 269254656, i32 1 }, %struct.sparx5_main_io_resource { i32 75, i32 269271040, i32 1 }, %struct.sparx5_main_io_resource { i32 76, i32 269287424, i32 1 }, %struct.sparx5_main_io_resource { i32 77, i32 269303808, i32 1 }, %struct.sparx5_main_io_resource { i32 78, i32 269320192, i32 1 }, %struct.sparx5_main_io_resource { i32 79, i32 269336576, i32 1 }, %struct.sparx5_main_io_resource { i32 80, i32 269352960, i32 1 }, %struct.sparx5_main_io_resource { i32 81, i32 269369344, i32 1 }, %struct.sparx5_main_io_resource { i32 82, i32 269385728, i32 1 }, %struct.sparx5_main_io_resource { i32 83, i32 269402112, i32 1 }, %struct.sparx5_main_io_resource { i32 84, i32 269418496, i32 1 }, %struct.sparx5_main_io_resource { i32 94, i32 269434880, i32 1 }, %struct.sparx5_main_io_resource { i32 30, i32 269451264, i32 1 }, %struct.sparx5_main_io_resource { i32 145, i32 269467648, i32 1 }, %struct.sparx5_main_io_resource { i32 96, i32 269500416, i32 1 }, %struct.sparx5_main_io_resource { i32 32, i32 269516800, i32 1 }, %struct.sparx5_main_io_resource { i32 147, i32 269533184, i32 1 }, %struct.sparx5_main_io_resource { i32 97, i32 269565952, i32 1 }, %struct.sparx5_main_io_resource { i32 33, i32 269582336, i32 1 }, %struct.sparx5_main_io_resource { i32 148, i32 269598720, i32 1 }, %struct.sparx5_main_io_resource { i32 101, i32 269631488, i32 1 }, %struct.sparx5_main_io_resource { i32 114, i32 269647872, i32 1 }, %struct.sparx5_main_io_resource { i32 172, i32 269664256, i32 1 }, %struct.sparx5_main_io_resource { i32 173, i32 269680640, i32 1 }, %struct.sparx5_main_io_resource { i32 40, i32 272646144, i32 1 }, %struct.sparx5_main_io_resource { i32 105, i32 272662528, i32 1 }, %struct.sparx5_main_io_resource { i32 163, i32 272678912, i32 1 }, %struct.sparx5_main_io_resource { i32 41, i32 272695296, i32 1 }, %struct.sparx5_main_io_resource { i32 106, i32 272711680, i32 1 }, %struct.sparx5_main_io_resource { i32 164, i32 272728064, i32 1 }, %struct.sparx5_main_io_resource { i32 42, i32 272744448, i32 1 }, %struct.sparx5_main_io_resource { i32 107, i32 272760832, i32 1 }, %struct.sparx5_main_io_resource { i32 165, i32 272777216, i32 1 }, %struct.sparx5_main_io_resource { i32 50, i32 272793600, i32 1 }, %struct.sparx5_main_io_resource { i32 18, i32 272809984, i32 1 }, %struct.sparx5_main_io_resource { i32 133, i32 272826368, i32 1 }, %struct.sparx5_main_io_resource { i32 61, i32 272842752, i32 1 }, %struct.sparx5_main_io_resource { i32 62, i32 272859136, i32 1 }, %struct.sparx5_main_io_resource { i32 63, i32 272875520, i32 1 }, %struct.sparx5_main_io_resource { i32 64, i32 272891904, i32 1 }, %struct.sparx5_main_io_resource { i32 65, i32 272908288, i32 1 }, %struct.sparx5_main_io_resource { i32 66, i32 272924672, i32 1 }, %struct.sparx5_main_io_resource { i32 67, i32 272941056, i32 1 }, %struct.sparx5_main_io_resource { i32 68, i32 272957440, i32 1 }, %struct.sparx5_main_io_resource { i32 85, i32 272973824, i32 1 }, %struct.sparx5_main_io_resource { i32 21, i32 272990208, i32 1 }, %struct.sparx5_main_io_resource { i32 136, i32 273006592, i32 1 }, %struct.sparx5_main_io_resource { i32 86, i32 273022976, i32 1 }, %struct.sparx5_main_io_resource { i32 22, i32 273039360, i32 1 }, %struct.sparx5_main_io_resource { i32 137, i32 273055744, i32 1 }, %struct.sparx5_main_io_resource { i32 87, i32 273072128, i32 1 }, %struct.sparx5_main_io_resource { i32 23, i32 273088512, i32 1 }, %struct.sparx5_main_io_resource { i32 138, i32 273104896, i32 1 }, %struct.sparx5_main_io_resource { i32 88, i32 273121280, i32 1 }, %struct.sparx5_main_io_resource { i32 24, i32 273137664, i32 1 }, %struct.sparx5_main_io_resource { i32 139, i32 273154048, i32 1 }, %struct.sparx5_main_io_resource { i32 89, i32 273170432, i32 1 }, %struct.sparx5_main_io_resource { i32 25, i32 273186816, i32 1 }, %struct.sparx5_main_io_resource { i32 140, i32 273203200, i32 1 }, %struct.sparx5_main_io_resource { i32 90, i32 273219584, i32 1 }, %struct.sparx5_main_io_resource { i32 26, i32 273235968, i32 1 }, %struct.sparx5_main_io_resource { i32 141, i32 273252352, i32 1 }, %struct.sparx5_main_io_resource { i32 91, i32 273268736, i32 1 }, %struct.sparx5_main_io_resource { i32 27, i32 273285120, i32 1 }, %struct.sparx5_main_io_resource { i32 142, i32 273301504, i32 1 }, %struct.sparx5_main_io_resource { i32 92, i32 273317888, i32 1 }, %struct.sparx5_main_io_resource { i32 28, i32 273334272, i32 1 }, %struct.sparx5_main_io_resource { i32 143, i32 273350656, i32 1 }, %struct.sparx5_main_io_resource { i32 93, i32 273367040, i32 1 }, %struct.sparx5_main_io_resource { i32 29, i32 273383424, i32 1 }, %struct.sparx5_main_io_resource { i32 144, i32 273399808, i32 1 }, %struct.sparx5_main_io_resource { i32 95, i32 273432576, i32 1 }, %struct.sparx5_main_io_resource { i32 31, i32 273448960, i32 1 }, %struct.sparx5_main_io_resource { i32 146, i32 273465344, i32 1 }, %struct.sparx5_main_io_resource { i32 98, i32 273498112, i32 1 }, %struct.sparx5_main_io_resource { i32 34, i32 273514496, i32 1 }, %struct.sparx5_main_io_resource { i32 149, i32 273530880, i32 1 }, %struct.sparx5_main_io_resource { i32 99, i32 273563648, i32 1 }, %struct.sparx5_main_io_resource { i32 35, i32 273580032, i32 1 }, %struct.sparx5_main_io_resource { i32 150, i32 273596416, i32 1 }, %struct.sparx5_main_io_resource { i32 100, i32 273629184, i32 1 }, %struct.sparx5_main_io_resource { i32 36, i32 273645568, i32 1 }, %struct.sparx5_main_io_resource { i32 151, i32 273661952, i32 1 }, %struct.sparx5_main_io_resource { i32 115, i32 273694720, i32 1 }, %struct.sparx5_main_io_resource { i32 9, i32 274726912, i32 1 }, %struct.sparx5_main_io_resource { i32 118, i32 285278208, i32 2 }, %struct.sparx5_main_io_resource { i32 177, i32 285409280, i32 2 }, %struct.sparx5_main_io_resource { i32 2, i32 285540352, i32 2 }, %struct.sparx5_main_io_resource { i32 122, i32 285605888, i32 2 }, %struct.sparx5_main_io_resource { i32 326, i32 285736960, i32 2 }, %struct.sparx5_main_io_resource { i32 178, i32 285868032, i32 2 }, %struct.sparx5_main_io_resource { i32 175, i32 285933568, i32 2 }, %struct.sparx5_main_io_resource { i32 331, i32 285999104, i32 2 }, %struct.sparx5_main_io_resource { i32 11, i32 286261248, i32 2 }, %struct.sparx5_main_io_resource { i32 4, i32 287309824, i32 2 }, %struct.sparx5_main_io_resource { i32 176, i32 287834112, i32 2 }, %struct.sparx5_main_io_resource { i32 116, i32 288096256, i32 2 }, %struct.sparx5_main_io_resource { i32 6, i32 289406976, i32 2 }, %struct.sparx5_main_io_resource { i32 8, i32 289931264, i32 2 }, %struct.sparx5_main_io_resource { i32 119, i32 290979840, i32 2 }, %struct.sparx5_main_io_resource { i32 179, i32 291504128, i32 2 }, %struct.sparx5_main_io_resource { i32 7, i32 293601280, i32 2 }, %struct.sparx5_main_io_resource { i32 1, i32 294649856, i32 2 }, %struct.sparx5_main_io_resource { i32 327, i32 295698432, i32 2 }], [464 x i8] zeroinitializer }, align 32
@sparx5_create_targets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 232, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sparx5_create_targets\00", [42 x i8] zeroinitializer }, align 32
@sparx5_create_targets._entry_ptr = internal global ptr @sparx5_create_targets._entry, section ".printk_index", align 4
@sparx5_create_targets._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.6, i32 240, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to get switch registers: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@sparx5_create_targets._entry_ptr.44 = internal global ptr @sparx5_create_targets._entry.42, section ".printk_index", align 4
@sparx5_init_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 374, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Memory initialization error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sparx5_init_ram\00", [16 x i8] zeroinitializer }, align 32
@sparx5_init_ram._entry_ptr = internal global ptr @sparx5_init_ram._entry, section ".printk_index", align 4
@sparx5_init_coreclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 458, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Target (%#04x) not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sparx5_init_coreclock\00", [42 x i8] zeroinitializer }, align 32
@sparx5_init_coreclock._entry_ptr = internal global ptr @sparx5_init_coreclock._entry, section ".printk_index", align 4
@sparx5_init_coreclock._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.6, i32 477, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%d coreclock not supported on (%#04x)\0A\00", [57 x i8] zeroinitializer }, align 32
@sparx5_init_coreclock._entry_ptr.52 = internal global ptr @sparx5_init_coreclock._entry.50, section ".printk_index", align 4
@sparx5_create_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 264, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not create net device: %02u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sparx5_create_port\00", [45 x i8] zeroinitializer }, align 32
@sparx5_create_port._entry_ptr = internal global ptr @sparx5_create_port._entry, section ".printk_index", align 4
@sparx5_phylink_pcs_ops = external dso_local constant %struct.phylink_pcs_ops, align 4
@sparx5_create_port._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.6, i32 283, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port init failed\0A\00", [46 x i8] zeroinitializer }, align 32
@sparx5_create_port._entry_ptr.57 = internal global ptr @sparx5_create_port._entry.55, section ".printk_index", align 4
@sparx5_phylink_mac_ops = external dso_local constant %struct.phylink_mac_ops, align 4
@sparx5_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sparx5->mact_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-mact\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sparx5_start.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&sparx5->mact_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@sparx5_start.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&sparx5->mact_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sparx5-fdma\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sparx5-xtr\00", [21 x i8] zeroinitializer }, align 32
@switch.table.mchp_sparx5_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1600, i32 4000, i32 2000, i32 1600], [16 x i8] zeroinitializer }, align 32
@switch.table.mchp_sparx5_probe.67 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.mchp_sparx5_probe.68 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 780, i32 312, i32 624, i32 780], [16 x i8] zeroinitializer }, align 32
@switch.table.mchp_sparx5_probe.69 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32772, i32 32778, i32 32773, i32 32772], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 30022, i64 30025, i64 30034, i64 30038, i64 30040, i64 292166, i64 292169, i64 292178, i64 292182, i64 292184]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 5000, i64 10000, i64 25000]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 10000, i64 25000]
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"mchp_sparx5_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 888, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 892, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"mchp_sparx5_match\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 882, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 727, i32 61 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 730, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 736, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 738, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 755, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 757, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 766, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 770, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 773, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 777, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 785, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 806, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 811, i32 59 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 812, i32 58 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 823, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 830, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 841, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 848, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"sparx5_main_iomap\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 53, i32 45 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 232, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 239, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 374, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 457, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 476, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 263, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 283, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 653, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 655, i32 43 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 657, i32 23 }
@___asan_gen_.255 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 658, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 678, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [55 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 689, i32 12 }
@___asan_gen_.267 = private unnamed_addr constant [31 x i8] c"switch.table.mchp_sparx5_probe\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [34 x i8] c"switch.table.mchp_sparx5_probe.67\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [34 x i8] c"switch.table.mchp_sparx5_probe.68\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [34 x i8] c"switch.table.mchp_sparx5_probe.69\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description619, ptr @__UNIQUE_ID_file621, ptr @__UNIQUE_ID_license622, ptr @__exitcall_mchp_sparx5_driver_exit, ptr @__initcall__kmod_sparx5_switch__618_897_mchp_sparx5_driver_init6, ptr @mchp_sparx5_driver_exit, ptr @mchp_sparx5_probe._entry, ptr @mchp_sparx5_probe._entry.10, ptr @mchp_sparx5_probe._entry.13, ptr @mchp_sparx5_probe._entry.17, ptr @mchp_sparx5_probe._entry.22, ptr @mchp_sparx5_probe._entry.28, ptr @mchp_sparx5_probe._entry.31, ptr @mchp_sparx5_probe._entry.34, ptr @mchp_sparx5_probe._entry.37, ptr @mchp_sparx5_probe._entry_ptr, ptr @mchp_sparx5_probe._entry_ptr.12, ptr @mchp_sparx5_probe._entry_ptr.15, ptr @mchp_sparx5_probe._entry_ptr.19, ptr @mchp_sparx5_probe._entry_ptr.25, ptr @mchp_sparx5_probe._entry_ptr.30, ptr @mchp_sparx5_probe._entry_ptr.33, ptr @mchp_sparx5_probe._entry_ptr.36, ptr @mchp_sparx5_probe._entry_ptr.39, ptr @sparx5_create_port._entry, ptr @sparx5_create_port._entry.55, ptr @sparx5_create_port._entry_ptr, ptr @sparx5_create_port._entry_ptr.57, ptr @sparx5_create_targets._entry, ptr @sparx5_create_targets._entry.42, ptr @sparx5_create_targets._entry_ptr, ptr @sparx5_create_targets._entry_ptr.44, ptr @sparx5_init_coreclock._entry, ptr @sparx5_init_coreclock._entry.50, ptr @sparx5_init_coreclock._entry_ptr, ptr @sparx5_init_coreclock._entry_ptr.52, ptr @sparx5_init_ram._entry, ptr @sparx5_init_ram._entry_ptr, ptr @mchp_sparx5_driver, ptr @.str, ptr @mchp_sparx5_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @sparx5_main_iomap, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @sparx5_start.__key, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @sparx5_start.__key.61, ptr @.str.62, ptr @sparx5_start.__key.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @switch.table.mchp_sparx5_probe, ptr @switch.table.mchp_sparx5_probe.67, ptr @switch.table.mchp_sparx5_probe.68, ptr @switch.table.mchp_sparx5_probe.69], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_main_iomap to i32), i32 1872, i32 2336, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_create_targets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_create_targets._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_init_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_init_coreclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_init_coreclock._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_create_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_create_port._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_start.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_start.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mchp_sparx5_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mchp_sparx5_probe.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mchp_sparx5_probe.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mchp_sparx5_probe.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_sparx5_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mchp_sparx5_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mchp_sparx5_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mchp_sparx5_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_sparx5_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %broadcast.i = alloca [6 x i8], align 1
  %queue_name.i = alloca [32 x i8], align 1
  %spx5_ram_cfg.i.i = alloca [10 x %struct.sparx5_ram_config], align 4
  %begin.i = alloca [3 x ptr], align 4
  %range_id.i = alloca [3 x i32], align 4
  %portno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup157_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup157_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup157

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 55512, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup157_crit_edge, label %if.end6

if.end.cleanup157_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup157

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %call.i, align 8
  %dev9 = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev9, align 4
  %call.i258 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %cmp.i = icmp ugt ptr %call.i258, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call.i258 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull @.str.2) #8
  br label %cleanup157

if.end17:                                         ; preds = %if.end6
  %call18 = tail call i32 @reset_control_reset(ptr noundef %call.i258) #8
  %coreclock = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %coreclock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %coreclock, align 4
  %call19 = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.4) #11
  br label %cleanup157

if.end23:                                         ; preds = %if.end17
  %call.i259 = tail call ptr @of_get_next_child(ptr noundef nonnull %call19, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i259, null
  br i1 %cmp.not5.i, label %if.end23.of_get_child_count.exit_crit_edge, label %if.end23.for.body.i_crit_edge

if.end23.for.body.i_crit_edge:                    ; preds = %if.end23
  br label %for.body.i

if.end23.of_get_child_count.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end23.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end23.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i259, %if.end23.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call19, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end23.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end23.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  %port_count = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %port_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %num.0.lcssa.i, ptr %port_count, align 8
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 52) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %of_get_child_count.exit.cleanup_pnode_crit_edge, label %if.end7.i.i, !prof !136

of_get_child_count.exit.cleanup_pnode_crit_edge:  ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_pnode

if.end7.i.i:                                      ; preds = %of_get_child_count.exit
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #12
  %tobool27.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool27.not, label %if.end7.i.i.cleanup_pnode_crit_edge, label %if.end29

if.end7.i.i.cleanup_pnode_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_pnode

if.end29:                                         ; preds = %if.end7.i.i
  %call30 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call19, ptr noundef null) #8
  %cmp.not337 = icmp eq ptr %call30, null
  br i1 %cmp.not337, label %if.end29.for.end_crit_edge, label %for.body.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %sd_sgpio_remapping = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0340 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1.ph, %for.inc.for.body_crit_edge ]
  %portnp.0338 = phi ptr [ %call30, %for.body.lr.ph ], [ %call75, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %portno) #8
  %15 = ptrtoint ptr %portno to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %portno, align 4, !annotation !137
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %portnp.0338, ptr noundef nonnull @.str.9, ptr noundef nonnull %portno, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool32.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11) #11
  br label %for.inc

if.end38:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340
  %conf39 = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2
  %speed = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2, i32 2
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %speed, align 4
  %bandwidth = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2, i32 1
  %19 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %bandwidth, align 4
  %phy_mode = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2, i32 11
  %call40 = call i32 @of_get_phy_mode(ptr noundef nonnull %portnp.0338, ptr noundef %phy_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9, align 4
  %22 = ptrtoint ptr %portno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %portno, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.14, i32 noundef %23) #11
  br label %for.inc

if.end47:                                         ; preds = %if.end38
  %call.i.i260 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %portnp.0338, ptr noundef nonnull @.str.16, ptr noundef %bandwidth, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i260)
  %tobool50.not = icmp sgt i32 %call.i.i260, -1
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev9, align 4
  %26 = ptrtoint ptr %portno to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %portno, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.18, i32 noundef %27) #11
  br label %for.inc

if.end56:                                         ; preds = %if.end47
  %sd_sgpio = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2, i32 12
  %call.i.i261 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %portnp.0338, ptr noundef nonnull @.str.20, ptr noundef %sd_sgpio, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i261)
  %tobool58.not = icmp sgt i32 %call.i.i261, -1
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %sd_sgpio to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %sd_sgpio, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %sd_sgpio_remapping to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %sd_sgpio_remapping, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then59
  %30 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev9, align 4
  %call63 = call ptr @devm_of_phy_get(ptr noundef %31, ptr noundef nonnull %portnp.0338, ptr noundef null) #8
  %cmp.i262 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i262, label %cleanup, label %if.end69

if.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %portno to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %portno, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx, align 4
  %node = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 1
  %35 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %portnp.0338, ptr %node, align 4
  %serdes71 = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 3
  %36 = ptrtoint ptr %serdes71 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call63, ptr %serdes71, align 4
  %media = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2, i32 4
  %37 = ptrtoint ptr %media to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %media, align 4
  %serdes_reset = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2, i32 8
  %38 = ptrtoint ptr %serdes_reset to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %serdes_reset, align 1
  %39 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phy_mode, align 4
  %41 = ptrtoint ptr %conf39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %conf39, align 4
  %power_down = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.0340, i32 2, i32 6
  %42 = ptrtoint ptr %power_down to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %power_down, align 1
  %inc = add i32 %idx.0340, 1
  br label %for.inc

cleanup:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev9, align 4
  %45 = ptrtoint ptr %call63 to i32
  %46 = ptrtoint ptr %portno to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %portno, align 4
  %call68 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %44, i32 noundef %45, ptr noundef nonnull @.str.21, i32 noundef %47) #8
  call void @of_node_put(ptr noundef nonnull %portnp.0338) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %portno) #8
  br label %cleanup_config

for.inc:                                          ; preds = %if.end69, %do.end54, %do.end45, %do.end36
  %idx.1.ph = phi i32 [ %inc, %if.end69 ], [ %idx.0340, %do.end54 ], [ %idx.0340, %do.end45 ], [ %idx.0340, %do.end36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %portno) #8
  %call75 = call ptr @of_get_next_available_child(ptr noundef nonnull %call19, ptr noundef nonnull %portnp.0338) #8
  %cmp.not = icmp eq ptr %call75, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %begin.i) #8
  %48 = getelementptr inbounds [3 x ptr], ptr %begin.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %range_id.i) #8
  %49 = ptrtoint ptr %range_id.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %range_id.i, align 4, !annotation !137
  %50 = getelementptr inbounds [3 x i32], ptr %range_id.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !137
  %52 = getelementptr inbounds [3 x i32], ptr %range_id.i, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4, !annotation !137
  br label %for.body.i264

for.cond4.preheader.i:                            ; preds = %if.end.i
  %54 = getelementptr inbounds [3 x ptr], ptr %begin.i, i32 0, i32 2
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 8
  %call.i263 = call ptr @platform_get_resource(ptr noundef %56, i32 noundef 512, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i263, null
  br i1 %tobool.not.i, label %for.cond4.preheader.i.do.end.i_crit_edge, label %if.end10.i

for.cond4.preheader.i.do.end.i_crit_edge:         ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i264:                                    ; preds = %if.end.i.for.body.i264_crit_edge, %for.end
  %idx.081.i = phi i32 [ 0, %for.end ], [ %idx.1.i, %if.end.i.for.body.i264_crit_edge ]
  %jdx.079.i = phi i32 [ 0, %for.end ], [ %inc3.i, %if.end.i.for.body.i264_crit_edge ]
  %range.i = getelementptr [156 x %struct.sparx5_main_io_resource], ptr @sparx5_main_iomap, i32 0, i32 %jdx.079.i, i32 2
  %57 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %range.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.081.i, i32 %58)
  %cmp1.i = icmp eq i32 %idx.081.i, %58
  br i1 %cmp1.i, label %if.then.i, label %for.body.i264.if.end.i_crit_edge

for.body.i264.if.end.i_crit_edge:                 ; preds = %for.body.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i264
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i = getelementptr [3 x i32], ptr %range_id.i, i32 0, i32 %idx.081.i
  %59 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %jdx.079.i, ptr %arrayidx2.i, align 4
  %inc.i265 = add i32 %idx.081.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i264.if.end.i_crit_edge
  %idx.1.i = phi i32 [ %inc.i265, %if.then.i ], [ %idx.081.i, %for.body.i264.if.end.i_crit_edge ]
  %inc3.i = add nuw nsw i32 %jdx.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, 156
  br i1 %exitcond.not.i, label %for.cond4.preheader.i, label %if.end.i.for.body.i264_crit_edge

if.end.i.for.body.i264_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i264

do.end.i:                                         ; preds = %if.end25.1.i.do.end.i_crit_edge, %if.end25.i.do.end.i_crit_edge, %for.cond4.preheader.i.do.end.i_crit_edge
  %60 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.40) #11
  br label %sparx5_create_targets.exit.thread

if.end10.i:                                       ; preds = %for.cond4.preheader.i
  %62 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev9, align 4
  %64 = ptrtoint ptr %call.i263 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call.i263, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i263, i32 0, i32 1
  %66 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %65
  %add.i.i = add i32 %sub.i.i, %67
  %call15.i = call ptr @devm_ioremap(ptr noundef %63, i32 noundef %65, i32 noundef %add.i.i) #8
  %tobool18.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool18.not.i, label %if.end10.i.do.end22.i_crit_edge, label %if.end25.i

if.end10.i.do.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.end10.2.i.do.end22.i_crit_edge, %if.end10.1.i.do.end22.i_crit_edge, %if.end10.i.do.end22.i_crit_edge
  %call.lcssa84.i = phi ptr [ %call.i263, %if.end10.i.do.end22.i_crit_edge ], [ %call.1.i, %if.end10.1.i.do.end22.i_crit_edge ], [ %call.2.i, %if.end10.2.i.do.end22.i_crit_edge ]
  %68 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev9, align 4
  %name.i = getelementptr inbounds %struct.resource, ptr %call.lcssa84.i, i32 0, i32 2
  %70 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.43, ptr noundef %71) #11
  br label %sparx5_create_targets.exit.thread

if.end25.i:                                       ; preds = %if.end10.i
  %72 = ptrtoint ptr %range_id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %range_id.i, align 4
  %offset.i = getelementptr [156 x %struct.sparx5_main_io_resource], ptr @sparx5_main_iomap, i32 0, i32 %73, i32 1
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i, align 4
  %idx.neg.i = sub i32 0, %75
  %add.ptr.i = getelementptr i8, ptr %call15.i, i32 %idx.neg.i
  %76 = ptrtoint ptr %begin.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i, ptr %begin.i, align 4
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 8
  %call.1.i = call ptr @platform_get_resource(ptr noundef %78, i32 noundef 512, i32 noundef 1) #8
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %if.end25.i.do.end.i_crit_edge, label %if.end10.1.i

if.end25.i.do.end.i_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end10.1.i:                                     ; preds = %if.end25.i
  %79 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev9, align 4
  %81 = ptrtoint ptr %call.1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call.1.i, align 4
  %end.i.1.i = getelementptr inbounds %struct.resource, ptr %call.1.i, i32 0, i32 1
  %83 = ptrtoint ptr %end.i.1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %end.i.1.i, align 4
  %sub.i.1.i = sub i32 1, %82
  %add.i.1.i = add i32 %sub.i.1.i, %84
  %call15.1.i = call ptr @devm_ioremap(ptr noundef %80, i32 noundef %82, i32 noundef %add.i.1.i) #8
  %tobool18.not.1.i = icmp eq ptr %call15.1.i, null
  br i1 %tobool18.not.1.i, label %if.end10.1.i.do.end22.i_crit_edge, label %if.end25.1.i

if.end10.1.i.do.end22.i_crit_edge:                ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

if.end25.1.i:                                     ; preds = %if.end10.1.i
  %85 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %50, align 4
  %offset.1.i = getelementptr [156 x %struct.sparx5_main_io_resource], ptr @sparx5_main_iomap, i32 0, i32 %86, i32 1
  %87 = ptrtoint ptr %offset.1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset.1.i, align 4
  %idx.neg.1.i = sub i32 0, %88
  %add.ptr.1.i = getelementptr i8, ptr %call15.1.i, i32 %idx.neg.1.i
  %89 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr.1.i, ptr %48, align 4
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i, align 8
  %call.2.i = call ptr @platform_get_resource(ptr noundef %91, i32 noundef 512, i32 noundef 2) #8
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %if.end25.1.i.do.end.i_crit_edge, label %if.end10.2.i

if.end25.1.i.do.end.i_crit_edge:                  ; preds = %if.end25.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end10.2.i:                                     ; preds = %if.end25.1.i
  %92 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev9, align 4
  %94 = ptrtoint ptr %call.2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call.2.i, align 4
  %end.i.2.i = getelementptr inbounds %struct.resource, ptr %call.2.i, i32 0, i32 1
  %96 = ptrtoint ptr %end.i.2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %end.i.2.i, align 4
  %sub.i.2.i = sub i32 1, %95
  %add.i.2.i = add i32 %sub.i.2.i, %97
  %call15.2.i = call ptr @devm_ioremap(ptr noundef %93, i32 noundef %95, i32 noundef %add.i.2.i) #8
  %tobool18.not.2.i = icmp eq ptr %call15.2.i, null
  br i1 %tobool18.not.2.i, label %if.end10.2.i.do.end22.i_crit_edge, label %if.end25.2.i

if.end10.2.i.do.end22.i_crit_edge:                ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

if.end25.2.i:                                     ; preds = %if.end10.2.i
  %98 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %52, align 4
  %offset.2.i = getelementptr [156 x %struct.sparx5_main_io_resource], ptr @sparx5_main_iomap, i32 0, i32 %99, i32 1
  %100 = ptrtoint ptr %offset.2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %offset.2.i, align 4
  %idx.neg.2.i = sub i32 0, %101
  %add.ptr.2.i = getelementptr i8, ptr %call15.2.i, i32 %idx.neg.2.i
  %102 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.2.i, ptr %54, align 4
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %if.end25.2.i
  %jdx.183.i = phi i32 [ %inc44.i, %for.body35.i.for.body35.i_crit_edge ], [ 0, %if.end25.2.i ]
  %arrayidx37.i = getelementptr [156 x %struct.sparx5_main_io_resource], ptr @sparx5_main_iomap, i32 0, i32 %jdx.183.i
  %range38.i = getelementptr [156 x %struct.sparx5_main_io_resource], ptr @sparx5_main_iomap, i32 0, i32 %jdx.183.i, i32 2
  %103 = ptrtoint ptr %range38.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %range38.i, align 4
  %arrayidx39.i = getelementptr [3 x ptr], ptr %begin.i, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx39.i, align 4
  %offset40.i = getelementptr [156 x %struct.sparx5_main_io_resource], ptr @sparx5_main_iomap, i32 0, i32 %jdx.183.i, i32 1
  %107 = ptrtoint ptr %offset40.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset40.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %106, i32 %108
  %109 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx37.i, align 4
  %arrayidx42.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 %110
  %111 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr41.i, ptr %arrayidx42.i, align 4
  %inc44.i = add nuw nsw i32 %jdx.183.i, 1
  %exitcond87.not.i = icmp eq i32 %inc44.i, 156
  br i1 %exitcond87.not.i, label %if.end79, label %for.body35.i.for.body35.i_crit_edge

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i

sparx5_create_targets.exit.thread:                ; preds = %do.end22.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -12, %do.end22.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %range_id.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %begin.i) #8
  br label %cleanup_config

if.end79:                                         ; preds = %for.body35.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %range_id.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %begin.i) #8
  %base_mac = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 19
  %call80 = call i32 @of_get_mac_address(ptr noundef %1, ptr noundef %base_mac) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.end85, label %if.end79.if.end91_crit_edge

if.end79.if.end91_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.23) #11
  call void @get_random_bytes(ptr noundef %base_mac, i32 noundef 6) #8
  %114 = ptrtoint ptr %base_mac to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %base_mac, align 1
  %116 = and i8 %115, -4
  %117 = or i8 %116, 2
  store i8 %117, ptr %base_mac, align 1
  %arrayidx90 = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 19, i32 5
  %118 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %arrayidx90, align 1
  br label %if.end91

if.end91:                                         ; preds = %do.end85, %if.end79.if.end91_crit_edge
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call.i, align 8
  %call93 = call i32 @platform_get_irq_byname(ptr noundef %120, ptr noundef nonnull @.str.26) #8
  %fdma_irq = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 31
  %121 = ptrtoint ptr %fdma_irq to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call93, ptr %fdma_irq, align 4
  %122 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i, align 8
  %call95 = call i32 @platform_get_irq_byname(ptr noundef %123, ptr noundef nonnull @.str.27) #8
  %xtr_irq = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 30
  %124 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call95, ptr %xtr_irq, align 8
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 118
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i, align 4
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !138
  %128 = call i32 @llvm.bswap.i32(i32 %127) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %chip_id = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 2
  %129 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %chip_id, align 8
  %and = lshr i32 %128, 12
  %shr = and i32 %and, 65535
  %target_ct = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 3
  %130 = ptrtoint ptr %target_ct to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %shr, ptr %target_ct, align 4
  %arrayidx.i.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 116
  %131 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %132, i32 151376
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %134 = or i32 %133, 16777216
  %135 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i10.i.i = getelementptr i8, ptr %136, i32 151376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i.i, i32 %134) #8, !srcloc !142
  %137 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i92.i = getelementptr i8, ptr %138, i32 151376
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i92.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %140 = and i32 %139, -16777217
  %141 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i10.i95.i = getelementptr i8, ptr %142, i32 151376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i95.i, i32 %140) #8, !srcloc !142
  %arrayidx.i.i97.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 119
  %143 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i97.i, align 4
  %add.ptr82.i.i99.i = getelementptr i8, ptr %144, i32 162376
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i99.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %146 = and i32 %145, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i266 = icmp eq i32 %146, 0
  br i1 %tobool.not.i266, label %if.then.i267, label %if.end91.if.end120_crit_edge

if.end91.if.end120_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then.i267:                                     ; preds = %if.end91
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %spx5_ram_cfg.i.i) #8
  %arrayidx.i.i.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %148, i32 851568
  %149 = ptrtoint ptr %spx5_ram_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr82.i.i.i.i, ptr %spx5_ram_cfg.i.i, align 4
  %init_val.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %init_val.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %init_val.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 1
  %arrayidx.i.i87.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 9
  %151 = ptrtoint ptr %arrayidx.i.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i.i87.i.i, align 4
  %add.ptr.i.i88.i.i = getelementptr i8, ptr %152, i32 33280
  %153 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %add.ptr.i.i88.i.i, ptr %arrayinit.element.i.i, align 4
  %init_val3.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 1, i32 1
  %154 = ptrtoint ptr %init_val3.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %init_val3.i.i, align 4
  %arrayinit.element4.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 2
  %arrayidx.i.i90.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 178
  %155 = ptrtoint ptr %arrayidx.i.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx.i.i90.i.i, align 4
  %add.ptr.i.i91.i.i = getelementptr i8, ptr %156, i32 2344
  %157 = ptrtoint ptr %arrayinit.element4.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %add.ptr.i.i91.i.i, ptr %arrayinit.element4.i.i, align 4
  %init_val7.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 2, i32 1
  %158 = ptrtoint ptr %init_val7.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2, ptr %init_val7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 3
  %arrayidx.i.i93.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 179
  %159 = ptrtoint ptr %arrayidx.i.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i.i93.i.i, align 4
  %add.ptr.i.i94.i.i = getelementptr i8, ptr %160, i32 378696
  %161 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %add.ptr.i.i94.i.i, ptr %arrayinit.element8.i.i, align 4
  %init_val11.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 3, i32 1
  %162 = ptrtoint ptr %init_val11.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 2, ptr %init_val11.i.i, align 4
  %arrayinit.element12.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 4
  %arrayidx.i.i96.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 327
  %163 = ptrtoint ptr %arrayidx.i.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i.i96.i.i, align 4
  %add.ptr.i.i97.i.i = getelementptr i8, ptr %164, i32 279176
  %165 = ptrtoint ptr %arrayinit.element12.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %add.ptr.i.i97.i.i, ptr %arrayinit.element12.i.i, align 4
  %init_val15.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 4, i32 1
  %166 = ptrtoint ptr %init_val15.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 2, ptr %init_val15.i.i, align 4
  %arrayinit.element16.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 5
  %add.ptr.i.i100.i.i = getelementptr i8, ptr %148, i32 839108
  %167 = ptrtoint ptr %arrayinit.element16.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %add.ptr.i.i100.i.i, ptr %arrayinit.element16.i.i, align 4
  %init_val19.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 5, i32 1
  %168 = ptrtoint ptr %init_val19.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 2, ptr %init_val19.i.i, align 4
  %arrayinit.element20.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 6
  %add.ptr.i.i103.i.i = getelementptr i8, ptr %152, i32 34832
  %169 = ptrtoint ptr %arrayinit.element20.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %add.ptr.i.i103.i.i, ptr %arrayinit.element20.i.i, align 4
  %init_val23.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 6, i32 1
  %170 = ptrtoint ptr %init_val23.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 2, ptr %init_val23.i.i, align 4
  %arrayinit.element24.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 7
  %171 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i106.i.i = getelementptr i8, ptr %172, i32 118736
  %173 = ptrtoint ptr %arrayinit.element24.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %add.ptr.i.i106.i.i, ptr %arrayinit.element24.i.i, align 4
  %init_val27.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 7, i32 1
  %174 = ptrtoint ptr %init_val27.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 2, ptr %init_val27.i.i, align 4
  %arrayinit.element28.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 8
  %arrayidx.i.i108.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 326
  %175 = ptrtoint ptr %arrayidx.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i.i108.i.i, align 4
  %add.ptr.i.i109.i.i = getelementptr i8, ptr %176, i32 1120
  %177 = ptrtoint ptr %arrayinit.element28.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %add.ptr.i.i109.i.i, ptr %arrayinit.element28.i.i, align 4
  %init_val31.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 8, i32 1
  %178 = ptrtoint ptr %init_val31.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 2, ptr %init_val31.i.i, align 4
  %arrayinit.element32.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 9
  %arrayidx.i.i111.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 115
  %179 = ptrtoint ptr %arrayidx.i.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i.i111.i.i, align 4
  %181 = ptrtoint ptr %arrayinit.element32.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %180, ptr %arrayinit.element32.i.i, align 4
  %init_val35.i.i = getelementptr inbounds %struct.sparx5_ram_config, ptr %spx5_ram_cfg.i.i, i32 9, i32 1
  %182 = ptrtoint ptr %init_val35.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2, ptr %init_val35.i.i, align 4
  br label %for.cond36.preheader.i.i

for.cond36.preheader.i.i:                         ; preds = %if.end51.i.i.for.cond36.preheader.i.i_crit_edge, %if.then.i267
  %cmp117.i.i = phi i1 [ true, %if.then.i267 ], [ %cmp.i.i, %if.end51.i.i.for.cond36.preheader.i.i_crit_edge ]
  %jdx.0116.i.i = phi i32 [ 0, %if.then.i267 ], [ %inc53.i.i, %if.end51.i.i.for.cond36.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jdx.0116.i.i)
  %cmp39.i.i = icmp eq i32 %jdx.0116.i.i, 0
  br label %for.body38.i.i

for.body38.i.i:                                   ; preds = %for.inc.i.i.for.body38.i.i_crit_edge, %for.cond36.preheader.i.i
  %pending.1115.i.i = phi i32 [ 10, %for.cond36.preheader.i.i ], [ %pending.2.i.i, %for.inc.i.i.for.body38.i.i_crit_edge ]
  %idx.0113.i.i = phi i32 [ 0, %for.cond36.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body38.i.i_crit_edge ]
  %arrayidx.i.i268 = getelementptr [10 x %struct.sparx5_ram_config], ptr %spx5_ram_cfg.i.i, i32 0, i32 %idx.0113.i.i
  br i1 %cmp39.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  call void @arm_heavy_mb() #8
  %init_val40.i.i = getelementptr [10 x %struct.sparx5_ram_config], ptr %spx5_ram_cfg.i.i, i32 0, i32 %idx.0113.i.i, i32 1
  %183 = ptrtoint ptr %init_val40.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %init_val40.i.i, align 4
  %185 = call i32 @llvm.bswap.i32(i32 %184) #8
  %186 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i.i268, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #8, !srcloc !142
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i.i268, align 4
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #8, !srcloc !138
  %191 = call i32 @llvm.bswap.i32(i32 %190) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %init_val45.i.i = getelementptr [10 x %struct.sparx5_ram_config], ptr %spx5_ram_cfg.i.i, i32 0, i32 %idx.0113.i.i, i32 1
  %192 = ptrtoint ptr %init_val45.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %init_val45.i.i, align 4
  %and.i100.i = and i32 %193, %191
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i100.i, i32 %193)
  %cmp47.not.i.i = icmp ne i32 %and.i100.i, %193
  %dec.i.i = sext i1 %cmp47.not.i.i to i32
  %spec.select.i.i = add i32 %pending.1115.i.i, %dec.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %do.body.i.i
  %pending.2.i.i = phi i32 [ %pending.1115.i.i, %do.body.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %inc.i.i = add nuw nsw i32 %idx.0113.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body38.i.i_crit_edge

for.inc.i.i.for.body38.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.2.i.i)
  %tobool.not.i.i = icmp eq i32 %pending.2.i.i, 0
  br i1 %tobool.not.i.i, label %for.end54.i.i, label %if.end51.i.i

if.end51.i.i:                                     ; preds = %for.end.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %inc53.i.i = add nuw nsw i32 %jdx.0116.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %jdx.0116.i.i)
  %cmp.i.i = icmp ult i32 %jdx.0116.i.i, 9
  %exitcond119.not.i.i = icmp eq i32 %inc53.i.i, 10
  br i1 %exitcond119.not.i.i, label %if.end51.i.i.do.end118_crit_edge, label %if.end51.i.i.for.cond36.preheader.i.i_crit_edge

if.end51.i.i.for.cond36.preheader.i.i_crit_edge:  ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond36.preheader.i.i

if.end51.i.i.do.end118_crit_edge:                 ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end118

for.end54.i.i:                                    ; preds = %for.end.i.i
  br i1 %cmp117.i.i, label %sparx5_init_ram.exit.thread.i, label %for.end54.i.i.do.end118_crit_edge

for.end54.i.i.do.end118_crit_edge:                ; preds = %for.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end118

sparx5_init_ram.exit.thread.i:                    ; preds = %for.end54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %spx5_ram_cfg.i.i) #8
  br label %if.end120

do.end118:                                        ; preds = %for.end54.i.i.do.end118_crit_edge, %if.end51.i.i.do.end118_crit_edge
  %194 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.46) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %spx5_ram_cfg.i.i) #8
  %196 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.29) #11
  br label %cleanup_config

if.end120:                                        ; preds = %sparx5_init_ram.exit.thread.i, %if.end91.if.end120_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %arrayidx.i.i102.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 1
  %198 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i.i102.i, align 4
  %add.ptr82.i.i104.i = getelementptr i8, ptr %199, i32 851568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i104.i, i32 16777216) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %arrayidx.i.i106.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 9
  %200 = ptrtoint ptr %arrayidx.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx.i.i106.i, align 4
  %add.ptr.i.i107.i = getelementptr i8, ptr %201, i32 33280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i107.i, i32 16777216) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %202 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx.i.i97.i, align 4
  %add.ptr82.i.i111.i = getelementptr i8, ptr %203, i32 162376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i111.i, i32 16777216) #8, !srcloc !142
  %204 = ptrtoint ptr %coreclock to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %coreclock, align 4
  %206 = ptrtoint ptr %target_ct to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %target_ct, align 4
  %208 = zext i32 %207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values)
  switch i32 %207, label %do.end.i270 [
    i32 30022, label %sw.bb.i
    i32 30025, label %if.end120.sw.bb6.i_crit_edge
    i32 30034, label %if.end120.sw.bb6.i_crit_edge362
    i32 30038, label %if.end120.sw.bb6.i_crit_edge363
    i32 30040, label %if.end120.sw.bb16.i_crit_edge
    i32 292184, label %if.end120.sw.bb16.i_crit_edge364
    i32 292166, label %sw.bb26.i
    i32 292169, label %if.end120.sw.bb31.i_crit_edge
    i32 292178, label %if.end120.sw.bb31.i_crit_edge365
    i32 292182, label %if.end120.sw.bb31.i_crit_edge366
  ]

if.end120.sw.bb31.i_crit_edge366:                 ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.end120.sw.bb31.i_crit_edge365:                 ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.end120.sw.bb31.i_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.end120.sw.bb16.i_crit_edge364:                 ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16.i

if.end120.sw.bb16.i_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16.i

if.end120.sw.bb6.i_crit_edge363:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.end120.sw.bb6.i_crit_edge362:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.end120.sw.bb6.i_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

sw.bb.i:                                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %205)
  %switch.i = icmp ult i32 %205, 2
  br i1 %switch.i, label %sw.bb.i.sparx5_init_coreclock.exit_crit_edge, label %sw.bb.i.do.end48.i_crit_edge

sw.bb.i.do.end48.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

sw.bb.i.sparx5_init_coreclock.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_init_coreclock.exit

sw.bb6.i:                                         ; preds = %if.end120.sw.bb6.i_crit_edge, %if.end120.sw.bb6.i_crit_edge362, %if.end120.sw.bb6.i_crit_edge363
  %209 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %205, label %sw.bb6.i.do.end48.i_crit_edge [
    i32 0, label %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge
    i32 2, label %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge367
  ]

sw.bb6.i.sparx5_init_coreclock.exit_crit_edge367: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_init_coreclock.exit

sw.bb6.i.sparx5_init_coreclock.exit_crit_edge:    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_init_coreclock.exit

sw.bb6.i.do.end48.i_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

sw.bb16.i:                                        ; preds = %if.end120.sw.bb16.i_crit_edge, %if.end120.sw.bb16.i_crit_edge364
  %210 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %205, label %sw.bb16.i.do.end48.i_crit_edge [
    i32 0, label %sw.bb16.i.sw.bb44.i_crit_edge
    i32 3, label %sw.bb16.i.sw.bb44.i_crit_edge368
  ]

sw.bb16.i.sw.bb44.i_crit_edge368:                 ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44.i

sw.bb16.i.sw.bb44.i_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44.i

sw.bb16.i.do.end48.i_crit_edge:                   ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

sw.bb26.i:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %205)
  %211 = icmp ult i32 %205, 4
  br i1 %211, label %switch.lookup, label %sw.bb26.i.do.end48.i_crit_edge

sw.bb26.i.do.end48.i_crit_edge:                   ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

sw.bb31.i:                                        ; preds = %if.end120.sw.bb31.i_crit_edge, %if.end120.sw.bb31.i_crit_edge365, %if.end120.sw.bb31.i_crit_edge366
  %212 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %205, label %sw.bb31.i.do.end48.i_crit_edge [
    i32 0, label %sw.bb31.i.sw.bb44.i_crit_edge
    i32 3, label %sw.bb31.i.sw.bb44.i_crit_edge369
    i32 2, label %sw.bb31.i.sparx5_init_coreclock.exit_crit_edge
  ]

sw.bb31.i.sparx5_init_coreclock.exit_crit_edge:   ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_init_coreclock.exit

sw.bb31.i.sw.bb44.i_crit_edge369:                 ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44.i

sw.bb31.i.sw.bb44.i_crit_edge:                    ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44.i

sw.bb31.i.do.end48.i_crit_edge:                   ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

do.end.i270:                                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.48, i32 noundef %207) #11
  br label %do.end126

sw.bb44.i:                                        ; preds = %sw.bb31.i.sw.bb44.i_crit_edge, %sw.bb31.i.sw.bb44.i_crit_edge369, %sw.bb16.i.sw.bb44.i_crit_edge, %sw.bb16.i.sw.bb44.i_crit_edge368
  br label %sparx5_init_coreclock.exit

do.end48.i:                                       ; preds = %sw.bb31.i.do.end48.i_crit_edge, %sw.bb26.i.do.end48.i_crit_edge, %sw.bb16.i.do.end48.i_crit_edge, %sw.bb6.i.do.end48.i_crit_edge, %sw.bb.i.do.end48.i_crit_edge
  %215 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.51, i32 noundef %205, i32 noundef %207) #11
  br label %do.end126

switch.lookup:                                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mchp_sparx5_probe, i32 0, i32 %205
  %217 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %217)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep352 = getelementptr inbounds [4 x i32], ptr @switch.table.mchp_sparx5_probe.67, i32 0, i32 %205
  %218 = ptrtoint ptr %switch.gep352 to i32
  call void @__asan_load4_noabort(i32 %218)
  %switch.load353 = load i32, ptr %switch.gep352, align 4
  %switch.gep354 = getelementptr inbounds [4 x i32], ptr @switch.table.mchp_sparx5_probe.68, i32 0, i32 %205
  %219 = ptrtoint ptr %switch.gep354 to i32
  call void @__asan_load4_noabort(i32 %219)
  %switch.load355 = load i32, ptr %switch.gep354, align 4
  %switch.gep356 = getelementptr inbounds [4 x i32], ptr @switch.table.mchp_sparx5_probe.69, i32 0, i32 %205
  %220 = ptrtoint ptr %switch.gep356 to i32
  call void @__asan_load4_noabort(i32 %220)
  %switch.load357 = load i32, ptr %switch.gep356, align 4
  br label %sparx5_init_coreclock.exit

sparx5_init_coreclock.exit:                       ; preds = %switch.lookup, %sw.bb44.i, %sw.bb31.i.sparx5_init_coreclock.exit_crit_edge, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge367, %sw.bb.i.sparx5_init_coreclock.exit_crit_edge
  %switch.selectcmp478.i = phi i32 [ 4000, %sw.bb.i.sparx5_init_coreclock.exit_crit_edge ], [ 1600, %sw.bb44.i ], [ %switch.load, %switch.lookup ], [ 2000, %sw.bb31.i.sparx5_init_coreclock.exit_crit_edge ], [ 2000, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge ], [ 2000, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge367 ]
  %freq.0468.i = phi i32 [ 1, %sw.bb.i.sparx5_init_coreclock.exit_crit_edge ], [ 3, %sw.bb44.i ], [ %switch.load353, %switch.lookup ], [ %205, %sw.bb31.i.sparx5_init_coreclock.exit_crit_edge ], [ 2, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge ], [ 2, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge367 ]
  %pol_upd_int.0.i = phi i32 [ 312, %sw.bb.i.sparx5_init_coreclock.exit_crit_edge ], [ 780, %sw.bb44.i ], [ %switch.load355, %switch.lookup ], [ 624, %sw.bb31.i.sparx5_init_coreclock.exit_crit_edge ], [ 624, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge ], [ 624, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge367 ]
  %clk_div.0.i = phi i32 [ 32778, %sw.bb.i.sparx5_init_coreclock.exit_crit_edge ], [ 32772, %sw.bb44.i ], [ %switch.load357, %switch.lookup ], [ 32773, %sw.bb31.i.sparx5_init_coreclock.exit_crit_edge ], [ 32773, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge ], [ 32773, %sw.bb6.i.sparx5_init_coreclock.exit_crit_edge367 ]
  %221 = ptrtoint ptr %coreclock to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %freq.0468.i, ptr %coreclock, align 4
  %arrayidx.i.i.i271 = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 11
  %222 = ptrtoint ptr %arrayidx.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i.i.i271, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %223, i32 12
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %225 = and i32 %224, 65535
  %226 = call i32 @llvm.bswap.i32(i32 %225) #8
  %or.i.i = or i32 %226, %clk_div.0.i
  %227 = call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %228 = ptrtoint ptr %arrayidx.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx.i.i.i271, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %229, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %227) #8, !srcloc !142
  %div.lhs.trunc.i = trunc i32 %switch.selectcmp478.i to i16
  %div477.i = udiv i16 %div.lhs.trunc.i, 100
  %div.zext.i = zext i16 %div477.i to i32
  %230 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx.i.i97.i, align 4
  %add.ptr82.i.i.i272 = getelementptr i8, ptr %231, i32 163744
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i272) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %233 = and i32 %232, 16777215
  %234 = call i32 @llvm.bswap.i32(i32 %233) #8
  %or.i415.i = or i32 %234, %div.zext.i
  %235 = call i32 @llvm.bswap.i32(i32 %or.i415.i) #8
  %236 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx.i.i97.i, align 4
  %add.ptr82.i10.i.i273 = getelementptr i8, ptr %237, i32 163744
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i.i273, i32 %235) #8, !srcloc !142
  %shl207.i = shl nuw nsw i32 %div.zext.i, 19
  %and208.i = and i32 %shl207.i, 133693440
  %arrayidx.i.i418.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 4
  %238 = ptrtoint ptr %arrayidx.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx.i.i418.i, align 4
  %add.ptr.i.i419.i = getelementptr i8, ptr %239, i32 79048
  %240 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i419.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %241 = and i32 %240, -63496
  %242 = call i32 @llvm.bswap.i32(i32 %241) #8
  %or.i421.i = or i32 %242, %and208.i
  %243 = call i32 @llvm.bswap.i32(i32 %or.i421.i) #8
  %244 = ptrtoint ptr %arrayidx.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx.i.i418.i, align 4
  %add.ptr.i7.i422.i = getelementptr i8, ptr %245, i32 79048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i422.i, i32 %243) #8, !srcloc !142
  %246 = ptrtoint ptr %arrayidx.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx.i.i418.i, align 4
  %add.ptr.i.i425.i = getelementptr i8, ptr %247, i32 79056
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i425.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %249 = and i32 %248, -63496
  %250 = call i32 @llvm.bswap.i32(i32 %249) #8
  %or.i427.i = or i32 %250, %and208.i
  %251 = call i32 @llvm.bswap.i32(i32 %or.i427.i) #8
  %252 = ptrtoint ptr %arrayidx.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx.i.i418.i, align 4
  %add.ptr.i7.i428.i = getelementptr i8, ptr %253, i32 79056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i428.i, i32 %251) #8, !srcloc !142
  %shl261.i = shl nuw nsw i32 %div.zext.i, 7
  %and262.i = and i32 %shl261.i, 32640
  %arrayidx.i.i430.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 122
  %254 = ptrtoint ptr %arrayidx.i.i430.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx.i.i430.i, align 4
  %add.ptr82.i.i431.i = getelementptr i8, ptr %255, i32 52
  %256 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i431.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %257 = and i32 %256, 2139160575
  %258 = call i32 @llvm.bswap.i32(i32 %257) #8
  %or.i433.i = or i32 %258, %and262.i
  %259 = call i32 @llvm.bswap.i32(i32 %or.i433.i) #8
  %260 = ptrtoint ptr %arrayidx.i.i430.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i.i430.i, align 4
  %add.ptr82.i10.i434.i = getelementptr i8, ptr %261, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i434.i, i32 %259) #8, !srcloc !142
  %262 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i.i = getelementptr i8, ptr %263, i32 896
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %265 = and i32 %264, 16777215
  %266 = call i32 @llvm.bswap.i32(i32 %265) #8
  %or.i440.i = or i32 %266, %div.zext.i
  %267 = call i32 @llvm.bswap.i32(i32 %or.i440.i) #8
  %268 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i9.i.i = getelementptr i8, ptr %269, i32 896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i.i, i32 %267) #8, !srcloc !142
  %270 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i438.1.i = getelementptr i8, ptr %271, i32 1176
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i438.1.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %273 = and i32 %272, 16777215
  %274 = call i32 @llvm.bswap.i32(i32 %273) #8
  %or.i440.1.i = or i32 %274, %div.zext.i
  %275 = call i32 @llvm.bswap.i32(i32 %or.i440.1.i) #8
  %276 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i10.i442.1.i = getelementptr i8, ptr %277, i32 1176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i442.1.i, i32 %275) #8, !srcloc !142
  %278 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i438.2.i = getelementptr i8, ptr %279, i32 1456
  %280 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i438.2.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %281 = and i32 %280, 16777215
  %282 = call i32 @llvm.bswap.i32(i32 %281) #8
  %or.i440.2.i = or i32 %282, %div.zext.i
  %283 = call i32 @llvm.bswap.i32(i32 %or.i440.2.i) #8
  %284 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i10.i442.2.i = getelementptr i8, ptr %285, i32 1456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i442.2.i, i32 %283) #8, !srcloc !142
  %div298.i = udiv i32 256000, %switch.selectcmp478.i
  %286 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i.i97.i, align 4
  %add.ptr82.i.i447.i = getelementptr i8, ptr %287, i32 162392
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i447.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %289 = and i32 %288, 16777215
  %290 = call i32 @llvm.bswap.i32(i32 %289) #8
  %or.i449.i = or i32 %290, %div298.i
  %291 = call i32 @llvm.bswap.i32(i32 %or.i449.i) #8
  %292 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx.i.i97.i, align 4
  %add.ptr82.i10.i451.i = getelementptr i8, ptr %293, i32 162392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i451.i, i32 %291) #8, !srcloc !142
  %294 = ptrtoint ptr %arrayidx.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx.i.i418.i, align 4
  %add.ptr82.i.i456.i = getelementptr i8, ptr %295, i32 77116
  %296 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i456.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %297 = and i32 %296, 16580607
  %298 = call i32 @llvm.bswap.i32(i32 %297) #8
  %or.i459.i = or i32 %298, %pol_upd_int.0.i
  %299 = call i32 @llvm.bswap.i32(i32 %or.i459.i) #8
  %300 = ptrtoint ptr %arrayidx.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx.i.i418.i, align 4
  %add.ptr82.i10.i461.i = getelementptr i8, ptr %301, i32 77116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i461.i, i32 %299) #8, !srcloc !142
  %302 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %port_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %cmp131341 = icmp sgt i32 %303, 0
  br i1 %cmp131341, label %sparx5_init_coreclock.exit.for.body132_crit_edge, label %sparx5_init_coreclock.exit.for.end148_crit_edge

sparx5_init_coreclock.exit.for.end148_crit_edge:  ; preds = %sparx5_init_coreclock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end148

sparx5_init_coreclock.exit.for.body132_crit_edge: ; preds = %sparx5_init_coreclock.exit
  br label %for.body132

do.end126:                                        ; preds = %do.end48.i, %do.end.i270
  %retval.0.i274.ph = phi i32 [ -22, %do.end48.i ], [ -19, %do.end.i270 ]
  %304 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %305, ptr noundef nonnull @.str.32) #11
  br label %cleanup_config

for.body132:                                      ; preds = %for.inc146.for.body132_crit_edge, %sparx5_init_coreclock.exit.for.body132_crit_edge
  %idx.2342 = phi i32 [ %inc147, %for.inc146.for.body132_crit_edge ], [ 0, %sparx5_init_coreclock.exit.for.body132_crit_edge ]
  %node134 = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.2342, i32 1
  %306 = ptrtoint ptr %node134 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %node134, align 4
  %tobool135.not = icmp eq ptr %307, null
  br i1 %tobool135.not, label %for.body132.for.inc146_crit_edge, label %if.end137

for.body132.for.inc146_crit_edge:                 ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc146

if.end137:                                        ; preds = %for.body132
  %arrayidx133 = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.2342
  %308 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx133, align 4
  %call.i275 = call ptr @sparx5_create_netdev(ptr noundef %call.i, i32 noundef %309) #8
  %cmp.i.i276 = icmp ugt ptr %call.i275, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i276, label %do.end.i278, label %if.end.i280

do.end.i278:                                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %310 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev9, align 4
  %312 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx133, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %311, ptr noundef nonnull @.str.53, i32 noundef %313) #11
  br label %sparx5_create_port.exit

if.end.i280:                                      ; preds = %if.end137
  %add.ptr.i.i = getelementptr i8, ptr %call.i275, i32 2304
  %314 = ptrtoint ptr %node134 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %node134, align 4
  %of_node.i = getelementptr i8, ptr %call.i275, i32 2312
  %316 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %315, ptr %of_node.i, align 8
  %serdes.i = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.2342, i32 3
  %317 = ptrtoint ptr %serdes.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %serdes.i, align 4
  %serdes5.i = getelementptr i8, ptr %call.i275, i32 2316
  %319 = ptrtoint ptr %serdes5.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %318, ptr %serdes5.i, align 4
  %pvid.i = getelementptr i8, ptr %call.i275, i32 2398
  %320 = ptrtoint ptr %pvid.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 0, ptr %pvid.i, align 2
  %signd_internal.i = getelementptr i8, ptr %call.i275, i32 2402
  %321 = ptrtoint ptr %signd_internal.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 1, ptr %signd_internal.i, align 2
  %signd_active_high.i = getelementptr i8, ptr %call.i275, i32 2403
  %322 = ptrtoint ptr %signd_active_high.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 1, ptr %signd_active_high.i, align 1
  %signd_enable.i = getelementptr i8, ptr %call.i275, i32 2404
  %323 = ptrtoint ptr %signd_enable.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 1, ptr %signd_enable.i, align 4
  %max_vlan_tags.i = getelementptr i8, ptr %call.i275, i32 2408
  %324 = ptrtoint ptr %max_vlan_tags.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 0, ptr %max_vlan_tags.i, align 8
  %vlan_type.i = getelementptr i8, ptr %call.i275, i32 2412
  %325 = ptrtoint ptr %vlan_type.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %vlan_type.i, align 4
  %custom_etype.i = getelementptr i8, ptr %call.i275, i32 2416
  %326 = ptrtoint ptr %custom_etype.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 34944, ptr %custom_etype.i, align 8
  %phylink_pcs.i = getelementptr i8, ptr %call.i275, i32 2388
  %poll.i = getelementptr i8, ptr %call.i275, i32 2392
  %327 = ptrtoint ptr %poll.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 1, ptr %poll.i, align 4
  %328 = ptrtoint ptr %phylink_pcs.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr @sparx5_phylink_pcs_ops, ptr %phylink_pcs.i, align 4
  %329 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx133, align 4
  %arrayidx.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 7, i32 %330
  %331 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %add.ptr.i.i, ptr %arrayidx.i, align 4
  %conf.i = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.2342, i32 2
  %call8.i = call i32 @sparx5_port_init(ptr noundef %call.i, ptr noundef %add.ptr.i.i, ptr noundef %conf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i279 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i279, label %if.end14.i, label %sparx5_create_port.exit.thread318

sparx5_create_port.exit.thread318:                ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #10
  %332 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.56) #11
  br label %cleanup_ports

if.end14.i:                                       ; preds = %if.end.i280
  %conf15.i = getelementptr i8, ptr %call.i275, i32 2320
  %334 = call ptr @memcpy(ptr %conf15.i, ptr %conf.i, i32 40)
  %portno17.i = getelementptr i8, ptr %call.i275, i32 2396
  %335 = ptrtoint ptr %portno17.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %portno17.i, align 4
  %conv.i = zext i16 %336 to i32
  call void @sparx5_vlan_port_setup(ptr noundef %call.i, i32 noundef %conv.i) #8
  %337 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %add.ptr.i.i, align 8
  %dev19.i = getelementptr inbounds %struct.net_device, ptr %338, i32 0, i32 133
  %phylink_config.i = getelementptr i8, ptr %call.i275, i32 2360
  %339 = ptrtoint ptr %phylink_config.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %dev19.i, ptr %phylink_config.i, align 8
  %type.i = getelementptr i8, ptr %call.i275, i32 2364
  %340 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 0, ptr %type.i, align 4
  %pcs_poll.i = getelementptr i8, ptr %call.i275, i32 2369
  %341 = ptrtoint ptr %pcs_poll.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 1, ptr %pcs_poll.i, align 1
  %mac_capabilities.i = getelementptr i8, ptr %call.i275, i32 2380
  %342 = ptrtoint ptr %mac_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 6079, ptr %mac_capabilities.i, align 4
  %supported_interfaces.i = getelementptr i8, ptr %call.i275, i32 2376
  %343 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %supported_interfaces.i, align 4
  %or.i146.i = or i32 %344, 6553616
  store i32 %or.i146.i, ptr %supported_interfaces.i, align 4
  %bandwidth.i = getelementptr i8, ptr %call.i275, i32 2324
  %345 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %bandwidth.i, align 4
  %347 = zext i32 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %347, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %346, label %if.end14.i.if.end72.i_crit_edge [
    i32 5000, label %if.end14.i.if.then45.i_crit_edge
    i32 10000, label %if.end14.i.if.then45.i_crit_edge370
    i32 25000, label %if.end14.i.if.then45.i_crit_edge371
  ]

if.end14.i.if.then45.i_crit_edge371:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i

if.end14.i.if.then45.i_crit_edge370:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i

if.end14.i.if.then45.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45.i

if.end14.i.if.end72.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then45.i:                                      ; preds = %if.end14.i.if.then45.i_crit_edge, %if.end14.i.if.then45.i_crit_edge370, %if.end14.i.if.then45.i_crit_edge371
  %or.i147.i = or i32 %344, 14942224
  %348 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %or.i147.i, ptr %supported_interfaces.i, align 4
  %349 = zext i32 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %349, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %346, label %if.then45.i.if.end63.i_crit_edge [
    i32 10000, label %if.then45.i.if.then59.i_crit_edge
    i32 25000, label %if.then45.i.if.then59.i_crit_edge372
  ]

if.then45.i.if.then59.i_crit_edge372:             ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i

if.then45.i.if.then59.i_crit_edge:                ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i

if.then45.i.if.end63.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.then45.i.if.then59.i_crit_edge, %if.then45.i.if.then59.i_crit_edge372
  %350 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %supported_interfaces.i, align 4
  %or.i148.i = or i32 %351, 67108864
  store i32 %or.i148.i, ptr %supported_interfaces.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.then45.i.if.end63.i_crit_edge
  %352 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %.pr = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %.pr)
  %cmp66.i = icmp eq i32 %.pr, 25000
  br i1 %cmp66.i, label %if.then68.i, label %if.end63.i.if.end72.i_crit_edge

if.end63.i.if.end72.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then68.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %353 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %supported_interfaces.i, align 4
  %or.i149.i = or i32 %354, 134217728
  store i32 %or.i149.i, ptr %supported_interfaces.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then68.i, %if.end63.i.if.end72.i_crit_edge, %if.end14.i.if.end72.i_crit_edge
  %355 = ptrtoint ptr %node134 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %node134, align 4
  %tobool75.not.i = icmp eq ptr %356, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %356, i32 0, i32 3
  %spec.select.i = select i1 %tobool75.not.i, ptr null, ptr %fwnode.i
  %phy_mode.i = getelementptr %struct.initial_port_config, ptr %call8.i.i, i32 %idx.2342, i32 2, i32 11
  %357 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %phy_mode.i, align 4
  %call77.i = call ptr @phylink_create(ptr noundef %phylink_config.i, ptr noundef %spec.select.i, i32 noundef %358, ptr noundef nonnull @sparx5_phylink_mac_ops) #8
  %cmp.i150.i = icmp ugt ptr %call77.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150.i, label %if.end72.i.sparx5_create_port.exit_crit_edge, label %sparx5_create_port.exit.thread

if.end72.i.sparx5_create_port.exit_crit_edge:     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_create_port.exit

sparx5_create_port.exit.thread:                   ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  %phylink82.i = getelementptr i8, ptr %call.i275, i32 2384
  %359 = ptrtoint ptr %phylink82.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call77.i, ptr %phylink82.i, align 8
  call void @phylink_set_pcs(ptr noundef %call77.i, ptr noundef %phylink_pcs.i) #8
  br label %for.inc146

sparx5_create_port.exit:                          ; preds = %if.end72.i.sparx5_create_port.exit_crit_edge, %do.end.i278
  %retval.0.i281.in = phi ptr [ %call.i275, %do.end.i278 ], [ %call77.i, %if.end72.i.sparx5_create_port.exit_crit_edge ]
  %tobool139.not = icmp eq ptr %retval.0.i281.in, null
  br i1 %tobool139.not, label %sparx5_create_port.exit.for.inc146_crit_edge, label %do.end143.loopexit

sparx5_create_port.exit.for.inc146_crit_edge:     ; preds = %sparx5_create_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc146

do.end143.loopexit:                               ; preds = %sparx5_create_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.i281.le = ptrtoint ptr %retval.0.i281.in to i32
  br label %cleanup_ports

for.inc146:                                       ; preds = %sparx5_create_port.exit.for.inc146_crit_edge, %sparx5_create_port.exit.thread, %for.body132.for.inc146_crit_edge
  %inc147 = add nuw nsw i32 %idx.2342, 1
  %360 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %port_count, align 8
  %cmp131 = icmp slt i32 %inc147, %361
  br i1 %cmp131, label %for.inc146.for.body132_crit_edge, label %for.inc146.for.end148_crit_edge

for.inc146.for.end148_crit_edge:                  ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end148

for.inc146.for.body132_crit_edge:                 ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body132

for.end148:                                       ; preds = %for.inc146.for.end148_crit_edge, %sparx5_init_coreclock.exit.for.end148_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast.i) #8
  %362 = call ptr @memset(ptr %broadcast.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %queue_name.i) #8
  %arrayidx.i.i249.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 6
  %arrayidx.i.i257.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 7
  %arrayidx.i.i266.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 179
  %363 = call ptr @memset(ptr %queue_name.i, i32 255, i32 32)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %364 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx.i.i102.i, align 4
  %add.ptr82.i.i.i283 = getelementptr i8, ptr %365, i32 894524
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i283, i32 0) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %366 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx.i.i249.i, align 4
  %add.ptr.i.i250.i = getelementptr i8, ptr %367, i32 166912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i250.i, i32 0) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %368 = ptrtoint ptr %arrayidx.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx.i.i257.i, align 4
  %add.ptr82.i.i259.i = getelementptr i8, ptr %369, i32 566696
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i259.i, i32 0) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %370 = ptrtoint ptr %arrayidx.i.i266.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx.i.i266.i, align 4
  %add.ptr.i.i267.i = getelementptr i8, ptr %371, i32 387264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i267.i, i32 0) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %372 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %arrayidx.i.i102.i, align 4
  %add.ptr84.i.i.1.i = getelementptr i8, ptr %373, i32 894528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.1.i, i32 16777216) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %374 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %arrayidx.i.i249.i, align 4
  %add.ptr84.i.i252.1.i = getelementptr i8, ptr %375, i32 166916
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i252.1.i, i32 16777216) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %376 = ptrtoint ptr %arrayidx.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %arrayidx.i.i257.i, align 4
  %add.ptr84.i.i261.1.i = getelementptr i8, ptr %377, i32 566700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i261.1.i, i32 16777216) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %378 = ptrtoint ptr %arrayidx.i.i266.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx.i.i266.i, align 4
  %add.ptr84.i.i269.1.i = getelementptr i8, ptr %379, i32 387268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i269.1.i, i32 16777216) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %380 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %arrayidx.i.i102.i, align 4
  %add.ptr84.i.i.2.i = getelementptr i8, ptr %381, i32 894532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i.2.i, i32 33554432) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %382 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %arrayidx.i.i249.i, align 4
  %add.ptr84.i.i252.2.i = getelementptr i8, ptr %383, i32 166920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i252.2.i, i32 33554432) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %384 = ptrtoint ptr %arrayidx.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %arrayidx.i.i257.i, align 4
  %add.ptr84.i.i261.2.i = getelementptr i8, ptr %385, i32 566704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i261.2.i, i32 33554432) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %386 = ptrtoint ptr %arrayidx.i.i266.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx.i.i266.i, align 4
  %add.ptr84.i.i269.2.i = getelementptr i8, ptr %387, i32 387272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i269.2.i, i32 33554432) #8, !srcloc !142
  %arrayidx.i.i274.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 175
  %388 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i.i276.i = getelementptr i8, ptr %389, i32 260
  %390 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i276.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %391 = or i32 %390, 2048
  %392 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i12.i.i = getelementptr i8, ptr %393, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.i, i32 %391) #8, !srcloc !142
  %394 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i.i276.1.i = getelementptr i8, ptr %395, i32 264
  %396 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i276.1.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %397 = or i32 %396, 2048
  %398 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i12.i.1.i = getelementptr i8, ptr %399, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.1.i, i32 %397) #8, !srcloc !142
  %400 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i.i276.2.i = getelementptr i8, ptr %401, i32 268
  %402 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i276.2.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %403 = or i32 %402, 2048
  %404 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i12.i.2.i = getelementptr i8, ptr %405, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.2.i, i32 %403) #8, !srcloc !142
  %406 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i.i276.3.i = getelementptr i8, ptr %407, i32 272
  %408 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i276.3.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %409 = or i32 %408, 2048
  %410 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i12.i.3.i = getelementptr i8, ptr %411, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.3.i, i32 %409) #8, !srcloc !142
  %412 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i.i276.4.i = getelementptr i8, ptr %413, i32 276
  %414 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i276.4.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %415 = or i32 %414, 2048
  %416 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx.i.i274.i, align 4
  %add.ptr84.i12.i.4.i = getelementptr i8, ptr %417, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.4.i, i32 %415) #8, !srcloc !142
  call void @sparx5_update_fwd(ptr noundef %call.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %418 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %arrayidx.i.i102.i, align 4
  %add.ptr82.i.i280.i = getelementptr i8, ptr %419, i32 787596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i280.i, i32 16777216) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %420 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx.i.i102.i, align 4
  %add.ptr82.i.i286.i = getelementptr i8, ptr %421, i32 787580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i286.i, i32 16777216) #8, !srcloc !142
  %422 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx.i.i249.i, align 4
  %add.ptr82.i.i292.i = getelementptr i8, ptr %423, i32 164356
  %424 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i292.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %425 = or i32 %424, 16777216
  %426 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx.i.i249.i, align 4
  %add.ptr82.i10.i.i284 = getelementptr i8, ptr %427, i32 164356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i.i284, i32 %425) #8, !srcloc !142
  %428 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx.i.i249.i, align 4
  %add.ptr82.i.i292.1.i = getelementptr i8, ptr %429, i32 164868
  %430 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i292.1.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  call void @arm_heavy_mb() #8
  %431 = or i32 %430, 16777216
  %432 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %arrayidx.i.i249.i, align 4
  %add.ptr82.i10.i.1.i = getelementptr i8, ptr %433, i32 164868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i.1.i, i32 %431) #8, !srcloc !142
  call void @sparx5_mact_init(ptr noundef %call.i) #8
  call void @sparx5_vlan_init(ptr noundef %call.i) #8
  %call.i285 = call i32 @sparx5_mact_learn(ptr noundef %call.i, i32 noundef 72, ptr noundef nonnull %broadcast.i, i16 noundef zeroext 0) #8
  %arrayidx.i.i.i.i286 = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 176
  br label %spx5_wr.exit7.3.i.i

spx5_wr.exit7.3.i.i:                              ; preds = %spx5_wr.exit7.3.i.i.spx5_wr.exit7.3.i.i_crit_edge, %for.end148
  %res.023.i.i = phi i32 [ 0, %for.end148 ], [ %inc15.i.i, %spx5_wr.exit7.3.i.i.spx5_wr.exit7.3.i.i_crit_edge ]
  %mul.i.i = shl i32 %res.023.i.i, 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %434 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.i.i = or i32 %mul.i.i, 10080
  %add.ptr81.i.i.i.i = getelementptr i8, ptr %435, i32 %mul.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %436 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.1.i.i = or i32 %mul.i.i, 10096
  %add.ptr81.i.i.1.i.i = getelementptr i8, ptr %437, i32 %mul.i.i.1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.1.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %438 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.2.i.i = or i32 %mul.i.i, 10112
  %add.ptr81.i.i.2.i.i = getelementptr i8, ptr %439, i32 %mul.i.i.2.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.2.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %440 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.3.i.i = or i32 %mul.i.i, 10128
  %add.ptr81.i.i.3.i.i = getelementptr i8, ptr %441, i32 %mul.i.i.3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.3.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %442 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.4.i.i = or i32 %mul.i.i, 10144
  %add.ptr81.i.i.4.i.i = getelementptr i8, ptr %443, i32 %mul.i.i.4.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.4.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %444 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.5.i.i = or i32 %mul.i.i, 10160
  %add.ptr81.i.i.5.i.i = getelementptr i8, ptr %445, i32 %mul.i.i.5.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.5.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %446 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.6.i.i = or i32 %mul.i.i, 10176
  %add.ptr81.i.i.6.i.i = getelementptr i8, ptr %447, i32 %mul.i.i.6.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.6.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %448 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i.7.i.i = or i32 %mul.i.i, 10192
  %add.ptr81.i.i.7.i.i = getelementptr i8, ptr %449, i32 %mul.i.i.7.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.7.i.i, i32 -15794176) #8, !srcloc !142
  %add8.i.i = or i32 %mul.i.i, 10208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %450 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %add.ptr81.i.i6.i.i = getelementptr i8, ptr %451, i32 %add8.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i6.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %452 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i5.1.i.i = or i32 %mul.i.i, 10224
  %add.ptr81.i.i6.1.i.i = getelementptr i8, ptr %453, i32 %mul.i.i5.1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i6.1.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %454 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i5.2.i.i = or i32 %mul.i.i, 10240
  %add.ptr81.i.i6.2.i.i = getelementptr i8, ptr %455, i32 %mul.i.i5.2.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i6.2.i.i, i32 -15794176) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %456 = ptrtoint ptr %arrayidx.i.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx.i.i.i.i286, align 4
  %mul.i.i5.3.i.i = or i32 %mul.i.i, 10256
  %add.ptr81.i.i6.3.i.i = getelementptr i8, ptr %457, i32 %mul.i.i5.3.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i6.3.i.i, i32 -15794176) #8, !srcloc !142
  %inc15.i.i = add nuw nsw i32 %res.023.i.i, 1
  %exitcond.not.i.i287 = icmp eq i32 %inc15.i.i, 2
  br i1 %exitcond.not.i.i287, label %sparx5_qlim_set.exit.i, label %spx5_wr.exit7.3.i.i.spx5_wr.exit7.3.i.i_crit_edge

spx5_wr.exit7.3.i.i.spx5_wr.exit7.3.i.i_crit_edge: ; preds = %spx5_wr.exit7.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spx5_wr.exit7.3.i.i

sparx5_qlim_set.exit.i:                           ; preds = %spx5_wr.exit7.3.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %arrayidx.i.i9.i.i = getelementptr %struct.sparx5, ptr %call.i, i32 0, i32 4, i32 331
  %458 = ptrtoint ptr %arrayidx.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %arrayidx.i.i9.i.i, align 4
  %add.ptr82.i.i.i.i288 = getelementptr i8, ptr %459, i32 7948
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i.i288, i32 -330956800) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %460 = ptrtoint ptr %arrayidx.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %arrayidx.i.i9.i.i, align 4
  %add.ptr82.i.i13.i.i = getelementptr i8, ptr %461, i32 7944
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i13.i.i, i32 -917569536) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %462 = ptrtoint ptr %arrayidx.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx.i.i9.i.i, align 4
  %add.ptr82.i.i17.i.i = getelementptr i8, ptr %463, i32 7940
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i17.i.i, i32 945029120) #8, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  call void @arm_heavy_mb() #8
  %464 = ptrtoint ptr %arrayidx.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx.i.i9.i.i, align 4
  %add.ptr.i.i20.i.i = getelementptr i8, ptr %465, i32 7936
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20.i.i, i32 -1487405056) #8, !srcloc !142
  %call74.i = call i32 @sparx5_config_auto_calendar(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool.not.i289 = icmp eq i32 %call74.i, 0
  br i1 %tobool.not.i289, label %if.end.i290, label %sparx5_qlim_set.exit.i.sparx5_start.exit.thread_crit_edge

sparx5_qlim_set.exit.i.sparx5_start.exit.thread_crit_edge: ; preds = %sparx5_qlim_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_start.exit.thread

if.end.i290:                                      ; preds = %sparx5_qlim_set.exit.i
  %call75.i = call i32 @sparx5_config_dsm_calendar(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end.i290.sparx5_start.exit.thread_crit_edge

if.end.i290.sparx5_start.exit.thread_crit_edge:   ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_start.exit.thread

if.end78.i:                                       ; preds = %if.end.i290
  %call79.i = call i32 @sparx_stats_init(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %do.body83.i, label %if.end78.i.sparx5_start.exit.thread_crit_edge

if.end78.i.sparx5_start.exit.thread_crit_edge:    ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_start.exit.thread

do.body83.i:                                      ; preds = %if.end78.i
  %mact_lock.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 26
  call void @__mutex_init(ptr noundef %mact_lock.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @sparx5_start.__key) #8
  %mact_entries.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 25
  %466 = ptrtoint ptr %mact_entries.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store volatile ptr %mact_entries.i, ptr %mact_entries.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 25, i32 1
  %467 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %mact_entries.i, ptr %prev.i.i, align 4
  %468 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %dev9, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %469, i32 0, i32 3
  %470 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i292 = icmp eq ptr %471, null
  br i1 %tobool.not.i.i292, label %if.end.i.i293, label %do.body83.i.dev_name.exit.i_crit_edge

do.body83.i.dev_name.exit.i_crit_edge:            ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i293:                                    ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #10
  %472 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %469, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i293, %do.body83.i.dev_name.exit.i_crit_edge
  %retval.0.i.i294 = phi ptr [ %473, %if.end.i.i293 ], [ %471, %do.body83.i.dev_name.exit.i_crit_edge ]
  %call88.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %queue_name.i, i32 noundef 32, ptr noundef nonnull @.str.59, ptr noundef %retval.0.i.i294) #8
  %call90.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.60, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %queue_name.i) #8
  %mact_queue.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 28
  %474 = ptrtoint ptr %mact_queue.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr %call90.i, ptr %mact_queue.i, align 8
  %mact_work.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 27
  call void @__init_work(ptr noundef %mact_work.i, i32 noundef 0) #8
  %475 = ptrtoint ptr %mact_work.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 -64, ptr %mact_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 27, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @sparx5_start.__key.61, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry99.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 27, i32 0, i32 1
  %476 = ptrtoint ptr %entry99.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store volatile ptr %entry99.i, ptr %entry99.i, align 4
  %prev.i297.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 27, i32 0, i32 1, i32 1
  %477 = ptrtoint ptr %prev.i297.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %entry99.i, ptr %prev.i297.i, align 4
  %func.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 27, i32 0, i32 2
  %478 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr @sparx5_mact_pull_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.sparx5, ptr %call.i, i32 0, i32 27, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.64, ptr noundef nonnull @sparx5_start.__key.63) #8
  %479 = ptrtoint ptr %mact_queue.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %mact_queue.i, align 8
  %call.i.i295 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %480, ptr noundef %mact_work.i, i32 noundef 200) #8
  %call113.i = call i32 @sparx5_register_netdevs(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %tobool114.not.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.not.i, label %if.end116.i, label %dev_name.exit.i.sparx5_start.exit.thread_crit_edge

dev_name.exit.i.sparx5_start.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_start.exit.thread

if.end116.i:                                      ; preds = %dev_name.exit.i
  call fastcc void @sparx5_board_init(ptr noundef %call.i) #8
  %call117.i = call i32 @sparx5_register_notifier_blocks(ptr noundef %call.i) #8
  %481 = ptrtoint ptr %fdma_irq to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %fdma_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %482)
  %cmp118.i = icmp sgt i32 %482, -1
  br i1 %cmp118.i, label %do.end134.i, label %if.end116.i.land.lhs.true.i_crit_edge

if.end116.i.land.lhs.true.i_crit_edge:            ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

do.end134.i:                                      ; preds = %if.end116.i
  %483 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %484)
  %cmp136.not.i = icmp ult i32 %484, 268435456
  br i1 %cmp136.not.i, label %do.end134.i.land.lhs.true.i_crit_edge, label %if.end141.i

do.end134.i.land.lhs.true.i_crit_edge:            ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end141.i:                                      ; preds = %do.end134.i
  %485 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %dev9, align 4
  %call140.i = call i32 @devm_request_threaded_irq(ptr noundef %486, i32 noundef %482, ptr noundef null, ptr noundef nonnull @sparx5_fdma_handler, i32 noundef 8192, ptr noundef nonnull @.str.65, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool142.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool142.not.i, label %if.end145.i, label %if.end141.i.land.lhs.true.i_crit_edge

if.end141.i.land.lhs.true.i_crit_edge:            ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end145.i:                                      ; preds = %if.end141.i
  %call144.i = call i32 @sparx5_fdma_start(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i)
  %tobool146.not.i = icmp eq i32 %call144.i, 0
  br i1 %tobool146.not.i, label %sparx5_start.exit, label %if.end145.i.land.lhs.true.i_crit_edge

if.end145.i.land.lhs.true.i_crit_edge:            ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end145.i.land.lhs.true.i_crit_edge, %if.end141.i.land.lhs.true.i_crit_edge, %do.end134.i.land.lhs.true.i_crit_edge, %if.end116.i.land.lhs.true.i_crit_edge
  %err.2.ph.i = phi i32 [ %call144.i, %if.end145.i.land.lhs.true.i_crit_edge ], [ %call140.i, %if.end141.i.land.lhs.true.i_crit_edge ], [ -6, %do.end134.i.land.lhs.true.i_crit_edge ], [ -6, %if.end116.i.land.lhs.true.i_crit_edge ]
  %487 = ptrtoint ptr %fdma_irq to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 -6, ptr %fdma_irq, align 4
  %488 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %xtr_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %489)
  %cmp153.i = icmp sgt i32 %489, -1
  br i1 %cmp153.i, label %if.then154.i, label %land.lhs.true.i.sparx5_start.exit.thread329_crit_edge

land.lhs.true.i.sparx5_start.exit.thread329_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_start.exit.thread329

if.then154.i:                                     ; preds = %land.lhs.true.i
  %490 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dev9, align 4
  %call.i298.i = call i32 @devm_request_threaded_irq(ptr noundef %491, i32 noundef %489, ptr noundef nonnull @sparx5_xtr_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.66, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298.i)
  %tobool158.not.i = icmp eq i32 %call.i298.i, 0
  br i1 %tobool158.not.i, label %if.end161.i, label %if.then154.i.sparx5_start.exit.thread329_crit_edge

if.then154.i.sparx5_start.exit.thread329_crit_edge: ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_start.exit.thread329

if.end161.i:                                      ; preds = %if.then154.i
  %call160.i = call i32 @sparx5_manual_injection_mode(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %tobool162.not.i = icmp eq i32 %call160.i, 0
  br i1 %tobool162.not.i, label %sparx5_start.exit.thread325, label %if.end161.i.sparx5_start.exit.thread329_crit_edge

if.end161.i.sparx5_start.exit.thread329_crit_edge: ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_start.exit.thread329

sparx5_start.exit.thread325:                      ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_name.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i) #8
  br label %cleanup_config

sparx5_start.exit.thread:                         ; preds = %dev_name.exit.i.sparx5_start.exit.thread_crit_edge, %if.end78.i.sparx5_start.exit.thread_crit_edge, %if.end.i290.sparx5_start.exit.thread_crit_edge, %sparx5_qlim_set.exit.i.sparx5_start.exit.thread_crit_edge
  %retval.0.i296.ph = phi i32 [ %call113.i, %dev_name.exit.i.sparx5_start.exit.thread_crit_edge ], [ %call79.i, %if.end78.i.sparx5_start.exit.thread_crit_edge ], [ %call75.i, %if.end.i290.sparx5_start.exit.thread_crit_edge ], [ %call74.i, %sparx5_qlim_set.exit.i.sparx5_start.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_name.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i) #8
  br label %cleanup_ports

sparx5_start.exit.thread329:                      ; preds = %if.end161.i.sparx5_start.exit.thread329_crit_edge, %if.then154.i.sparx5_start.exit.thread329_crit_edge, %land.lhs.true.i.sparx5_start.exit.thread329_crit_edge
  %retval.0.ph.i.ph = phi i32 [ %err.2.ph.i, %land.lhs.true.i.sparx5_start.exit.thread329_crit_edge ], [ %call160.i, %if.end161.i.sparx5_start.exit.thread329_crit_edge ], [ %call.i298.i, %if.then154.i.sparx5_start.exit.thread329_crit_edge ]
  %492 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 -6, ptr %xtr_irq, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_name.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i) #8
  br label %cleanup_ports

sparx5_start.exit:                                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #10
  %493 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 -6, ptr %xtr_irq, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_name.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast.i) #8
  br label %cleanup_config

cleanup_ports:                                    ; preds = %sparx5_start.exit.thread329, %sparx5_start.exit.thread, %do.end143.loopexit, %sparx5_create_port.exit.thread318
  %.str.38.sink = phi ptr [ @.str.35, %do.end143.loopexit ], [ @.str.35, %sparx5_create_port.exit.thread318 ], [ @.str.38, %sparx5_start.exit.thread329 ], [ @.str.38, %sparx5_start.exit.thread ]
  %err.1 = phi i32 [ %retval.0.i281.le, %do.end143.loopexit ], [ %call8.i, %sparx5_create_port.exit.thread318 ], [ %retval.0.ph.i.ph, %sparx5_start.exit.thread329 ], [ %retval.0.i296.ph, %sparx5_start.exit.thread ]
  %494 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %495, ptr noundef nonnull %.str.38.sink) #11
  call void @sparx5_unregister_netdevs(ptr noundef %call.i) #8
  call void @sparx5_destroy_netdevs(ptr noundef %call.i) #8
  br label %cleanup_config

cleanup_config:                                   ; preds = %cleanup_ports, %sparx5_start.exit, %sparx5_start.exit.thread325, %do.end126, %do.end118, %sparx5_create_targets.exit.thread, %cleanup
  %err.2 = phi i32 [ %call68, %cleanup ], [ -22, %do.end118 ], [ %retval.0.i274.ph, %do.end126 ], [ %err.1, %cleanup_ports ], [ 0, %sparx5_start.exit ], [ %retval.0.i.ph, %sparx5_create_targets.exit.thread ], [ 0, %sparx5_start.exit.thread325 ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup_pnode

cleanup_pnode:                                    ; preds = %cleanup_config, %if.end7.i.i.cleanup_pnode_crit_edge, %of_get_child_count.exit.cleanup_pnode_crit_edge
  %err.3 = phi i32 [ %err.2, %cleanup_config ], [ -12, %if.end7.i.i.cleanup_pnode_crit_edge ], [ -12, %of_get_child_count.exit.cleanup_pnode_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call19) #8
  br label %cleanup157

cleanup157:                                       ; preds = %cleanup_pnode, %do.end, %if.then13, %if.end.cleanup157_crit_edge, %land.lhs.true.cleanup157_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then13 ], [ %err.3, %cleanup_pnode ], [ -19, %do.end ], [ -19, %land.lhs.true.cleanup157_crit_edge ], [ -12, %if.end.cleanup157_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_sparx5_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xtr_irq = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xtr_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %3) #8
  %4 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -6, ptr %xtr_irq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fdma_irq = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %fdma_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fdma_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %6) #8
  %7 = ptrtoint ptr %fdma_irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -6, ptr %fdma_irq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @sparx5_fdma_stop(ptr noundef %1) #8
  tail call void @sparx5_unregister_netdevs(ptr noundef %1) #8
  tail call void @sparx5_destroy_netdevs(ptr noundef %1) #8
  tail call void @sparx5_unregister_notifier_blocks(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sparx5_create_netdev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_port_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_vlan_port_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_update_fwd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_mact_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_vlan_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mact_learn(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_config_auto_calendar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_config_dsm_calendar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx_stats_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_mact_pull_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_register_netdevs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sparx5_board_init(ptr nocapture noundef readonly %sparx5) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_sgpio_remapping = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 29
  %0 = ptrtoint ptr %sd_sgpio_remapping to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sd_sgpio_remapping, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 4, i32 118
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %5 = or i32 %4, 16777216
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i10.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i, i32 %5) #8, !srcloc !142
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %idx.027 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %idx.027
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %sd_sgpio = getelementptr inbounds %struct.sparx5_port, ptr %9, i32 0, i32 4, i32 12
  %10 = ptrtoint ptr %sd_sgpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_sgpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp5.not = icmp eq i32 %11, -1
  br i1 %cmp5.not, label %if.then2.for.inc_crit_edge, label %spx5_wr.exit

if.then2.for.inc_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

spx5_wr.exit:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i26 = getelementptr i8, ptr %14, i32 24
  %mul83.i.i = shl i32 %idx.027, 2
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr82.i.i26, i32 %mul83.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i, i32 %12) #8, !srcloc !142
  br label %for.inc

for.inc:                                          ; preds = %spx5_wr.exit, %if.then2.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.027, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_register_notifier_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_fdma_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_fdma_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_xtr_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_manual_injection_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_unregister_netdevs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_destroy_netdevs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_fdma_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_unregister_notifier_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114, !116, !118, !119, !120, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_sparx5_switch__618_897_mchp_sparx5_driver_init6, !1, !"__initcall__kmod_sparx5_switch__618_897_mchp_sparx5_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 897, i32 1}
!2 = !{ptr @__exitcall_mchp_sparx5_driver_exit, !1, !"__exitcall_mchp_sparx5_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description619, !4, !"__UNIQUE_ID_description619", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 899, i32 1}
!5 = !{ptr @__UNIQUE_ID_author620, !6, !"__UNIQUE_ID_author620", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 900, i32 1}
!7 = !{ptr @__UNIQUE_ID_file621, !8, !"__UNIQUE_ID_file621", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 901, i32 1}
!9 = !{ptr @__UNIQUE_ID_license622, !8, !"__UNIQUE_ID_license622", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 892, i32 11}
!12 = !{ptr @mchp_sparx5_driver, !13, !"mchp_sparx5_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 888, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 727, i32 61}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 730, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 736, i32 35}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 738, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mchp_sparx5_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mchp_sparx5_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 755, i32 38}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 757, i32 4}
!32 = !{ptr @mchp_sparx5_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mchp_sparx5_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 766, i32 4}
!36 = !{ptr @mchp_sparx5_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mchp_sparx5_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 770, i32 38}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 773, i32 4}
!42 = !{ptr @mchp_sparx5_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mchp_sparx5_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 777, i32 38}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 785, i32 10}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 806, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mchp_sparx5_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mchp_sparx5_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 811, i32 59}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 812, i32 58}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 823, i32 3}
!59 = !{ptr @mchp_sparx5_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mchp_sparx5_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 830, i32 3}
!63 = !{ptr @mchp_sparx5_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mchp_sparx5_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 841, i32 4}
!67 = !{ptr @mchp_sparx5_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mchp_sparx5_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 848, i32 3}
!71 = !{ptr @mchp_sparx5_probe._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mchp_sparx5_probe._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 232, i32 4}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @sparx5_create_targets._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @sparx5_create_targets._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 239, i32 4}
!80 = !{ptr @sparx5_create_targets._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sparx5_create_targets._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @sparx5_main_iomap, !83, !"sparx5_main_iomap", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 53, i32 45}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.h", i32 346, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 374, i32 3}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sparx5_init_ram._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @sparx5_init_ram._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 457, i32 3}
!93 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sparx5_init_coreclock._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @sparx5_init_coreclock._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 476, i32 3}
!98 = !{ptr @sparx5_init_coreclock._entry.50, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @sparx5_init_coreclock._entry_ptr.52, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 263, i32 3}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @sparx5_create_port._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @sparx5_create_port._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 283, i32 3}
!107 = !{ptr @sparx5_create_port._entry.55, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @sparx5_create_port._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @sparx5_start.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 653, i32 2}
!111 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 655, i32 43}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 657, i32 23}
!116 = !{ptr @sparx5_start.__key.61, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 658, i32 2}
!118 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sparx5_start.__key.63, !117, !"__key", i1 false, i1 false}
!120 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 678, i32 8}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 689, i32 12}
!125 = !{ptr @mchp_sparx5_match, !126, !"mchp_sparx5_match", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_main.c", i32 882, i32 34}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{!"auto-init"}
!138 = !{i64 6948338}
!139 = !{i64 2158420906}
!140 = !{i64 2158424306}
!141 = !{i64 2158424610}
!142 = !{i64 6947920}
!143 = !{i64 2158440858}
!144 = !{i64 2158441529}
!145 = !{i64 2158422317}
!146 = !{i8 0, i8 2}
