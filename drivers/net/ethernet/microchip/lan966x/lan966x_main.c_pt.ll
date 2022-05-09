; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lan966x_main_io_resource = type { i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.lan966x = type { ptr, i8, ptr, [66 x ptr], i32, [6 x i8], ptr, i16, i16, %struct.list_head, %struct.spinlock, [4096 x i16], [128 x i32], ptr, i32, %struct.mutex, ptr, %struct.delayed_work, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lan966x_port = type { ptr, ptr, i8, i16, i16, i8, i8, %struct.phylink_config, %struct.phylink_pcs, %struct.lan966x_port_config, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.lan966x_port_config = type { i32, ptr, i32, i32, i32, i8, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@lan966x_port_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @lan966x_port_open, ptr @lan966x_port_stop, ptr @lan966x_port_xmit, ptr null, ptr null, ptr null, ptr @lan966x_port_set_rx_mode, ptr @lan966x_port_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan966x_port_change_mtu, ptr null, ptr null, ptr @lan966x_stats_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan966x_port_get_parent_id, ptr @lan966x_port_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@lan966x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lan966x_probe, ptr @lan966x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lan966x_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_lan966x_switch__708_997_lan966x_switch_driver_init6 = internal global ptr @lan966x_switch_driver_init, section ".initcall6.init", align 4
@__exitcall_lan966x_switch_driver_exit = internal global ptr @lan966x_switch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description709 = internal constant [59 x i8] c"lan966x_switch.description=Microchip LAN966X switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author710 = internal constant [68 x i8] c"lan966x_switch.author=Horatiu Vultur <horatiu.vultur@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file711 = internal constant [74 x i8] c"lan966x_switch.file=drivers/net/ethernet/microchip/lan966x/lan966x-switch\00", section ".modinfo", align 1
@__UNIQUE_ID_license712 = internal constant [36 x i8] c"lan966x_switch.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p%d\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lan966x-switch\00", [17 x i8] zeroinitializer }, align 32
@lan966x_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,lan966x-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lan966x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016MAC addr was not set, use random MAC\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lan966x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.c\00", [42 x i8] zeroinitializer }, align 32
@lan966x_probe._entry_ptr = internal global ptr @lan966x_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no ethernet-ports child found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to create targets\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Reset failed\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xtr\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"frame extraction\00", [47 x i8] zeroinitializer }, align 32
@lan966x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Unable to use xtr irq\00", [40 x i8] zeroinitializer }, align 32
@lan966x_probe._entry_ptr.15 = internal global ptr @lan966x_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ana\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ana irq\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to use ana irq\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lan966x_create_targets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 79, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lan966x_create_targets\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lan966x_create_targets._entry_ptr = internal global ptr @lan966x_create_targets._entry, section ".printk_index", align 4
@lan966x_create_targets._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.6, i32 88, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to get registers: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@lan966x_create_targets._entry_ptr.26 = internal global ptr @lan966x_create_targets._entry.24, section ".printk_index", align 4
@lan966x_main_iomap = internal constant { [18 x %struct.lan966x_main_io_resource], [40 x i8] } { [18 x %struct.lan966x_main_io_resource] [%struct.lan966x_main_io_resource { i32 6, i32 786432, i32 0 }, %struct.lan966x_main_io_resource { i32 36, i32 0, i32 1 }, %struct.lan966x_main_io_resource { i32 27, i32 16384, i32 1 }, %struct.lan966x_main_io_resource { i32 42, i32 32768, i32 1 }, %struct.lan966x_main_io_resource { i32 5, i32 65536, i32 1 }, %struct.lan966x_main_io_resource { i32 47, i32 81920, i32 1 }, %struct.lan966x_main_io_resource { i32 52, i32 163840, i32 1 }, %struct.lan966x_main_io_resource { i32 13, i32 212992, i32 1 }, %struct.lan966x_main_io_resource { i32 14, i32 229376, i32 1 }, %struct.lan966x_main_io_resource { i32 15, i32 245760, i32 1 }, %struct.lan966x_main_io_resource { i32 16, i32 262144, i32 1 }, %struct.lan966x_main_io_resource { i32 17, i32 278528, i32 1 }, %struct.lan966x_main_io_resource { i32 18, i32 294912, i32 1 }, %struct.lan966x_main_io_resource { i32 19, i32 311296, i32 1 }, %struct.lan966x_main_io_resource { i32 20, i32 327680, i32 1 }, %struct.lan966x_main_io_resource { i32 46, i32 1048576, i32 1 }, %struct.lan966x_main_io_resource { i32 2, i32 1179648, i32 1 }, %struct.lan966x_main_io_resource { i32 3, i32 1310720, i32 1 }], [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not obtain switch reset\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not obtain phy reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to allocate sk_buff\0A\00", [36 x i8] zeroinitializer }, align 32
@lan966x_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@lan966x_phylink_pcs_ops = external dso_local constant %struct.phylink_pcs_ops, align 4
@lan966x_phylink_mac_ops = external dso_local constant %struct.phylink_mac_ops, align 4
@lan966x_probe_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 635, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register_netdev failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lan966x_probe_port\00", [45 x i8] zeroinitializer }, align 32
@lan966x_probe_port._entry_ptr = internal global ptr @lan966x_probe_port._entry, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"lan966x_port_netdev_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 353, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"lan966x_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 965, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 156, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 238, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 130, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 969, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"lan966x_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 30, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 845, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 850, i32 50 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 853, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 858, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 862, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 879, i32 51 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 885, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 887, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 891, i32 51 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 895, i32 7 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 897, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 910, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 79, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 87, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"lan966x_main_iomap\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 42, i32 46 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 802, i32 61 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 805, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 807, i32 58 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 810, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 470, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 635, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author710, ptr @__UNIQUE_ID_description709, ptr @__UNIQUE_ID_file711, ptr @__UNIQUE_ID_license712, ptr @__exitcall_lan966x_switch_driver_exit, ptr @__initcall__kmod_lan966x_switch__708_997_lan966x_switch_driver_init6, ptr @lan966x_create_targets._entry, ptr @lan966x_create_targets._entry.24, ptr @lan966x_create_targets._entry_ptr, ptr @lan966x_create_targets._entry_ptr.26, ptr @lan966x_probe._entry, ptr @lan966x_probe._entry.13, ptr @lan966x_probe._entry_ptr, ptr @lan966x_probe._entry_ptr.15, ptr @lan966x_probe_port._entry, ptr @lan966x_probe_port._entry_ptr, ptr @lan966x_switch_driver_exit, ptr @lan966x_port_netdev_ops, ptr @lan966x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lan966x_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @lan966x_main_iomap, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_port_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_create_targets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_create_targets._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_main_iomap to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_probe_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @lan966x_netdevice_check(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @lan966x_port_netdev_ops
  ret i1 %cmp
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_switch_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @lan966x_driver) #10
  tail call void @lan966x_unregister_notifier_blocks() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_unregister_notifier_blocks() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_switch_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lan966x_register_notifier_blocks() #10
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lan966x_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %err

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lan966x_unregister_notifier_blocks() #10
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_port_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_port, align 4
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lan966x1, align 4
  %conv48 = zext i8 %1 to i32
  %and49 = and i32 %conv48, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp20.not.i.i = icmp ult i8 %1, 9
  br i1 %cmp20.not.i.i, label %entry.if.end42.i.i_crit_edge, label %do.end36.i.i, !prof !92

entry.if.end42.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i.i

do.end36.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #10
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.end36.i.i, %entry.if.end42.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 28672
  %mul.i.i = shl nuw nsw i32 %conv48, 7
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i, i32 112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  br i1 %cmp20.not.i.i, label %if.end42.i.i.lan_rmw.exit_crit_edge, label %do.end36.i2.i, !prof !92

if.end42.i.i.lan_rmw.exit_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_rmw.exit

do.end36.i2.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #10
  br label %lan_rmw.exit

lan_rmw.exit:                                     ; preds = %do.end36.i2.i, %if.end42.i.i.lan_rmw.exit_crit_edge
  %7 = and i32 %6, -1593835521
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or50 = or i32 %and49, %8
  %or.i = or i32 %or50, 80
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %11, i32 28672
  %add.ptr81.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %mul.i.i
  %add.ptr82.i10.i = getelementptr i8, ptr %add.ptr81.i9.i, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i, i32 %9) #10, !srcloc !96
  %phylink = getelementptr i8, ptr %dev, i32 2376
  %12 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phylink, align 4
  %fwnode = getelementptr i8, ptr %dev, i32 2384
  %14 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fwnode, align 4
  %call53 = tail call i32 @phylink_fwnode_phy_connect(ptr noundef %13, ptr noundef %15, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %lan_rmw.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str) #13
  br label %cleanup

if.end56:                                         ; preds = %lan_rmw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phylink, align 4
  tail call void @phylink_start(ptr noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then55
  ret i32 %call53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_port_stop(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @lan966x_port_config_down(ptr noundef %add.ptr.i) #10
  %phylink = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  tail call void @phylink_stop(ptr noundef %1) #10
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_port_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #3 align 64 {
entry:
  %vid.addr.i = alloca i64, align 8
  %bypass.addr.i32 = alloca i64, align 8
  %bypass.addr.i30 = alloca i64, align 8
  %bypass.addr.i28 = alloca i64, align 8
  %bypass.addr.i = alloca i64, align 8
  %ifh = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ifh) #10
  %0 = call ptr @memset(ptr %ifh, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bypass.addr.i)
  %1 = ptrtoint ptr %bypass.addr.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1, ptr %bypass.addr.i, align 8
  %call.i = call i32 @packing(ptr noundef nonnull %ifh, ptr noundef nonnull %bypass.addr.i, i32 noundef 191, i32 noundef 191, i32 noundef 28, i32 noundef 0, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bypass.addr.i)
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %sh_prom = zext i8 %3 to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bypass.addr.i28)
  %4 = ptrtoint ptr %bypass.addr.i28 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shl, ptr %bypass.addr.i28, align 8
  %call.i29 = call i32 @packing(ptr noundef nonnull %ifh, ptr noundef nonnull %bypass.addr.i28, i32 noundef 70, i32 noundef 62, i32 noundef 28, i32 noundef 0, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bypass.addr.i28)
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 7)
  %conv6 = zext i32 %7 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bypass.addr.i30)
  %8 = ptrtoint ptr %bypass.addr.i30 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv6, ptr %bypass.addr.i30, align 8
  %call.i31 = call i32 @packing(ptr noundef nonnull %ifh, ptr noundef nonnull %bypass.addr.i30, i32 noundef 102, i32 noundef 100, i32 noundef 28, i32 noundef 0, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bypass.addr.i30)
  %9 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priority, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 7)
  %conv16 = zext i32 %11 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bypass.addr.i32)
  %12 = ptrtoint ptr %bypass.addr.i32 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv16, ptr %bypass.addr.i32, align 8
  %call.i33 = call i32 @packing(ptr noundef nonnull %ifh, ptr noundef nonnull %bypass.addr.i32, i32 noundef 57, i32 noundef 55, i32 noundef 28, i32 noundef 0, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bypass.addr.i32)
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %13 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan_tci, align 2
  %conv18 = zext i16 %14 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vid.addr.i)
  %15 = ptrtoint ptr %vid.addr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv18, ptr %vid.addr.i, align 8
  %call.i34 = call i32 @packing(ptr noundef nonnull %ifh, ptr noundef nonnull %vid.addr.i, i32 noundef 119, i32 noundef 103, i32 noundef 28, i32 noundef 0, i8 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vid.addr.i)
  %lan966x1.i = getelementptr i8, ptr %dev, i32 2308
  %16 = ptrtoint ptr %lan966x1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lan966x1.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %17, i32 0, i32 3, i32 42
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %19, i32 60
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %21 = and i32 %20, 335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %21)
  %22 = icmp eq i32 %21, 67108864
  br i1 %22, label %do.end52.i, label %entry.lan966x_port_ifh_xmit.exit_crit_edge

entry.lan966x_port_ifh_xmit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan966x_port_ifh_xmit.exit

do.end52.i:                                       ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i235.i = getelementptr i8, ptr %24, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i235.i, i32 9216) #10, !srcloc !96
  br label %for.body.i

for.body.i:                                       ; preds = %if.end75.i.for.body.i_crit_edge, %do.end52.i
  %i.0297.i = phi i32 [ 0, %do.end52.i ], [ %inc.i, %if.end75.i.for.body.i_crit_edge ]
  %call.i.i = call i64 @ktime_get() #10
  %add.i.i.i = add i64 %call.i.i, 100000000000
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i5.i.i = getelementptr i8, ptr %26, i32 60
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i5.i.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %28 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not6.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not6.i.i, label %for.body.i.land.lhs.true.i.i_crit_edge, label %for.body.i.if.end75.i_crit_edge

for.body.i.if.end75.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

for.body.i.land.lhs.true.i.i_crit_edge:           ; preds = %for.body.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %for.body.i.land.lhs.true.i.i_crit_edge
  %call17.i.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call17.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %do.end46.i.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 2147480) #10
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i.i.i = getelementptr i8, ptr %31, i32 60
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %33 = and i32 %32, 67108864
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i.land.lhs.true.i.i_crit_edge, label %cond.false.i.i.if.end75.i_crit_edge

cond.false.i.i.if.end75.i_crit_edge:              ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

do.end46.i.i:                                     ; preds = %land.lhs.true.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i2.i.i = getelementptr i8, ptr %35, i32 60
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i2.i.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %37 = and i32 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool53.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool53.not.i.i, label %do.end46.i.i.lan966x_port_ifh_xmit.exit_crit_edge, label %do.end46.i.i.if.end75.i_crit_edge

do.end46.i.i.if.end75.i_crit_edge:                ; preds = %do.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

do.end46.i.i.lan966x_port_ifh_xmit.exit_crit_edge: ; preds = %do.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan966x_port_ifh_xmit.exit

if.end75.i:                                       ; preds = %do.end46.i.i.if.end75.i_crit_edge, %cond.false.i.i.if.end75.i_crit_edge, %for.body.i.if.end75.i_crit_edge
  %arrayidx.i = getelementptr i32, ptr %ifh, i32 %i.0297.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %40 = call i32 @llvm.bswap.i32(i32 %39) #10
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i239.i = getelementptr i8, ptr %42, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i239.i, i32 %40) #10, !srcloc !96
  %inc.i = add nuw nsw i32 %i.0297.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %if.end75.i.for.body.i_crit_edge

if.end75.i.for.body.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end75.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp79298.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp79298.not.i, label %for.end.i.while.body.i.preheader_crit_edge, label %for.body81.lr.ph.i

for.end.i.while.body.i.preheader_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %while.cond.preheader.i.while.body.i.preheader_crit_edge, %for.end.i.while.body.i.preheader_crit_edge
  %i.2301.i.ph = phi i32 [ 0, %for.end.i.while.body.i.preheader_crit_edge ], [ %div228.i, %while.cond.preheader.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

for.body81.lr.ph.i:                               ; preds = %for.end.i
  %div228.i = lshr i32 %sub.i, 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body81.i

while.cond.preheader.i:                           ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub.i)
  %cmp91300.i = icmp ult i32 %sub.i, 60
  br i1 %cmp91300.i, label %while.cond.preheader.i.while.body.i.preheader_crit_edge, label %while.cond.preheader.i.do.end113.i_crit_edge

while.cond.preheader.i.do.end113.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end113.i

while.cond.preheader.i.while.body.i.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.preheader

for.body81.i:                                     ; preds = %if.end85.i.for.body81.i_crit_edge, %for.body81.lr.ph.i
  %i.1299.i = phi i32 [ 0, %for.body81.lr.ph.i ], [ %inc89.i, %if.end85.i.for.body81.i_crit_edge ]
  %call.i240.i = call i64 @ktime_get() #10
  %add.i.i241.i = add i64 %call.i240.i, 100000000000
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i5.i243.i = getelementptr i8, ptr %46, i32 60
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i5.i243.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %48 = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not6.i244.i = icmp eq i32 %48, 0
  br i1 %tobool.not6.i244.i, label %for.body81.i.land.lhs.true.i247.i_crit_edge, label %for.body81.i.if.end85.i_crit_edge

for.body81.i.if.end85.i_crit_edge:                ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

for.body81.i.land.lhs.true.i247.i_crit_edge:      ; preds = %for.body81.i
  br label %land.lhs.true.i247.i

land.lhs.true.i247.i:                             ; preds = %cond.false.i250.i.land.lhs.true.i247.i_crit_edge, %for.body81.i.land.lhs.true.i247.i_crit_edge
  %call17.i245.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i245.i, i64 %add.i.i241.i)
  %cmp3.i.i246.i = icmp sgt i64 %call17.i245.i, %add.i.i241.i
  br i1 %cmp3.i.i246.i, label %do.end46.i254.i, label %cond.false.i250.i

cond.false.i250.i:                                ; preds = %land.lhs.true.i247.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 2147480) #10
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i.i248.i = getelementptr i8, ptr %51, i32 60
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i248.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %53 = and i32 %52, 67108864
  %tobool.not.i249.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i249.i, label %cond.false.i250.i.land.lhs.true.i247.i_crit_edge, label %cond.false.i250.i.if.end85.i_crit_edge

cond.false.i250.i.if.end85.i_crit_edge:           ; preds = %cond.false.i250.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

cond.false.i250.i.land.lhs.true.i247.i_crit_edge: ; preds = %cond.false.i250.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i247.i

do.end46.i254.i:                                  ; preds = %land.lhs.true.i247.i
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i2.i251.i = getelementptr i8, ptr %55, i32 60
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i2.i251.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %57 = and i32 %56, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool53.not.i252.i = icmp eq i32 %57, 0
  br i1 %tobool53.not.i252.i, label %do.end46.i254.i.lan966x_port_ifh_xmit.exit_crit_edge, label %do.end46.i254.i.if.end85.i_crit_edge

do.end46.i254.i.if.end85.i_crit_edge:             ; preds = %do.end46.i254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

do.end46.i254.i.lan966x_port_ifh_xmit.exit_crit_edge: ; preds = %do.end46.i254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan966x_port_ifh_xmit.exit

if.end85.i:                                       ; preds = %do.end46.i254.i.if.end85.i_crit_edge, %cond.false.i250.i.if.end85.i_crit_edge, %for.body81.i.if.end85.i_crit_edge
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %arrayidx86.i = getelementptr i32, ptr %59, i32 %i.1299.i
  %60 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx86.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i259.i = getelementptr i8, ptr %64, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i259.i, i32 %62) #10, !srcloc !96
  %inc89.i = add nuw nsw i32 %i.1299.i, 1
  %exitcond304.not.i = icmp eq i32 %inc89.i, %div228.i
  br i1 %exitcond304.not.i, label %while.cond.preheader.i, label %if.end85.i.for.body81.i_crit_edge

if.end85.i.for.body81.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body81.i

while.body.i:                                     ; preds = %if.end96.i.while.body.i_crit_edge, %while.body.i.preheader
  %i.2301.i = phi i32 [ %inc98.i, %if.end96.i.while.body.i_crit_edge ], [ %i.2301.i.ph, %while.body.i.preheader ]
  %call.i260.i = call i64 @ktime_get() #10
  %add.i.i261.i = add i64 %call.i260.i, 100000000000
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i5.i263.i = getelementptr i8, ptr %66, i32 60
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i5.i263.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %68 = and i32 %67, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not6.i264.i = icmp eq i32 %68, 0
  br i1 %tobool.not6.i264.i, label %while.body.i.land.lhs.true.i267.i_crit_edge, label %while.body.i.if.end96.i_crit_edge

while.body.i.if.end96.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

while.body.i.land.lhs.true.i267.i_crit_edge:      ; preds = %while.body.i
  br label %land.lhs.true.i267.i

land.lhs.true.i267.i:                             ; preds = %cond.false.i270.i.land.lhs.true.i267.i_crit_edge, %while.body.i.land.lhs.true.i267.i_crit_edge
  %call17.i265.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i265.i, i64 %add.i.i261.i)
  %cmp3.i.i266.i = icmp sgt i64 %call17.i265.i, %add.i.i261.i
  br i1 %cmp3.i.i266.i, label %do.end46.i274.i, label %cond.false.i270.i

cond.false.i270.i:                                ; preds = %land.lhs.true.i267.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 2147480) #10
  %70 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i.i268.i = getelementptr i8, ptr %71, i32 60
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i268.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %73 = and i32 %72, 67108864
  %tobool.not.i269.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i269.i, label %cond.false.i270.i.land.lhs.true.i267.i_crit_edge, label %cond.false.i270.i.if.end96.i_crit_edge

cond.false.i270.i.if.end96.i_crit_edge:           ; preds = %cond.false.i270.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

cond.false.i270.i.land.lhs.true.i267.i_crit_edge: ; preds = %cond.false.i270.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i267.i

do.end46.i274.i:                                  ; preds = %land.lhs.true.i267.i
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i2.i271.i = getelementptr i8, ptr %75, i32 60
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i2.i271.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %77 = and i32 %76, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool53.not.i272.i = icmp eq i32 %77, 0
  br i1 %tobool53.not.i272.i, label %do.end46.i274.i.lan966x_port_ifh_xmit.exit_crit_edge, label %do.end46.i274.i.if.end96.i_crit_edge

do.end46.i274.i.if.end96.i_crit_edge:             ; preds = %do.end46.i274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96.i

do.end46.i274.i.lan966x_port_ifh_xmit.exit_crit_edge: ; preds = %do.end46.i274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan966x_port_ifh_xmit.exit

if.end96.i:                                       ; preds = %do.end46.i274.i.if.end96.i_crit_edge, %cond.false.i270.i.if.end96.i_crit_edge, %while.body.i.if.end96.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i279.i = getelementptr i8, ptr %79, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i279.i, i32 0) #10, !srcloc !96
  %inc98.i = add nuw nsw i32 %i.2301.i, 1
  %exitcond305.not.i = icmp eq i32 %inc98.i, 15
  br i1 %exitcond305.not.i, label %if.end96.i.do.end113.i_crit_edge, label %if.end96.i.while.body.i_crit_edge

if.end96.i.while.body.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end96.i.do.end113.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end113.i

do.end113.i:                                      ; preds = %if.end96.i.do.end113.i_crit_edge, %while.cond.preheader.i.do.end113.i_crit_edge
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %81)
  %cmp123.i = icmp ult i32 %81, 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %82 = shl i32 %44, 8
  %phi.bo231.i = and i32 %82, 768
  %phi.bo231.op.i = or i32 %phi.bo231.i, 10240
  %83 = select i1 %cmp123.i, i32 10240, i32 %phi.bo231.op.i
  %84 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i283.i = getelementptr i8, ptr %85, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i283.i, i32 %83) #10, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i287.i = getelementptr i8, ptr %87, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i287.i, i32 0) #10, !srcloc !96
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #10
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %88 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %tx_flags.i.i, align 1
  %92 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i288.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i288.i, label %do.end113.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i.i

do.end113.i.skb_tx_timestamp.exit.i_crit_edge:    ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit.i

if.then.i.i:                                      ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #10
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i.i, %do.end113.i.skb_tx_timestamp.exit.i_crit_edge
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %93 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_packets.i, align 4
  %inc176.i = add i32 %94, 1
  store i32 %inc176.i, ptr %tx_packets.i, align 4
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %97 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_bytes.i, align 4
  %add179.i = add i32 %98, %96
  store i32 %add179.i, ptr %tx_bytes.i, align 4
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #10
  br label %lan966x_port_ifh_xmit.exit

lan966x_port_ifh_xmit.exit:                       ; preds = %skb_tx_timestamp.exit.i, %do.end46.i274.i.lan966x_port_ifh_xmit.exit_crit_edge, %do.end46.i254.i.lan966x_port_ifh_xmit.exit_crit_edge, %do.end46.i.i.lan966x_port_ifh_xmit.exit_crit_edge, %entry.lan966x_port_ifh_xmit.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %skb_tx_timestamp.exit.i ], [ 16, %entry.lan966x_port_ifh_xmit.exit_crit_edge ], [ 16, %do.end46.i274.i.lan966x_port_ifh_xmit.exit_crit_edge ], [ 16, %do.end46.i254.i.lan966x_port_ifh_xmit.exit_crit_edge ], [ 16, %do.end46.i.i.lan966x_port_ifh_xmit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ifh) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_port_set_rx_mode(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %call.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i, ptr noundef %dev, ptr noundef nonnull @lan966x_mc_sync, ptr noundef nonnull @lan966x_mc_unsync) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_port_set_mac_address(ptr noundef %dev, ptr noundef %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %call2 = tail call i32 @lan966x_mac_cpu_learn(ptr noundef %1, ptr noundef %sa_data, i16 noundef zeroext 4095) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call3 = tail call i32 @lan966x_mac_cpu_forget(ptr noundef %1, ptr noundef %3, i16 noundef zeroext 4095) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_port_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.not.i.i = icmp ult i8 %3, 8
  br i1 %cmp.not.i.i, label %entry.lan_wr.exit_crit_edge, label %do.end.i.i, !prof !92

entry.lan_wr.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_wr.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 9, ptr noundef null) #10
  br label %lan_wr.exit

lan_wr.exit:                                      ; preds = %do.end.i.i, %entry.lan_wr.exit_crit_edge
  %conv = zext i8 %3 to i32
  %and14 = and i32 %new_mtu, 65535
  %regs.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 3
  %4 = tail call i32 @llvm.bswap.i32(i32 %and14) #10
  %add.i.i = add nuw nsw i32 %conv, 13
  %arrayidx.i.i = getelementptr ptr, ptr %regs.i, i32 %add.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %4) #10, !srcloc !96
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_mtu, ptr %mtu, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_stats_get(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan966x_port_get_parent_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ppid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %2 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %id_len, align 1
  %base_mac = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 5
  %3 = call ptr @memcpy(ptr %ppid, ptr %base_mac, i32 6)
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_port_get_phys_port_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buf, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_port = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.2, i32 noundef %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp ult i32 %call1, %len
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_fwnode_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_port_config_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_mc_sync(ptr nocapture noundef readonly %dev, ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %call2 = tail call i32 @lan966x_mac_cpu_learn(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext 4095) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_mc_unsync(ptr nocapture noundef readonly %dev, ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %call2 = tail call i32 @lan966x_mac_forget(ptr noundef %1, ptr noundef %addr, i32 noundef 4095, i32 noundef 1) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_cpu_learn(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_forget(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_cpu_forget(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  %begin.i = alloca [2 x ptr], align 4
  %mac_addr = alloca [6 x i8], align 4
  %p = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #10
  %0 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %1 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 9296, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup119_crit_edge, label %if.end

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call4 = call i32 @device_get_mac_address(ptr noundef %dev, ptr noundef nonnull %mac_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %do.end

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base_mac = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_addr, align 4
  %6 = ptrtoint ptr %base_mac to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %base_mac, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %0, align 4
  %add.ptr1.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  br label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  %base_mac10 = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 5
  call void @get_random_bytes(ptr noundef %base_mac10, i32 noundef 6) #10
  %10 = ptrtoint ptr %base_mac10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %base_mac10, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %base_mac10, align 1
  %arrayidx = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = and i8 %15, -16
  store i8 %16, ptr %arrayidx, align 1
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then6
  %call16 = call ptr @device_get_named_child_node(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -19, ptr noundef nonnull @.str.8) #10
  br label %cleanup119

if.end21:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %begin.i) #10
  %17 = getelementptr inbounds [2 x ptr], ptr %begin.i, i32 0, i32 1
  %call.i199 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i199, null
  br i1 %tobool.not.i, label %if.end21.do.end.i_crit_edge, label %if.end.i

if.end21.do.end.i_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.cond.i:                                       ; preds = %if.end.i
  %call.1.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %for.cond.i.do.end.i_crit_edge, label %if.end.1.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.1.i:                                       ; preds = %for.cond.i
  %18 = ptrtoint ptr %call.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.1.i, align 4
  %end.i.1.i = getelementptr inbounds %struct.resource, ptr %call.1.i, i32 0, i32 1
  %20 = ptrtoint ptr %end.i.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i.1.i, align 4
  %sub.i.1.i = sub i32 1, %19
  %add.i.1.i = add i32 %sub.i.1.i, %21
  %call6.1.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %19, i32 noundef %add.i.1.i) #10
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call6.1.i, ptr %17, align 4
  %tobool9.not.1.i = icmp eq ptr %call6.1.i, null
  br i1 %tobool9.not.1.i, label %if.end.1.i.do.end13.i_crit_edge, label %if.end.1.i.for.body19.i_crit_edge

if.end.1.i.for.body19.i_crit_edge:                ; preds = %if.end.1.i
  br label %for.body19.i

if.end.1.i.do.end13.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i

do.end.i:                                         ; preds = %for.cond.i.do.end.i_crit_edge, %if.end21.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %if.then24

if.end.i:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %call.i199 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i199, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i199, i32 0, i32 1
  %25 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %24
  %add.i.i = add i32 %sub.i.i, %26
  %call6.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %24, i32 noundef %add.i.i) #10
  %27 = ptrtoint ptr %begin.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call6.i, ptr %begin.i, align 4
  %tobool9.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool9.not.i, label %if.end.i.do.end13.i_crit_edge, label %for.cond.i

if.end.i.do.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.end.i.do.end13.i_crit_edge, %if.end.1.i.do.end13.i_crit_edge
  %call.lcssa48.i = phi ptr [ %call.i199, %if.end.i.do.end13.i_crit_edge ], [ %call.1.i, %if.end.1.i.do.end13.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.resource, ptr %call.lcssa48.i, i32 0, i32 2
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %29) #13
  br label %if.then24

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %if.end.1.i.for.body19.i_crit_edge
  %idx.147.i = phi i32 [ %inc24.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %if.end.1.i.for.body19.i_crit_edge ]
  %arrayidx20.i = getelementptr [18 x %struct.lan966x_main_io_resource], ptr @lan966x_main_iomap, i32 0, i32 %idx.147.i
  %range.i = getelementptr [18 x %struct.lan966x_main_io_resource], ptr @lan966x_main_iomap, i32 0, i32 %idx.147.i, i32 2
  %30 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %range.i, align 4
  %arrayidx21.i = getelementptr [2 x ptr], ptr %begin.i, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx21.i, align 4
  %offset.i = getelementptr [18 x %struct.lan966x_main_io_resource], ptr @lan966x_main_iomap, i32 0, i32 %idx.147.i, i32 1
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx20.i, align 4
  %arrayidx22.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 3, i32 %37
  %38 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i200, ptr %arrayidx22.i, align 4
  %inc24.i = add nuw nsw i32 %idx.147.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 18
  br i1 %exitcond.not.i, label %if.end27, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19.i

if.then24:                                        ; preds = %do.end13.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -12, %do.end13.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %begin.i) #10
  %call26 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i.ph, ptr noundef nonnull @.str.9) #10
  br label %cleanup119

if.end27:                                         ; preds = %for.body19.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %begin.i) #10
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %40, ptr noundef nonnull @.str.27, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i201

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call.i.i to i32
  %call4.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %42, i32 noundef %43, ptr noundef nonnull @.str.28) #10
  br label %lan966x_reset_switch.exit

if.end.i201:                                      ; preds = %if.end27
  %call.i112.i = call ptr @__devm_reset_control_get(ptr noundef %42, ptr noundef nonnull @.str.29, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %cmp.i113.i = icmp ugt ptr %call.i112.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i, label %if.then8.i, label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %46 = ptrtoint ptr %call.i112.i to i32
  %call11.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %45, i32 noundef %46, ptr noundef nonnull @.str.30) #10
  br label %lan966x_reset_switch.exit

if.end12.i:                                       ; preds = %if.end.i201
  %call13.i = call i32 @reset_control_reset(ptr noundef %call.i.i) #10
  %call14.i = call i32 @reset_control_reset(ptr noundef %call.i112.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 3, i32 52
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 4128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i116.i = getelementptr i8, ptr %50, i32 4432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i116.i, i32 33554432) #10, !srcloc !96
  %call43.i = call i64 @ktime_get() #10
  %add.i.i202 = add i64 %call43.i, 100000000000
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 819) #10
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i125.i = getelementptr i8, ptr %52, i32 4432
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i125.i) #10, !srcloc !93
  %54 = call i32 @llvm.bswap.i32(i32 %53) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %and126.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %cmp57127.i = icmp eq i32 %and126.i, 0
  br i1 %cmp57127.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.land.lhs.true.i_crit_edge

if.end12.i.land.lhs.true.i_crit_edge:             ; preds = %if.end12.i
  br label %land.lhs.true.i

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %if.then67.i.land.lhs.true.i_crit_edge, %if.end12.i.land.lhs.true.i_crit_edge
  %call60.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call60.i, i64 %add.i.i202)
  %cmp3.i.i = icmp sgt i64 %call60.i, %add.i.i202
  br i1 %cmp3.i.i, label %if.then63.i, label %if.then67.i

if.then63.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i119.i = getelementptr i8, ptr %56, i32 4432
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i119.i) #10, !srcloc !93
  %58 = call i32 @llvm.bswap.i32(i32 %57) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  br label %for.end.i

if.then67.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %60, i32 4432
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !93
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %and.i = and i32 %62, 2
  %cmp57.i = icmp eq i32 %and.i, 0
  br i1 %cmp57.i, label %if.then67.i.for.end.i_crit_edge, label %if.then67.i.land.lhs.true.i_crit_edge

if.then67.i.land.lhs.true.i_crit_edge:            ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.then67.i.for.end.i_crit_edge:                  ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.then67.i.for.end.i_crit_edge, %if.then63.i, %if.end12.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %58, %if.then63.i ], [ %54, %if.end12.i.for.end.i_crit_edge ], [ %62, %if.then67.i.for.end.i_crit_edge ]
  %and70.i = and i32 %val.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %cmp71.i = icmp eq i32 %and70.i, 0
  br i1 %cmp71.i, label %lan966x_reset_switch.exit.thread, label %for.end.i.if.then30_crit_edge

for.end.i.if.then30_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lan966x_reset_switch.exit.thread:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i122.i = getelementptr i8, ptr %64, i32 4128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122.i, i32 16777216) #10, !srcloc !96
  br label %if.end33

lan966x_reset_switch.exit:                        ; preds = %if.then8.i, %if.then.i
  %retval.0.i203 = phi i32 [ %call4.i, %if.then.i ], [ %call11.i, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i203)
  %tobool29.not = icmp eq i32 %retval.0.i203, 0
  br i1 %tobool29.not, label %lan966x_reset_switch.exit.if.end33_crit_edge, label %lan966x_reset_switch.exit.if.then30_crit_edge

lan966x_reset_switch.exit.if.then30_crit_edge:    ; preds = %lan966x_reset_switch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

lan966x_reset_switch.exit.if.end33_crit_edge:     ; preds = %lan966x_reset_switch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %lan966x_reset_switch.exit.if.then30_crit_edge, %for.end.i.if.then30_crit_edge
  %retval.0.i203223 = phi i32 [ %retval.0.i203, %lan966x_reset_switch.exit.if.then30_crit_edge ], [ -110, %for.end.i.if.then30_crit_edge ]
  %call32 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i203223, ptr noundef nonnull @.str.10) #10
  br label %cleanup119

if.end33:                                         ; preds = %lan966x_reset_switch.exit.if.end33_crit_edge, %lan966x_reset_switch.exit.thread
  %call34 = call ptr @fwnode_get_next_available_child_node(ptr noundef nonnull %call16, ptr noundef null) #10
  %tobool35.not244 = icmp eq ptr %call34, null
  br i1 %tobool35.not244, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end33.for.body_crit_edge
  %portnp.0246 = phi ptr [ %call36, %for.body.for.body_crit_edge ], [ %call34, %if.end33.for.body_crit_edge ]
  %i.0245 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %inc = add i32 %i.0245, 1
  %call36 = call ptr @fwnode_get_next_available_child_node(ptr noundef nonnull %call16, ptr noundef nonnull %portnp.0246) #10
  %tobool35.not = icmp eq ptr %call36, null
  br i1 %tobool35.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end33.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end33.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %conv37 = trunc i32 %i.0.lcssa to i8
  %num_phys_ports = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 1
  %65 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv37, ptr %num_phys_ports, align 4
  %conv40 = shl i32 %i.0.lcssa, 2
  %66 = and i32 %conv40, 1020
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %66, i32 noundef 3520) #10
  %ports42 = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 2
  %67 = ptrtoint ptr %ports42 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call5.i.i, ptr %ports42, align 4
  %tobool44.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool44.not, label %for.end.cleanup119_crit_edge, label %if.end46

for.end.cleanup119_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end46:                                         ; preds = %for.end
  %shared_queue_sz = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 4
  %68 = ptrtoint ptr %shared_queue_sz to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 163840, ptr %shared_queue_sz, align 4
  %call47 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #10
  %xtr_irq = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 19
  %69 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call47, ptr %xtr_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp = icmp slt i32 %call47, 1
  br i1 %cmp, label %if.end46.cleanup119_crit_edge, label %if.end51

if.end46.cleanup119_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end51:                                         ; preds = %if.end46
  %call54 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call47, ptr noundef null, ptr noundef nonnull @lan966x_xtr_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end62, label %do.end59

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup119

if.end62:                                         ; preds = %if.end51
  %call63 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.16) #10
  %ana_irq = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 20
  %70 = ptrtoint ptr %ana_irq to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call63, ptr %ana_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool65.not = icmp eq i32 %call63, 0
  br i1 %tobool65.not, label %if.end62.if.end75_crit_edge, label %if.then66

if.end62.if.end75_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then66:                                        ; preds = %if.end62
  %call69 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call63, ptr noundef null, ptr noundef nonnull @lan966x_ana_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then66.if.end75_crit_edge, label %if.then71

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then71:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call69, ptr noundef nonnull @.str.18) #10
  br label %cleanup119

if.end75:                                         ; preds = %if.then66.if.end75_crit_edge, %if.end62.if.end75_crit_edge
  call fastcc void @lan966x_init(ptr noundef nonnull %call.i)
  %call76 = call i32 @lan966x_stats_init(ptr noundef nonnull %call.i) #10
  %call77 = call ptr @fwnode_get_next_available_child_node(ptr noundef nonnull %call16, ptr noundef null) #10
  %tobool79.not247 = icmp eq ptr %call77, null
  br i1 %tobool79.not247, label %if.end75.for.end113_crit_edge, label %for.body80.lr.ph

if.end75.for.end113_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end113

for.body80.lr.ph:                                 ; preds = %if.end75
  %base_mac.i = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 5
  %arrayidx.1.i.i.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 5, i32 1
  %arrayidx.2.i.i.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 5, i32 2
  %arrayidx.3.i.i.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 5, i32 3
  %arrayidx.4.i.i.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 5, i32 4
  %arrayidx.5.i.i.i = getelementptr %struct.lan966x, ptr %call.i, i32 0, i32 5, i32 5
  %71 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 1
  %72 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 2
  %73 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 3
  %74 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 4
  %75 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 5
  br label %for.body80

for.body80:                                       ; preds = %for.inc111.for.body80_crit_edge, %for.body80.lr.ph
  %portnp.1248 = phi ptr [ %call77, %for.body80.lr.ph ], [ %call112, %for.inc111.for.body80_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #10
  %76 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %p, align 4, !annotation !99
  %call.i204 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %portnp.1248, ptr noundef nonnull @.str.19, ptr noundef nonnull %p, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool82.not = icmp eq i32 %call.i204, 0
  br i1 %tobool82.not, label %if.end84, label %for.body80.for.inc111_crit_edge

for.body80.for.inc111_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc111

if.end84:                                         ; preds = %for.body80
  %call85 = call i32 @fwnode_get_phy_mode(ptr noundef nonnull %portnp.1248) #10
  %77 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %p, align 4
  %79 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_phys_ports, align 4
  %conv.i = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %78, %conv.i
  br i1 %cmp.not.i, label %if.end.i207, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i207:                                      ; preds = %if.end84
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %call.i205 = call ptr @devm_alloc_etherdev_mqs(ptr noundef %82, i32 noundef 84, i32 noundef 8, i32 noundef 1) #10
  %tobool.not.i206 = icmp eq ptr %call.i205, null
  br i1 %tobool.not.i206, label %if.end.i207.cleanup_crit_edge, label %if.end4.i

if.end.i207.cleanup_crit_edge:                    ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i207
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i205, i32 0, i32 133, i32 1
  %85 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call.i205, i32 2304
  %86 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i205, ptr %add.ptr.i.i, align 4
  %lan966x9.i = getelementptr i8, ptr %call.i205, i32 2308
  %87 = ptrtoint ptr %lan966x9.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %lan966x9.i, align 4
  %conv10.i = trunc i32 %78 to i8
  %chip_port.i = getelementptr i8, ptr %call.i205, i32 2312
  %88 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv10.i, ptr %chip_port.i, align 4
  %89 = ptrtoint ptr %ports42 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ports42, align 4
  %arrayidx.i = getelementptr ptr, ptr %90, i32 %78
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i.i, ptr %arrayidx.i, align 4
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call.i205, i32 0, i32 31
  %92 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 65535, ptr %max_mtu.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i205, i32 0, i32 16
  %93 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @lan966x_port_netdev_ops, ptr %netdev_ops.i, align 8
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i205, i32 0, i32 44
  %94 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @lan966x_ethtool_ops, ptr %ethtool_ops.i, align 16
  %features.i = getelementptr inbounds %struct.net_device, ptr %call.i205, i32 0, i32 23
  %95 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %features.i, align 16
  %or.i = or i64 %96, 35184372088960
  store i64 %or.i, ptr %features.i, align 16
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %call.i205, i32 0, i32 21
  %97 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 28, ptr %needed_headroom.i, align 8
  %add.i = add nuw i32 %78, 1
  %98 = ptrtoint ptr %base_mac.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %base_mac.i, align 1
  %conv.i.i.i = zext i8 %99 to i64
  %100 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %conv.1.i.i.i = zext i8 %101 to i64
  %102 = shl nuw nsw i64 %conv.i.i.i, 16
  %103 = shl nuw nsw i64 %conv.1.i.i.i, 8
  %shl.2.i.i.i = or i64 %103, %102
  %104 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %conv.2.i.i.i = zext i8 %105 to i64
  %or.2.i.i.i = or i64 %shl.2.i.i.i, %conv.2.i.i.i
  %106 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %conv.3.i.i.i = zext i8 %107 to i64
  %108 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %conv.4.i.i.i = zext i8 %109 to i64
  %110 = shl nuw nsw i64 %or.2.i.i.i, 24
  %111 = shl nuw nsw i64 %conv.3.i.i.i, 16
  %112 = shl nuw nsw i64 %conv.4.i.i.i, 8
  %113 = or i64 %112, %111
  %shl.5.i.i.i = or i64 %113, %110
  %114 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %conv.5.i.i.i = zext i8 %115 to i64
  %or.5.i.i.i = or i64 %shl.5.i.i.i, %conv.5.i.i.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #10
  %conv.i.i = zext i32 %add.i to i64
  %add.i.i208 = add i64 %or.5.i.i.i, %conv.i.i
  %conv.i3.i.i = trunc i64 %add.i.i208 to i8
  %116 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.i3.i.i, ptr %75, align 1
  %shr.i.i.i = lshr i64 %add.i.i208, 8
  %conv.1.i4.i.i = trunc i64 %shr.i.i.i to i8
  %117 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv.1.i4.i.i, ptr %74, align 1
  %shr.1.i.i.i = lshr i64 %add.i.i208, 16
  %conv.2.i6.i.i = trunc i64 %shr.1.i.i.i to i8
  %118 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.2.i6.i.i, ptr %73, align 1
  %shr.2.i.i.i = lshr i64 %add.i.i208, 24
  %conv.3.i8.i.i = trunc i64 %shr.2.i.i.i to i8
  %119 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.3.i8.i.i, ptr %72, align 1
  %shr.3.i.i.i = lshr i64 %add.i.i208, 32
  %conv.4.i10.i.i = trunc i64 %shr.3.i.i.i to i8
  %120 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv.4.i10.i.i, ptr %71, align 1
  %shr.4.i.i.i = lshr i64 %add.i.i208, 40
  %conv.5.i12.i.i = trunc i64 %shr.4.i.i.i to i8
  %121 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv.5.i12.i.i, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call.i205, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #10
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call.i205, i32 0, i32 86
  %122 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_addr.i, align 64
  %call11.i209 = call i32 @lan966x_mac_learn(ptr noundef %call.i, i32 noundef 58, ptr noundef %123, i32 noundef 4095, i32 noundef 1) #10
  %124 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i.i, align 4
  %dev13.i = getelementptr inbounds %struct.net_device, ptr %125, i32 0, i32 133
  %phylink_config.i = getelementptr i8, ptr %call.i205, i32 2320
  %126 = ptrtoint ptr %phylink_config.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %dev13.i, ptr %phylink_config.i, align 4
  %type.i = getelementptr i8, ptr %call.i205, i32 2324
  %127 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %type.i, align 4
  %phylink_pcs.i = getelementptr i8, ptr %call.i205, i32 2344
  %poll.i = getelementptr i8, ptr %call.i205, i32 2348
  %128 = ptrtoint ptr %poll.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %poll.i, align 4
  %129 = ptrtoint ptr %phylink_pcs.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @lan966x_phylink_pcs_ops, ptr %phylink_pcs.i, align 4
  %mac_capabilities.i = getelementptr i8, ptr %call.i205, i32 2340
  %130 = ptrtoint ptr %mac_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 447, ptr %mac_capabilities.i, align 4
  %supported_interfaces.i = getelementptr i8, ptr %call.i205, i32 2336
  %131 = ptrtoint ptr %supported_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %supported_interfaces.i, align 4
  %or.i104.i = or i32 %132, 6553628
  store i32 %or.i104.i, ptr %supported_interfaces.i, align 4
  %call36.i = call ptr @phylink_create(ptr noundef %phylink_config.i, ptr noundef nonnull %portnp.1248, i32 noundef %call85, ptr noundef nonnull @lan966x_phylink_mac_ops) #10
  %cmp.i.i210 = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i210, label %lan966x_probe_port.exit, label %if.end41.i

if.end41.i:                                       ; preds = %if.end4.i
  %phylink42.i = getelementptr i8, ptr %call.i205, i32 2376
  %133 = ptrtoint ptr %phylink42.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call36.i, ptr %phylink42.i, align 4
  call void @phylink_set_pcs(ptr noundef %call36.i, ptr noundef %phylink_pcs.i) #10
  %call44.i = call i32 @register_netdev(ptr noundef nonnull %call.i205) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %lan966x_probe_port.exit.thread229, label %do.end.i211

do.end.i211:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.32) #13
  br label %cleanup

lan966x_probe_port.exit.thread229:                ; preds = %if.end41.i
  call void @lan966x_vlan_port_set_vlan_aware(ptr noundef %add.ptr.i.i, i1 noundef zeroext false) #10
  %call49.i = call i32 @lan966x_vlan_port_set_vid(ptr noundef %add.ptr.i.i, i16 noundef zeroext 4095, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @lan966x_vlan_port_apply(ptr noundef %add.ptr.i.i) #10
  %136 = ptrtoint ptr %ports42 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ports42, align 4
  %138 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %p, align 4
  %arrayidx91 = getelementptr ptr, ptr %137, i32 %139
  %140 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx91, align 4
  %config = getelementptr inbounds %struct.lan966x_port, ptr %141, i32 0, i32 9
  %142 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call85, ptr %config, align 4
  %call92 = call ptr @fwnode_handle_get(ptr noundef nonnull %portnp.1248) #10
  %143 = ptrtoint ptr %ports42 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ports42, align 4
  %145 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %p, align 4
  %arrayidx94 = getelementptr ptr, ptr %144, i32 %146
  %147 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx94, align 4
  %fwnode = getelementptr inbounds %struct.lan966x_port, ptr %148, i32 0, i32 12
  %149 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call92, ptr %fwnode, align 4
  %150 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call.i, align 4
  %cmp.i.i213 = icmp ugt ptr %portnp.1248, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i213, label %lan966x_probe_port.exit.thread229.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

lan966x_probe_port.exit.thread229.is_of_node.exit.thread_crit_edge: ; preds = %lan966x_probe_port.exit.thread229
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_of_node.exit.thread

lan966x_probe_port.exit:                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %add.ptr.i.i, align 4
  %153 = ptrtoint ptr %call36.i to i32
  br label %cleanup

is_of_node.exit:                                  ; preds = %lan966x_probe_port.exit.thread229
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %portnp.1248, i32 0, i32 1
  %154 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %155, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %portnp.1248, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %lan966x_probe_port.exit.thread229.is_of_node.exit.thread_crit_edge
  %156 = phi ptr [ null, %lan966x_probe_port.exit.thread229.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  %call100 = call ptr @devm_of_phy_get(ptr noundef %151, ptr noundef %156, ptr noundef null) #10
  %cmp.i214 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %is_of_node.exit.thread.if.end106_crit_edge, label %if.then102

is_of_node.exit.thread.if.end106_crit_edge:       ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then102:                                       ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %ports42 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ports42, align 4
  %159 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %p, align 4
  %arrayidx104 = getelementptr ptr, ptr %158, i32 %160
  %161 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx104, align 4
  %serdes105 = getelementptr inbounds %struct.lan966x_port, ptr %162, i32 0, i32 11
  %163 = ptrtoint ptr %serdes105 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call100, ptr %serdes105, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %is_of_node.exit.thread.if.end106_crit_edge
  %164 = ptrtoint ptr %ports42 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ports42, align 4
  %166 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %p, align 4
  %arrayidx108 = getelementptr ptr, ptr %165, i32 %167
  %168 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx108, align 4
  call void @lan966x_port_init(ptr noundef %169) #10
  br label %for.inc111

cleanup:                                          ; preds = %lan966x_probe_port.exit, %do.end.i211, %if.end.i207.cleanup_crit_edge, %if.end84.cleanup_crit_edge
  %err.2 = phi i32 [ %153, %lan966x_probe_port.exit ], [ %call44.i, %do.end.i211 ], [ -22, %if.end84.cleanup_crit_edge ], [ -12, %if.end.i207.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #10
  br label %cleanup_ports

for.inc111:                                       ; preds = %if.end106, %for.body80.for.inc111_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #10
  %call112 = call ptr @fwnode_get_next_available_child_node(ptr noundef nonnull %call16, ptr noundef nonnull %portnp.1248) #10
  %tobool79.not = icmp eq ptr %call112, null
  br i1 %tobool79.not, label %for.inc111.for.end113_crit_edge, label %for.inc111.for.body80_crit_edge

for.inc111.for.body80_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body80

for.inc111.for.end113_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end113

for.end113:                                       ; preds = %for.inc111.for.end113_crit_edge, %if.end75.for.end113_crit_edge
  call void @lan966x_mdb_init(ptr noundef nonnull %call.i) #10
  %call114 = call i32 @lan966x_fdb_init(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %for.end113.cleanup119_crit_edge, label %for.end113.cleanup_ports_crit_edge

for.end113.cleanup_ports_crit_edge:               ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_ports

for.end113.cleanup119_crit_edge:                  ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

cleanup_ports:                                    ; preds = %for.end113.cleanup_ports_crit_edge, %cleanup
  %portnp.1240 = phi ptr [ %portnp.1248, %cleanup ], [ null, %for.end113.cleanup_ports_crit_edge ]
  %err.3 = phi i32 [ %err.2, %cleanup ], [ %call114, %for.end113.cleanup_ports_crit_edge ]
  call void @fwnode_handle_put(ptr noundef %portnp.1240) #10
  call fastcc void @lan966x_cleanup_ports(ptr noundef nonnull %call.i)
  %stats_work = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 17
  %call118 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stats_work) #10
  %stats_queue = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 18
  %170 = ptrtoint ptr %stats_queue to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %stats_queue, align 4
  call void @destroy_workqueue(ptr noundef %171) #10
  %stats_lock = getelementptr inbounds %struct.lan966x, ptr %call.i, i32 0, i32 15
  call void @mutex_destroy(ptr noundef %stats_lock) #10
  br label %cleanup119

cleanup119:                                       ; preds = %cleanup_ports, %for.end113.cleanup119_crit_edge, %if.then71, %do.end59, %if.end46.cleanup119_crit_edge, %for.end.cleanup119_crit_edge, %if.then30, %if.then24, %if.then18, %entry.cleanup119_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then24 ], [ %call32, %if.then30 ], [ -19, %do.end59 ], [ %call73, %if.then71 ], [ %err.3, %cleanup_ports ], [ %call20, %if.then18 ], [ -12, %entry.cleanup119_crit_edge ], [ -12, %for.end.cleanup119_crit_edge ], [ -22, %if.end46.cleanup119_crit_edge ], [ 0, %for.end113.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @lan966x_cleanup_ports(ptr noundef %1)
  %stats_work = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 17
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stats_work) #10
  %stats_queue = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %stats_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #10
  %stats_lock = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 15
  tail call void @mutex_destroy(ptr noundef %stats_lock) #10
  tail call void @lan966x_mac_purge_entries(ptr noundef %1) #10
  tail call void @lan966x_mdb_deinit(ptr noundef %1) #10
  tail call void @lan966x_fdb_deinit(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_available_child_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_xtr_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %args) #3 align 64 {
entry:
  %src_port = alloca i64, align 8
  %len = alloca i64, align 8
  %ifh = alloca [7 x i32], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %args, i32 0, i32 3, i32 42
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup115_crit_edge, label %do.body.preheader

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

do.body.preheader:                                ; preds = %entry
  %4 = getelementptr inbounds [7 x i32], ptr %ifh, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i32], ptr %ifh, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i32], ptr %ifh, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i32], ptr %ifh, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i32], ptr %ifh, i32 0, i32 5
  %9 = getelementptr inbounds [7 x i32], ptr %ifh, i32 0, i32 6
  %num_phys_ports = getelementptr inbounds %struct.lan966x, ptr %args, i32 0, i32 1
  %ports = getelementptr inbounds %struct.lan966x, ptr %args, i32 0, i32 2
  %bridge_mask = getelementptr inbounds %struct.lan966x, ptr %args, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.cond109.do.body_crit_edge, %do.body.preheader
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_port) #10
  %10 = ptrtoint ptr %src_port to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %src_port, align 8, !annotation !99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #10
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %len, align 8, !annotation !99
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ifh) #10
  %12 = call ptr @memset(ptr %ifh, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val, align 4, !annotation !99
  %call1 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef nonnull %ifh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 4
  br i1 %cmp2.not, label %for.cond, label %do.body.recover_crit_edge

do.body.recover_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover

for.cond:                                         ; preds = %do.body
  %call1.1 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.1)
  %cmp2.not.1 = icmp eq i32 %call1.1, 4
  br i1 %cmp2.not.1, label %for.cond.1, label %for.cond.recover_crit_edge

for.cond.recover_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover

for.cond.1:                                       ; preds = %for.cond
  %call1.2 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.2)
  %cmp2.not.2 = icmp eq i32 %call1.2, 4
  br i1 %cmp2.not.2, label %for.cond.2, label %for.cond.1.recover_crit_edge

for.cond.1.recover_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover

for.cond.2:                                       ; preds = %for.cond.1
  %call1.3 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.3)
  %cmp2.not.3 = icmp eq i32 %call1.3, 4
  br i1 %cmp2.not.3, label %for.cond.3, label %for.cond.2.recover_crit_edge

for.cond.2.recover_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover

for.cond.3:                                       ; preds = %for.cond.2
  %call1.4 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.4)
  %cmp2.not.4 = icmp eq i32 %call1.4, 4
  br i1 %cmp2.not.4, label %for.cond.4, label %for.cond.3.recover_crit_edge

for.cond.3.recover_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover

for.cond.4:                                       ; preds = %for.cond.3
  %call1.5 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.5)
  %cmp2.not.5 = icmp eq i32 %call1.5, 4
  br i1 %cmp2.not.5, label %for.cond.5, label %for.cond.4.recover_crit_edge

for.cond.4.recover_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover

for.cond.5:                                       ; preds = %for.cond.4
  %call1.6 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.6)
  %cmp2.not.6 = icmp eq i32 %call1.6, 4
  br i1 %cmp2.not.6, label %for.cond.6, label %for.cond.5.recover_crit_edge

for.cond.5.recover_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover

for.cond.6:                                       ; preds = %for.cond.5
  %call.i = call i32 @packing(ptr noundef nonnull %ifh, ptr noundef nonnull %src_port, i32 noundef 144, i32 noundef 141, i32 noundef 28, i32 noundef 1, i8 noundef zeroext 0) #10
  %call.i155 = call i32 @packing(ptr noundef nonnull %ifh, ptr noundef nonnull %len, i32 noundef 191, i32 noundef 178, i32 noundef 28, i32 noundef 1, i8 noundef zeroext 0) #10
  %14 = ptrtoint ptr %src_port to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %src_port, align 8
  %16 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_phys_ports, align 4
  %conv7 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv7)
  %cmp8.not = icmp ult i64 %15, %conv7
  br i1 %cmp8.not, label %for.cond.6.if.end25_crit_edge, label %do.end, !prof !92

for.cond.6.if.end25_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end:                                           ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 465, i32 noundef 9, ptr noundef null) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end, %for.cond.6.if.end25_crit_edge
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports, align 4
  %20 = ptrtoint ptr %src_port to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %src_port, align 8
  %idxprom = trunc i64 %21 to i32
  %arrayidx32 = getelementptr ptr, ptr %19, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx32, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %len, align 8
  %conv34 = trunc i64 %27 to i32
  %call.i156 = call ptr @__netdev_alloc_skb(ptr noundef %25, i32 noundef %conv34, i32 noundef 2592) #10
  %tobool36.not = icmp eq ptr %call.i156, null
  br i1 %tobool36.not, label %cleanup, label %if.end46, !prof !100

if.end46:                                         ; preds = %if.end25
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %len, align 8
  %30 = trunc i64 %29 to i32
  %conv47 = add i32 %30, -4
  %call48 = call ptr @skb_put(ptr noundef nonnull %call.i156, i32 noundef %conv47) #10
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %len, align 8
  %conv58 = sext i32 %conv47 to i64
  br label %do.body49

do.body49:                                        ; preds = %if.end55.do.body49_crit_edge, %if.end46
  %buf.0 = phi ptr [ %call48, %if.end46 ], [ %incdec.ptr, %if.end55.do.body49_crit_edge ]
  %call51 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.body49.if.then98.sink.split_crit_edge, label %if.end55

do.body49.if.then98.sink.split_crit_edge:         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98.sink.split

if.end55:                                         ; preds = %do.body49
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %incdec.ptr = getelementptr i32, ptr %buf.0, i32 1
  %34 = ptrtoint ptr %buf.0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %buf.0, align 4
  %conv56170 = zext i32 %call51 to i64
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %len, align 8
  %add = add i64 %36, %conv56170
  store i64 %add, ptr %len, align 8
  %cmp59 = icmp ult i64 %add, %conv58
  br i1 %cmp59, label %if.end55.do.body49_crit_edge, label %do.end61

if.end55.do.body49_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end61:                                         ; preds = %if.end55
  %call63 = call fastcc i32 @lan966x_rx_frame_word(ptr noundef %args, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end61.if.then98.sink.split_crit_edge, label %if.end67

do.end61.if.then98.sink.split_crit_edge:          ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98.sink.split

if.end67:                                         ; preds = %do.end61
  %sub68 = sub nsw i32 4, %call63
  %37 = zext i32 %sub68 to i64
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %len, align 8
  %sub70 = sub i64 %39, %37
  store i64 %sub70, ptr %len, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 23
  %40 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features, align 16
  %and71 = and i64 %41, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and71)
  %tobool72.not = icmp eq i64 %and71, 0
  br i1 %tobool72.not, label %if.end67.if.end81_crit_edge, label %if.then79, !prof !92

if.end67.if.end81_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then79:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %call80 = call ptr @skb_put(ptr noundef nonnull %call.i156, i32 noundef 4) #10
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %44 = ptrtoint ptr %call80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %call80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end67.if.end81_crit_edge
  %call82 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i156, ptr noundef %25) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i156, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %call82, ptr %protocol, align 8
  %46 = ptrtoint ptr %bridge_mask to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bridge_mask, align 4
  %conv83 = zext i16 %47 to i32
  %48 = ptrtoint ptr %src_port to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %src_port, align 8
  %sh_prom = trunc i64 %49 to i32
  %shl84 = shl nuw i32 1, %sh_prom
  %and85 = and i32 %shl84, %conv83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end81.recover.thread_crit_edge, label %if.then87

if.end81.recover.thread_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %recover.thread

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %offload_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %call.i156, i32 0, i32 15, i32 0, i32 3
  %50 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark, align 2
  %bf.set = or i32 %bf.load, 1048576
  store i32 %bf.set, ptr %offload_fwd_mark, align 2
  br label %recover.thread

recover.thread:                                   ; preds = %if.then87, %if.end81.recover.thread_crit_edge
  %call89 = call i32 @netif_rx_ni(ptr noundef nonnull %call.i156) #10
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %len, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 2
  %53 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_bytes, align 8
  %55 = trunc i64 %52 to i32
  %conv92 = add i32 %54, %55
  store i32 %conv92, ptr %rx_bytes, align 8
  %56 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stats, align 8
  %inc94 = add i32 %57, 1
  store i32 %inc94, ptr %stats, align 8
  br label %do.cond109

recover:                                          ; preds = %for.cond.5.recover_crit_edge, %for.cond.4.recover_crit_edge, %for.cond.3.recover_crit_edge, %for.cond.2.recover_crit_edge, %for.cond.1.recover_crit_edge, %for.cond.recover_crit_edge, %do.body.recover_crit_edge
  %err.0 = phi i32 [ %call1, %do.body.recover_crit_edge ], [ %call1.1, %for.cond.recover_crit_edge ], [ %call1.2, %for.cond.1.recover_crit_edge ], [ %call1.3, %for.cond.2.recover_crit_edge ], [ %call1.4, %for.cond.3.recover_crit_edge ], [ %call1.5, %for.cond.4.recover_crit_edge ], [ %call1.6, %for.cond.5.recover_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool97.not = icmp eq i32 %err.0, 0
  br i1 %tobool97.not, label %recover.do.cond109_crit_edge, label %recover.if.then98_crit_edge

recover.if.then98_crit_edge:                      ; preds = %recover
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

recover.do.cond109_crit_edge:                     ; preds = %recover
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond109

if.then98.sink.split:                             ; preds = %do.end61.if.then98.sink.split_crit_edge, %do.body49.if.then98.sink.split_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i156, i32 noundef 0) #10
  br label %if.then98

if.then98:                                        ; preds = %if.then98.sink.split, %recover.if.then98_crit_edge
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i159 = getelementptr i8, ptr %59, i32 8
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i159) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  br label %do.cond109

cleanup:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.31) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ifh) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_port) #10
  br label %cleanup115

do.cond109:                                       ; preds = %if.then98, %recover.do.cond109_crit_edge, %recover.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ifh) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_port) #10
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i162 = getelementptr i8, ptr %62, i32 28
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i162) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %64 = and i32 %63, 16777216
  %tobool113.not = icmp eq i32 %64, 0
  br i1 %tobool113.not, label %do.cond109.cleanup115_crit_edge, label %do.cond109.do.body_crit_edge

do.cond109.do.body_crit_edge:                     ; preds = %do.cond109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond109.cleanup115_crit_edge:                  ; preds = %do.cond109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup115

cleanup115:                                       ; preds = %do.cond109.cleanup115_crit_edge, %cleanup, %entry.cleanup115_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup115_crit_edge ], [ 1, %cleanup ], [ 1, %do.cond109.cleanup115_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan966x_ana_irq_handler(i32 noundef %irq, ptr noundef %args) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lan966x_mac_irq_handler(ptr noundef %args) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan966x_init(ptr noundef %lan966x) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lan966x_mac_init(ptr noundef %lan966x) #10
  tail call void @lan966x_vlan_init(ptr noundef %lan966x) #10
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 42
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %3 = or i32 %2, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i557 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i557, i32 %3) #10, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i560 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i560) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %10 = and i32 %9, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i563 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i563, i32 %10) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %arrayidx.i.i565 = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr82.i.i566 = getelementptr i8, ptr %14, i32 29868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i566, i32 738263040) #10, !srcloc !96
  %15 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr.i.i569 = getelementptr i8, ptr %16, i32 29824
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i569) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %18 = or i32 %17, 16777216
  %19 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %20, i32 29824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %18) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %arrayidx.i.i571 = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 52
  %21 = ptrtoint ptr %arrayidx.i.i571 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i571, align 4
  %add.ptr82.i.i573 = getelementptr i8, ptr %22, i32 4244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i573, i32 -323939328) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %arrayidx.i.i575 = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 46
  %23 = ptrtoint ptr %arrayidx.i.i575 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i575, align 4
  %add.ptr82.i.i577 = getelementptr i8, ptr %24, i32 28212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i577, i32 0) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 83886080) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i582 = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i582, i32 83886080) #10, !srcloc !96
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i586 = getelementptr i8, ptr %30, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i586) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %32 = and i32 %31, -57346
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i10.i = getelementptr i8, ptr %34, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i, i32 %32) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %arrayidx.i.i571 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i571, align 4
  %add.ptr84.i.i = getelementptr i8, ptr %36, i32 4204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i, i32 335544320) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr82.i.i596 = getelementptr i8, ptr %38, i32 29924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i596, i32 2112878336) #10, !srcloc !96
  %39 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr82.i.i600 = getelementptr i8, ptr %40, i32 29892
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i600) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %42 = and i32 %41, 64767
  %43 = or i32 %42, 1035928320
  %44 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr82.i10.i605 = getelementptr i8, ptr %45, i32 29892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i605, i32 %43) #10, !srcloc !96
  %46 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i.i601.1 = getelementptr i8, ptr %47, i32 29896
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i601.1) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %49 = and i32 %48, 64767
  %50 = or i32 %49, 1035928320
  %51 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i12.i.1 = getelementptr i8, ptr %52, i32 29896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.1, i32 %50) #10, !srcloc !96
  %53 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i.i601.2 = getelementptr i8, ptr %54, i32 29900
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i601.2) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %56 = and i32 %55, 64767
  %57 = or i32 %56, 1035928320
  %58 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i12.i.2 = getelementptr i8, ptr %59, i32 29900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.2, i32 %57) #10, !srcloc !96
  %60 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i.i601.3 = getelementptr i8, ptr %61, i32 29904
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i601.3) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %63 = and i32 %62, 64767
  %64 = or i32 %63, 1035928320
  %65 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i12.i.3 = getelementptr i8, ptr %66, i32 29904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.3, i32 %64) #10, !srcloc !96
  %67 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i.i601.4 = getelementptr i8, ptr %68, i32 29908
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i601.4) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %70 = and i32 %69, 64767
  %71 = or i32 %70, 1035928320
  %72 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i12.i.4 = getelementptr i8, ptr %73, i32 29908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.4, i32 %71) #10, !srcloc !96
  %74 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i.i601.5 = getelementptr i8, ptr %75, i32 29912
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i601.5) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %77 = and i32 %76, 64767
  %78 = or i32 %77, 1035928320
  %79 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i12.i.5 = getelementptr i8, ptr %80, i32 29912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.5, i32 %78) #10, !srcloc !96
  %81 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i.i601.6 = getelementptr i8, ptr %82, i32 29916
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i601.6) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %84 = and i32 %83, 64767
  %85 = or i32 %84, 1035928320
  %86 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i12.i.6 = getelementptr i8, ptr %87, i32 29916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.6, i32 %85) #10, !srcloc !96
  %88 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i.i601.7 = getelementptr i8, ptr %89, i32 29920
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i601.7) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %91 = and i32 %90, 64767
  %92 = or i32 %91, 1035928320
  %93 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr84.i12.i.7 = getelementptr i8, ptr %94, i32 29920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i12.i.7, i32 %92) #10, !srcloc !96
  br label %lan_rmw.exit615

for.cond301.preheader:                            ; preds = %lan_rmw.exit615
  %num_phys_ports = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 1
  %95 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp302747.not = icmp eq i8 %96, 0
  br i1 %cmp302747.not, label %for.cond301.preheader.lan_wr.exit659.preheader_crit_edge, label %for.cond301.preheader.do.end319_crit_edge

for.cond301.preheader.do.end319_crit_edge:        ; preds = %for.cond301.preheader
  br label %do.end319

for.cond301.preheader.lan_wr.exit659.preheader_crit_edge: ; preds = %for.cond301.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_wr.exit659.preheader

lan_rmw.exit615:                                  ; preds = %lan_rmw.exit615.lan_rmw.exit615_crit_edge, %entry
  %i.1745 = phi i32 [ %inc299, %lan_rmw.exit615.lan_rmw.exit615_crit_edge ], [ 0, %entry ]
  %97 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i565, align 4
  %mul.i.i = shl nuw nsw i32 %i.1745, 3
  %add.ptr81.i.i = getelementptr i8, ptr %98, i32 27652
  %add.ptr82.i.i609 = getelementptr i8, ptr %add.ptr81.i.i, i32 %mul.i.i
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i609) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %100 = or i32 %99, 16777216
  %101 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i9.i = getelementptr i8, ptr %102, i32 27652
  %add.ptr82.i10.i614 = getelementptr i8, ptr %add.ptr81.i9.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i614, i32 %100) #10, !srcloc !96
  %inc299 = add nuw nsw i32 %i.1745, 1
  %exitcond.not = icmp eq i32 %inc299, 89
  br i1 %exitcond.not, label %for.cond301.preheader, label %lan_rmw.exit615.lan_rmw.exit615_crit_edge

lan_rmw.exit615.lan_rmw.exit615_crit_edge:        ; preds = %lan_rmw.exit615
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_rmw.exit615

do.end319:                                        ; preds = %lan_wr.exit.do.end319_crit_edge, %for.cond301.preheader.do.end319_crit_edge
  %p.0748 = phi i32 [ %inc322, %lan_wr.exit.do.end319_crit_edge ], [ 0, %for.cond301.preheader.do.end319_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %p.0748)
  %cmp20.not.i.i617 = icmp ult i32 %p.0748, 9
  br i1 %cmp20.not.i.i617, label %do.end319.if.end42.i.i619_crit_edge, label %do.end36.i.i618, !prof !92

do.end319.if.end42.i.i619_crit_edge:              ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i.i619

do.end36.i.i618:                                  ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #10
  br label %if.end42.i.i619

if.end42.i.i619:                                  ; preds = %do.end36.i.i618, %do.end319.if.end42.i.i619_crit_edge
  %103 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr.i.i621 = getelementptr i8, ptr %104, i32 27648
  %add = shl i32 %p.0748, 3
  %mul.i.i622 = add i32 %add, 640
  %add.ptr81.i.i623 = getelementptr i8, ptr %add.ptr.i.i621, i32 %mul.i.i622
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i623) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  br i1 %cmp20.not.i.i617, label %if.end42.i.i619.lan_rmw.exit629_crit_edge, label %do.end36.i2.i625, !prof !92

if.end42.i.i619.lan_rmw.exit629_crit_edge:        ; preds = %if.end42.i.i619
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_rmw.exit629

do.end36.i2.i625:                                 ; preds = %if.end42.i.i619
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #10
  br label %lan_rmw.exit629

lan_rmw.exit629:                                  ; preds = %do.end36.i2.i625, %if.end42.i.i619.lan_rmw.exit629_crit_edge
  %106 = and i32 %105, 16711679
  %107 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr.i7.i627 = getelementptr i8, ptr %108, i32 27648
  %add.ptr81.i9.i628 = getelementptr i8, ptr %add.ptr.i7.i627, i32 %mul.i.i622
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i628, i32 %106) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %p.0748)
  %cmp20.not.i.i630 = icmp ult i32 %p.0748, 9
  br i1 %cmp20.not.i.i630, label %lan_rmw.exit629.lan_wr.exit_crit_edge, label %do.end36.i.i631, !prof !92

lan_rmw.exit629.lan_wr.exit_crit_edge:            ; preds = %lan_rmw.exit629
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_wr.exit

do.end36.i.i631:                                  ; preds = %lan_rmw.exit629
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #10
  br label %lan_wr.exit

lan_wr.exit:                                      ; preds = %do.end36.i.i631, %lan_rmw.exit629.lan_wr.exit_crit_edge
  %109 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i.i565, align 4
  %mul.i.i636 = shl i32 %p.0748, 7
  %add.ptr81.i.i637 = getelementptr i8, ptr %110, i32 28772
  %add.ptr82.i.i638 = getelementptr i8, ptr %add.ptr81.i.i637, i32 %mul.i.i636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i638, i32 -65536) #10, !srcloc !96
  %inc322 = add nuw nsw i32 %p.0748, 1
  %111 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %112 to i32
  %cmp302 = icmp ult i32 %inc322, %conv
  br i1 %cmp302, label %lan_wr.exit.do.end319_crit_edge, label %lan_wr.exit.lan_wr.exit659.preheader_crit_edge

lan_wr.exit.lan_wr.exit659.preheader_crit_edge:   ; preds = %lan_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_wr.exit659.preheader

lan_wr.exit.do.end319_crit_edge:                  ; preds = %lan_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end319

lan_wr.exit659.preheader:                         ; preds = %lan_wr.exit.lan_wr.exit659.preheader_crit_edge, %for.cond301.preheader.lan_wr.exit659.preheader_crit_edge
  br label %lan_wr.exit659

lan_wr.exit659:                                   ; preds = %lan_wr.exit659.lan_wr.exit659_crit_edge, %lan_wr.exit659.preheader
  %i.2749 = phi i32 [ %inc330, %lan_wr.exit659.lan_wr.exit659_crit_edge ], [ 0, %lan_wr.exit659.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %113 = ptrtoint ptr %arrayidx.i.i575 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i575, align 4
  %add.ptr.i.i645 = getelementptr i8, ptr %114, i32 32768
  %mul.i.i646 = shl i32 %i.2749, 3
  %add.ptr81.i.i647 = getelementptr i8, ptr %add.ptr.i.i645, i32 %mul.i.i646
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i647, i32 385875968) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %115 = ptrtoint ptr %arrayidx.i.i575 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i575, align 4
  %add.ptr.i.i655 = getelementptr i8, ptr %116, i32 32768
  %mul.i.i656 = add nuw nsw i32 %mul.i.i646, 4096
  %add.ptr81.i.i657 = getelementptr i8, ptr %add.ptr.i.i655, i32 %mul.i.i656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i657, i32 385875968) #10, !srcloc !96
  %inc330 = add nuw nsw i32 %i.2749, 1
  %exitcond750.not = icmp eq i32 %inc330, 96
  br i1 %exitcond750.not, label %do.end346, label %lan_wr.exit659.lan_wr.exit659_crit_edge

lan_wr.exit659.lan_wr.exit659_crit_edge:          ; preds = %lan_wr.exit659
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan_wr.exit659

do.end346:                                        ; preds = %lan_wr.exit659
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %117 = ptrtoint ptr %arrayidx.i.i575 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i575, align 4
  %add.ptr84.i.i665 = getelementptr i8, ptr %118, i32 28120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i665, i32 5243904) #10, !srcloc !96
  %119 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i.i671 = getelementptr i8, ptr %120, i32 27712
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i671) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %122 = and i32 %121, 16711679
  %123 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i9.i675 = getelementptr i8, ptr %124, i32 27712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i675, i32 %122) #10, !srcloc !96
  %125 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i.i680 = getelementptr i8, ptr %126, i32 28112
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i680) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %128 = and i32 %127, 16711679
  %129 = or i32 %128, 65536
  %130 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i9.i685 = getelementptr i8, ptr %131, i32 28112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i685, i32 %129) #10, !srcloc !96
  %132 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num_phys_ports, align 4
  %conv415 = zext i8 %133 to i32
  %sub416 = sub nsw i32 32, %conv415
  %shr = lshr i32 -1, %sub416
  %134 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i.i690 = getelementptr i8, ptr %135, i32 28136
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i690) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %137 = and i32 %136, 16711679
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %and3.i = and i32 %shr, 511
  %or.i693 = or i32 %138, %and3.i
  %139 = tail call i32 @llvm.bswap.i32(i32 %or.i693) #10
  %140 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i9.i695 = getelementptr i8, ptr %141, i32 28136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i695, i32 %139) #10, !srcloc !96
  %142 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %num_phys_ports, align 4
  %conv420 = zext i8 %143 to i32
  %sub422 = sub nsw i32 32, %conv420
  %shr423 = lshr i32 -1, %sub422
  %144 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i.i700 = getelementptr i8, ptr %145, i32 28144
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i700) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %147 = and i32 %146, 16711679
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %and3.i703 = and i32 %shr423, 511
  %or.i704 = or i32 %148, %and3.i703
  %149 = tail call i32 @llvm.bswap.i32(i32 %or.i704) #10
  %150 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i9.i706 = getelementptr i8, ptr %151, i32 28144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i706, i32 %149) #10, !srcloc !96
  %152 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %num_phys_ports, align 4
  %conv427 = zext i8 %153 to i32
  %sub429 = sub nsw i32 32, %conv427
  %shr430 = lshr i32 -1, %sub429
  %154 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i.i711 = getelementptr i8, ptr %155, i32 28120
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i711) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %157 = and i32 %156, 16711679
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %and3.i714 = and i32 %shr430, 511
  %or.i715 = or i32 %158, %and3.i714
  %159 = tail call i32 @llvm.bswap.i32(i32 %or.i715) #10
  %160 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i9.i717 = getelementptr i8, ptr %161, i32 28120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i717, i32 %159) #10, !srcloc !96
  %162 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %num_phys_ports, align 4
  %conv441 = zext i8 %163 to i32
  %sub443 = sub nsw i32 32, %conv441
  %shr444 = lshr i32 -1, %sub443
  %or473 = and i32 %shr444, 255
  %164 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i.i722 = getelementptr i8, ptr %165, i32 28128
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i722) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %167 = and i32 %166, 16711679
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %and474 = or i32 %or473, %168
  %or.i725 = or i32 %and474, 256
  %169 = tail call i32 @llvm.bswap.i32(i32 %or.i725) #10
  %170 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr81.i9.i727 = getelementptr i8, ptr %171, i32 28128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i9.i727, i32 %169) #10, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %arrayidx.i.i730 = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 47
  %172 = ptrtoint ptr %arrayidx.i.i730 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx.i.i730, align 4
  %add.ptr82.i.i732 = getelementptr i8, ptr %173, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i732, i32 16777216) #10, !srcloc !96
  %174 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr82.i.i738 = getelementptr i8, ptr %175, i32 29840
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i738) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %177 = or i32 %176, 16777216
  %178 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i.i565, align 4
  %add.ptr82.i10.i743 = getelementptr i8, ptr %179, i32 29840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i10.i743, i32 %177) #10, !srcloc !96
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_stats_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_mdb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_fdb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan966x_cleanup_ports(ptr nocapture noundef %lan966x) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys_ports = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 1
  %0 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp42.not = icmp eq i8 %1, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %p.043
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_netdev(ptr noundef nonnull %7) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %phylink = getelementptr inbounds %struct.lan966x_port, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phylink, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_lock() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2304
  tail call void @lan966x_port_config_down(ptr noundef %add.ptr.i.i) #10
  %phylink.i = getelementptr i8, ptr %11, i32 2376
  %12 = ptrtoint ptr %phylink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phylink.i, align 4
  tail call void @phylink_stop(ptr noundef %13) #10
  %14 = ptrtoint ptr %phylink.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phylink.i, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %15) #10
  tail call void @rtnl_unlock() #10
  %16 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phylink, align 4
  tail call void @phylink_destroy(ptr noundef %17) #10
  %18 = ptrtoint ptr %phylink to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %phylink, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %fwnode = getelementptr inbounds %struct.lan966x_port, ptr %5, i32 0, i32 12
  %19 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fwnode, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.end11.for.inc_crit_edge, label %if.then13

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fwnode_handle_put(ptr noundef nonnull %20) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %p.043, 1
  %21 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %xtr_irq = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 19
  %23 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xtr_irq, align 4
  tail call void @disable_irq(i32 noundef %24) #10
  %25 = ptrtoint ptr %xtr_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -6, ptr %xtr_irq, align 4
  %ana_irq = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 20
  %26 = ptrtoint ptr %ana_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ana_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool17.not = icmp eq i32 %27, 0
  br i1 %tobool17.not, label %for.end.if.end21_crit_edge, label %if.then18

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %27) #10
  %28 = ptrtoint ptr %ana_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -6, ptr %ana_irq, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.end.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan966x_rx_frame_word(ptr nocapture noundef readonly %lan966x, ptr nocapture noundef writeonly %rval) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 42
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #10, !srcloc !93
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483641, i32 %2)
  %cmp = icmp eq i32 %2, -2147483641
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 100000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 382) #10
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i6.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i6.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483641, i32 %6)
  %cmp9.not7.i = icmp eq i32 %6, -2147483641
  br i1 %cmp9.not7.i, label %if.then.land.lhs.true.i_crit_edge, label %if.then.for.end.loopexit.i_crit_edge

if.then.for.end.loopexit.i_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.loopexit.i

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then19.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %if.then19.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i2.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i2.i) #10, !srcloc !93
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  br label %lan966x_port_xtr_ready.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %cmp9.not.i = icmp eq i32 %13, -2147483641
  br i1 %cmp9.not.i, label %if.then19.i.land.lhs.true.i_crit_edge, label %if.then19.i.for.end.loopexit.i_crit_edge

if.then19.i.for.end.loopexit.i_crit_edge:         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.loopexit.i

if.then19.i.land.lhs.true.i_crit_edge:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.loopexit.i:                               ; preds = %if.then19.i.for.end.loopexit.i_crit_edge, %if.then.for.end.loopexit.i_crit_edge
  %.lcssa5.i = phi i32 [ %6, %if.then.for.end.loopexit.i_crit_edge ], [ %13, %if.then19.i.for.end.loopexit.i_crit_edge ]
  %14 = tail call i32 @llvm.bswap.i32(i32 %.lcssa5.i) #10
  br label %lan966x_port_xtr_ready.exit

lan966x_port_xtr_ready.exit:                      ; preds = %for.end.loopexit.i, %if.then15.i
  %val.0.i = phi i32 [ %10, %if.then15.i ], [ %14, %for.end.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440640, i32 %val.0.i)
  %cmp21.not.i.not = icmp eq i32 %val.0.i, 117440640
  br i1 %cmp21.not.i.not, label %lan966x_port_xtr_ready.exit.cleanup_crit_edge, label %lan966x_port_xtr_ready.exit.if.end4_crit_edge

lan966x_port_xtr_ready.exit.if.end4_crit_edge:    ; preds = %lan966x_port_xtr_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

lan966x_port_xtr_ready.exit.cleanup_crit_edge:    ; preds = %lan966x_port_xtr_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lan966x_port_xtr_ready.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %15 = add i32 %3, -128
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 8)
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end4.cleanup.sink.split_crit_edge [
    i32 5, label %if.end4.cleanup_crit_edge
    i32 0, label %if.end4.sw.bb5_crit_edge
    i32 1, label %if.end4.sw.bb5_crit_edge10
    i32 2, label %if.end4.sw.bb5_crit_edge11
    i32 3, label %if.end4.sw.bb5_crit_edge12
    i32 4, label %if.end4.sw.bb5_crit_edge13
    i32 6, label %sw.bb14
  ]

if.end4.sw.bb5_crit_edge13:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.end4.sw.bb5_crit_edge12:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.end4.sw.bb5_crit_edge11:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.end4.sw.bb5_crit_edge10:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.end4.sw.bb5_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %if.end4.sw.bb5_crit_edge, %if.end4.sw.bb5_crit_edge10, %if.end4.sw.bb5_crit_edge11, %if.end4.sw.bb5_crit_edge12, %if.end4.sw.bb5_crit_edge13
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 3
  %sub = sub nuw nsw i32 4, %and
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i3 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i3) #10, !srcloc !93
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483642, i32 %20)
  %cmp8 = icmp eq i32 %20, -2147483642
  br i1 %cmp8, label %if.then10, label %sw.bb5.cleanup.sink.split_crit_edge

sw.bb5.cleanup.sink.split_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then10:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i6 = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i6) #10, !srcloc !93
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i9 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i9) #10, !srcloc !93
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb14, %if.then10, %sw.bb5.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %29, %sw.bb14 ], [ %25, %if.then10 ], [ %21, %sw.bb5.cleanup.sink.split_crit_edge ], [ %3, %if.end4.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 4, %sw.bb14 ], [ %sub, %if.then10 ], [ %sub, %sw.bb5.cleanup.sink.split_crit_edge ], [ 4, %if.end4.cleanup.sink.split_crit_edge ]
  %30 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %rval, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %lan966x_port_xtr_ready.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %lan966x_port_xtr_ready.exit.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_irq_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_mac_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_learn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_port_set_vlan_aware(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_vlan_port_set_vid(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_vlan_port_apply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_mac_purge_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_mdb_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_fdb_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_register_notifier_blocks() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_lan966x_switch__708_997_lan966x_switch_driver_init6, !1, !"__initcall__kmod_lan966x_switch__708_997_lan966x_switch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 997, i32 1}
!2 = !{ptr @__exitcall_lan966x_switch_driver_exit, !3, !"__exitcall_lan966x_switch_driver_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 998, i32 1}
!4 = !{ptr @__UNIQUE_ID_description709, !5, !"__UNIQUE_ID_description709", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 1000, i32 1}
!6 = !{ptr @__UNIQUE_ID_author710, !7, !"__UNIQUE_ID_author710", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 1001, i32 1}
!8 = !{ptr @__UNIQUE_ID_file711, !9, !"__UNIQUE_ID_file711", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 1002, i32 1}
!10 = !{ptr @__UNIQUE_ID_license712, !9, !"__UNIQUE_ID_license712", i1 false, i1 false}
!11 = !{ptr @lan966x_port_netdev_ops, !12, !"lan966x_port_netdev_ops", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 353, i32 36}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 156, i32 19}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 130, i32 27}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 969, i32 11}
!21 = !{ptr @lan966x_driver, !22, !"lan966x_driver", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 965, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 845, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lan966x_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @lan966x_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 850, i32 50}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 853, i32 10}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 858, i32 10}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 862, i32 41}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 879, i32 51}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 885, i32 6}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 887, i32 3}
!43 = !{ptr @lan966x_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lan966x_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 891, i32 51}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 895, i32 7}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 897, i32 42}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 910, i32 40}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 79, i32 4}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lan966x_create_targets._entry, !54, !"_entry", i1 false, i1 false}
!59 = !{ptr @lan966x_create_targets._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 87, i32 4}
!62 = !{ptr @lan966x_create_targets._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lan966x_create_targets._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @lan966x_main_iomap, !65, !"lan966x_main_iomap", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 42, i32 46}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 802, i32 61}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 805, i32 10}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 807, i32 58}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 810, i32 10}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 470, i32 20}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 635, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @lan966x_probe_port._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @lan966x_probe_port._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @lan966x_match, !82, !"lan966x_match", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.c", i32 30, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 6738652}
!94 = !{i64 2158238837}
!95 = !{i64 2158239140}
!96 = !{i64 6738234}
!97 = !{i64 2158237082}
!98 = !{i64 2158237560}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 1, i32 2000}
