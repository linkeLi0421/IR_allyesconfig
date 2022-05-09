; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/hirschmann/hellcreek.c_pt.bc'
source_filename = "../drivers/net/dsa/hirschmann/hellcreek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hellcreek_fdb_entry = type { i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.devlink_region_ops = type { ptr, ptr, ptr, ptr }
%struct.hellcreek_counter = type { i8, ptr }
%struct.hellcreek_platform_data = type { ptr, i32, i32, i32, i32, i32, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hellcreek = type { ptr, ptr, ptr, ptr, %struct.ptp_clock_info, ptr, %struct.delayed_work, %struct.led_classdev, %struct.led_classdev, %struct.mutex, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i16, ptr, i64, i64, i16, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hellcreek_port = type { ptr, ptr, i32, i16, ptr, %struct.hellcreek_port_hwtstamp, ptr, %struct.delayed_work }
%struct.hellcreek_port_hwtstamp = type { i32, %struct.sk_buff_head, i32, ptr, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.devlink_resource_size_params = type { i64, i64, i64, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_port = type { %union.anon.150, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.168, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.168 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.hellcreek_devlink_vlan_entry = type { i16, i16 }

@__initcall__kmod_hellcreek_sw__541_2044_hellcreek_driver_init6 = internal global ptr @hellcreek_driver_init, section ".initcall6.init", align 4
@hellcreek_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hellcreek_probe, ptr @hellcreek_remove, ptr @hellcreek_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hellcreek_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hellcreek_driver_exit = internal global ptr @hellcreek_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author542 = internal constant [57 x i8] c"hellcreek_sw.author=Kurt Kanzenbach <kurt@linutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description543 = internal constant [53 x i8] c"hellcreek_sw.description=Hirschmann Hellcreek driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file544 = internal constant [58 x i8] c"hellcreek_sw.file=drivers/net/dsa/hirschmann/hellcreek_sw\00", section ".modinfo", align 1
@__UNIQUE_ID_license545 = internal constant [34 x i8] c"hellcreek_sw.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hellcreek\00", [22 x i8] zeroinitializer }, align 32
@hellcreek_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hirschmann,hellcreek-de1soc-r1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @de1soc_r1_pdata }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hellcreek_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&port->schedule_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@hellcreek_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&port->schedule_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@hellcreek_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hellcreek->reg_lock\00", [43 x i8] zeroinitializer }, align 32
@hellcreek_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&hellcreek->vlan_lock\00", [42 x i8] zeroinitializer }, align 32
@hellcreek_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hellcreek->ptp_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsn\00", [28 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 1917, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No memory region provided!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hellcreek_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/dsa/hirschmann/hellcreek.c\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry_ptr = internal global ptr @hellcreek_probe._entry, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.13, i32 1927, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No PTP memory region provided!\0A\00", [32 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry_ptr.19 = internal global ptr @hellcreek_probe._entry.17, section ".printk_index", align 4
@hellcreek_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.13, i32 1937, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No (known) chip found!\0A\00", [40 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry_ptr.22 = internal global ptr @hellcreek_probe._entry.20, section ".printk_index", align 4
@hellcreek_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.13, i32 1943, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Switch didn't become ready!\0A\00", [35 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry_ptr.25 = internal global ptr @hellcreek_probe._entry.23, section ".printk_index", align 4
@hellcreek_ds_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @hellcreek_get_tag_protocol, ptr null, ptr null, ptr @hellcreek_setup, ptr @hellcreek_teardown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hellcreek_phylink_get_caps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hellcreek_get_strings, ptr @hellcreek_get_ethtool_stats, ptr @hellcreek_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hellcreek_get_ts_info, ptr null, ptr null, ptr @hellcreek_port_enable, ptr @hellcreek_port_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hellcreek_port_prechangeupper, ptr null, ptr @hellcreek_port_bridge_join, ptr @hellcreek_port_bridge_leave, ptr @hellcreek_port_stp_state_set, ptr null, ptr @hellcreek_pre_bridge_flags, ptr @hellcreek_bridge_flags, ptr @hellcreek_vlan_filtering, ptr @hellcreek_vlan_add, ptr @hellcreek_vlan_del, ptr @hellcreek_fdb_add, ptr @hellcreek_fdb_del, ptr @hellcreek_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hellcreek_port_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hellcreek_port_hwtstamp_get, ptr @hellcreek_port_hwtstamp_set, ptr @hellcreek_port_txtstamp, ptr @hellcreek_port_rxtstamp, ptr null, ptr null, ptr @hellcreek_devlink_info_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to register switch\0A\00", [37 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.12, ptr @.str.13, i32 1967, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to setup PTP!\0A\00", [42 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry_ptr.29 = internal global ptr @hellcreek_probe._entry.27, section ".printk_index", align 4
@hellcreek_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.12, ptr @.str.13, i32 1973, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to setup hardware timestamping!\0A\00", [56 x i8] zeroinitializer }, align 32
@hellcreek_probe._entry_ptr.32 = internal global ptr @hellcreek_probe._entry.30, section ".printk_index", align 4
@hellcreek_start_schedule.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.13, ptr @.str.35, i8 1, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hellcreek_sw\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hellcreek_start_schedule\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Armed EST timer for port %d\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hellcreek_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.13, i32 213, ptr @.str.38, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Module ID=%02x Release=%04x Date=%04x TGD Version=%02x.%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hellcreek_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hellcreek_detect._entry_ptr = internal global ptr @hellcreek_detect._entry, section ".printk_index", align 4
@hellcreek_setup.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.39, ptr @.str.13, ptr @.str.40, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hellcreek_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set up the switch\0A\00", [45 x i8] zeroinitializer }, align 32
@hellcreek_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.13, i32 1389, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable IP core!\0A\00", [37 x i8] zeroinitializer }, align 32
@hellcreek_setup._entry_ptr = internal global ptr @hellcreek_setup._entry, section ".printk_index", align 4
@hellcreek_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.13, i32 1428, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to insert static PTP FDB entries\0A\00", [55 x i8] zeroinitializer }, align 32
@hellcreek_setup._entry_ptr.44 = internal global ptr @hellcreek_setup._entry.42, section ".printk_index", align 4
@hellcreek_setup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.39, ptr @.str.13, i32 1436, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to setup devlink resources!\0A\00", [60 x i8] zeroinitializer }, align 32
@hellcreek_setup._entry_ptr.47 = internal global ptr @hellcreek_setup._entry.45, section ".printk_index", align 4
@hellcreek_setup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.39, ptr @.str.13, i32 1443, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to setup devlink regions!\0A\00", [62 x i8] zeroinitializer }, align 32
@hellcreek_setup._entry_ptr.50 = internal global ptr @hellcreek_setup._entry.48, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hellcreek_apply_vlan.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.51, ptr @.str.13, ptr @.str.52, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hellcreek_apply_vlan\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Apply VLAN: port=%d vid=%u pvid=%d untagged=%d\00", [49 x i8] zeroinitializer }, align 32
@hellcreek_select_vlan_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.13, i32 393, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown port %d selected!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hellcreek_select_vlan_params\00", [35 x i8] zeroinitializer }, align 32
@hellcreek_select_vlan_params._entry_ptr = internal global ptr @hellcreek_select_vlan_params._entry, section ".printk_index", align 4
@hellcreek_unapply_vlan.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.55, ptr @.str.13, ptr @.str.56, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hellcreek_unapply_vlan\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unapply VLAN: port=%d vid=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@hellcreek_setup_fdb.l2_ptp = internal global { %struct.hellcreek_fdb_entry, [44 x i8] } { %struct.hellcreek_fdb_entry { i32 0, [6 x i8] c"\01\1B\19\00\00\00", i8 3, i8 0, i8 0, i8 0, i8 1, i8 6, i8 1 }, [44 x i8] zeroinitializer }, align 32
@hellcreek_setup_fdb.udp4_ptp = internal global { %struct.hellcreek_fdb_entry, [44 x i8] } { %struct.hellcreek_fdb_entry { i32 0, [6 x i8] c"\01\00^\00\01\81", i8 3, i8 0, i8 0, i8 0, i8 1, i8 6, i8 1 }, [44 x i8] zeroinitializer }, align 32
@hellcreek_setup_fdb.udp6_ptp = internal global { %struct.hellcreek_fdb_entry, [44 x i8] } { %struct.hellcreek_fdb_entry { i32 0, [6 x i8] c"33\00\00\01\81", i8 3, i8 0, i8 0, i8 0, i8 1, i8 6, i8 1 }, [44 x i8] zeroinitializer }, align 32
@hellcreek_setup_fdb.l2_p2p = internal global { %struct.hellcreek_fdb_entry, [44 x i8] } { %struct.hellcreek_fdb_entry { i32 0, [6 x i8] c"\01\80\C2\00\00\0E", i8 3, i8 0, i8 0, i8 1, i8 1, i8 6, i8 1 }, [44 x i8] zeroinitializer }, align 32
@hellcreek_setup_fdb.udp4_p2p = internal global { %struct.hellcreek_fdb_entry, [44 x i8] } { %struct.hellcreek_fdb_entry { i32 0, [6 x i8] c"\01\00^\00\00k", i8 3, i8 0, i8 0, i8 1, i8 1, i8 6, i8 1 }, [44 x i8] zeroinitializer }, align 32
@hellcreek_setup_fdb.udp6_p2p = internal global { %struct.hellcreek_fdb_entry, [44 x i8] } { %struct.hellcreek_fdb_entry { i32 0, [6 x i8] c"33\00\00\00k", i8 3, i8 0, i8 0, i8 1, i8 1, i8 6, i8 1 }, [44 x i8] zeroinitializer }, align 32
@hellcreek_setup_fdb.stp = internal global { %struct.hellcreek_fdb_entry, [44 x i8] } { %struct.hellcreek_fdb_entry { i32 0, [6 x i8] c"\01\80\C2\00\00\00", i8 3, i8 0, i8 0, i8 1, i8 1, i8 6, i8 1 }, [44 x i8] zeroinitializer }, align 32
@__hellcreek_fdb_add.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.13, ptr @.str.58, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__hellcreek_fdb_add\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Add static FDB entry: MAC=%pM, MASK=0x%02x, OBT=%d, PASS_BLOCKED=%d, REPRIO_EN=%d, PRIO=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VLAN\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FDB\00", [28 x i8] zeroinitializer }, align 32
@hellcreek_region_vlan_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.61, ptr @kfree, ptr @hellcreek_devlink_region_vlan_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@hellcreek_region_fdb_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.62, ptr @kfree, ptr @hellcreek_devlink_region_fdb_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vlan\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fdb\00", [28 x i8] zeroinitializer }, align 32
@hellcreek_counter = internal constant { [62 x %struct.hellcreek_counter], [112 x i8] } { [62 x %struct.hellcreek_counter] [%struct.hellcreek_counter { i8 0, ptr @.str.63 }, %struct.hellcreek_counter { i8 1, ptr @.str.64 }, %struct.hellcreek_counter { i8 2, ptr @.str.65 }, %struct.hellcreek_counter { i8 3, ptr @.str.66 }, %struct.hellcreek_counter { i8 4, ptr @.str.67 }, %struct.hellcreek_counter { i8 5, ptr @.str.68 }, %struct.hellcreek_counter { i8 6, ptr @.str.69 }, %struct.hellcreek_counter { i8 7, ptr @.str.70 }, %struct.hellcreek_counter { i8 8, ptr @.str.71 }, %struct.hellcreek_counter { i8 9, ptr @.str.72 }, %struct.hellcreek_counter { i8 10, ptr @.str.73 }, %struct.hellcreek_counter { i8 11, ptr @.str.74 }, %struct.hellcreek_counter { i8 12, ptr @.str.75 }, %struct.hellcreek_counter { i8 13, ptr @.str.76 }, %struct.hellcreek_counter { i8 14, ptr @.str.77 }, %struct.hellcreek_counter { i8 15, ptr @.str.78 }, %struct.hellcreek_counter { i8 16, ptr @.str.79 }, %struct.hellcreek_counter { i8 17, ptr @.str.80 }, %struct.hellcreek_counter { i8 18, ptr @.str.81 }, %struct.hellcreek_counter { i8 19, ptr @.str.82 }, %struct.hellcreek_counter { i8 20, ptr @.str.83 }, %struct.hellcreek_counter { i8 21, ptr @.str.84 }, %struct.hellcreek_counter { i8 22, ptr @.str.85 }, %struct.hellcreek_counter { i8 23, ptr @.str.86 }, %struct.hellcreek_counter { i8 24, ptr @.str.87 }, %struct.hellcreek_counter { i8 25, ptr @.str.88 }, %struct.hellcreek_counter { i8 26, ptr @.str.89 }, %struct.hellcreek_counter { i8 27, ptr @.str.90 }, %struct.hellcreek_counter { i8 28, ptr @.str.91 }, %struct.hellcreek_counter { i8 29, ptr @.str.92 }, %struct.hellcreek_counter { i8 30, ptr @.str.93 }, %struct.hellcreek_counter { i8 31, ptr @.str.94 }, %struct.hellcreek_counter { i8 33, ptr @.str.95 }, %struct.hellcreek_counter { i8 34, ptr @.str.96 }, %struct.hellcreek_counter { i8 35, ptr @.str.97 }, %struct.hellcreek_counter { i8 37, ptr @.str.98 }, %struct.hellcreek_counter { i8 38, ptr @.str.99 }, %struct.hellcreek_counter { i8 39, ptr @.str.100 }, %struct.hellcreek_counter { i8 40, ptr @.str.101 }, %struct.hellcreek_counter { i8 41, ptr @.str.102 }, %struct.hellcreek_counter { i8 42, ptr @.str.103 }, %struct.hellcreek_counter { i8 43, ptr @.str.104 }, %struct.hellcreek_counter { i8 44, ptr @.str.105 }, %struct.hellcreek_counter { i8 45, ptr @.str.106 }, %struct.hellcreek_counter { i8 46, ptr @.str.107 }, %struct.hellcreek_counter { i8 47, ptr @.str.108 }, %struct.hellcreek_counter { i8 48, ptr @.str.109 }, %struct.hellcreek_counter { i8 49, ptr @.str.110 }, %struct.hellcreek_counter { i8 50, ptr @.str.111 }, %struct.hellcreek_counter { i8 51, ptr @.str.112 }, %struct.hellcreek_counter { i8 52, ptr @.str.113 }, %struct.hellcreek_counter { i8 53, ptr @.str.114 }, %struct.hellcreek_counter { i8 54, ptr @.str.115 }, %struct.hellcreek_counter { i8 55, ptr @.str.116 }, %struct.hellcreek_counter { i8 56, ptr @.str.117 }, %struct.hellcreek_counter { i8 57, ptr @.str.118 }, %struct.hellcreek_counter { i8 58, ptr @.str.119 }, %struct.hellcreek_counter { i8 59, ptr @.str.120 }, %struct.hellcreek_counter { i8 60, ptr @.str.121 }, %struct.hellcreek_counter { i8 61, ptr @.str.122 }, %struct.hellcreek_counter { i8 62, ptr @.str.123 }, %struct.hellcreek_counter { i8 63, ptr @.str.124 }], [112 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxFiltered\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxOctets1k\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RxVTAG\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxL2BAD\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RxOverloadDrop\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RxUC\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RxMC\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RxBC\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxRS<64\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RxRS64\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxRS65_127\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxRS128_255\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxRS256_511\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RxRS512_1023\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxRS1024_1518\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxRS>1518\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue0\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue1\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue2\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue3\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue4\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue5\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue6\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxTailDropQueue7\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass0\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass1\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass2\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass3\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass4\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass5\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass6\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxTrafficClass7\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxOctets1k\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TxVTAG\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxL2BAD\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TxUC\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TxMC\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TxBC\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxTS<64\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TxTS64\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxTS65_127\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxTS128_255\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxTS256_511\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TxTS512_1023\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TxTS1024_1518\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxTS>1518\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun0\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun1\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun2\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun3\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun4\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun5\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun6\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxTrafficClassOverrun7\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass0\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass1\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass2\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass3\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass4\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass5\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass6\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxTrafficClass7\00", [16 x i8] zeroinitializer }, align 32
@hellcreek_port_enable.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.125, ptr @.str.13, ptr @.str.126, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hellcreek_port_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Enable port %d\0A\00", [16 x i8] zeroinitializer }, align 32
@hellcreek_port_disable.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.127, ptr @.str.13, ptr @.str.128, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hellcreek_port_disable\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Disable port %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hellcreek_port_prechangeupper.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.129, ptr @.str.13, ptr @.str.130, i8 1, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hellcreek_port_prechangeupper\00", [34 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Pre change upper for port %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hellcreek_port_bridge_join.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.131, ptr @.str.13, ptr @.str.132, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hellcreek_port_bridge_join\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Port %d joins a bridge\0A\00", [40 x i8] zeroinitializer }, align 32
@hellcreek_port_bridge_leave.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.133, ptr @.str.13, ptr @.str.134, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hellcreek_port_bridge_leave\00", [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Port %d leaves a bridge\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BLOCKING\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LISTENING\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LEARNING\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FORWARDING\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@hellcreek_port_stp_state_set.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.141, ptr @.str.13, ptr @.str.142, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hellcreek_port_stp_state_set\00", [35 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Configured STP state for port %d: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@hellcreek_port_set_ucast_flood.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.143, ptr @.str.13, ptr @.str.144, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hellcreek_port_set_ucast_flood\00", [33 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s unicast flooding on port %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@hellcreek_port_set_mcast_flood.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.147, ptr @.str.13, ptr @.str.148, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hellcreek_port_set_mcast_flood\00", [33 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s multicast flooding on port %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hellcreek_vlan_filtering.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.149, ptr @.str.13, ptr @.str.150, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hellcreek_vlan_filtering\00", [39 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s VLAN filtering on port %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hellcreek_vlan_add.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.151, ptr @.str.13, ptr @.str.152, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hellcreek_vlan_add\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Add VLAN %d on port %d, %s, %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"untagged\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tagged\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PVID\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no PVID\00", [24 x i8] zeroinitializer }, align 32
@hellcreek_vlan_prepare.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.157, ptr @.str.13, ptr @.str.158, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hellcreek_vlan_prepare\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VLAN prepare for port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hellcreek_vlan_prepare.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"hellcreek_sw: VID restricted by driver\00", [57 x i8] zeroinitializer }, align 32
@hellcreek_vlan_del.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.159, ptr @.str.13, ptr @.str.160, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hellcreek_vlan_del\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Remove VLAN %d on port %d\0A\00", [37 x i8] zeroinitializer }, align 32
@hellcreek_fdb_add.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.161, ptr @.str.13, ptr @.str.162, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hellcreek_fdb_add\00", [46 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Add FDB entry for MAC=%pM\0A\00", [37 x i8] zeroinitializer }, align 32
@hellcreek_fdb_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.13, i32 848, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add FDB entry!\0A\00", [38 x i8] zeroinitializer }, align 32
@hellcreek_fdb_add._entry_ptr = internal global ptr @hellcreek_fdb_add._entry, section ".printk_index", align 4
@hellcreek_fdb_add._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.161, ptr @.str.13, i32 855, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to delete FDB entry!\0A\00", [35 x i8] zeroinitializer }, align 32
@hellcreek_fdb_add._entry_ptr.166 = internal global ptr @hellcreek_fdb_add._entry.164, section ".printk_index", align 4
@hellcreek_fdb_add._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.13, i32 863, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@hellcreek_fdb_add._entry_ptr.168 = internal global ptr @hellcreek_fdb_add._entry.167, section ".printk_index", align 4
@__hellcreek_fdb_del.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.169, ptr @.str.13, ptr @.str.170, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__hellcreek_fdb_del\00", [44 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Delete FDB entry: MAC=%pM!\0A\00", [36 x i8] zeroinitializer }, align 32
@hellcreek_fdb_del.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.171, ptr @.str.13, ptr @.str.172, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hellcreek_fdb_del\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Delete FDB entry for MAC=%pM\0A\00", [34 x i8] zeroinitializer }, align 32
@hellcreek_fdb_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.13, i32 888, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FDB entry for deletion not found!\0A\00", [61 x i8] zeroinitializer }, align 32
@hellcreek_fdb_del._entry_ptr = internal global ptr @hellcreek_fdb_del._entry, section ".printk_index", align 4
@hellcreek_fdb_del._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.171, ptr @.str.13, i32 893, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@hellcreek_fdb_del._entry_ptr.175 = internal global ptr @hellcreek_fdb_del._entry.174, section ".printk_index", align 4
@hellcreek_fdb_del._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.171, ptr @.str.13, i32 902, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@hellcreek_fdb_del._entry_ptr.177 = internal global ptr @hellcreek_fdb_del._entry.176, section ".printk_index", align 4
@hellcreek_fdb_dump.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.178, ptr @.str.13, ptr @.str.179, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hellcreek_fdb_dump\00", [45 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FDB dump for port %d, entries=%d!\0A\00", [61 x i8] zeroinitializer }, align 32
@hellcreek_port_set_schedule.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.180, ptr @.str.13, ptr @.str.181, i8 1, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hellcreek_port_set_schedule\00", [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Configure traffic schedule on port %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hellcreek_port_del_schedule.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.182, ptr @.str.13, ptr @.str.183, i8 1, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hellcreek_port_del_schedule\00", [36 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Remove traffic schedule on port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asic.id\00", [24 x i8] zeroinitializer }, align 32
@de1soc_r1_pdata = internal constant { %struct.hellcreek_platform_data, [36 x i8] } { %struct.hellcreek_platform_data { ptr @.str.185, i32 4, i32 1, i32 1, i32 1, i32 0, i16 19504 }, [36 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"r4c30\00", [26 x i8] zeroinitializer }, align 32
@switch.table.hellcreek_apply_vlan = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -4, i32 -13, i32 -49, i32 -193], [16 x i8] zeroinitializer }, align 32
@switch.table.hellcreek_unapply_vlan = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -4, i32 -13, i32 -49, i32 -193], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"hellcreek_driver\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2035, i32 31 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2040, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"hellcreek_of_match\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2026, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1905, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1909, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1910, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1911, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1915, i32 59 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1917, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1925, i32 59 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1927, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1937, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1943, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"hellcreek_ds_ops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1827, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1961, i32 27 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1967, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1973, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1664, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 212, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1384, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1389, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1427, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1435, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1442, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 403, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 393, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 432, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [7 x i8] c"l2_ptp\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1056, i32 36 }
@___asan_gen_.360 = private unnamed_addr constant [9 x i8] c"udp4_ptp\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1067, i32 36 }
@___asan_gen_.363 = private unnamed_addr constant [9 x i8] c"udp6_ptp\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1078, i32 36 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"l2_p2p\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1089, i32 36 }
@___asan_gen_.369 = private unnamed_addr constant [9 x i8] c"udp4_p2p\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1100, i32 36 }
@___asan_gen_.372 = private unnamed_addr constant [9 x i8] c"udp6_p2p\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1111, i32 36 }
@___asan_gen_.375 = private unnamed_addr constant [4 x i8] c"stp\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1122, i32 36 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 713, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1223, i32 42 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1230, i32 42 }
@___asan_gen_.390 = private unnamed_addr constant [26 x i8] c"hellcreek_region_vlan_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1320, i32 34 }
@___asan_gen_.393 = private unnamed_addr constant [25 x i8] c"hellcreek_region_fdb_ops\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1326, i32 34 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1321, i32 14 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1327, i32 14 }
@___asan_gen_.402 = private unnamed_addr constant [18 x i8] c"hellcreek_counter\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 31, i32 39 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 32, i32 10 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 33, i32 10 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 34, i32 10 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 35, i32 10 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 36, i32 10 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 37, i32 10 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 38, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 39, i32 10 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 40, i32 10 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 41, i32 10 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 42, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 43, i32 10 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 44, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 45, i32 10 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 46, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 47, i32 10 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 48, i32 10 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 49, i32 10 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 50, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 51, i32 10 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 52, i32 10 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 53, i32 10 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 54, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 55, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 56, i32 10 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 57, i32 10 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 58, i32 10 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 59, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 60, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 61, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 62, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 63, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 64, i32 10 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 65, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 66, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 67, i32 10 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 68, i32 10 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 69, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 70, i32 10 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 71, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 72, i32 10 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 73, i32 10 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 74, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 75, i32 10 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 76, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 77, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 78, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 79, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 80, i32 10 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 81, i32 10 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 82, i32 10 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 83, i32 10 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 84, i32 10 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 85, i32 10 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 86, i32 10 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 87, i32 10 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 88, i32 10 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 89, i32 10 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 90, i32 10 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 91, i32 10 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 92, i32 10 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 93, i32 10 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 247, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 270, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1496, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 682, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 699, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 499, i32 15 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 504, i32 15 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 509, i32 15 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 514, i32 15 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 519, i32 15 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 524, i32 15 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 533, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 607, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 632, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 967, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 463, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 350, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 363, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 477, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 836, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 848, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 855, i32 4 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 863, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 745, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 881, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 888, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 893, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 902, i32 5 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 931, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1706, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1760, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1173, i32 12 }
@___asan_gen_.768 = private unnamed_addr constant [16 x i8] c"de1soc_r1_pdata\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2016, i32 45 }
@___asan_gen_.771 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.772 = private constant [42 x i8] c"../drivers/net/dsa/hirschmann/hellcreek.c\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2017, i32 12 }
@___asan_gen_.774 = private unnamed_addr constant [34 x i8] c"switch.table.hellcreek_apply_vlan\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [36 x i8] c"switch.table.hellcreek_unapply_vlan\00", align 1
@llvm.compiler.used = appending global [223 x ptr] [ptr @__UNIQUE_ID_author542, ptr @__UNIQUE_ID_description543, ptr @__UNIQUE_ID_file544, ptr @__UNIQUE_ID_license545, ptr @__exitcall_hellcreek_driver_exit, ptr @__initcall__kmod_hellcreek_sw__541_2044_hellcreek_driver_init6, ptr @hellcreek_detect._entry, ptr @hellcreek_detect._entry_ptr, ptr @hellcreek_driver_exit, ptr @hellcreek_fdb_add._entry, ptr @hellcreek_fdb_add._entry.164, ptr @hellcreek_fdb_add._entry.167, ptr @hellcreek_fdb_add._entry_ptr, ptr @hellcreek_fdb_add._entry_ptr.166, ptr @hellcreek_fdb_add._entry_ptr.168, ptr @hellcreek_fdb_del._entry, ptr @hellcreek_fdb_del._entry.174, ptr @hellcreek_fdb_del._entry.176, ptr @hellcreek_fdb_del._entry_ptr, ptr @hellcreek_fdb_del._entry_ptr.175, ptr @hellcreek_fdb_del._entry_ptr.177, ptr @hellcreek_probe._entry, ptr @hellcreek_probe._entry.17, ptr @hellcreek_probe._entry.20, ptr @hellcreek_probe._entry.23, ptr @hellcreek_probe._entry.27, ptr @hellcreek_probe._entry.30, ptr @hellcreek_probe._entry_ptr, ptr @hellcreek_probe._entry_ptr.19, ptr @hellcreek_probe._entry_ptr.22, ptr @hellcreek_probe._entry_ptr.25, ptr @hellcreek_probe._entry_ptr.29, ptr @hellcreek_probe._entry_ptr.32, ptr @hellcreek_select_vlan_params._entry, ptr @hellcreek_select_vlan_params._entry_ptr, ptr @hellcreek_setup._entry, ptr @hellcreek_setup._entry.42, ptr @hellcreek_setup._entry.45, ptr @hellcreek_setup._entry.48, ptr @hellcreek_setup._entry_ptr, ptr @hellcreek_setup._entry_ptr.44, ptr @hellcreek_setup._entry_ptr.47, ptr @hellcreek_setup._entry_ptr.50, ptr @hellcreek_driver, ptr @.str, ptr @hellcreek_of_match, ptr @hellcreek_probe.__key, ptr @.str.1, ptr @hellcreek_probe.__key.2, ptr @.str.3, ptr @hellcreek_probe.__key.4, ptr @.str.5, ptr @hellcreek_probe.__key.6, ptr @.str.7, ptr @hellcreek_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @hellcreek_ds_ops, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @hellcreek_setup_fdb.l2_ptp, ptr @hellcreek_setup_fdb.udp4_ptp, ptr @hellcreek_setup_fdb.udp6_ptp, ptr @hellcreek_setup_fdb.l2_p2p, ptr @hellcreek_setup_fdb.udp4_p2p, ptr @hellcreek_setup_fdb.udp6_p2p, ptr @hellcreek_setup_fdb.stp, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @hellcreek_region_vlan_ops, ptr @hellcreek_region_fdb_ops, ptr @.str.61, ptr @.str.62, ptr @hellcreek_counter, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @hellcreek_vlan_prepare.__msg, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @de1soc_r1_pdata, ptr @.str.185, ptr @switch.table.hellcreek_apply_vlan, ptr @switch.table.hellcreek_unapply_vlan], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_ds_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_select_vlan_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup_fdb.l2_ptp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup_fdb.udp4_ptp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup_fdb.udp6_ptp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup_fdb.l2_p2p to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup_fdb.udp4_p2p to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup_fdb.udp6_p2p to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_setup_fdb.stp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_region_vlan_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_region_fdb_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_counter to i32), i32 496, i32 608, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_vlan_prepare.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_fdb_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_fdb_add._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_fdb_add._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_fdb_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_fdb_del._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_fdb_del._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de1soc_r1_pdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hellcreek_apply_vlan to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hellcreek_unapply_vlan to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hellcreek_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @hellcreek_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1352, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup132

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4096, i32 noundef 3520) #12
  %vidmbrcfg = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 17
  %0 = ptrtoint ptr %vidmbrcfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5.i.i, ptr %vidmbrcfg, align 4
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup132_crit_edge, label %if.end6

if.end.cleanup132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup132

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #12
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %call.i, align 8
  %num_ports = getelementptr inbounds %struct.hellcreek_platform_data, ptr %call7, i32 0, i32 1
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 204) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !394

devm_kcalloc.exit.thread:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %ports230 = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %ports230 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ports230, align 4
  br label %cleanup132

devm_kcalloc.exit:                                ; preds = %if.end6
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i220 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %7, i32 noundef 3520) #12
  %ports = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i220, ptr %ports, align 4
  %tobool11.not = icmp eq ptr %call5.i.i220, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup132_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup132_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup132

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  %num_ports15232 = getelementptr inbounds %struct.hellcreek_platform_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %num_ports15232 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_ports15232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp233 = icmp sgt i32 %12, 0
  br i1 %cmp233, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body45_crit_edge

for.cond.preheader.do.body45_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body45

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0234 = phi i32 [ %inc, %if.end26.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %13 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.hellcreek_port, ptr %14, i32 %i.0234
  %call5.i.i221 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 496, i32 noundef 3520) #12
  %counter_values = getelementptr %struct.hellcreek_port, ptr %14, i32 %i.0234, i32 4
  %15 = ptrtoint ptr %counter_values to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i221, ptr %counter_values, align 4
  %tobool19.not = icmp eq ptr %call5.i.i221, null
  br i1 %tobool19.not, label %for.body.cleanup132_crit_edge, label %if.end21

for.body.cleanup132_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup132

if.end21:                                         ; preds = %for.body
  %call5.i.i224 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 512, i32 noundef 3520) #12
  %vlan_dev_bitmap = getelementptr %struct.hellcreek_port, ptr %14, i32 %i.0234, i32 1
  %16 = ptrtoint ptr %vlan_dev_bitmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i224, ptr %vlan_dev_bitmap, align 4
  %tobool24.not = icmp eq ptr %call5.i.i224, null
  br i1 %tobool24.not, label %if.end21.cleanup132_crit_edge, label %if.end26

if.end21.cleanup132_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup132

if.end26:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %arrayidx, align 4
  %port28 = getelementptr %struct.hellcreek_port, ptr %14, i32 %i.0234, i32 2
  %18 = ptrtoint ptr %port28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0234, ptr %port28, align 4
  %schedule_work = getelementptr %struct.hellcreek_port, ptr %14, i32 %i.0234, i32 7
  tail call void @__init_work(ptr noundef %schedule_work, i32 noundef 0) #12
  %19 = ptrtoint ptr %schedule_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %schedule_work, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %schedule_work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @hellcreek_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry36 = getelementptr inbounds %struct.work_struct, ptr %schedule_work, i32 0, i32 1
  %20 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %schedule_work, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry36, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %schedule_work, i32 0, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hellcreek_check_schedule, ptr %func, align 4
  %timer = getelementptr %struct.hellcreek_port, ptr %14, i32 %i.0234, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @hellcreek_probe.__key.2) #12
  %inc = add nuw nsw i32 %i.0234, 1
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 8
  %num_ports15 = getelementptr inbounds %struct.hellcreek_platform_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %num_ports15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ports15, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %if.end26.for.body_crit_edge, label %if.end26.do.body45_crit_edge

if.end26.do.body45_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body45

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body45:                                        ; preds = %if.end26.do.body45_crit_edge, %for.cond.preheader.do.body45_crit_edge
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @hellcreek_probe.__key.4) #12
  %vlan_lock = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %vlan_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @hellcreek_probe.__key.6) #12
  %ptp_lock = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %ptp_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @hellcreek_probe.__key.8) #12
  %dev54 = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %dev54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %dev54, align 4
  %call55 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.10) #12
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %do.end60, label %if.end61

do.end60:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  br label %cleanup132

if.end61:                                         ; preds = %do.body45
  %call62 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call55) #12
  %base = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 14
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call62, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %call62 to i32
  br label %cleanup132

if.end68:                                         ; preds = %if.end61
  %call69 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.16) #12
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %do.end74, label %if.end75

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #15
  br label %cleanup132

if.end75:                                         ; preds = %if.end68
  %call76 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call69) #12
  %ptp_base = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 15
  %30 = ptrtoint ptr %ptp_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call76, ptr %ptp_base, align 4
  %cmp.i227 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %call76 to i32
  br label %cleanup132

if.end82:                                         ; preds = %if.end75
  %call83 = tail call fastcc i32 @hellcreek_detect(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end89, label %do.end88

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #15
  br label %cleanup132

if.end89:                                         ; preds = %if.end82
  %call90 = tail call fastcc i32 @hellcreek_wait_until_ready(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end96, label %do.end95

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #15
  br label %cleanup132

if.end96:                                         ; preds = %if.end89
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 344
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %35 = lshr i16 %34, 7
  %36 = and i16 %35, 480
  %mul.i = zext i16 %36 to i32
  %fdb_entries.i = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 21
  %37 = ptrtoint ptr %fdb_entries.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.i, ptr %fdb_entries.i, align 4
  %call.i228 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #12
  %ds = getelementptr inbounds %struct.hellcreek, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i228, ptr %ds, align 8
  %tobool99.not = icmp eq ptr %call.i228, null
  br i1 %tobool99.not, label %if.end96.cleanup132_crit_edge, label %if.end101

if.end96.cleanup132_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup132

if.end101:                                        ; preds = %if.end96
  %39 = ptrtoint ptr %call.i228 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev1, ptr %call.i228, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %call.i228, i32 0, i32 5
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %priv, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %call.i228, i32 0, i32 8
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @hellcreek_ds_ops, ptr %ops, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 8
  %num_ports107 = getelementptr inbounds %struct.hellcreek_platform_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %num_ports107 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_ports107, align 4
  %num_ports109 = getelementptr inbounds %struct.dsa_switch, ptr %call.i228, i32 0, i32 18
  %46 = ptrtoint ptr %num_ports109 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %num_ports109, align 4
  %num_tx_queues = getelementptr inbounds %struct.dsa_switch, ptr %call.i228, i32 0, i32 15
  %47 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %num_tx_queues, align 4
  %call112 = tail call i32 @dsa_register_switch(ptr noundef nonnull %call.i228) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end116, label %if.then114

if.then114:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %call115 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call112, ptr noundef nonnull @.str.26) #12
  br label %cleanup132

if.end116:                                        ; preds = %if.end101
  %call117 = tail call i32 @hellcreek_ptp_setup(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end123, label %do.end122

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #15
  br label %err_ptp_setup

if.end123:                                        ; preds = %if.end116
  %call124 = tail call i32 @hellcreek_hwtstamp_setup(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end130, label %do.end129

do.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #15
  tail call void @hellcreek_ptp_free(ptr noundef nonnull %call.i) #12
  br label %err_ptp_setup

if.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup132

err_ptp_setup:                                    ; preds = %do.end129, %do.end122
  %ret.0 = phi i32 [ %call117, %do.end122 ], [ %call124, %do.end129 ]
  %49 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ds, align 8
  tail call void @dsa_unregister_switch(ptr noundef %50) #12
  br label %cleanup132

cleanup132:                                       ; preds = %err_ptp_setup, %if.end130, %if.then114, %if.end96.cleanup132_crit_edge, %do.end95, %do.end88, %if.then79, %do.end74, %if.then65, %do.end60, %if.end21.cleanup132_crit_edge, %for.body.cleanup132_crit_edge, %devm_kcalloc.exit.cleanup132_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup132_crit_edge, %entry.cleanup132_crit_edge
  %retval.2 = phi i32 [ %29, %if.then65 ], [ %31, %if.then79 ], [ %call83, %do.end88 ], [ %call90, %do.end95 ], [ %call112, %if.then114 ], [ %ret.0, %err_ptp_setup ], [ 0, %if.end130 ], [ -19, %do.end74 ], [ -19, %do.end60 ], [ -12, %entry.cleanup132_crit_edge ], [ -12, %if.end.cleanup132_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup132_crit_edge ], [ -12, %if.end96.cleanup132_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.end21.cleanup132_crit_edge ], [ -12, %for.body.cleanup132_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hellcreek_hwtstamp_free(ptr noundef nonnull %1) #12
  tail call void @hellcreek_ptp_free(ptr noundef nonnull %1) #12
  %ds = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 8
  tail call void @dsa_unregister_switch(ptr noundef %3) #12
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_shutdown(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ds = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 8
  tail call void @dsa_switch_shutdown(ptr noundef %3) #12
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_check_schedule(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %port = getelementptr i8, ptr %work, i32 -96
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %ports.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %ptp_lock.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #12
  %seconds.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %seconds.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seconds.i, align 8
  %last_ts.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %last_ts.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last_ts.i, align 8
  tail call void @mutex_unlock(ptr noundef %ptp_lock.i) #12
  %current_schedule.i = getelementptr %struct.hellcreek_port, ptr %5, i32 %3, i32 6
  %10 = ptrtoint ptr %current_schedule.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_schedule.i, align 4
  %base_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %base_time.i, align 8
  %mul.neg.i = mul i64 %7, -1000000000
  %add.neg.i = sub i64 %mul.neg.i, %9
  %sub.i = add i64 %add.neg.i, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 4000000000, i64 %sub.i)
  %cmp.i = icmp slt i64 %sub.i, 4000000000
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  tail call fastcc void @hellcreek_start_schedule(ptr noundef %1, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 200) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hellcreek_detect(ptr nocapture noundef readonly %hellcreek) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #12, !srcloc !395
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 2
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %add.ptr.i43 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %add.ptr.i45 = getelementptr i8, ptr %11, i32 6
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i45) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i47) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %17, i32 358
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i49) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %19 = ptrtoint ptr %hellcreek to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hellcreek, align 8
  %module_id = getelementptr inbounds %struct.hellcreek_platform_data, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %module_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %module_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %22)
  %cmp.not = icmp eq i16 %3, %22
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %23 = tail call i16 @llvm.bswap.i16(i16 %18) #12
  %conv = zext i16 %3 to i32
  %24 = zext i16 %9 to i32
  %25 = zext i16 %6 to i32
  %26 = shl nuw i32 %25, 16
  %27 = or i32 %26, %24
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = zext i16 %15 to i32
  %30 = zext i16 %12 to i32
  %31 = shl nuw i32 %30, 16
  %32 = or i32 %31, %29
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %shr = lshr i16 %23, 8
  %conv15 = zext i16 %shr to i32
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = and i16 %23, 255
  %conv22 = zext i16 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %28, i32 noundef %33, i32 noundef %conv15, i32 noundef %conv22) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hellcreek_wait_until_ready(ptr nocapture noundef readonly %hellcreek) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #12
  %add.i = add i64 %call, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 170) #12
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %1, i32 10
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  %3 = and i16 %2, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not36 = icmp eq i16 %3, 0
  br i1 %tobool.not36, label %entry.land.lhs.true_crit_edge, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 3, i32 noundef 2) #12
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 10
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  %7 = and i16 %6, 64
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then20.land.lhs.true_crit_edge, label %if.then20.for.end.thread_crit_edge

if.then20.for.end.thread_crit_edge:               ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %9, i32 10
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i32) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  %11 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool24.not = icmp eq i16 %11, 0
  %spec.select = select i1 %tobool24.not, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.then20.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %12 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then20.for.end.thread_crit_edge ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hellcreek_ptp_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hellcreek_hwtstamp_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hellcreek_ptp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_start_schedule(ptr noundef %hellcreek, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 5
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %conv.i = trunc i32 %port to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 360
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %2) #12, !srcloc !399
  %ptp_lock = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #12
  %seconds = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 18
  %5 = ptrtoint ptr %seconds to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %seconds, align 8
  %mul = mul i64 %6, 1000000000
  %last_ts = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 19
  %7 = ptrtoint ptr %last_ts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_ts, align 8
  %add = add i64 %mul, %8
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #12
  %current_schedule = getelementptr %struct.hellcreek_port, ptr %1, i32 %port, i32 6
  %9 = ptrtoint ptr %current_schedule to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_schedule, align 4
  %base_time2 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base_time2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %base_time2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %12)
  %cmp3.i = icmp sgt i64 %add, %12
  br i1 %cmp3.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cycle_time4 = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %cycle_time4 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cycle_time4, align 8
  %sub = sub i64 %add, %12
  %conv7 = and i64 %14, 4294967295
  %call8 = tail call i64 @div64_s64(i64 noundef %sub, i64 noundef %conv7) #12
  %add9 = add i64 %call8, 1
  %mul11 = mul i64 %add9, %conv7
  %add12 = add i64 %mul11, %12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base_time.0 = phi i64 [ %add12, %if.then ], [ %12, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12
  %15 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %base_time.0) #12
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %16 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec.i, align 8
  %conv.i39 = trunc i32 %17 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @arm_heavy_mb() #12
  %18 = call i16 @llvm.bswap.i16(i16 %conv.i39) #12
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i41 = getelementptr i8, ptr %20, i32 368
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i41, i16 %18) #12, !srcloc !399
  %21 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_nsec.i, align 8
  %shr.i = lshr i32 %22, 16
  %conv3.i = trunc i32 %shr.i to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @arm_heavy_mb() #12
  %23 = call i16 @llvm.bswap.i16(i16 %conv3.i) #12
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %25, i32 370
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %23) #12, !srcloc !399
  %26 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ts.i, align 8
  %28 = trunc i64 %27 to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @arm_heavy_mb() #12
  %29 = shl i16 %28, 8
  %conv5.i = and i16 %29, 1792
  %30 = or i16 %conv5.i, 12288
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %32, i32 372
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i, i16 %30) #12, !srcloc !399
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12
  %33 = ptrtoint ptr %current_schedule to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %current_schedule, align 4
  call void @taprio_offload_free(ptr noundef %34) #12
  %35 = ptrtoint ptr %current_schedule to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %current_schedule, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_start_schedule.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_start_schedule, %if.then18)) #12
          to label %do.end [label %if.then18], !srcloc !400

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %port19 = getelementptr %struct.hellcreek_port, ptr %1, i32 %port, i32 2
  %38 = ptrtoint ptr %port19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_start_schedule.__UNIQUE_ID_ddebug538, ptr noundef %37, ptr noundef nonnull @.str.35, i32 noundef %39) #12
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @taprio_offload_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hellcreek_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_setup(ptr noundef %ds) #2 align 64 {
entry:
  %size_vlan_params.i = alloca %struct.devlink_resource_size_params, align 8
  %size_fdb_params.i = alloca %struct.devlink_resource_size_params, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_setup.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_setup, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_setup.__UNIQUE_ID_ddebug536, ptr noundef %3, ptr noundef nonnull @.str.40) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 10
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %7 = or i16 %6, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %9, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %7) #12, !srcloc !399
  %call.i.i = tail call i64 @ktime_get() #12
  %add.i.i.i = add i64 %call.i.i, 1000000
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i32.i.i = getelementptr i8, ptr %11, i32 10
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i32.i.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  %13 = and i16 %12, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not33.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not33.i.i, label %do.end.if.end10_crit_edge, label %do.end.land.lhs.true.i.i_crit_edge

do.end.land.lhs.true.i.i_crit_edge:               ; preds = %do.end
  br label %land.lhs.true.i.i

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %do.end.land.lhs.true.i.i_crit_edge
  %call4.i.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call4.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #12
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 10
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  %18 = and i16 %17, 32
  %tobool.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i.if.end10_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

cond.false.i.i.if.end10_crit_edge:                ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i29.i.i = getelementptr i8, ptr %20, i32 10
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i29.i.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  %22 = and i16 %21, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool20.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool20.not.i.i, label %for.end.i.i.if.end10_crit_edge, label %do.end8

for.end.i.i.if.end10_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end8:                                          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  %dev9 = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.41) #15
  br label %cleanup

if.end10:                                         ; preds = %for.end.i.i.if.end10_crit_edge, %cond.false.i.i.if.end10_crit_edge, %do.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  %ports.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ports.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i.i78 = getelementptr i8, ptr %28, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i78, i16 0) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i79 = getelementptr i8, ptr %30, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i79, i16 768) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i19.i = getelementptr i8, ptr %32, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i19.i, i16 4096) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %34, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21.i, i16 768) #12, !srcloc !399
  %ptcfg4.i = getelementptr inbounds %struct.hellcreek_port, ptr %26, i32 0, i32 3
  %35 = ptrtoint ptr %ptcfg4.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 3, ptr %ptcfg4.i, align 4
  %ptcfg5.i = getelementptr %struct.hellcreek_port, ptr %26, i32 1, i32 3
  %36 = ptrtoint ptr %ptcfg5.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 3, ptr %ptcfg5.i, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  %swcfg12 = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %swcfg12 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 4656, ptr %swcfg12, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 326
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 12306) #12, !srcloc !399
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %40 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp109.not = icmp eq i32 %41, 0
  br i1 %cmp109.not, label %if.end10.for.body.i.preheader_crit_edge, label %for.body.lr.ph

if.end10.for.body.i.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

for.body.lr.ph:                                   ; preds = %if.end10
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %42 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_user_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_user_port.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %45 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %46, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i80, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i80:                              ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %47 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %i.0110)
  %cmp5.i.i = icmp eq i32 %48, %i.0110
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i80.for.inc.i.i_crit_edge

land.lhs.true.i.i80.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i80.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %49 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %for.body.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp.i = icmp eq i32 %51, 3
  br i1 %cmp.i, label %if.end16, label %dsa_is_user_port.exit.for.inc_crit_edge

dsa_is_user_port.exit.for.inc_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end16:                                         ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hellcreek_setup_vlan_membership(ptr noundef %ds, i32 noundef %i.0110, i1 noundef zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %dsa_is_user_port.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.0110, 1
  %52 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.body.i.preheader_crit_edge

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %if.end10.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  %conv.i.i = trunc i32 %i.08.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #12
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i.i83 = getelementptr i8, ptr %56, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i83, i16 %54) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i84 = getelementptr i8, ptr %58, i32 336
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i84, i16 %54) #12, !srcloc !399
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %hellcreek_setup_tc_identity_mapping.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

hellcreek_setup_tc_identity_mapping.exit:         ; preds = %for.body.i
  %vlan_filtering_is_global = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %59 = ptrtoint ptr %vlan_filtering_is_global to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load = load i16, ptr %vlan_filtering_is_global, align 4
  %bf.set19 = or i16 %bf.load, 24576
  store i16 %bf.set19, ptr %vlan_filtering_is_global, align 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  %call.i = tail call fastcc i32 @__hellcreek_fdb_add(ptr noundef %1, ptr noundef nonnull @hellcreek_setup_fdb.l2_ptp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hellcreek_setup_tc_identity_mapping.exit.hellcreek_setup_fdb.exit.thread_crit_edge

hellcreek_setup_tc_identity_mapping.exit.hellcreek_setup_fdb.exit.thread_crit_edge: ; preds = %hellcreek_setup_tc_identity_mapping.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_fdb.exit.thread

if.end.i:                                         ; preds = %hellcreek_setup_tc_identity_mapping.exit
  %call1.i = tail call fastcc i32 @__hellcreek_fdb_add(ptr noundef %1, ptr noundef nonnull @hellcreek_setup_fdb.udp4_ptp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.hellcreek_setup_fdb.exit.thread_crit_edge

if.end.i.hellcreek_setup_fdb.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_fdb.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call fastcc i32 @__hellcreek_fdb_add(ptr noundef %1, ptr noundef nonnull @hellcreek_setup_fdb.udp6_ptp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.hellcreek_setup_fdb.exit.thread_crit_edge

if.end4.i.hellcreek_setup_fdb.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_fdb.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @__hellcreek_fdb_add(ptr noundef %1, ptr noundef nonnull @hellcreek_setup_fdb.l2_p2p) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.hellcreek_setup_fdb.exit.thread_crit_edge

if.end8.i.hellcreek_setup_fdb.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_fdb.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = tail call fastcc i32 @__hellcreek_fdb_add(ptr noundef %1, ptr noundef nonnull @hellcreek_setup_fdb.udp4_p2p) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.hellcreek_setup_fdb.exit.thread_crit_edge

if.end12.i.hellcreek_setup_fdb.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_fdb.exit.thread

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = tail call fastcc i32 @__hellcreek_fdb_add(ptr noundef %1, ptr noundef nonnull @hellcreek_setup_fdb.udp6_p2p) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %hellcreek_setup_fdb.exit, label %if.end16.i.hellcreek_setup_fdb.exit.thread_crit_edge

if.end16.i.hellcreek_setup_fdb.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_fdb.exit.thread

hellcreek_setup_fdb.exit.thread:                  ; preds = %if.end16.i.hellcreek_setup_fdb.exit.thread_crit_edge, %if.end12.i.hellcreek_setup_fdb.exit.thread_crit_edge, %if.end8.i.hellcreek_setup_fdb.exit.thread_crit_edge, %if.end4.i.hellcreek_setup_fdb.exit.thread_crit_edge, %if.end.i.hellcreek_setup_fdb.exit.thread_crit_edge, %hellcreek_setup_tc_identity_mapping.exit.hellcreek_setup_fdb.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call17.i, %if.end16.i.hellcreek_setup_fdb.exit.thread_crit_edge ], [ %call13.i, %if.end12.i.hellcreek_setup_fdb.exit.thread_crit_edge ], [ %call9.i, %if.end8.i.hellcreek_setup_fdb.exit.thread_crit_edge ], [ %call5.i, %if.end4.i.hellcreek_setup_fdb.exit.thread_crit_edge ], [ %call1.i, %if.end.i.hellcreek_setup_fdb.exit.thread_crit_edge ], [ %call.i, %hellcreek_setup_tc_identity_mapping.exit.hellcreek_setup_fdb.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  br label %do.end25

hellcreek_setup_fdb.exit:                         ; preds = %if.end16.i
  %call21.i = tail call fastcc i32 @__hellcreek_fdb_add(ptr noundef %1, ptr noundef nonnull @hellcreek_setup_fdb.stp) #12
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool21.not = icmp eq i32 %call21.i, 0
  br i1 %tobool21.not, label %if.end27, label %hellcreek_setup_fdb.exit.do.end25_crit_edge

hellcreek_setup_fdb.exit.do.end25_crit_edge:      ; preds = %hellcreek_setup_fdb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

do.end25:                                         ; preds = %hellcreek_setup_fdb.exit.do.end25_crit_edge, %hellcreek_setup_fdb.exit.thread
  %ret.0.i103 = phi i32 [ %ret.0.i.ph, %hellcreek_setup_fdb.exit.thread ], [ %call21.i, %hellcreek_setup_fdb.exit.do.end25_crit_edge ]
  %dev26 = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.43) #15
  br label %cleanup

if.end27:                                         ; preds = %hellcreek_setup_fdb.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %size_vlan_params.i) #12
  %62 = getelementptr inbounds i8, ptr %size_vlan_params.i, i32 24
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 4294967295, ptr %62, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %size_fdb_params.i) #12
  %64 = getelementptr inbounds i8, ptr %size_fdb_params.i, i32 24
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 4294967295, ptr %64, align 8
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 4
  %68 = ptrtoint ptr %size_vlan_params.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 4096, ptr %size_vlan_params.i, align 8
  %size_max2.i.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_vlan_params.i, i32 0, i32 1
  %69 = ptrtoint ptr %size_max2.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 4096, ptr %size_max2.i.i, align 8
  %size_granularity3.i.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_vlan_params.i, i32 0, i32 2
  %70 = ptrtoint ptr %size_granularity3.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 1, ptr %size_granularity3.i.i, align 8
  %fdb_entries.i = getelementptr inbounds %struct.hellcreek, ptr %67, i32 0, i32 21
  %71 = ptrtoint ptr %fdb_entries.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fdb_entries.i, align 4
  %conv.i = zext i32 %72 to i64
  %73 = ptrtoint ptr %size_fdb_params.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv.i, ptr %size_fdb_params.i, align 8
  %size_max2.i23.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_fdb_params.i, i32 0, i32 1
  %74 = ptrtoint ptr %size_max2.i23.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv.i, ptr %size_max2.i23.i, align 8
  %size_granularity3.i24.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_fdb_params.i, i32 0, i32 2
  %75 = ptrtoint ptr %size_granularity3.i24.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 1, ptr %size_granularity3.i24.i, align 8
  %call.i86 = call i32 @dsa_devlink_resource_register(ptr noundef %ds, ptr noundef nonnull @.str.59, i64 noundef 4096, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %size_vlan_params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i87 = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i87, label %if.end.i90, label %if.end27.do.end33_crit_edge

if.end27.do.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

if.end.i90:                                       ; preds = %if.end27
  %76 = ptrtoint ptr %fdb_entries.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fdb_entries.i, align 4
  %conv4.i = zext i32 %77 to i64
  %call5.i88 = call i32 @dsa_devlink_resource_register(ptr noundef %ds, ptr noundef nonnull @.str.60, i64 noundef %conv4.i, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %size_fdb_params.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i88)
  %tobool6.not.i89 = icmp eq i32 %call5.i88, 0
  br i1 %tobool6.not.i89, label %if.end35, label %if.end.i90.do.end33_crit_edge

if.end.i90.do.end33_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

do.end33:                                         ; preds = %if.end.i90.do.end33_crit_edge, %if.end27.do.end33_crit_edge
  %err.0.i = phi i32 [ %call.i86, %if.end27.do.end33_crit_edge ], [ %call5.i88, %if.end.i90.do.end33_crit_edge ]
  call void @dsa_devlink_resources_unregister(ptr noundef %ds) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %size_fdb_params.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %size_vlan_params.i) #12
  %dev34 = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.46) #15
  br label %cleanup

if.end35:                                         ; preds = %if.end.i90
  call void @dsa_devlink_resource_occ_get_register(ptr noundef %ds, i64 noundef 0, ptr noundef nonnull @hellcreek_devlink_vlan_table_get, ptr noundef %67) #12
  call void @dsa_devlink_resource_occ_get_register(ptr noundef %ds, i64 noundef 1, ptr noundef nonnull @hellcreek_devlink_fdb_table_get, ptr noundef %67) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %size_fdb_params.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %size_vlan_params.i) #12
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 4
  %call.i94 = call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @hellcreek_region_vlan_ops, i32 noundef 1, i64 noundef 16384) #12
  %cmp.i.i = icmp ugt ptr %call.i94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end35.do.end41_crit_edge, label %if.end.i97

if.end35.do.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

if.end.i97:                                       ; preds = %if.end35
  %vlan_region.i = getelementptr inbounds %struct.hellcreek, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %vlan_region.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i94, ptr %vlan_region.i, align 8
  %fdb_entries.i95 = getelementptr inbounds %struct.hellcreek, ptr %81, i32 0, i32 21
  %83 = ptrtoint ptr %fdb_entries.i95 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fdb_entries.i95, align 4
  %mul.i = mul i32 %84, 20
  %conv.i96 = zext i32 %mul.i to i64
  %call3.i = call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @hellcreek_region_fdb_ops, i32 noundef 1, i64 noundef %conv.i96) #12
  %cmp.i25.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.then5.i, label %hellcreek_setup_devlink_regions.exit.thread

if.then5.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %vlan_region.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vlan_region.i, align 8
  call void @dsa_devlink_region_destroy(ptr noundef %86) #12
  br label %do.end41

hellcreek_setup_devlink_regions.exit.thread:      ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #14
  %fdb_region.i = getelementptr inbounds %struct.hellcreek, ptr %81, i32 0, i32 13
  %87 = ptrtoint ptr %fdb_region.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call3.i, ptr %fdb_region.i, align 4
  br label %cleanup

do.end41:                                         ; preds = %if.then5.i, %if.end35.do.end41_crit_edge
  %retval.0.i98.in = phi ptr [ %call3.i, %if.then5.i ], [ %call.i94, %if.end35.do.end41_crit_edge ]
  %retval.0.i98 = ptrtoint ptr %retval.0.i98.in to i32
  %dev42 = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.49) #15
  call void @dsa_devlink_resources_unregister(ptr noundef %ds) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %hellcreek_setup_devlink_regions.exit.thread, %do.end33, %do.end25, %do.end8
  %retval.0 = phi i32 [ -110, %do.end8 ], [ %ret.0.i103, %do.end25 ], [ %err.0.i, %do.end33 ], [ %retval.0.i98, %do.end41 ], [ 0, %hellcreek_setup_devlink_regions.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_teardown(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %fdb_region.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %fdb_region.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_region.i, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %3) #12
  %vlan_region.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %vlan_region.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vlan_region.i, align 8
  tail call void @dsa_devlink_region_destroy(ptr noundef %5) #12
  tail call void @dsa_devlink_resources_unregister(ptr noundef %ds) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hellcreek_phylink_get_caps(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %config) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %supported_interfaces = getelementptr inbounds %struct.phylink_config, ptr %config, i32 0, i32 7
  %2 = ptrtoint ptr %supported_interfaces to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_interfaces, align 4
  %or.i11 = or i32 %3, 524
  store i32 %or.i11, ptr %supported_interfaces, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %is_100_mbits = getelementptr inbounds %struct.hellcreek_platform_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %is_100_mbits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_100_mbits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i32 128, i32 32
  %8 = getelementptr inbounds %struct.phylink_config, ptr %config, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_get_strings(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.04, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %name = getelementptr [62 x %struct.hellcreek_counter], ptr @hellcreek_counter, i32 0, i32 %i.04, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlcpy(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 32) #12
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 62
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %port.tr = trunc i32 %port to i8
  %4 = shl i8 %port.tr, 6
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %counter_values = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr [62 x %struct.hellcreek_counter], ptr @hellcreek_counter, i32 0, i32 %i.028
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 4
  %conv3 = add i8 %6, %4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %conv.i = zext i8 %conv3 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %7 = shl nuw i16 %conv.i, 8
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %7) #12, !srcloc !399
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #12
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 286
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !395
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %16, i32 284
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i27) #12, !srcloc !395
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv6 = zext i16 %14 to i64
  %shl = shl nuw nsw i64 %conv6, 16
  %conv7 = zext i16 %18 to i64
  %or = or i64 %shl, %conv7
  %19 = ptrtoint ptr %counter_values to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %counter_values, align 4
  %arrayidx8 = getelementptr i64, ptr %20, i32 %i.028
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %or, %22
  store i64 %add9, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %counter_values, align 4
  %arrayidx11 = getelementptr i64, ptr %23, i32 %i.028
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx11, align 8
  %arrayidx12 = getelementptr i64, ptr %data, i32 %i.028
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx12, align 8
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 62
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hellcreek_get_sset_count(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 62, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hellcreek_get_ts_info(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_port_enable(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readnone %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_enable.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_enable, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_enable.__UNIQUE_ID_ddebug518, ptr noundef %5, ptr noundef nonnull @.str.126, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %port.tr.i = trunc i32 %port to i16
  %conv.i = shl i16 %port.tr.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %6) #12, !srcloc !399
  %ptcfg = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 3
  %9 = ptrtoint ptr %ptcfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ptcfg, align 4
  %11 = or i16 %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %12) #12, !srcloc !399
  %15 = ptrtoint ptr %ptcfg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %11, ptr %ptcfg, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_port_disable(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_disable.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_disable, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_disable.__UNIQUE_ID_ddebug519, ptr noundef %5, ptr noundef nonnull @.str.128, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %port.tr.i = trunc i32 %port to i16
  %conv.i = shl i16 %port.tr.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %6) #12, !srcloc !399
  %ptcfg = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 3
  %9 = ptrtoint ptr %ptcfg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ptcfg, align 4
  %11 = and i16 %10, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %12) #12, !srcloc !399
  %15 = ptrtoint ptr %ptcfg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %11, ptr %ptcfg, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_port_prechangeupper(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_prechangeupper.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_prechangeupper, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_prechangeupper.__UNIQUE_ID_ddebug537, ptr noundef %3, ptr noundef nonnull @.str.130, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i48 = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i48)
  %tobool.i.not = icmp eq i64 %and.i48, 0
  br i1 %tobool.i.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %call7 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %5) #12
  %vlan_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vlan_lock, i32 noundef 0) #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %num_ports = getelementptr inbounds %struct.hellcreek_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp51 = icmp sgt i32 %11, 0
  br i1 %cmp51, label %for.body.lr.ph, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %if.end5
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %12 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  %conv = zext i16 %call7 to i32
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %div3.i = lshr i32 %conv, 5
  %and.i = and i32 %conv, 31
  %15 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %used.0.off052 = phi i1 [ true, %for.body.lr.ph ], [ %used.1.off0, %for.inc.for.body_crit_edge ]
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_user_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_user_port.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %16 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %17, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %i.053)
  %cmp5.i.i = icmp eq i32 %19, %i.053
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %20 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %for.body.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.i = icmp ne i32 %22, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.053, i32 %port)
  %cmp11 = icmp eq i32 %i.053, %port
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp11
  %used.0.off0.not = xor i1 %used.0.off052, true
  %brmerge = select i1 %or.cond, i1 true, i1 %used.0.off0.not
  %used.0.off0.mux = select i1 %or.cond, i1 %used.0.off052, i1 false
  br i1 %brmerge, label %dsa_is_user_port.exit.for.inc_crit_edge, label %land.rhs

dsa_is_user_port.exit.for.inc_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.rhs:                                         ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ports, align 4
  %vlan_dev_bitmap = getelementptr %struct.hellcreek_port, ptr %24, i32 %i.053, i32 1
  %25 = ptrtoint ptr %vlan_dev_bitmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vlan_dev_bitmap, align 4
  %arrayidx.i = getelementptr i32, ptr %26, i32 %div3.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i, align 4
  %29 = and i32 %28, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16 = icmp ne i32 %29, 0
  br label %for.inc

for.inc:                                          ; preds = %land.rhs, %dsa_is_user_port.exit.for.inc_crit_edge
  %used.1.off0 = phi i1 [ %used.0.off0.mux, %dsa_is_user_port.exit.for.inc_crit_edge ], [ %tobool16, %land.rhs ]
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %used.1.off0, label %for.end.out_crit_edge, label %if.end20

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports, align 4
  %vlan_dev_bitmap24 = getelementptr %struct.hellcreek_port, ptr %31, i32 %port, i32 1
  %32 = ptrtoint ptr %vlan_dev_bitmap24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vlan_dev_bitmap24, align 4
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %33) #12
  br label %out

out:                                              ; preds = %if.end20, %for.end.out_crit_edge, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ -16, %for.end.out_crit_edge ], [ 0, %if.end20 ], [ -16, %if.end5.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vlan_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_port_bridge_join(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef readnone %tx_fwd_offload) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_bridge_join.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_bridge_join, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_bridge_join.__UNIQUE_ID_ddebug528, ptr noundef %3, ptr noundef nonnull @.str.132, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vlan_filtering = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %4 = ptrtoint ptr %vlan_filtering to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %vlan_filtering, align 4
  %5 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %reg_lock.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  %swcfg1.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %swcfg1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %swcfg1.i, align 8
  %8 = and i16 %7, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 326
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %9) #12, !srcloc !399
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  tail call fastcc void @hellcreek_setup_vlan_membership(ptr noundef %ds, i32 noundef %port, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_port_bridge_leave(ptr noundef %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_bridge_leave.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_bridge_leave, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_bridge_leave.__UNIQUE_ID_ddebug529, ptr noundef %3, ptr noundef nonnull @.str.134, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  %swcfg1.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %swcfg1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %swcfg1.i, align 8
  %swcfg.0.i = or i16 %5, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %6 = tail call i16 @llvm.bswap.i16(i16 %swcfg.0.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 326
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %6) #12, !srcloc !399
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  tail call fastcc void @hellcreek_setup_vlan_membership(ptr noundef %ds, i32 noundef %port, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %ptcfg = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 3
  %4 = ptrtoint ptr %ptcfg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ptcfg, align 4
  %6 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %state, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 4, label %sw.bb5
    i8 1, label %sw.bb12
    i8 2, label %sw.bb19
    i8 3, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = and i16 %5, -7
  %8 = or i16 %7, 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = and i16 %5, -7
  %10 = or i16 %9, 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = and i16 %5, -7
  %12 = or i16 %11, 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = or i16 %5, 6
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = and i16 %5, -7
  %15 = or i16 %14, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb19, %sw.bb12, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %new_state.0 = phi ptr [ @.str.139, %sw.bb26 ], [ @.str.138, %sw.bb19 ], [ @.str.137, %sw.bb12 ], [ @.str.136, %sw.bb5 ], [ @.str.135, %sw.bb ], [ @.str.140, %entry.sw.epilog_crit_edge ]
  %val.0 = phi i16 [ %15, %sw.bb26 ], [ %13, %sw.bb19 ], [ %12, %sw.bb12 ], [ %10, %sw.bb5 ], [ %8, %sw.bb ], [ %5, %entry.sw.epilog_crit_edge ]
  %port.tr.i = trunc i32 %port to i16
  %conv.i = shl i16 %port.tr.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %16) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %19 = tail call i16 @llvm.bswap.i16(i16 %val.0) #12
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %19) #12, !srcloc !399
  %22 = ptrtoint ptr %ptcfg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %val.0, ptr %ptcfg, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_stp_state_set.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_stp_state_set, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_stp_state_set.__UNIQUE_ID_ddebug525, ptr noundef %24, ptr noundef nonnull @.str.142, i32 noundef %port, ptr noundef nonnull %new_state.0) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.epilog
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hellcreek_pre_bridge_flags(ptr nocapture noundef readnone %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %and = and i32 %flags.coerce.fca.1.extract, -2113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_bridge_flags(ptr nocapture noundef readonly %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.0.extract = extractvalue [2 x i32] %flags.coerce, 0
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %and = and i32 %flags.coerce.fca.1.extract, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and1 = and i32 %flags.coerce.fca.0.extract, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  tail call fastcc void @hellcreek_port_set_ucast_flood(ptr noundef %1, i32 noundef %port, i1 noundef zeroext %tobool2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %flags.coerce.fca.1.extract, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and9 = and i32 %flags.coerce.fca.0.extract, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10 = icmp ne i32 %and9, 0
  tail call fastcc void @hellcreek_port_set_mcast_flood(ptr noundef %1, i32 noundef %port, i1 noundef zeroext %tobool10)
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_vlan_filtering(ptr nocapture noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %vlan_filtering, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_vlan_filtering.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_vlan_filtering, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cond = select i1 %vlan_filtering, ptr @.str.145, ptr @.str.146
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_vlan_filtering.__UNIQUE_ID_ddebug535, ptr noundef %3, ptr noundef nonnull @.str.150, ptr noundef nonnull %cond, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ports.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  %ptcfg1.i = getelementptr %struct.hellcreek_port, ptr %5, i32 %port, i32 3
  %6 = ptrtoint ptr %ptcfg1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ptcfg1.i, align 4
  %8 = and i16 %7, -9
  %masksel.i = select i1 %vlan_filtering, i16 8, i16 0
  %ptcfg.0.i = or i16 %8, %masksel.i
  %port.tr.i.i = trunc i32 %port to i16
  %conv.i.i = shl i16 %port.tr.i.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #12
  %base.i.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %9) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %12 = tail call i16 @llvm.bswap.i16(i16 %ptcfg.0.i) #12
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %12) #12, !srcloc !399
  %15 = ptrtoint ptr %ptcfg1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %ptcfg.0.i, ptr %ptcfg1.i, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #12
  %swcfg1.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %swcfg1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %swcfg1.i, align 8
  %18 = and i16 %17, -1025
  %masksel.i13 = select i1 %vlan_filtering, i16 1024, i16 0
  %swcfg.0.i = or i16 %18, %masksel.i13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %19 = tail call i16 @llvm.bswap.i16(i16 %swcfg.0.i) #12
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i14 = getelementptr i8, ptr %21, i32 326
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i14, i16 %19) #12, !srcloc !399
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_vlan_add(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %and3 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4 = icmp ne i32 %and3, 0
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_vlan_prepare.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_vlan_add, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !400

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hellcreek, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_vlan_prepare.__UNIQUE_ID_ddebug520, ptr noundef %5, ptr noundef nonnull @.str.158, i32 noundef %port) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %num_ports.i = getelementptr inbounds %struct.hellcreek_platform_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29.i = icmp sgt i32 %9, 0
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %do.end.i.do.body_crit_edge

do.end.i.do.body_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %10 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = trunc i32 %i.030.i to i16
  %conv.i.i = sub i16 4097, %13
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_user_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_user_port.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_is_user_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %14 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %15, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %16 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %i.030.i)
  %cmp5.i.i.i = icmp eq i32 %17, %i.030.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %18 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, %for.body.i.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_user_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 3
  br i1 %cmp.i.i, label %if.end6.i, label %dsa_is_user_port.exit.i.for.inc.i_crit_edge

dsa_is_user_port.exit.i.for.inc.i_crit_edge:      ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end6.i:                                        ; preds = %dsa_is_user_port.exit.i
  %21 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %conv.i.i)
  %cmp8.i = icmp eq i16 %22, %conv.i.i
  br i1 %cmp8.i, label %do.body11.i, label %if.end6.i.for.inc.i_crit_edge

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.body11.i:                                      ; preds = %if.end6.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @hellcreek_vlan_prepare.__msg) #12
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body11.i.cleanup_crit_edge, label %if.then13.i

do.body11.i.cleanup_crit_edge:                    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @hellcreek_vlan_prepare.__msg, ptr %extack, align 4
  br label %cleanup

for.inc.i:                                        ; preds = %if.end6.i.for.inc.i_crit_edge, %dsa_is_user_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %for.inc.i.do.body_crit_edge, %do.end.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_vlan_add.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_vlan_add, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !400

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %26 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vid, align 2
  %conv13 = zext i16 %27 to i32
  %cond = select i1 %tobool, ptr @.str.153, ptr @.str.154
  %cond18 = select i1 %tobool4, ptr @.str.155, ptr @.str.156
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_vlan_add.__UNIQUE_ID_ddebug523, ptr noundef %25, ptr noundef nonnull @.str.152, i32 noundef %conv13, i32 noundef %port, ptr noundef nonnull %cond, ptr noundef nonnull %cond18) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %vid20 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %28 = ptrtoint ptr %vid20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid20, align 2
  tail call fastcc void @hellcreek_apply_vlan(ptr noundef %3, i32 noundef %port, i16 noundef zeroext %29, i1 noundef zeroext %tobool4, i1 noundef zeroext %tobool)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13.i, %do.body11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -16, %if.then13.i ], [ -16, %do.body11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_vlan_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_vlan_del.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_vlan_del, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_vlan_del.__UNIQUE_ID_ddebug524, ptr noundef %3, ptr noundef nonnull @.str.160, i32 noundef %conv, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vid3 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %6 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid3, align 2
  tail call fastcc void @hellcreek_unapply_vlan(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %7)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  %entry1 = alloca %struct.hellcreek_fdb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry1) #12
  %0 = call ptr @memset(ptr %entry1, i32 0, i32 20)
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_fdb_add.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_fdb_add, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_fdb_add.__UNIQUE_ID_ddebug532, ptr noundef %4, ptr noundef nonnull @.str.162, ptr noundef %addr) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %call4 = call fastcc i32 @hellcreek_fdb_get(ptr noundef %2, ptr noundef %addr, ptr noundef nonnull %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %mac = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %mac, ptr %addr, i32 6)
  %shl = shl nuw i32 1, %port
  %conv = trunc i32 %shl to i8
  %portmask = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 2
  %6 = ptrtoint ptr %portmask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %portmask, align 2
  %call7 = call fastcc i32 @__hellcreek_fdb_add(ptr noundef %2, ptr noundef nonnull %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.out_crit_edge, label %if.then6.out.sink.split_crit_edge

if.then6.out.sink.split_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else:                                          ; preds = %do.end
  %call15 = call fastcc i32 @__hellcreek_fdb_del(ptr noundef %2, ptr noundef nonnull %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %if.else.out.sink.split_crit_edge

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end22:                                         ; preds = %if.else
  %shl23 = shl nuw i32 1, %port
  %portmask24 = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 2
  %7 = ptrtoint ptr %portmask24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %portmask24, align 2
  %9 = trunc i32 %shl23 to i8
  %conv26 = or i8 %8, %9
  store i8 %conv26, ptr %portmask24, align 2
  %call27 = call fastcc i32 @__hellcreek_fdb_add(ptr noundef %2, ptr noundef nonnull %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end22.out_crit_edge, label %if.end22.out.sink.split_crit_edge

if.end22.out.sink.split_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out.sink.split:                                   ; preds = %if.end22.out.sink.split_crit_edge, %if.else.out.sink.split_crit_edge, %if.then6.out.sink.split_crit_edge
  %.str.163.sink = phi ptr [ @.str.163, %if.then6.out.sink.split_crit_edge ], [ @.str.165, %if.else.out.sink.split_crit_edge ], [ @.str.163, %if.end22.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call7, %if.then6.out.sink.split_crit_edge ], [ %call15, %if.else.out.sink.split_crit_edge ], [ %call27, %if.end22.out.sink.split_crit_edge ]
  %dev33 = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %.str.163.sink) #15
  br label %out

out:                                              ; preds = %out.sink.split, %if.end22.out_crit_edge, %if.then6.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6.out_crit_edge ], [ 0, %if.end22.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %reg_lock) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry1) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  %entry1 = alloca %struct.hellcreek_fdb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry1) #12
  %0 = call ptr @memset(ptr %entry1, i32 0, i32 20)
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_fdb_del.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_fdb_del, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_fdb_del.__UNIQUE_ID_ddebug533, ptr noundef %4, ptr noundef nonnull @.str.172, ptr noundef %addr) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %call4 = call fastcc i32 @hellcreek_fdb_get(ptr noundef %2, ptr noundef %addr, ptr noundef nonnull %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev10 = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.173) #15
  br label %out

if.else:                                          ; preds = %do.end
  %call11 = call fastcc i32 @__hellcreek_fdb_del(ptr noundef %2, ptr noundef nonnull %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dev17 = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.165) #15
  br label %out

if.end18:                                         ; preds = %if.else
  %shl = shl nuw i32 1, %port
  %portmask = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 2
  %9 = ptrtoint ptr %portmask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %portmask, align 2
  %11 = trunc i32 %shl to i8
  %12 = xor i8 %11, -1
  %conv19 = and i8 %10, %12
  store i8 %conv19, ptr %portmask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv19)
  %cmp.not = icmp eq i8 %conv19, 0
  br i1 %cmp.not, label %if.end18.out_crit_edge, label %if.then23

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then23:                                        ; preds = %if.end18
  %call24 = call fastcc i32 @__hellcreek_fdb_add(ptr noundef %2, ptr noundef nonnull %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.out_crit_edge, label %do.end29

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.hellcreek, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.163) #15
  br label %out

out:                                              ; preds = %do.end29, %if.then23.out_crit_edge, %if.end18.out_crit_edge, %do.end16, %do.end9
  %ret.0 = phi i32 [ %call4, %do.end9 ], [ %call11, %do.end16 ], [ %call24, %do.end29 ], [ 0, %if.then23.out_crit_edge ], [ 0, %if.end18.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_lock) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry1) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_fdb_dump(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cb, ptr noundef %data) #2 align 64 {
entry:
  %entry5 = alloca %struct.hellcreek_fdb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 304
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %6, i32 304
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37, i16 0) #12, !srcloc !399
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_fdb_dump.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_fdb_dump, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_fdb_dump.__UNIQUE_ID_ddebug534, ptr noundef %9, ptr noundef nonnull @.str.179, i32 noundef %port, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fdb_entries = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fdb_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp47.not = icmp eq i32 %11, 0
  br i1 %cmp47.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %mac28.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 1
  %addr.sroa.5.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 1, i32 1
  %addr.sroa.7.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 1, i32 2
  %addr.sroa.9.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 1, i32 3
  %addr.sroa.11.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 1, i32 4
  %addr.sroa.13.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 1, i32 5
  %portmask.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 2
  %age.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 3
  %is_obt.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 4
  %pass_blocked.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 5
  %is_static.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 6
  %reprio_tc.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 7
  %reprio_en.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry5, i32 0, i32 8
  %shl = shl nuw i32 1, %port
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry5) #12
  %12 = call ptr @memset(ptr %entry5, i32 0, i32 20)
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 312
  %15 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !395
  %16 = call i16 @llvm.bswap.i16(i16 %15) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr.i94.i = getelementptr i8, ptr %18, i32 306
  %19 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i94.i) #12, !srcloc !395
  %20 = call i16 @llvm.bswap.i16(i16 %19) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv3.i = trunc i16 %20 to i8
  %21 = lshr i16 %20, 8
  %conv6.i = trunc i16 %21 to i8
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %add.ptr.i96.i = getelementptr i8, ptr %23, i32 308
  %24 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i96.i) #12, !srcloc !395
  %25 = call i16 @llvm.bswap.i16(i16 %24) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv11.i = trunc i16 %25 to i8
  %26 = lshr i16 %25, 8
  %conv16.i = trunc i16 %26 to i8
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 8
  %add.ptr.i98.i = getelementptr i8, ptr %28, i32 310
  %29 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i98.i) #12, !srcloc !395
  %30 = call i16 @llvm.bswap.i16(i16 %29) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv21.i = trunc i16 %30 to i8
  %31 = lshr i16 %30, 8
  %conv26.i = trunc i16 %31 to i8
  %32 = ptrtoint ptr %mac28.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv26.i, ptr %mac28.i, align 4
  %33 = ptrtoint ptr %addr.sroa.5.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv21.i, ptr %addr.sroa.5.0.arraydecay.sroa_idx.i, align 1
  %34 = ptrtoint ptr %addr.sroa.7.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv16.i, ptr %addr.sroa.7.0.arraydecay.sroa_idx.i, align 2
  %35 = ptrtoint ptr %addr.sroa.9.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv11.i, ptr %addr.sroa.9.0.arraydecay.sroa_idx.i, align 1
  %36 = ptrtoint ptr %addr.sroa.11.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv6.i, ptr %addr.sroa.11.0.arraydecay.sroa_idx.i, align 4
  %37 = ptrtoint ptr %addr.sroa.13.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv3.i, ptr %addr.sroa.13.0.arraydecay.sroa_idx.i, align 1
  %38 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.049, ptr %entry5, align 4
  %39 = trunc i16 %16 to i8
  %conv34.i = and i8 %39, 15
  %40 = ptrtoint ptr %portmask.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv34.i, ptr %portmask.i, align 2
  %41 = lshr i8 %39, 4
  %42 = ptrtoint ptr %age.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %age.i, align 1
  %and40.i = lshr i16 %16, 8
  %43 = trunc i16 %and40.i to i8
  %44 = and i8 %43, 1
  %45 = ptrtoint ptr %is_obt.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %is_obt.i, align 4
  %and44.i = lshr i16 %16, 9
  %46 = trunc i16 %and44.i to i8
  %47 = and i8 %46, 1
  %48 = ptrtoint ptr %pass_blocked.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %pass_blocked.i, align 1
  %and52.i = lshr i16 %16, 11
  %49 = trunc i16 %and52.i to i8
  %50 = and i8 %49, 1
  %51 = ptrtoint ptr %is_static.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %is_static.i, align 2
  %and60.i = lshr i16 %16, 12
  %52 = trunc i16 %and60.i to i8
  %conv62.i = and i8 %52, 7
  %53 = ptrtoint ptr %reprio_tc.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv62.i, ptr %reprio_tc.i, align 1
  %call.lobit.i = lshr i16 %16, 15
  %54 = trunc i16 %call.lobit.i to i8
  %55 = ptrtoint ptr %reprio_en.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %reprio_en.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @arm_heavy_mb() #12
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr.i39 = getelementptr i8, ptr %57, i32 310
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i39, i16 0) #12, !srcloc !399
  %58 = ptrtoint ptr %mac28.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mac28.i, align 4
  %60 = ptrtoint ptr %addr.sroa.11.0.arraydecay.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr.sroa.11.0.arraydecay.sroa_idx.i, align 4
  %conv.i = zext i16 %61 to i32
  %or.i = or i32 %59, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.body.cleanup.thread_crit_edge, label %if.end8

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end8:                                          ; preds = %for.body
  %62 = ptrtoint ptr %portmask.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %portmask.i, align 2
  %conv9 = zext i8 %63 to i32
  %and = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.cleanup.thread_crit_edge, label %cleanup

if.end8.cleanup.thread_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end8.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry5) #12
  br label %for.inc

cleanup:                                          ; preds = %if.end8
  %64 = ptrtoint ptr %is_static.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_static.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool15 = icmp ne i8 %65, 0
  %call16 = call i32 %cb(ptr noundef %mac28.i, i16 noundef zeroext 0, i1 noundef zeroext %tobool15, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not.not = icmp eq i32 %call16, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry5) #12
  br i1 %tobool17.not.not, label %cleanup.for.inc_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread
  %inc = add nuw i32 %i.049, 1
  %66 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fdb_entries, align 4
  %cmp = icmp ult i32 %inc, %67
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %call16, %cleanup.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_port_setup_tc(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %type, ptr noundef %type_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %cmp.not = icmp eq i32 %type, 13
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %qbv_support.i = getelementptr inbounds %struct.hellcreek_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qbv_support.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qbv_support.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %cycle_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 2
  %6 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cycle_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %7)
  %cmp.i = icmp ugt i64 %7, 4294967295
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %cycle_time_extension.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 3
  %8 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cycle_time_extension.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool3.not.i = icmp eq i64 %9, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end2.i
  %num_entries.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 4
  %10 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp616.not.i = icmp eq i32 %11, 0
  br i1 %cmp616.not.i, label %for.cond.preheader.i.if.end2_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end2_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.if.end2_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end2_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.017.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp7.not.i = icmp eq i8 %13, 0
  br i1 %cmp7.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %for.cond.i.if.end2_crit_edge, %for.cond.preheader.i.if.end2_crit_edge
  %14 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hellcreek_port_set_schedule(ptr noundef %ds, i32 noundef %port, ptr noundef %type_data)
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hellcreek_port_del_schedule(ptr noundef %ds, i32 noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %for.body.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ], [ -95, %if.end2.i.cleanup_crit_edge ], [ -95, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hellcreek_port_hwtstamp_get(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hellcreek_port_hwtstamp_set(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hellcreek_port_txtstamp(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hellcreek_port_rxtstamp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_devlink_info_get(ptr nocapture noundef readonly %ds, ptr noundef %req, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.184, ptr noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_setup_vlan_membership(ptr noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %enabled) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %port to i16
  %conv.i = sub i16 4097, %0
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %1 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_to_port.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_to_port.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %4 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %5, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %port)
  %cmp5.i.i = icmp eq i32 %7, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %8 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %entry.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %cpu_dp1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %cpu_dp1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_dp1.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge, label %if.end.i

dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge: ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_upstream_port.exit

if.end.i:                                         ; preds = %dsa_to_port.exit.i
  %ds2.i = getelementptr inbounds %struct.dsa_port, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ds2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ds2.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %index3.i = getelementptr inbounds %struct.dsa_port, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index3.i, align 4
  %index.i10.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 2
  %17 = ptrtoint ptr %index.i10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp.i.i = icmp eq i32 %18, %14
  br i1 %cmp.i.i, label %if.end.i.dsa_upstream_port.exit_crit_edge, label %if.else.i.i

if.end.i.dsa_upstream_port.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsa_upstream_port.exit

if.else.i.i:                                      ; preds = %if.end.i
  %rtable.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %2, i32 0, i32 10
  %19 = ptrtoint ptr %rtable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn22.i.i.i = load ptr, ptr %rtable.i.i.i, align 4
  %cmp.not23.i.i.i = icmp eq ptr %.pn22.i.i.i, %rtable.i.i.i
  br i1 %cmp.not23.i.i.i, label %if.else.i.i.for.end.i.i.i_crit_edge, label %if.else.i.i.for.body.i.i.i_crit_edge

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

if.else.i.i.for.end.i.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %.pn24.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn22.i.i.i, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %dl.0.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -8
  %20 = ptrtoint ptr %dl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dl.0.i.i.i, align 4
  %ds3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %23, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %link_dp.i.i.i = getelementptr i8, ptr %.pn24.i.i.i, i32 -4
  %24 = ptrtoint ptr %link_dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link_dp.i.i.i, align 4
  %ds5.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ds5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds5.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %14)
  %cmp6.i.i.i = icmp eq i32 %29, %14
  br i1 %cmp6.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %index8.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %21, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %30 = ptrtoint ptr %.pn24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i.i.i = load ptr, ptr %.pn24.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %rtable.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.else.i.i.for.end.i.i.i_crit_edge
  %num_ports.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  br label %dsa_routing_port.exit.i.i

dsa_routing_port.exit.i.i:                        ; preds = %for.end.i.i.i, %if.then.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %index8.i.i.i, %if.then.i.i.i ], [ %num_ports.i.i.i, %for.end.i.i.i ]
  %31 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  br label %dsa_upstream_port.exit

dsa_upstream_port.exit:                           ; preds = %dsa_routing_port.exit.i.i, %if.end.i.dsa_upstream_port.exit_crit_edge, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge
  %retval.0.i = phi i32 [ %port, %dsa_to_port.exit.i.dsa_upstream_port.exit_crit_edge ], [ %retval.0.i.i.i, %dsa_routing_port.exit.i.i ], [ %16, %if.end.i.dsa_upstream_port.exit_crit_edge ]
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %dsa_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hellcreek_apply_vlan(ptr noundef %33, i32 noundef %port, i16 noundef zeroext %conv.i, i1 noundef zeroext true, i1 noundef zeroext true)
  tail call fastcc void @hellcreek_apply_vlan(ptr noundef %33, i32 noundef %retval.0.i, i16 noundef zeroext %conv.i, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %if.end5

if.else:                                          ; preds = %dsa_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hellcreek_unapply_vlan(ptr noundef %33, i32 noundef %port, i16 noundef zeroext %conv.i)
  tail call fastcc void @hellcreek_unapply_vlan(ptr noundef %33, i32 noundef %retval.0.i, i16 noundef zeroext %conv.i)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_resources_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_apply_vlan(ptr noundef %hellcreek, i32 noundef %port, i16 noundef zeroext %vid, i1 noundef zeroext %pvid, i1 noundef zeroext %untagged) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_apply_vlan.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_apply_vlan, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i16 %vid to i32
  %conv6 = zext i1 %pvid to i32
  %conv8 = zext i1 %untagged to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_apply_vlan.__UNIQUE_ID_ddebug521, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %port, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %port.tr.i = trunc i32 %port to i16
  %conv.i = shl i16 %port.tr.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %2) #12, !srcloc !399
  %spec.select.i = select i1 %pvid, i16 4096, i16 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %5 = lshr exact i16 %spec.select.i, 8
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i48 = getelementptr i8, ptr %7, i32 340
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i48, i16 %5) #12, !srcloc !399
  %conv4.i = or i16 %spec.select.i, %vid
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #12
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %10, i32 340
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %8) #12, !srcloc !399
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %11 = icmp ult i32 %port, 4
  br i1 %11, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.53, i32 noundef %port) #15
  br label %hellcreek_select_vlan_params.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.idx.mult = shl i32 %port, 1
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.hellcreek_apply_vlan, i32 0, i32 %port
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hellcreek_select_vlan_params.exit

hellcreek_select_vlan_params.exit:                ; preds = %switch.lookup, %sw.default.i
  %shift.0 = phi i32 [ 0, %sw.default.i ], [ %switch.idx.mult, %switch.lookup ]
  %mask.0 = phi i32 [ -1, %sw.default.i ], [ %switch.load, %switch.lookup ]
  %conv9 = zext i16 %vid to i32
  %vidmbrcfg = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 17
  %15 = ptrtoint ptr %vidmbrcfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vidmbrcfg, align 4
  %arrayidx = getelementptr i8, ptr %16, i32 %conv9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %shl.pn.v = select i1 %untagged, i32 1, i32 3
  %shl.pn = shl nuw nsw i32 %shl.pn.v, %shift.0
  %conv12 = zext i8 %18 to i32
  %and = and i32 %mask.0, %conv12
  %val.0.in = or i32 %and, %shl.pn
  %val.0 = trunc i32 %val.0.in to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %19 = shl nuw i16 %val.0, 8
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 342
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %19) #12, !srcloc !399
  %conv23 = trunc i32 %val.0.in to i8
  %22 = ptrtoint ptr %vidmbrcfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vidmbrcfg, align 4
  %arrayidx26 = getelementptr i8, ptr %23, i32 %conv9
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv23, ptr %arrayidx26, align 1
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_unapply_vlan(ptr noundef %hellcreek, i32 noundef %port, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_unapply_vlan.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_unapply_vlan, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i16 %vid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_unapply_vlan.__UNIQUE_ID_ddebug522, ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef %port, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 340
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %vid) #12
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %6, i32 340
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %4) #12, !srcloc !399
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %port)
  %7 = icmp ult i32 %port, 4
  br i1 %7, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %port) #15
  br label %hellcreek_select_vlan_params.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.hellcreek_unapply_vlan, i32 0, i32 %port
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hellcreek_select_vlan_params.exit

hellcreek_select_vlan_params.exit:                ; preds = %switch.lookup, %sw.default.i
  %mask.0 = phi i32 [ -1, %sw.default.i ], [ %switch.load, %switch.lookup ]
  %conv3 = zext i16 %vid to i32
  %vidmbrcfg = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 17
  %11 = ptrtoint ptr %vidmbrcfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vidmbrcfg, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %conv3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %14 to i32
  %and = and i32 %mask.0, %conv5
  %conv6 = trunc i32 %and to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %15 = shl nuw i16 %conv6, 8
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 342
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %15) #12, !srcloc !399
  %conv9 = trunc i32 %and to i8
  %18 = ptrtoint ptr %vidmbrcfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vidmbrcfg, align 4
  %arrayidx12 = getelementptr i8, ptr %19, i32 %conv3
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv9, ptr %arrayidx12, align 1
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hellcreek_fdb_add(ptr nocapture noundef readonly %hellcreek, ptr noundef %entry1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hellcreek_fdb_add.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hellcreek_fdb_add, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mac = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1
  %portmask = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %portmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %portmask, align 2
  %conv = zext i8 %3 to i32
  %is_obt = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 4
  %4 = ptrtoint ptr %is_obt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_obt, align 4
  %conv4 = zext i8 %5 to i32
  %pass_blocked = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 5
  %6 = ptrtoint ptr %pass_blocked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pass_blocked, align 1
  %conv5 = zext i8 %7 to i32
  %reprio_en = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 8
  %8 = ptrtoint ptr %reprio_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reprio_en, align 4
  %conv6 = zext i8 %9 to i32
  %reprio_tc = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 7
  %10 = ptrtoint ptr %reprio_tc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reprio_tc, align 1
  %conv7 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__hellcreek_fdb_add.__UNIQUE_ID_ddebug530, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef %mac, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mac8 = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1
  %arrayidx = getelementptr %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %13 to i16
  %14 = ptrtoint ptr %mac8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac8, align 4
  %conv12 = zext i8 %15 to i16
  %shl = shl nuw i16 %conv12, 8
  %or = or i16 %shl, %conv9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %16 = tail call i16 @llvm.bswap.i16(i16 %or) #12
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 318
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %16) #12, !srcloc !399
  %arrayidx15 = getelementptr %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %20 to i16
  %arrayidx18 = getelementptr %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18, align 2
  %conv19 = zext i8 %22 to i16
  %shl20 = shl nuw i16 %conv19, 8
  %or21 = or i16 %shl20, %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %23 = tail call i16 @llvm.bswap.i16(i16 %or21) #12
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %add.ptr.i94 = getelementptr i8, ptr %25, i32 316
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i94, i16 %23) #12, !srcloc !399
  %arrayidx24 = getelementptr %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %27 to i16
  %arrayidx27 = getelementptr %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx27, align 4
  %conv28 = zext i8 %29 to i16
  %shl29 = shl nuw i16 %conv28, 8
  %or30 = or i16 %shl29, %conv25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %30 = tail call i16 @llvm.bswap.i16(i16 %or30) #12
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %add.ptr.i96 = getelementptr i8, ptr %32, i32 314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i96, i16 %30) #12, !srcloc !399
  %portmask32 = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 2
  %33 = ptrtoint ptr %portmask32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %portmask32, align 2
  %conv37 = zext i8 %34 to i16
  %is_obt38 = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 4
  %35 = ptrtoint ptr %is_obt38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_obt38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not = icmp eq i8 %36, 0
  %or42 = or i16 %conv37, 256
  %meta.0 = select i1 %tobool39.not, i16 %conv37, i16 %or42
  %pass_blocked45 = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 5
  %37 = ptrtoint ptr %pass_blocked45 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pass_blocked45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool46.not = icmp eq i8 %38, 0
  %39 = or i16 %meta.0, 512
  %meta.1 = select i1 %tobool46.not, i16 %meta.0, i16 %39
  %reprio_en52 = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 8
  %40 = ptrtoint ptr %reprio_en52 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reprio_en52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool53.not = icmp eq i8 %41, 0
  br i1 %tobool53.not, label %do.end.if.end64_crit_edge, label %if.then54

do.end.if.end64_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %reprio_tc58 = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 7
  %42 = ptrtoint ptr %reprio_tc58 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reprio_tc58, align 1
  %conv59 = zext i8 %43 to i16
  %shl60 = shl i16 %conv59, 12
  %44 = or i16 %meta.1, %shl60
  %or62 = or i16 %44, -32768
  br label %if.end64

if.end64:                                         ; preds = %if.then54, %do.end.if.end64_crit_edge
  %meta.2 = phi i16 [ %or62, %if.then54 ], [ %meta.1, %do.end.if.end64_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %45 = tail call i16 @llvm.bswap.i16(i16 %meta.2) #12
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr.i98 = getelementptr i8, ptr %47, i32 320
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i98, i16 %45) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 8
  %add.ptr.i100 = getelementptr i8, ptr %49, i32 324
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 0) #12, !srcloc !399
  %call.i = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call.i, 1000000
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %51, i32 328
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i32.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %53 = and i16 %52, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not33.i = icmp eq i16 %53, 0
  br i1 %tobool.not33.i, label %if.end64.for.end.thread.i_crit_edge, label %if.end64.land.lhs.true.i_crit_edge

if.end64.land.lhs.true.i_crit_edge:               ; preds = %if.end64
  br label %land.lhs.true.i

if.end64.for.end.thread.i_crit_edge:              ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end64.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #12
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 328
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %58 = and i16 %57, 256
  %tobool.not.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i, label %cond.false.i.for.end.thread.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

cond.false.i.for.end.thread.i_crit_edge:          ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %60, i32 328
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i29.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %62 = and i16 %61, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool20.not.i = icmp eq i16 %62, 0
  br i1 %tobool20.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge

for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_wait_fdb_ready.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %cond.false.i.for.end.thread.i_crit_edge, %if.end64.for.end.thread.i_crit_edge
  br label %hellcreek_wait_fdb_ready.exit

hellcreek_wait_fdb_ready.exit:                    ; preds = %for.end.thread.i, %for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge
  %63 = phi i32 [ 0, %for.end.thread.i ], [ -110, %for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_devlink_resource_register(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @hellcreek_devlink_vlan_table_get(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %priv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %vidmbrcfg = getelementptr inbounds %struct.hellcreek, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %vidmbrcfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vidmbrcfg, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc1, %for.body.for.body_crit_edge ]
  %count.08 = phi i64 [ 0, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %inc = zext i1 %tobool.not to i64
  %spec.select = add i64 %count.08, %inc
  %inc1 = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc1, 4096
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @hellcreek_devlink_fdb_table_get(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %priv, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 304
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !395
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv = zext i16 %3 to i64
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_devlink_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_region_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_devlink_region_vlan_snapshot(ptr noundef %dl, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #16
  %tobool.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %vidmbrcfg = getelementptr inbounds %struct.hellcreek, ptr %3, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.019 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %entry1.018 = phi ptr [ %call1.i.i.i.i, %if.end ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %vidmbrcfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vidmbrcfg, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %i.019
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i16
  %member = getelementptr inbounds %struct.hellcreek_devlink_vlan_entry, ptr %entry1.018, i32 0, i32 1
  %8 = ptrtoint ptr %member to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %member, align 2
  %conv3 = trunc i32 %i.019 to i16
  %9 = ptrtoint ptr %entry1.018 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3, ptr %entry1.018, align 2
  %inc = add nuw nsw i32 %i.019, 1
  %incdec.ptr = getelementptr %struct.hellcreek_devlink_vlan_entry, ptr %entry1.018, i32 1
  %exitcond.not = icmp eq i32 %inc, 4096
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i.i.i.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_devlink_region_fdb_snapshot(ptr noundef %dl, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %fdb_entries = getelementptr inbounds %struct.hellcreek, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fdb_entries, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 20) #12
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !394

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 304
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %13, i32 304
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 0) #12, !srcloc !399
  %14 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fdb_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32.not = icmp eq i32 %15, 0
  br i1 %cmp32.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %entry1.033 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call8.i.i, %if.end.for.body_crit_edge ]
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 312
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !395
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr.i94.i = getelementptr i8, ptr %21, i32 306
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i94.i) #12, !srcloc !395
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv3.i = trunc i16 %23 to i8
  %24 = lshr i16 %23, 8
  %conv6.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 8
  %add.ptr.i96.i = getelementptr i8, ptr %26, i32 308
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i96.i) #12, !srcloc !395
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv11.i = trunc i16 %28 to i8
  %29 = lshr i16 %28, 8
  %conv16.i = trunc i16 %29 to i8
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  %add.ptr.i98.i = getelementptr i8, ptr %31, i32 310
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i98.i) #12, !srcloc !395
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv21.i = trunc i16 %33 to i8
  %34 = lshr i16 %33, 8
  %conv26.i = trunc i16 %34 to i8
  %mac28.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 1
  %35 = ptrtoint ptr %mac28.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv26.i, ptr %mac28.i, align 4
  %addr.sroa.5.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %addr.sroa.5.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv21.i, ptr %addr.sroa.5.0.arraydecay.sroa_idx.i, align 1
  %addr.sroa.7.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %addr.sroa.7.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv16.i, ptr %addr.sroa.7.0.arraydecay.sroa_idx.i, align 2
  %addr.sroa.9.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %addr.sroa.9.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv11.i, ptr %addr.sroa.9.0.arraydecay.sroa_idx.i, align 1
  %addr.sroa.11.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %addr.sroa.11.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv6.i, ptr %addr.sroa.11.0.arraydecay.sroa_idx.i, align 4
  %addr.sroa.13.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %addr.sroa.13.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv3.i, ptr %addr.sroa.13.0.arraydecay.sroa_idx.i, align 1
  %41 = ptrtoint ptr %entry1.033 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.034, ptr %entry1.033, align 4
  %42 = trunc i16 %19 to i8
  %conv34.i = and i8 %42, 15
  %portmask.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 2
  %43 = ptrtoint ptr %portmask.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv34.i, ptr %portmask.i, align 2
  %44 = lshr i8 %42, 4
  %age.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 3
  %45 = ptrtoint ptr %age.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %age.i, align 1
  %and40.i = lshr i16 %19, 8
  %46 = trunc i16 %and40.i to i8
  %47 = and i8 %46, 1
  %is_obt.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 4
  %48 = ptrtoint ptr %is_obt.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %is_obt.i, align 4
  %and44.i = lshr i16 %19, 9
  %49 = trunc i16 %and44.i to i8
  %50 = and i8 %49, 1
  %pass_blocked.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 5
  %51 = ptrtoint ptr %pass_blocked.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %pass_blocked.i, align 1
  %and52.i = lshr i16 %19, 11
  %52 = trunc i16 %and52.i to i8
  %53 = and i8 %52, 1
  %is_static.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 6
  %54 = ptrtoint ptr %is_static.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %is_static.i, align 2
  %and60.i = lshr i16 %19, 12
  %55 = trunc i16 %and60.i to i8
  %conv62.i = and i8 %55, 7
  %reprio_tc.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 7
  %56 = ptrtoint ptr %reprio_tc.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv62.i, ptr %reprio_tc.i, align 1
  %call.lobit.i = lshr i16 %19, 15
  %57 = trunc i16 %call.lobit.i to i8
  %reprio_en.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 0, i32 8
  %58 = ptrtoint ptr %reprio_en.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %reprio_en.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %60, i32 310
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25, i16 0) #12, !srcloc !399
  %inc = add nuw i32 %i.034, 1
  %incdec.ptr = getelementptr %struct.hellcreek_fdb_entry, ptr %entry1.033, i32 1
  %61 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fdb_entries, align 4
  %cmp = icmp ult i32 %inc, %62
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  %63 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call8.i.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_port_set_ucast_flood(ptr noundef %hellcreek, i32 noundef %port, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 5
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_set_ucast_flood.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_set_ucast_flood, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cond = select i1 %enable, ptr @.str.145, ptr @.str.146
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_set_ucast_flood.__UNIQUE_ID_ddebug526, ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull %cond, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %port.tr.i = trunc i32 %port to i16
  %conv.i = shl i16 %port.tr.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %4) #12, !srcloc !399
  %ptcfg = getelementptr %struct.hellcreek_port, ptr %1, i32 %port, i32 3
  %7 = ptrtoint ptr %ptcfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ptcfg, align 4
  %9 = and i16 %8, -513
  %masksel = select i1 %enable, i16 0, i16 512
  %val.0 = or i16 %9, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %val.0) #12
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #12, !srcloc !399
  %13 = ptrtoint ptr %ptcfg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %val.0, ptr %ptcfg, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_port_set_mcast_flood(ptr noundef %hellcreek, i32 noundef %port, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 5
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_set_mcast_flood.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_set_mcast_flood, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cond = select i1 %enable, ptr @.str.145, ptr @.str.146
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_set_mcast_flood.__UNIQUE_ID_ddebug527, ptr noundef %3, ptr noundef nonnull @.str.148, ptr noundef nonnull %cond, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %port.tr.i = trunc i32 %port to i16
  %conv.i = shl i16 %port.tr.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 332
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %4) #12, !srcloc !399
  %ptcfg = getelementptr %struct.hellcreek_port, ptr %1, i32 %port, i32 3
  %7 = ptrtoint ptr %ptcfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ptcfg, align 4
  %9 = and i16 %8, -1025
  %masksel = select i1 %enable, i16 0, i16 1024
  %val.0 = or i16 %9, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %val.0) #12
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 334
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #12, !srcloc !399
  %13 = ptrtoint ptr %ptcfg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %val.0, ptr %ptcfg, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hellcreek_fdb_get(ptr nocapture noundef readonly %hellcreek, ptr nocapture noundef readonly %dest, ptr nocapture noundef writeonly %entry1) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.hellcreek_fdb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 304
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %4, i32 304
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 0) #12, !srcloc !399
  %fdb_entries = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 21
  %5 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fdb_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14.not = icmp eq i32 %6, 0
  br i1 %cmp14.not, label %entry.cleanup3_crit_edge, label %for.body.lr.ph

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

for.body.lr.ph:                                   ; preds = %entry
  %mac28.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 1
  %addr.sroa.5.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 1, i32 1
  %addr.sroa.7.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 1, i32 2
  %addr.sroa.9.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 1, i32 3
  %addr.sroa.11.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 1, i32 4
  %addr.sroa.13.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 1, i32 5
  %portmask.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 2
  %age.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 3
  %is_obt.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 4
  %pass_blocked.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 5
  %is_static.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 6
  %reprio_tc.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 7
  %reprio_en.i = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %tmp, i32 0, i32 8
  %7 = getelementptr inbounds i8, ptr %tmp, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tmp) #12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 312
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !395
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i94.i = getelementptr i8, ptr %14, i32 306
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i94.i) #12, !srcloc !395
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv3.i = trunc i16 %16 to i8
  %17 = lshr i16 %16, 8
  %conv6.i = trunc i16 %17 to i8
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %add.ptr.i96.i = getelementptr i8, ptr %19, i32 308
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i96.i) #12, !srcloc !395
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv11.i = trunc i16 %21 to i8
  %22 = lshr i16 %21, 8
  %conv16.i = trunc i16 %22 to i8
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr.i98.i = getelementptr i8, ptr %24, i32 310
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i98.i) #12, !srcloc !395
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv21.i = trunc i16 %26 to i8
  %27 = lshr i16 %26, 8
  %conv26.i = trunc i16 %27 to i8
  %28 = ptrtoint ptr %mac28.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv26.i, ptr %mac28.i, align 4
  %29 = ptrtoint ptr %addr.sroa.5.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv21.i, ptr %addr.sroa.5.0.arraydecay.sroa_idx.i, align 1
  %30 = ptrtoint ptr %addr.sroa.7.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16.i, ptr %addr.sroa.7.0.arraydecay.sroa_idx.i, align 2
  %31 = ptrtoint ptr %addr.sroa.9.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv11.i, ptr %addr.sroa.9.0.arraydecay.sroa_idx.i, align 1
  %32 = ptrtoint ptr %addr.sroa.11.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv6.i, ptr %addr.sroa.11.0.arraydecay.sroa_idx.i, align 4
  %33 = ptrtoint ptr %addr.sroa.13.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.i, ptr %addr.sroa.13.0.arraydecay.sroa_idx.i, align 1
  %34 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.015, ptr %tmp, align 4
  %35 = trunc i16 %12 to i8
  %conv34.i = and i8 %35, 15
  %36 = ptrtoint ptr %portmask.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv34.i, ptr %portmask.i, align 2
  %37 = lshr i8 %35, 4
  %38 = ptrtoint ptr %age.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %age.i, align 1
  %and40.i = lshr i16 %12, 8
  %39 = trunc i16 %and40.i to i8
  %40 = and i8 %39, 1
  %41 = ptrtoint ptr %is_obt.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %is_obt.i, align 4
  %and44.i = lshr i16 %12, 9
  %42 = trunc i16 %and44.i to i8
  %43 = and i8 %42, 1
  %44 = ptrtoint ptr %pass_blocked.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %pass_blocked.i, align 1
  %and52.i = lshr i16 %12, 11
  %45 = trunc i16 %and52.i to i8
  %46 = and i8 %45, 1
  %47 = ptrtoint ptr %is_static.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %is_static.i, align 2
  %and60.i = lshr i16 %12, 12
  %48 = trunc i16 %and60.i to i8
  %conv62.i = and i8 %48, 7
  %49 = ptrtoint ptr %reprio_tc.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv62.i, ptr %reprio_tc.i, align 1
  %call.lobit.i = lshr i16 %12, 15
  %50 = trunc i16 %call.lobit.i to i8
  %51 = ptrtoint ptr %reprio_en.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %reprio_en.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %53, i32 310
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13, i16 0) #12, !srcloc !399
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %mac28.i, ptr noundef dereferenceable(6) %dest, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %for.inc.critedge

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %54 = call ptr @memcpy(ptr %entry1, ptr %tmp, i32 20)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp) #12
  br label %cleanup3

for.inc.critedge:                                 ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp) #12
  %inc = add nuw i32 %i.015, 1
  %55 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fdb_entries, align 4
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %for.inc.critedge.for.body_crit_edge, label %for.inc.critedge.cleanup3_crit_edge

for.inc.critedge.cleanup3_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup3:                                         ; preds = %for.inc.critedge.cleanup3_crit_edge, %if.end, %entry.cleanup3_crit_edge
  %retval.2 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup3_crit_edge ], [ -2, %for.inc.critedge.cleanup3_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hellcreek_fdb_del(ptr nocapture noundef readonly %hellcreek, ptr noundef %entry1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hellcreek_fdb_del.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hellcreek_fdb_del, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mac = getelementptr inbounds %struct.hellcreek_fdb_entry, ptr %entry1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__hellcreek_fdb_del.__UNIQUE_ID_ddebug531, ptr noundef %1, ptr noundef nonnull @.str.170, ptr noundef %mac) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry1, align 4
  %4 = trunc i32 %3 to i16
  %conv = or i16 %4, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv) #12
  %base.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 14
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 324
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %5) #12, !srcloc !399
  %call.i = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call.i, 1000000
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %9, i32 328
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i32.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not33.i = icmp eq i16 %11, 0
  br i1 %tobool.not33.i, label %do.end.for.end.thread.i_crit_edge, label %do.end.land.lhs.true.i_crit_edge

do.end.land.lhs.true.i_crit_edge:                 ; preds = %do.end
  br label %land.lhs.true.i

do.end.for.end.thread.i_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %do.end.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #12
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 328
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %16 = and i16 %15, 256
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %cond.false.i.for.end.thread.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

cond.false.i.for.end.thread.i_crit_edge:          ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %18, i32 328
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i29.i) #12, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %20 = and i16 %19, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool20.not.i = icmp eq i16 %20, 0
  br i1 %tobool20.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge

for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_wait_fdb_ready.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %cond.false.i.for.end.thread.i_crit_edge, %do.end.for.end.thread.i_crit_edge
  br label %hellcreek_wait_fdb_ready.exit

hellcreek_wait_fdb_ready.exit:                    ; preds = %for.end.thread.i, %for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge
  %21 = phi i32 [ 0, %for.end.thread.i ], [ -110, %for.end.i.hellcreek_wait_fdb_ready.exit_crit_edge ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_port_set_schedule(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %taprio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_set_schedule.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_set_schedule, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_set_schedule.__UNIQUE_ID_ddebug539, ptr noundef %5, ptr noundef nonnull @.str.181, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %schedule_work = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 7
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %schedule_work) #12
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %current_schedule = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 6
  %6 = ptrtoint ptr %current_schedule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_schedule, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %if.then5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @taprio_offload_free(ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %current_schedule to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %current_schedule, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end.if.end8_crit_edge
  %call9 = tail call ptr @taprio_offload_get(ptr noundef %taprio) #12
  %9 = ptrtoint ptr %current_schedule to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %current_schedule, align 4
  %conv.i = trunc i32 %port to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 360
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %10) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 362
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 511) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %16, i32 372
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 0) #12, !srcloc !399
  %17 = ptrtoint ptr %current_schedule to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %current_schedule, align 4
  %num_entries.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not7.i = icmp eq i32 %20, 0
  br i1 %cmp.not7.i, label %if.end8.hellcreek_setup_gcl.exit_crit_edge, label %for.body.lr.ph.i

if.end8.hellcreek_setup_gcl.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_gcl.exit

for.body.lr.ph.i:                                 ; preds = %if.end8
  %add.ptr.i3 = getelementptr %struct.tc_taprio_qopt_offload, ptr %18, i32 1, i32 1
  %entries.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %18, i32 0, i32 5
  %gate_mask.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %18, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %21 = phi i32 [ %20, %for.body.lr.ph.i ], [ %47, %for.body.i.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %next.010.i = phi ptr [ %add.ptr.i3, %for.body.lr.ph.i ], [ %incdec.ptr24.i, %for.body.i.for.body.i_crit_edge ]
  %cur.08.i = phi ptr [ %entries.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.012.i, i32 %21)
  %cmp2.i = icmp eq i32 %i.012.i, %21
  %gate_mask4.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %next.010.i, i32 0, i32 1
  %gate_mask4.sink.i = select i1 %cmp2.i, ptr %gate_mask.i, ptr %gate_mask4.i
  %22 = ptrtoint ptr %gate_mask4.sink.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gate_mask4.sink.i, align 4
  %gate_mask5.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %cur.08.i, i32 0, i32 1
  %24 = ptrtoint ptr %gate_mask5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gate_mask5.i, align 4
  %xor6.i = xor i32 %25, %23
  %26 = trunc i32 %xor6.i to i16
  %conv8.i = and i16 %26, 255
  %27 = or i16 %conv8.i, 256
  %spec.select.i = select i1 %cmp2.i, i16 %27, i16 %conv8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %28 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i) #12
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i5 = getelementptr i8, ptr %30, i32 392
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i5, i16 %28) #12, !srcloc !399
  %interval.i = getelementptr inbounds %struct.tc_taprio_sched_entry, ptr %cur.08.i, i32 0, i32 2
  %31 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %interval.i, align 4
  %conv16.i = trunc i32 %32 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv16.i) #12
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %35, i32 394
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2.i, i16 %33) #12, !srcloc !399
  %36 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %interval.i, align 4
  %shr.i = lshr i32 %37, 16
  %conv19.i = trunc i32 %shr.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv19.i) #12
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %40, i32 396
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i, i16 %38) #12, !srcloc !399
  %sub.i = add i32 %i.012.i, 65535
  %41 = ptrtoint ptr %gate_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gate_mask.i, align 4
  %shl21.i = shl i32 %42, 8
  %or22.i = or i32 %shl21.i, %sub.i
  %conv23.i = trunc i32 %or22.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv23.i) #12
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %45, i32 398
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6.i, i16 %43) #12, !srcloc !399
  %incdec.ptr.i = getelementptr %struct.tc_taprio_sched_entry, ptr %cur.08.i, i32 1
  %incdec.ptr24.i = getelementptr %struct.tc_taprio_sched_entry, ptr %next.010.i, i32 1
  %inc.i = add i32 %i.012.i, 1
  %46 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_entries.i, align 8
  %cmp.not.i = icmp ugt i32 %inc.i, %47
  br i1 %cmp.not.i, label %for.body.i.hellcreek_setup_gcl.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.hellcreek_setup_gcl.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hellcreek_setup_gcl.exit

hellcreek_setup_gcl.exit:                         ; preds = %for.body.i.hellcreek_setup_gcl.exit_crit_edge, %if.end8.hellcreek_setup_gcl.exit_crit_edge
  %48 = ptrtoint ptr %current_schedule to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %current_schedule, align 4
  %cycle_time1.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %cycle_time1.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cycle_time1.i, align 8
  %conv2.i = trunc i64 %51 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #12
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i7 = getelementptr i8, ptr %54, i32 380
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i7, i16 %52) #12, !srcloc !399
  %shr7.i = lshr i64 %51, 16
  %conv4.i = trunc i64 %shr7.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #12
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %57, i32 382
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9.i, i16 %55) #12, !srcloc !399
  %58 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ports, align 4
  %ptp_lock.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #12
  %seconds.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 18
  %60 = ptrtoint ptr %seconds.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %seconds.i, align 8
  %last_ts.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 19
  %62 = ptrtoint ptr %last_ts.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %last_ts.i, align 8
  tail call void @mutex_unlock(ptr noundef %ptp_lock.i) #12
  %current_schedule.i = getelementptr %struct.hellcreek_port, ptr %59, i32 %port, i32 6
  %64 = ptrtoint ptr %current_schedule.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %current_schedule.i, align 4
  %base_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %base_time.i, align 8
  %mul.neg.i = mul i64 %61, -1000000000
  %add.neg.i = sub i64 %mul.neg.i, %63
  %sub.i8 = add i64 %add.neg.i, %67
  call void @__sanitizer_cov_trace_const_cmp8(i64 4000000000, i64 %sub.i8)
  %cmp.i = icmp slt i64 %sub.i8, 4000000000
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %hellcreek_setup_gcl.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hellcreek_start_schedule(ptr noundef %1, i32 noundef %port)
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  br label %cleanup

if.end18:                                         ; preds = %hellcreek_setup_gcl.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %68 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %schedule_work, i32 noundef 200) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hellcreek_port_del_schedule(ptr nocapture noundef readonly %ds, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ports = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hellcreek_port_del_schedule.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hellcreek_port_del_schedule, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !400

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hellcreek_port_del_schedule.__UNIQUE_ID_ddebug540, ptr noundef %5, ptr noundef nonnull @.str.183, i32 noundef %port) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %schedule_work = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 7
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %schedule_work) #12
  %reg_lock = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #12
  %current_schedule = getelementptr %struct.hellcreek_port, ptr %3, i32 %port, i32 6
  %6 = ptrtoint ptr %current_schedule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_schedule, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %if.then5

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @taprio_offload_free(ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %current_schedule to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %current_schedule, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.end.if.end8_crit_edge
  %conv.i = trunc i32 %port to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %base.i.i = getelementptr inbounds %struct.hellcreek, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 360
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %9) #12, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 362
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 255) #12, !srcloc !399
  tail call void @mutex_unlock(ptr noundef %reg_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @taprio_offload_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_fixed_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hellcreek_hwtstamp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !302, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !319, !320, !321, !322, !324, !325, !326, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !381, !383}
!llvm.module.flags = !{!385, !386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @__initcall__kmod_hellcreek_sw__541_2044_hellcreek_driver_init6, !1, !"__initcall__kmod_hellcreek_sw__541_2044_hellcreek_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2044, i32 1}
!2 = !{ptr @__exitcall_hellcreek_driver_exit, !1, !"__exitcall_hellcreek_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author542, !4, !"__UNIQUE_ID_author542", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2046, i32 1}
!5 = !{ptr @__UNIQUE_ID_description543, !6, !"__UNIQUE_ID_description543", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2047, i32 1}
!7 = !{ptr @__UNIQUE_ID_file544, !8, !"__UNIQUE_ID_file544", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2048, i32 1}
!9 = !{ptr @__UNIQUE_ID_license545, !8, !"__UNIQUE_ID_license545", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2040, i32 11}
!12 = !{ptr @hellcreek_driver, !13, !"hellcreek_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2035, i32 31}
!14 = !{ptr @hellcreek_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1905, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hellcreek_probe.__key.2, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hellcreek_probe.__key.4, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1909, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hellcreek_probe.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1910, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hellcreek_probe.__key.8, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1911, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1915, i32 59}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1917, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hellcreek_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @hellcreek_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1925, i32 59}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1927, i32 3}
!42 = !{ptr @hellcreek_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hellcreek_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1937, i32 3}
!46 = !{ptr @hellcreek_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hellcreek_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1943, i32 3}
!50 = !{ptr @hellcreek_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hellcreek_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1961, i32 27}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1967, i32 3}
!56 = !{ptr @hellcreek_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hellcreek_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1973, i32 3}
!60 = !{ptr @hellcreek_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hellcreek_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1664, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hellcreek_start_schedule.__UNIQUE_ID_ddebug538, !63, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 212, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hellcreek_detect._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @hellcreek_detect._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @hellcreek_ds_ops, !74, !"hellcreek_ds_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1827, i32 36}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1384, i32 2}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hellcreek_setup.__UNIQUE_ID_ddebug536, !76, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1389, i32 3}
!81 = !{ptr @hellcreek_setup._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @hellcreek_setup._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1427, i32 3}
!85 = !{ptr @hellcreek_setup._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @hellcreek_setup._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1435, i32 3}
!89 = !{ptr @hellcreek_setup._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hellcreek_setup._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1442, i32 3}
!93 = !{ptr @hellcreek_setup._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hellcreek_setup._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 403, i32 2}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hellcreek_apply_vlan.__UNIQUE_ID_ddebug521, !96, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 393, i32 3}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @hellcreek_select_vlan_params._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @hellcreek_select_vlan_params._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 432, i32 2}
!106 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @hellcreek_unapply_vlan.__UNIQUE_ID_ddebug522, !105, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!108 = !{ptr @hellcreek_setup_fdb.l2_ptp, !109, !"l2_ptp", i1 false, i1 false}
!109 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1056, i32 36}
!110 = !{ptr @hellcreek_setup_fdb.udp4_ptp, !111, !"udp4_ptp", i1 false, i1 false}
!111 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1067, i32 36}
!112 = !{ptr @hellcreek_setup_fdb.udp6_ptp, !113, !"udp6_ptp", i1 false, i1 false}
!113 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1078, i32 36}
!114 = !{ptr @hellcreek_setup_fdb.l2_p2p, !115, !"l2_p2p", i1 false, i1 false}
!115 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1089, i32 36}
!116 = !{ptr @hellcreek_setup_fdb.udp4_p2p, !117, !"udp4_p2p", i1 false, i1 false}
!117 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1100, i32 36}
!118 = !{ptr @hellcreek_setup_fdb.udp6_p2p, !119, !"udp6_p2p", i1 false, i1 false}
!119 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1111, i32 36}
!120 = !{ptr @hellcreek_setup_fdb.stp, !121, !"stp", i1 false, i1 false}
!121 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1122, i32 36}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 713, i32 2}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @__hellcreek_fdb_add.__UNIQUE_ID_ddebug530, !123, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1223, i32 42}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1230, i32 42}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1321, i32 14}
!132 = !{ptr @hellcreek_region_vlan_ops, !133, !"hellcreek_region_vlan_ops", i1 false, i1 false}
!133 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1320, i32 34}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1327, i32 14}
!136 = !{ptr @hellcreek_region_fdb_ops, !137, !"hellcreek_region_fdb_ops", i1 false, i1 false}
!137 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1326, i32 34}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 32, i32 10}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 33, i32 10}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 34, i32 10}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 35, i32 10}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 36, i32 10}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 37, i32 10}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 38, i32 10}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 39, i32 10}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 40, i32 10}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 41, i32 10}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 42, i32 10}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 43, i32 10}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 44, i32 10}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 45, i32 10}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 46, i32 10}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 47, i32 10}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 48, i32 10}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 49, i32 10}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 50, i32 10}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 51, i32 10}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 52, i32 10}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 53, i32 10}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 54, i32 10}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 55, i32 10}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 56, i32 10}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 57, i32 10}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 58, i32 10}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 59, i32 10}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 60, i32 10}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 61, i32 10}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 62, i32 10}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 63, i32 10}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 64, i32 10}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 65, i32 10}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 66, i32 10}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 67, i32 10}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 68, i32 10}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 69, i32 10}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 70, i32 10}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 71, i32 10}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 72, i32 10}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 73, i32 10}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 74, i32 10}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 75, i32 10}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 76, i32 10}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 77, i32 10}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 78, i32 10}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 79, i32 10}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 80, i32 10}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 81, i32 10}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 82, i32 10}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 83, i32 10}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 84, i32 10}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 85, i32 10}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 86, i32 10}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 87, i32 10}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 88, i32 10}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 89, i32 10}
!254 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 90, i32 10}
!256 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 91, i32 10}
!258 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 92, i32 10}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 93, i32 10}
!262 = !{ptr @hellcreek_counter, !263, !"hellcreek_counter", i1 false, i1 false}
!263 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 31, i32 39}
!264 = !{ptr @.str.125, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 247, i32 2}
!266 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @hellcreek_port_enable.__UNIQUE_ID_ddebug518, !265, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!268 = !{ptr @.str.127, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 270, i32 2}
!270 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @hellcreek_port_disable.__UNIQUE_ID_ddebug519, !269, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1496, i32 2}
!274 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @hellcreek_port_prechangeupper.__UNIQUE_ID_ddebug537, !273, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 682, i32 2}
!278 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @hellcreek_port_bridge_join.__UNIQUE_ID_ddebug528, !277, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!280 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 699, i32 2}
!282 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @hellcreek_port_bridge_leave.__UNIQUE_ID_ddebug529, !281, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 499, i32 15}
!286 = !{ptr @.str.136, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 504, i32 15}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 509, i32 15}
!290 = !{ptr @.str.138, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 514, i32 15}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 519, i32 15}
!294 = !{ptr @.str.140, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 524, i32 15}
!296 = !{ptr @.str.141, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 533, i32 2}
!298 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @hellcreek_port_stp_state_set.__UNIQUE_ID_ddebug525, !297, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!300 = !{ptr @.str.143, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 607, i32 2}
!302 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @hellcreek_port_set_ucast_flood.__UNIQUE_ID_ddebug526, !301, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!304 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.146, !301, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 632, i32 2}
!308 = !{ptr @.str.148, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @hellcreek_port_set_mcast_flood.__UNIQUE_ID_ddebug527, !307, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 967, i32 2}
!312 = !{ptr @.str.150, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @hellcreek_vlan_filtering.__UNIQUE_ID_ddebug535, !311, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 463, i32 2}
!316 = !{ptr @.str.152, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @hellcreek_vlan_add.__UNIQUE_ID_ddebug523, !315, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!318 = !{ptr @.str.153, !315, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.154, !315, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.155, !315, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.156, !315, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.157, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 350, i32 2}
!324 = !{ptr @.str.158, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @hellcreek_vlan_prepare.__UNIQUE_ID_ddebug520, !323, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!326 = !{ptr @hellcreek_vlan_prepare.__msg, !327, !"__msg", i1 false, i1 false}
!327 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 363, i32 4}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 477, i32 2}
!330 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @hellcreek_vlan_del.__UNIQUE_ID_ddebug524, !329, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!332 = !{ptr @.str.161, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 836, i32 2}
!334 = !{ptr @.str.162, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @hellcreek_fdb_add.__UNIQUE_ID_ddebug532, !333, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!336 = !{ptr @.str.163, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 848, i32 4}
!338 = !{ptr @hellcreek_fdb_add._entry, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @hellcreek_fdb_add._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.165, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 855, i32 4}
!342 = !{ptr @hellcreek_fdb_add._entry.164, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @hellcreek_fdb_add._entry_ptr.166, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @hellcreek_fdb_add._entry.167, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 863, i32 4}
!346 = !{ptr @hellcreek_fdb_add._entry_ptr.168, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.169, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 745, i32 2}
!349 = !{ptr @.str.170, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @__hellcreek_fdb_del.__UNIQUE_ID_ddebug531, !348, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!351 = !{ptr @.str.171, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 881, i32 2}
!353 = !{ptr @.str.172, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @hellcreek_fdb_del.__UNIQUE_ID_ddebug533, !352, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!355 = !{ptr @.str.173, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 888, i32 3}
!357 = !{ptr @hellcreek_fdb_del._entry, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @hellcreek_fdb_del._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @hellcreek_fdb_del._entry.174, !360, !"_entry", i1 false, i1 false}
!360 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 893, i32 4}
!361 = !{ptr @hellcreek_fdb_del._entry_ptr.175, !360, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @hellcreek_fdb_del._entry.176, !363, !"_entry", i1 false, i1 false}
!363 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 902, i32 5}
!364 = !{ptr @hellcreek_fdb_del._entry_ptr.177, !363, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.178, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 931, i32 2}
!367 = !{ptr @.str.179, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @hellcreek_fdb_dump.__UNIQUE_ID_ddebug534, !366, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!369 = !{ptr @.str.180, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1706, i32 2}
!371 = !{ptr @.str.181, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @hellcreek_port_set_schedule.__UNIQUE_ID_ddebug539, !370, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!373 = !{ptr @.str.182, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1760, i32 2}
!375 = !{ptr @.str.183, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @hellcreek_port_del_schedule.__UNIQUE_ID_ddebug540, !374, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!377 = !{ptr @.str.184, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 1173, i32 12}
!379 = !{ptr @hellcreek_of_match, !380, !"hellcreek_of_match", i1 false, i1 false}
!380 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2026, i32 34}
!381 = !{ptr @.str.185, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2017, i32 12}
!383 = !{ptr @de1soc_r1_pdata, !384, !"de1soc_r1_pdata", i1 false, i1 false}
!384 = !{!"../drivers/net/dsa/hirschmann/hellcreek.c", i32 2016, i32 45}
!385 = !{i32 1, !"wchar_size", i32 2}
!386 = !{i32 1, !"min_enum_size", i32 4}
!387 = !{i32 8, !"branch-target-enforcement", i32 0}
!388 = !{i32 8, !"sign-return-address", i32 0}
!389 = !{i32 8, !"sign-return-address-all", i32 0}
!390 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!391 = !{i32 7, !"uwtable", i32 1}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{!"branch_weights", i32 1, i32 2000}
!395 = !{i64 6866261}
!396 = !{i64 2158398959}
!397 = !{i64 2158399485}
!398 = !{i64 2158400248}
!399 = !{i64 6866061}
!400 = !{i64 2148742592, i64 2148742597, i64 2148742610, i64 2148742654, i64 2148742688, i64 2148742709}
!401 = !{i64 2158400026}
