; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/ocelot/felix_vsc9959.c_pt.bc'
source_filename = "../drivers/net/dsa/ocelot/felix_vsc9959.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.felix_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i16, i16, i16, i16, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.ocelot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocelot_stat_layout = type { i32, [32 x i8] }
%struct.vcap_props = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x %struct.anon.172], i16, i16, i32, ptr, ptr }
%struct.anon.172 = type { i16, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vcap_field = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.felix = type { ptr, ptr, %struct.ocelot, ptr, ptr, i32, i32, i32, ptr }
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.enetc_mdio_priv = type { ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_port = type { %union.anon.153, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.153 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.142 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.142 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.tc_taprio_qopt_offload = type { i8, i64, i64, i64, i32, [0 x %struct.tc_taprio_sched_entry] }
%struct.tc_taprio_sched_entry = type { i8, i32, i32 }
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.felix_stream_filter = type { %struct.list_head, %struct.refcount_struct, i32, i8, i32, i8, i32, i8, i32, i8, i8, i32 }
%struct.felix_stream = type { %struct.list_head, i32, i8, i32, i32, [6 x i8], i16, i8, i8, i8, i32, i32 }
%struct.ocelot_policer = type { i32, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.154, ptr }
%union.anon.154 = type { %struct.anon.159 }
%struct.anon.159 = type { i32, i64, i64, i64, i32 }
%struct.felix_stream_gate = type { i32, i8, i8, i8, i64, i64, i64, i32, [0 x %struct.action_gate_entry] }
%struct.action_gate_entry = type { i8, i32, i32, i32 }
%struct.anon.165 = type { i32, i64, i64, i64, i32, ptr }
%struct.felix_stream_gate_entry = type { %struct.list_head, %struct.refcount_struct, i32 }

@__initcall__kmod_mscc_felix__531_2389_felix_vsc9959_pci_driver_init6 = internal global ptr @felix_vsc9959_pci_driver_init, section ".initcall6.init", align 4
@felix_vsc9959_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @felix_ids, ptr @felix_pci_probe, ptr @felix_pci_remove, ptr null, ptr null, ptr @felix_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_felix_vsc9959_pci_driver_exit = internal global ptr @felix_vsc9959_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description532 = internal constant [43 x i8] c"mscc_felix.description=Felix Switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file533 = internal constant [50 x i8] c"mscc_felix.file=drivers/net/dsa/ocelot/mscc_felix\00", section ".modinfo", align 1
@__UNIQUE_ID_license534 = internal constant [26 x i8] c"mscc_felix.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mscc_felix\00", [21 x i8] zeroinitializer }, align 32
@felix_ids = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6487, i32 61168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device is disabled, skipping\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"felix_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/dsa/ocelot/felix_vsc9959.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry_ptr = internal global ptr @felix_pci_probe._entry, section ".printk_index", align 4
@felix_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2279, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device enable failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry_ptr.9 = internal global ptr @felix_pci_probe._entry.6, section ".printk_index", align 4
@felix_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 2286, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate driver memory\0A\00", [62 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry_ptr.12 = internal global ptr @felix_pci_probe._entry.10, section ".printk_index", align 4
@felix_info_vsc9959 = internal constant { %struct.felix_info, [36 x i8] } { %struct.felix_info { ptr @vsc9959_target_io_res, ptr @vsc9959_port_io_res, ptr @vsc9959_imdio_res, ptr @vsc9959_regfields, ptr @vsc9959_regmap, ptr @vsc9959_ops, i32 2048, ptr @vsc9959_stats_layout, i32 92, i32 6, i32 8, ptr @vsc9959_vcap_props, i16 63, i16 383, i16 0, i16 0, ptr @vsc9959_ptp_caps, i8 1, ptr @vsc9959_mdio_bus_alloc, ptr @vsc9959_mdio_bus_free, ptr @vsc9959_phylink_validate, ptr @vsc9959_prevalidate_phy_mode, ptr @vsc9959_port_setup_tc, ptr @vsc9959_sched_speed_set, ptr @ocelot_regmap_init }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"felix-intb\00", [21 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 2304, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry_ptr.16 = internal global ptr @felix_pci_probe._entry.14, section ".printk_index", align 4
@felix_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 2313, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate DSA switch\0A\00", [33 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry_ptr.19 = internal global ptr @felix_pci_probe._entry.17, section ".printk_index", align 4
@felix_switch_ops = external dso_local constant %struct.dsa_switch_ops, align 4
@felix_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 2327, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register DSA switch: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@felix_pci_probe._entry_ptr.22 = internal global ptr @felix_pci_probe._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vsc9959_target_io_res = internal constant { [14 x %struct.resource], [96 x i8] } { [14 x %struct.resource] [%struct.resource zeroinitializer, %struct.resource { i32 2621440, i32 2686975, ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 524288, i32 524543, ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2097152, i32 2228223, ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 196608, i32 262143, ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 65536, i32 131071, ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 262144, i32 263167, ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 327680, i32 328703, ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 393216, i32 394239, ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource zeroinitializer, %struct.resource { i32 589824, i32 590027, ptr @.str.31, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource zeroinitializer, %struct.resource { i32 458752, i32 459263, ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource zeroinitializer], [96 x i8] zeroinitializer }, align 32
@vsc9959_port_io_res = internal constant { [6 x %struct.resource], [32 x i8] } { [6 x %struct.resource] [%struct.resource { i32 1048576, i32 1114111, ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1114112, i32 1179647, ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1179648, i32 1245183, ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1245184, i32 1310719, ptr @.str.36, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1310720, i32 1376255, ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1376256, i32 1441791, ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@vsc9959_imdio_res = internal constant { %struct.resource, [32 x i8] } { %struct.resource { i32 32816, i32 32832, ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vsc9959_regfields = internal constant { [60 x %struct.reg_field], [304 x i8] } { [60 x %struct.reg_field] [%struct.reg_field { i32 16777216, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 16777216, i32 0, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777220, i32 26, i32 26, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777220, i32 24, i32 24, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 22, i32 22, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777220, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 16777241, i32 16, i32 16, i32 0, i32 0 }, %struct.reg_field { i32 16777242, i32 11, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 16777242, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 50331649, i32 14, i32 14, i32 7, i32 4 }, %struct.reg_field { i32 50331649, i32 11, i32 13, i32 7, i32 4 }, %struct.reg_field { i32 50331649, i32 10, i32 10, i32 7, i32 4 }, %struct.reg_field { i32 50331649, i32 9, i32 9, i32 7, i32 4 }, %struct.reg_field { i32 50331649, i32 1, i32 8, i32 7, i32 4 }, %struct.reg_field { i32 50331649, i32 0, i32 0, i32 7, i32 4 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 83886116, i32 5, i32 6, i32 7, i32 4 }, %struct.reg_field { i32 83886116, i32 3, i32 4, i32 7, i32 4 }, %struct.reg_field { i32 83886116, i32 1, i32 2, i32 7, i32 4 }, %struct.reg_field { i32 83886116, i32 0, i32 0, i32 7, i32 4 }, %struct.reg_field { i32 83886113, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 201326592, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 83886126, i32 10, i32 18, i32 7, i32 4 }, %struct.reg_field { i32 83886126, i32 1, i32 9, i32 7, i32 4 }, %struct.reg_field { i32 83886126, i32 0, i32 1, i32 7, i32 4 }], [304 x i8] zeroinitializer }, align 32
@vsc9959_regmap = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr null, ptr @vsc9959_ana_regmap, ptr @vsc9959_qs_regmap, ptr @vsc9959_qsys_regmap, ptr @vsc9959_rew_regmap, ptr @vsc9959_sys_regmap, ptr @vsc9959_vcap_regmap, ptr @vsc9959_vcap_regmap, ptr @vsc9959_vcap_regmap, ptr null, ptr @vsc9959_ptp_regmap, ptr null, ptr @vsc9959_gcb_regmap, ptr @vsc9959_dev_gmii_regmap], [40 x i8] zeroinitializer }, align 32
@vsc9959_ops = internal constant { %struct.ocelot_ops, [52 x i8] } { %struct.ocelot_ops { ptr @felix_port_to_netdev, ptr @felix_netdev_to_port, ptr @vsc9959_reset, ptr @vsc9959_wm_enc, ptr @vsc9959_wm_dec, ptr @vsc9959_wm_stat, ptr @vsc9959_psfp_init, ptr @vsc9959_psfp_filter_add, ptr @vsc9959_psfp_filter_del, ptr @vsc9959_psfp_stats_get, ptr @vsc9959_cut_through_fwd }, [52 x i8] zeroinitializer }, align 32
@vsc9959_stats_layout = internal constant { [92 x %struct.ocelot_stat_layout], [816 x i8] } { [92 x %struct.ocelot_stat_layout] [%struct.ocelot_stat_layout { i32 0, [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 1, [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 2, [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 3, [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 4, [32 x i8] c"rx_shorts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 5, [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 6, [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 7, [32 x i8] c"rx_crc_align_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 8, [32 x i8] c"rx_sym_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 9, [32 x i8] c"rx_frames_below_65_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 10, [32 x i8] c"rx_frames_65_to_127_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 11, [32 x i8] c"rx_frames_128_to_255_octets\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 12, [32 x i8] c"rx_frames_256_to_511_octets\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 13, [32 x i8] c"rx_frames_512_to_1023_octets\00\00\00\00" }, %struct.ocelot_stat_layout { i32 14, [32 x i8] c"rx_frames_1024_to_1526_octets\00\00\00" }, %struct.ocelot_stat_layout { i32 15, [32 x i8] c"rx_frames_over_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 16, [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 17, [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 18, [32 x i8] c"rx_longs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 19, [32 x i8] c"rx_classified_drops\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 20, [32 x i8] c"rx_red_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 21, [32 x i8] c"rx_red_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 22, [32 x i8] c"rx_red_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 23, [32 x i8] c"rx_red_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 24, [32 x i8] c"rx_red_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 25, [32 x i8] c"rx_red_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 26, [32 x i8] c"rx_red_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 27, [32 x i8] c"rx_red_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 28, [32 x i8] c"rx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 29, [32 x i8] c"rx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 30, [32 x i8] c"rx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 31, [32 x i8] c"rx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 32, [32 x i8] c"rx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 33, [32 x i8] c"rx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 34, [32 x i8] c"rx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 35, [32 x i8] c"rx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 36, [32 x i8] c"rx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 37, [32 x i8] c"rx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 38, [32 x i8] c"rx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 39, [32 x i8] c"rx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 40, [32 x i8] c"rx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 41, [32 x i8] c"rx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 42, [32 x i8] c"rx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 43, [32 x i8] c"rx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 128, [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 129, [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 130, [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 131, [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 132, [32 x i8] c"tx_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 133, [32 x i8] c"tx_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 134, [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 135, [32 x i8] c"tx_frames_below_65_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 136, [32 x i8] c"tx_frames_65_to_127_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 137, [32 x i8] c"tx_frames_128_255_octets\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 139, [32 x i8] c"tx_frames_256_511_octets\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 140, [32 x i8] c"tx_frames_1024_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 141, [32 x i8] c"tx_frames_over_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 142, [32 x i8] c"tx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 143, [32 x i8] c"tx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 144, [32 x i8] c"tx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 145, [32 x i8] c"tx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 146, [32 x i8] c"tx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 147, [32 x i8] c"tx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 148, [32 x i8] c"tx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 149, [32 x i8] c"tx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 150, [32 x i8] c"tx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 151, [32 x i8] c"tx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 152, [32 x i8] c"tx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 153, [32 x i8] c"tx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 154, [32 x i8] c"tx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 155, [32 x i8] c"tx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 156, [32 x i8] c"tx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 157, [32 x i8] c"tx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 158, [32 x i8] c"tx_aged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 256, [32 x i8] c"drop_local\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 257, [32 x i8] c"drop_tail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 258, [32 x i8] c"drop_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 259, [32 x i8] c"drop_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 260, [32 x i8] c"drop_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 261, [32 x i8] c"drop_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 262, [32 x i8] c"drop_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 263, [32 x i8] c"drop_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 264, [32 x i8] c"drop_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 265, [32 x i8] c"drop_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 266, [32 x i8] c"drop_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 267, [32 x i8] c"drop_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 268, [32 x i8] c"drop_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 269, [32 x i8] c"drop_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 270, [32 x i8] c"drop_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 271, [32 x i8] c"drop_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 272, [32 x i8] c"drop_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 273, [32 x i8] c"drop_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [816 x i8] zeroinitializer }, align 32
@vsc9959_vcap_props = internal global { [3 x %struct.vcap_props], [60 x i8] } { [3 x %struct.vcap_props] [%struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, [2 x %struct.anon.172] [%struct.anon.172 { i16 72, i16 1 }, %struct.anon.172 zeroinitializer], i16 0, i16 0, i32 6, ptr @vsc9959_vcap_es0_keys, ptr @vsc9959_vcap_es0_actions }, %struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, [2 x %struct.anon.172] [%struct.anon.172 { i16 78, i16 4 }, %struct.anon.172 zeroinitializer], i16 0, i16 0, i32 7, ptr @vsc9959_vcap_is1_keys, ptr @vsc9959_vcap_is1_actions }, %struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, [2 x %struct.anon.172] [%struct.anon.172 { i16 44, i16 2 }, %struct.anon.172 { i16 6, i16 4 }], i16 0, i16 0, i32 8, ptr @vsc9959_vcap_is2_keys, ptr @vsc9959_vcap_is2_actions }], [60 x i8] zeroinitializer }, align 32
@vsc9959_ptp_caps = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"felix ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2147483647, i32 0, i32 0, i32 4, i32 4, i32 0, ptr null, ptr @ocelot_ptp_adjfine, ptr null, ptr null, ptr @ocelot_ptp_adjtime, ptr @ocelot_ptp_gettime64, ptr null, ptr null, ptr @ocelot_ptp_settime64, ptr @ocelot_ptp_enable, ptr @ocelot_ptp_verify, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ana\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"qs\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qsys\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rew\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s0\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s2\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"devcpu_gcb\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port0\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port1\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port2\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port3\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port4\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port5\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"imdio\00", [26 x i8] zeroinitializer }, align 32
@vsc9959_ana_regmap = internal constant { [99 x i32], [116 x i8] } { [99 x i32] [i32 35232, i32 35236, i32 -1, i32 35244, i32 35248, i32 35252, i32 35256, i32 35272, i32 35276, i32 35280, i32 35284, i32 35288, i32 35292, i32 35296, i32 35300, i32 35304, i32 35336, i32 35340, i32 35368, i32 35400, i32 33792, i32 32540, i32 32544, i32 32548, i32 32552, i32 32556, i32 32560, i32 32564, i32 32568, i32 32572, i32 32576, i32 32512, i32 32580, i32 32584, i32 32588, i32 32592, i32 32596, i32 32600, i32 32604, i32 32608, i32 32612, i32 34304, i32 32768, i32 35428, i32 32688, i32 32692, i32 32696, i32 32700, i32 32704, i32 32640, i32 32656, i32 35200, i32 35204, i32 35208, i32 30720, i32 30724, i32 30728, i32 30732, i32 30736, i32 30748, i32 30752, i32 30816, i32 30820, i32 30824, i32 30828, i32 30832, i32 30836, i32 30840, i32 30844, i32 30848, i32 30852, i32 34816, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 35432, i32 35436, i32 -1, i32 35444, i32 35508, i32 35764, i32 35828, i32 35860, i32 -1, i32 -1, i32 -1, i32 35904, i32 35908, i32 16384, i32 16388, i32 16392, i32 16396, i32 16400, i32 -1, i32 35912, i32 36020, i32 -1], [116 x i8] zeroinitializer }, align 32
@vsc9959_qs_regmap = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 8, i32 16, i32 24, i32 28, i32 32, i32 36, i32 44, i32 52, i32 60, i32 64, i32 -1], [48 x i8] zeroinitializer }, align 32
@vsc9959_qsys_regmap = internal constant { [71 x i32], [68 x i8] } { [71 x i32] [i32 62560, i32 62592, i32 62620, i32 62624, i32 62648, i32 62652, i32 62656, i32 62660, i32 62688, i32 -1, i32 62696, i32 -1, i32 -1, i32 -1, i32 62732, i32 62736, i32 62740, i32 62744, i32 62748, i32 62752, i32 62756, i32 62760, i32 62764, i32 62768, i32 62772, i32 62836, i32 49152, i32 49156, i32 62840, i32 62844, i32 -1, i32 62852, i32 62880, i32 62908, i32 62936, i32 62964, i32 62992, i32 63020, i32 63048, i32 63076, i32 0, i32 4, i32 8, i32 12, i32 -1, i32 64, i32 68, i32 72, i32 -1, i32 63100, i32 63104, i32 63128, i32 63132, i32 62528, i32 62532, i32 62536, i32 62540, i32 62544, i32 62548, i32 62552, i32 62464, i32 62468, i32 62472, i32 62476, i32 62480, i32 62484, i32 62488, i32 62492, i32 62496, i32 62500, i32 62504], [68 x i8] zeroinitializer }, align 32
@vsc9959_rew_regmap = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 80, i32 84, i32 88, i32 1040, i32 1296, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@vsc9959_sys_regmap = internal constant { [66 x i32], [88 x i8] } { [66 x i32] [i32 0, i32 0, i32 8, i32 0, i32 16, i32 20, i32 24, i32 0, i32 0, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 0, i32 0, i32 68, i32 0, i32 512, i32 0, i32 0, i32 0, i32 528, i32 532, i32 0, i32 540, i32 544, i32 548, i32 552, i32 556, i32 560, i32 632, i32 3584, i32 3588, i32 3592, i32 3596, i32 3628, i32 3652, i32 3656, i32 3660, i32 -1, i32 3692, i32 3716, i32 3740, i32 0, i32 3744, i32 3772, i32 3776, i32 3804, i32 3808, i32 3832, i32 -1, i32 -1, i32 -1, i32 0, i32 3860, i32 3864, i32 3868, i32 3872, i32 3876, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [88 x i8] zeroinitializer }, align 32
@vsc9959_vcap_regmap = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 4, i32 8, i32 264, i32 520, i32 776, i32 904, i32 920, i32 924, i32 928, i32 932, i32 936, i32 940, i32 944, i32 948, i32 952, i32 956], [60 x i8] zeroinitializer }, align 32
@vsc9959_ptp_regmap = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 4, i32 8, i32 12, i32 20, i32 24, i32 160, i32 164, i32 168], [60 x i8] zeroinitializer }, align 32
@vsc9959_gcb_regmap = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@vsc9959_dev_gmii_regmap = internal constant { [39 x i32], [36 x i8] } { [39 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 64, i32 68, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@vsc9959_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 923, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout: switch core reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vsc9959_reset\00", [18 x i8] zeroinitializer }, align 32
@vsc9959_reset._entry_ptr = internal global ptr @vsc9959_reset._entry, section ".printk_index", align 4
@vsc9959_reset._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 933, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout: switch sram init\0A\00", [37 x i8] zeroinitializer }, align 32
@vsc9959_reset._entry_ptr.44 = internal global ptr @vsc9959_reset._entry.42, section ".printk_index", align 4
@vsc9959_psfp_filter_add.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mscc_felix: Only can match on VID, PCP, and dest MAC\00", [43 x i8] zeroinitializer }, align 32
@vsc9959_psfp_filter_add.__msg.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mscc_felix: The stream is added on this port\00", [51 x i8] zeroinitializer }, align 32
@vsc9959_psfp_filter_add.__msg.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mscc_felix: The stream is added on two ports\00", [51 x i8] zeroinitializer }, align 32
@vsc9959_mact_stream_set.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mscc_felix: Stream is not learned in MAC table\00", [49 x i8] zeroinitializer }, align 32
@vsc9959_psfp_filter_del.sfi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@vsc9959_cut_through_fwd.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 2, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc9959_cut_through_fwd\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"port %d fwd mask 0x%lx speed %d min_speed %d, %s cut-through forwarding\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@vsc9959_vcap_es0_keys = internal constant { [8 x %struct.vcap_field], [32 x i8] } { [8 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 3 }, %struct.vcap_field { i32 3, i32 3 }, %struct.vcap_field { i32 6, i32 2 }, %struct.vcap_field { i32 8, i32 1 }, %struct.vcap_field { i32 9, i32 1 }, %struct.vcap_field { i32 10, i32 12 }, %struct.vcap_field { i32 22, i32 1 }, %struct.vcap_field { i32 23, i32 3 }], [32 x i8] zeroinitializer }, align 32
@vsc9959_vcap_es0_actions = internal constant { [18 x %struct.vcap_field], [48 x i8] } { [18 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 2 }, %struct.vcap_field { i32 2, i32 1 }, %struct.vcap_field { i32 3, i32 2 }, %struct.vcap_field { i32 5, i32 1 }, %struct.vcap_field { i32 6, i32 2 }, %struct.vcap_field { i32 8, i32 2 }, %struct.vcap_field { i32 10, i32 2 }, %struct.vcap_field { i32 12, i32 1 }, %struct.vcap_field { i32 13, i32 2 }, %struct.vcap_field { i32 15, i32 2 }, %struct.vcap_field { i32 17, i32 12 }, %struct.vcap_field { i32 29, i32 3 }, %struct.vcap_field { i32 32, i32 1 }, %struct.vcap_field { i32 33, i32 12 }, %struct.vcap_field { i32 45, i32 3 }, %struct.vcap_field { i32 48, i32 1 }, %struct.vcap_field { i32 49, i32 23 }, %struct.vcap_field { i32 72, i32 1 }], [48 x i8] zeroinitializer }, align 32
@vsc9959_vcap_is1_keys = internal constant { [44 x %struct.vcap_field], [64 x i8] } { [44 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 1 }, %struct.vcap_field { i32 1, i32 2 }, %struct.vcap_field { i32 3, i32 7 }, %struct.vcap_field { i32 10, i32 9 }, %struct.vcap_field { i32 19, i32 1 }, %struct.vcap_field { i32 20, i32 1 }, %struct.vcap_field { i32 21, i32 1 }, %struct.vcap_field { i32 22, i32 1 }, %struct.vcap_field { i32 23, i32 1 }, %struct.vcap_field { i32 24, i32 1 }, %struct.vcap_field { i32 25, i32 1 }, %struct.vcap_field { i32 26, i32 12 }, %struct.vcap_field { i32 38, i32 1 }, %struct.vcap_field { i32 39, i32 3 }, %struct.vcap_field { i32 42, i32 48 }, %struct.vcap_field { i32 90, i32 1 }, %struct.vcap_field { i32 91, i32 16 }, %struct.vcap_field { i32 107, i32 1 }, %struct.vcap_field { i32 108, i32 1 }, %struct.vcap_field { i32 109, i32 1 }, %struct.vcap_field { i32 110, i32 1 }, %struct.vcap_field { i32 111, i32 1 }, %struct.vcap_field { i32 112, i32 6 }, %struct.vcap_field { i32 118, i32 32 }, %struct.vcap_field { i32 150, i32 1 }, %struct.vcap_field { i32 151, i32 1 }, %struct.vcap_field { i32 152, i32 16 }, %struct.vcap_field { i32 168, i32 8 }, %struct.vcap_field { i32 42, i32 1 }, %struct.vcap_field { i32 43, i32 12 }, %struct.vcap_field { i32 55, i32 1 }, %struct.vcap_field { i32 56, i32 3 }, %struct.vcap_field { i32 59, i32 1 }, %struct.vcap_field { i32 60, i32 1 }, %struct.vcap_field { i32 61, i32 1 }, %struct.vcap_field { i32 62, i32 1 }, %struct.vcap_field { i32 63, i32 6 }, %struct.vcap_field { i32 69, i32 32 }, %struct.vcap_field { i32 101, i32 32 }, %struct.vcap_field { i32 133, i32 8 }, %struct.vcap_field { i32 141, i32 1 }, %struct.vcap_field { i32 142, i32 1 }, %struct.vcap_field { i32 143, i32 8 }, %struct.vcap_field { i32 151, i32 32 }], [64 x i8] zeroinitializer }, align 32
@vsc9959_vcap_is1_actions = internal constant { [20 x %struct.vcap_field], [32 x i8] } { [20 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 1 }, %struct.vcap_field { i32 1, i32 6 }, %struct.vcap_field { i32 7, i32 1 }, %struct.vcap_field { i32 8, i32 3 }, %struct.vcap_field { i32 11, i32 1 }, %struct.vcap_field { i32 12, i32 1 }, %struct.vcap_field { i32 13, i32 8 }, %struct.vcap_field { i32 21, i32 8 }, %struct.vcap_field { i32 29, i32 9 }, %struct.vcap_field { i32 38, i32 1 }, %struct.vcap_field { i32 39, i32 12 }, %struct.vcap_field { i32 51, i32 2 }, %struct.vcap_field { i32 53, i32 13 }, %struct.vcap_field { i32 66, i32 1 }, %struct.vcap_field { i32 67, i32 3 }, %struct.vcap_field { i32 70, i32 1 }, %struct.vcap_field { i32 71, i32 1 }, %struct.vcap_field { i32 72, i32 2 }, %struct.vcap_field { i32 74, i32 4 }, %struct.vcap_field { i32 78, i32 1 }], [32 x i8] zeroinitializer }, align 32
@vsc9959_vcap_is2_keys = internal global { [71 x %struct.vcap_field], [136 x i8] } { [71 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 4 }, %struct.vcap_field { i32 4, i32 1 }, %struct.vcap_field { i32 5, i32 8 }, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 13, i32 7 }, %struct.vcap_field { i32 20, i32 1 }, %struct.vcap_field { i32 21, i32 1 }, %struct.vcap_field { i32 22, i32 1 }, %struct.vcap_field { i32 23, i32 1 }, %struct.vcap_field { i32 24, i32 1 }, %struct.vcap_field { i32 25, i32 12 }, %struct.vcap_field { i32 37, i32 1 }, %struct.vcap_field { i32 38, i32 3 }, %struct.vcap_field { i32 41, i32 48 }, %struct.vcap_field { i32 89, i32 48 }, %struct.vcap_field { i32 137, i32 16 }, %struct.vcap_field { i32 153, i32 16 }, %struct.vcap_field { i32 169, i32 8 }, %struct.vcap_field { i32 177, i32 3 }, %struct.vcap_field zeroinitializer, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 137, i32 40 }, %struct.vcap_field zeroinitializer, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 137, i32 40 }, %struct.vcap_field { i32 41, i32 48 }, %struct.vcap_field { i32 89, i32 1 }, %struct.vcap_field { i32 90, i32 1 }, %struct.vcap_field { i32 91, i32 1 }, %struct.vcap_field { i32 92, i32 1 }, %struct.vcap_field { i32 93, i32 1 }, %struct.vcap_field { i32 94, i32 1 }, %struct.vcap_field { i32 95, i32 2 }, %struct.vcap_field { i32 97, i32 32 }, %struct.vcap_field { i32 129, i32 32 }, %struct.vcap_field { i32 161, i32 1 }, %struct.vcap_field { i32 41, i32 1 }, %struct.vcap_field { i32 42, i32 1 }, %struct.vcap_field { i32 43, i32 1 }, %struct.vcap_field { i32 44, i32 1 }, %struct.vcap_field { i32 45, i32 1 }, %struct.vcap_field { i32 46, i32 8 }, %struct.vcap_field { i32 54, i32 32 }, %struct.vcap_field { i32 86, i32 32 }, %struct.vcap_field { i32 118, i32 1 }, %struct.vcap_field { i32 119, i32 1 }, %struct.vcap_field { i32 136, i32 16 }, %struct.vcap_field { i32 120, i32 16 }, %struct.vcap_field { i32 152, i32 8 }, %struct.vcap_field { i32 160, i32 1 }, %struct.vcap_field { i32 161, i32 1 }, %struct.vcap_field { i32 167, i32 1 }, %struct.vcap_field { i32 166, i32 1 }, %struct.vcap_field { i32 165, i32 1 }, %struct.vcap_field { i32 164, i32 1 }, %struct.vcap_field { i32 163, i32 1 }, %struct.vcap_field { i32 162, i32 1 }, %struct.vcap_field { i32 168, i32 8 }, %struct.vcap_field { i32 176, i32 4 }, %struct.vcap_field { i32 119, i32 8 }, %struct.vcap_field { i32 127, i32 56 }, %struct.vcap_field { i32 41, i32 1 }, %struct.vcap_field { i32 170, i32 8 }, %struct.vcap_field { i32 42, i32 128 }, %struct.vcap_field { i32 137, i32 7 }, %struct.vcap_field { i32 144, i32 5 }, %struct.vcap_field { i32 149, i32 8 }, %struct.vcap_field { i32 157, i32 8 }, %struct.vcap_field { i32 165, i32 16 }, %struct.vcap_field { i32 181, i32 1 }, %struct.vcap_field { i32 182, i32 1 }], [136 x i8] zeroinitializer }, align 32
@vsc9959_vcap_is2_actions = internal global { [15 x %struct.vcap_field], [40 x i8] } { [15 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 1 }, %struct.vcap_field { i32 1, i32 1 }, %struct.vcap_field { i32 2, i32 3 }, %struct.vcap_field { i32 5, i32 2 }, %struct.vcap_field { i32 7, i32 1 }, %struct.vcap_field { i32 8, i32 1 }, %struct.vcap_field { i32 9, i32 1 }, %struct.vcap_field { i32 10, i32 9 }, %struct.vcap_field { i32 19, i32 1 }, %struct.vcap_field { i32 20, i32 6 }, %struct.vcap_field { i32 26, i32 9 }, %struct.vcap_field { i32 35, i32 1 }, %struct.vcap_field { i32 36, i32 2 }, %struct.vcap_field { i32 38, i32 6 }, %struct.vcap_field { i32 44, i32 32 }], [40 x i8] zeroinitializer }, align 32
@vsc9959_mdio_bus_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1045, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate array for PCS PHYs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vsc9959_mdio_bus_alloc\00", [41 x i8] zeroinitializer }, align 32
@vsc9959_mdio_bus_alloc._entry_ptr = internal global ptr @vsc9959_mdio_bus_alloc._entry, section ".printk_index", align 4
@vsc9959_mdio_bus_alloc._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 1060, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate ENETC HW structure\0A\00", [57 x i8] zeroinitializer }, align 32
@vsc9959_mdio_bus_alloc._entry_ptr.55 = internal global ptr @vsc9959_mdio_bus_alloc._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VSC9959 internal MDIO bus\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-imdio\00", [23 x i8] zeroinitializer }, align 32
@vsc9959_mdio_bus_alloc._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.3, i32 1083, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@vsc9959_mdio_bus_alloc._entry_ptr.60 = internal global ptr @vsc9959_mdio_bus_alloc._entry.58, section ".printk_index", align 4
@vsc9959_mdio_bus_alloc._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.52, ptr @.str.3, i32 1113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Found PCS at internal MDIO address %d\0A\00", [57 x i8] zeroinitializer }, align 32
@vsc9959_mdio_bus_alloc._entry_ptr.63 = internal global ptr @vsc9959_mdio_bus_alloc._entry.61, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 22, i64 28]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 18, i64 22, i64 28]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 13]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 22, i64 28]
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"felix_vsc9959_pci_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2382, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2389, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"felix_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2373, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2273, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2279, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2286, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"felix_info_vsc9959\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2219, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2302, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2304, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2313, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2327, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"vsc9959_target_io_res\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 387, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"vsc9959_port_io_res\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 440, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"vsc9959_imdio_res\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 476, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"vsc9959_regfields\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 482, i32 31 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"vsc9959_regmap\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 372, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"vsc9959_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2205, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"vsc9959_stats_layout\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 532, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"vsc9959_vcap_props\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 832, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"vsc9959_ptp_caps\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 875, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 391, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 396, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 401, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 406, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 411, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 416, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 421, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 426, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 431, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 436, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 444, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 449, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 454, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 459, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 464, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 469, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 479, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"vsc9959_ana_regmap\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 27, i32 18 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"vsc9959_qs_regmap\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 129, i32 18 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"vsc9959_qsys_regmap\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 167, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant [19 x i8] c"vsc9959_rew_regmap\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 241, i32 18 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"vsc9959_sys_regmap\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 257, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"vsc9959_vcap_regmap\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 144, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"vsc9959_ptp_regmap\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 314, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"vsc9959_gcb_regmap\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 326, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"vsc9959_dev_gmii_regmap\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 330, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 923, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 933, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1934, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1991, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1998, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1473, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [4 x i8] c"sfi\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2060, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 2196, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [22 x i8] c"vsc9959_vcap_es0_keys\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 627, i32 32 }
@___asan_gen_.284 = private unnamed_addr constant [25 x i8] c"vsc9959_vcap_es0_actions\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 638, i32 32 }
@___asan_gen_.287 = private unnamed_addr constant [22 x i8] c"vsc9959_vcap_is1_keys\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 659, i32 32 }
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"vsc9959_vcap_is1_actions\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 710, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"vsc9959_vcap_is2_keys\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 734, i32 26 }
@___asan_gen_.296 = private unnamed_addr constant [25 x i8] c"vsc9959_vcap_is2_actions\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 814, i32 26 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1045, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1060, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1068, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1078, i32 37 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1083, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.330 = private constant [42 x i8] c"../drivers/net/dsa/ocelot/felix_vsc9959.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 1113, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_description532, ptr @__UNIQUE_ID_file533, ptr @__UNIQUE_ID_license534, ptr @__exitcall_felix_vsc9959_pci_driver_exit, ptr @__initcall__kmod_mscc_felix__531_2389_felix_vsc9959_pci_driver_init6, ptr @felix_pci_probe._entry, ptr @felix_pci_probe._entry.10, ptr @felix_pci_probe._entry.14, ptr @felix_pci_probe._entry.17, ptr @felix_pci_probe._entry.20, ptr @felix_pci_probe._entry.6, ptr @felix_pci_probe._entry_ptr, ptr @felix_pci_probe._entry_ptr.12, ptr @felix_pci_probe._entry_ptr.16, ptr @felix_pci_probe._entry_ptr.19, ptr @felix_pci_probe._entry_ptr.22, ptr @felix_pci_probe._entry_ptr.9, ptr @felix_vsc9959_pci_driver_exit, ptr @vsc9959_mdio_bus_alloc._entry, ptr @vsc9959_mdio_bus_alloc._entry.53, ptr @vsc9959_mdio_bus_alloc._entry.58, ptr @vsc9959_mdio_bus_alloc._entry.61, ptr @vsc9959_mdio_bus_alloc._entry_ptr, ptr @vsc9959_mdio_bus_alloc._entry_ptr.55, ptr @vsc9959_mdio_bus_alloc._entry_ptr.60, ptr @vsc9959_mdio_bus_alloc._entry_ptr.63, ptr @vsc9959_reset._entry, ptr @vsc9959_reset._entry.42, ptr @vsc9959_reset._entry_ptr, ptr @vsc9959_reset._entry_ptr.44, ptr @felix_vsc9959_pci_driver, ptr @.str, ptr @felix_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @felix_info_vsc9959, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @vsc9959_target_io_res, ptr @vsc9959_port_io_res, ptr @vsc9959_imdio_res, ptr @vsc9959_regfields, ptr @vsc9959_regmap, ptr @vsc9959_ops, ptr @vsc9959_stats_layout, ptr @vsc9959_vcap_props, ptr @vsc9959_ptp_caps, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @vsc9959_ana_regmap, ptr @vsc9959_qs_regmap, ptr @vsc9959_qsys_regmap, ptr @vsc9959_rew_regmap, ptr @vsc9959_sys_regmap, ptr @vsc9959_vcap_regmap, ptr @vsc9959_ptp_regmap, ptr @vsc9959_gcb_regmap, ptr @vsc9959_dev_gmii_regmap, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @vsc9959_psfp_filter_add.__msg, ptr @vsc9959_psfp_filter_add.__msg.45, ptr @vsc9959_psfp_filter_add.__msg.46, ptr @vsc9959_mact_stream_set.__msg, ptr @vsc9959_psfp_filter_del.sfi, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @vsc9959_vcap_es0_keys, ptr @vsc9959_vcap_es0_actions, ptr @vsc9959_vcap_is1_keys, ptr @vsc9959_vcap_is1_actions, ptr @vsc9959_vcap_is2_keys, ptr @vsc9959_vcap_is2_actions, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_vsc9959_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_info_vsc9959 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_target_io_res to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_port_io_res to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_imdio_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_regfields to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_regmap to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_stats_layout to i32), i32 3312, i32 4128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_props to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_ptp_caps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_ana_regmap to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_qs_regmap to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_qsys_regmap to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_rew_regmap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_sys_regmap to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_regmap to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_ptp_regmap to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_gcb_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_dev_gmii_regmap to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_reset._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_psfp_filter_add.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_psfp_filter_add.__msg.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_psfp_filter_add.__msg.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_mact_stream_set.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_psfp_filter_del.sfi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_es0_keys to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_es0_actions to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_is1_keys to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_is1_actions to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_is2_keys to i32), i32 568, i32 704, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_vcap_is2_actions to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_mdio_bus_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_mdio_bus_alloc._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_mdio_bus_alloc._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9959_mdio_bus_alloc._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_vsc9959_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @felix_vsc9959_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @felix_vsc9959_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @felix_vsc9959_pci_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %of_node = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %1) #13
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1616) #17
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #16
  br label %err_alloc_felix

if.end19:                                         ; preds = %if.end11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %ocelot20 = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ocelot20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %ocelot20, align 8
  %num_flooding_pgids = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 2, i32 16
  %5 = ptrtoint ptr %num_flooding_pgids to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %num_flooding_pgids, align 4
  %info = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @felix_info_vsc9959, ptr %info, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  %switch_base = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %switch_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %switch_base, align 8
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %imdio_base = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %imdio_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %imdio_base, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call27 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %14, ptr noundef null, ptr noundef nonnull @felix_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.13, ptr noundef %ocelot20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #16
  br label %err_alloc_irq

if.end34:                                         ; preds = %if.end19
  %ptp = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 2, i32 35
  %15 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %ptp, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ptp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i104 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 84) #17
  %tobool36.not = icmp eq ptr %call7.i.i104, null
  br i1 %tobool36.not, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #16
  br label %err_alloc_irq

if.end42:                                         ; preds = %if.end34
  %17 = ptrtoint ptr %call7.i.i104 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call7.i.i104, align 8
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %num_ports = getelementptr inbounds %struct.felix_info, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ports, align 4
  %num_ports46 = getelementptr inbounds %struct.dsa_switch, ptr %call7.i.i104, i32 0, i32 18
  %22 = ptrtoint ptr %num_ports46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num_ports46, align 8
  %num_tx_queues = getelementptr inbounds %struct.felix_info, ptr %19, i32 0, i32 10
  %23 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_tx_queues, align 4
  %num_tx_queues48 = getelementptr inbounds %struct.dsa_switch, ptr %call7.i.i104, i32 0, i32 15
  %25 = ptrtoint ptr %num_tx_queues48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_tx_queues48, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %call7.i.i104, i32 0, i32 8
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @felix_switch_ops, ptr %ops, align 8
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %call7.i.i104, i32 0, i32 5
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ocelot20, ptr %priv, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i104, ptr %call7.i.i, align 8
  %tag_proto = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %tag_proto to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 15, ptr %tag_proto, align 8
  %call50 = tail call i32 @dsa_register_switch(ptr noundef nonnull %call7.i.i104) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end42.cleanup_crit_edge, label %do.end55

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end55:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call50) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i104) #13
  br label %err_alloc_irq

err_alloc_irq:                                    ; preds = %do.end55, %if.then37, %do.end32
  %err.0 = phi i32 [ %call27, %do.end32 ], [ %call50, %do.end55 ], [ -12, %if.then37 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %err_alloc_felix

err_alloc_felix:                                  ; preds = %err_alloc_irq, %if.then14
  %err.1 = phi i32 [ %err.0, %err_alloc_irq ], [ -12, %if.then14 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_felix, %if.end42.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end42.cleanup_crit_edge ], [ %call4, %do.end9 ], [ %err.1, %err_alloc_felix ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_unregister_switch(ptr noundef %3) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %5) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_pci_shutdown(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #13
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
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ocelot_get_txtstamp(ptr noundef %data) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9959_mdio_bus_alloc(ptr nocapture noundef %ocelot) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ocelot, i32 -8
  %0 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #13
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %info = getelementptr i8, ptr %ocelot, i32 -4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %num_ports = getelementptr inbounds %struct.felix_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #13
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !183

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pcs115 = getelementptr i8, ptr %ocelot, i32 1588
  %10 = ptrtoint ptr %pcs115 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pcs115, align 4
  br label %do.end

devm_kcalloc.exit:                                ; preds = %entry
  %11 = extractvalue { i32, i1 } %8, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %11, i32 noundef 3520) #13
  %pcs = getelementptr i8, ptr %ocelot, i32 1588
  %12 = ptrtoint ptr %pcs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %pcs, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.do.end_crit_edge, label %if.end

devm_kcalloc.exit.do.end_crit_edge:               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %devm_kcalloc.exit.do.end_crit_edge, %devm_kcalloc.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.51) #16
  br label %cleanup57

if.end:                                           ; preds = %devm_kcalloc.exit
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %imdio_res = getelementptr inbounds %struct.felix_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %imdio_res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %imdio_res, align 4
  %17 = call ptr @memcpy(ptr %res, ptr %16, i32 32)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %3, align 4
  %imdio_base = getelementptr i8, ptr %ocelot, i32 1596
  %19 = ptrtoint ptr %imdio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %imdio_base, align 4
  %21 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %res, align 4
  %add = add i32 %22, %20
  store i32 %add, ptr %res, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  %add5 = add i32 %24, %20
  store i32 %add5, ptr %2, align 4
  %call6 = call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef nonnull %res) #13
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %call6 to i32
  br label %cleanup57

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @enetc_hw_alloc(ptr noundef %1, ptr noundef %call6) #13
  %cmp.i110 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.54) #16
  %26 = ptrtoint ptr %call11 to i32
  br label %cleanup57

if.end18:                                         ; preds = %if.end10
  %call19 = call ptr @mdiobus_alloc_size(i32 noundef 8) #13
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.cleanup57_crit_edge, label %if.end22

if.end18.cleanup57_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

if.end22:                                         ; preds = %if.end18
  %name = getelementptr inbounds %struct.mii_bus, ptr %call19, i32 0, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.56, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call19, i32 0, i32 4
  %28 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @enetc_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call19, i32 0, i32 5
  %29 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @enetc_mdio_write, ptr %write, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call19, i32 0, i32 9
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %parent, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call19, i32 0, i32 3
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call11, ptr %32, align 4
  %mdio_base = getelementptr inbounds %struct.enetc_mdio_priv, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %mdio_base to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mdio_base, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call19, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %38, %if.end.i ], [ %36, %if.end22.dev_name.exit_crit_edge ]
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.57, ptr noundef %retval.0.i)
  %call26 = call i32 @__mdiobus_register(ptr noundef nonnull %call19, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.end31

do.end30:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59) #16
  call void @mdiobus_free(ptr noundef nonnull %call19) #13
  br label %cleanup57

if.end31:                                         ; preds = %dev_name.exit
  %imdio = getelementptr i8, ptr %ocelot, i32 1584
  %39 = ptrtoint ptr %imdio to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call19, ptr %imdio, align 4
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %num_ports33118 = getelementptr inbounds %struct.felix_info, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %num_ports33118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_ports33118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp34119 = icmp sgt i32 %43, 0
  br i1 %cmp34119, label %for.body.lr.ph, label %if.end31.cleanup57_crit_edge

if.end31.cleanup57_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %if.end31
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %port.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %44 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %45, i32 %port.0120
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_unused_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_unused_port.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_unused_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %53 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %54, %49
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %55 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %port.0120)
  %cmp5.i.i = icmp eq i32 %56, %port.0120
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %57 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_unused_port.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, %for.body.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i111 = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i111, i32 0, i32 6
  %58 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i112 = icmp eq i32 %59, 0
  br i1 %cmp.i112, label %dsa_is_unused_port.exit.cleanup_crit_edge, label %if.end37

dsa_is_unused_port.exit.cleanup_crit_edge:        ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %dsa_is_unused_port.exit
  %phy_mode = getelementptr inbounds %struct.ocelot_port, ptr %47, i32 0, i32 8
  %60 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp38 = icmp eq i32 %61, 1
  br i1 %cmp38, label %if.end37.cleanup_crit_edge, label %if.end40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %62 = ptrtoint ptr %imdio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %imdio, align 4
  %call42 = call ptr @mdio_device_create(ptr noundef %63, i32 noundef %port.0120) #13
  %cmp.i113 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %call46 = call ptr @lynx_pcs_create(ptr noundef %call42) #13
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  call void @mdio_device_free(ptr noundef %call42) #13
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcs, align 4
  %arrayidx51 = getelementptr ptr, ptr %65, i32 %port.0120
  %66 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call46, ptr %arrayidx51, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef %port.0120) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then48, %if.end40.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %dsa_is_unused_port.exit.cleanup_crit_edge
  %inc = add nuw nsw i32 %port.0120, 1
  %67 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info, align 4
  %num_ports33 = getelementptr inbounds %struct.felix_info, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %num_ports33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_ports33, align 4
  %cmp34 = icmp slt i32 %inc, %70
  br i1 %cmp34, label %cleanup.for.body_crit_edge, label %cleanup.cleanup57_crit_edge

cleanup.cleanup57_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup57

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup57:                                        ; preds = %cleanup.cleanup57_crit_edge, %if.end31.cleanup57_crit_edge, %do.end30, %if.end18.cleanup57_crit_edge, %do.end16, %if.then8, %do.end
  %retval.0 = phi i32 [ %25, %if.then8 ], [ %26, %do.end16 ], [ %call26, %do.end30 ], [ -12, %do.end ], [ -12, %if.end18.cleanup57_crit_edge ], [ 0, %if.end31.cleanup57_crit_edge ], [ 0, %cleanup.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc9959_mdio_bus_free(ptr nocapture noundef readonly %ocelot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %0 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp12.not = icmp eq i8 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pcs = getelementptr i8, ptr %ocelot, i32 1588
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %port.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %port.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @lynx_get_mdio_device(ptr noundef nonnull %5) #13
  tail call void @mdio_device_free(ptr noundef %call) #13
  tail call void @lynx_pcs_destroy(ptr noundef nonnull %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %port.013, 1
  %6 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %imdio = getelementptr i8, ptr %ocelot, i32 1584
  %8 = ptrtoint ptr %imdio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imdio, align 4
  tail call void @mdiobus_unregister(ptr noundef %9) #13
  %10 = ptrtoint ptr %imdio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %imdio, align 4
  tail call void @mdiobus_free(ptr noundef %11) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc9959_phylink_validate(ptr nocapture noundef readonly %ocelot, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #13
  %4 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phy_mode = getelementptr inbounds %struct.ocelot_port, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp2.not = icmp eq i32 %6, %8
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %9 = call ptr @memset(ptr %supported, i32 0, i32 12)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #13
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %or.i45 = or i32 %11, 24703
  store i32 %or.i45, ptr %mask, align 4
  %12 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interface, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end.if.end22_crit_edge [
    i32 1, label %if.end.if.then19_crit_edge
    i32 22, label %if.end.if.then19_crit_edge49
    i32 28, label %if.end.if.then19_crit_edge50
  ]

if.end.if.then19_crit_edge50:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.end.if.then19_crit_edge49:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.end.if.then19_crit_edge, %if.end.if.then19_crit_edge49, %if.end.if.then19_crit_edge50
  %add.ptr.i = getelementptr inbounds i32, ptr %mask, i32 1
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %or.i46 = or i32 %16, 32768
  store i32 %or.i46, ptr %add.ptr.i, align 4
  %or.i47 = or i32 %11, 57471
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i47, ptr %mask, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end.if.end22_crit_edge
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #13
  %call.i.i48 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc9959_prevalidate_phy_mode(ptr nocapture noundef readnone %ocelot, i32 noundef %port, i32 noundef %phy_mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %phy_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %phy_mode, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.bb2_crit_edge
    i32 18, label %entry.sw.bb2_crit_edge13
    i32 28, label %entry.sw.bb2_crit_edge14
    i32 22, label %entry.sw.bb2_crit_edge15
  ]

entry.sw.bb2_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.sw.bb2_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.sw.bb2_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = and i32 %port, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp eq i32 %1, 4
  %spec.select = select i1 %switch, i32 0, i32 -524
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge13, %entry.sw.bb2_crit_edge14, %entry.sw.bb2_crit_edge15
  %2 = and i32 %port, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %switch11 = icmp eq i32 %2, 4
  %spec.select12 = select i1 %switch11, i32 -524, i32 0
  br label %return

return:                                           ; preds = %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %entry.return_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select12, %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9959_port_setup_tc(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %type, ptr nocapture noundef readonly %type_data) #2 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  %tmp191.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 13, label %sw.bb
    i32 6, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %3 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = shl i32 %port, 2
  tail call void @__ocelot_rmw_ix(ptr noundef %2, i32 noundef 65280, i32 noundef 65281, i32 noundef 50331698, i32 noundef %mul.i) #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %cycle_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 2
  %5 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cycle_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %6)
  %cmp.i = icmp ugt i64 %6, 1000000000
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %cycle_time_extension.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 3
  %7 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cycle_time_extension.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %8)
  %cmp1.i = icmp ugt i64 %8, 999999999
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end3.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %num_entries.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 4
  %9 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %10)
  %cmp4.i = icmp ugt i32 %10, 63
  br i1 %cmp4.i, label %if.end3.i.cleanup_crit_edge, label %if.end6.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.end3.i
  %and.i = and i32 %port, 255
  %or.i = or i32 %and.i, 256
  tail call void @__ocelot_rmw_ix(ptr noundef %2, i32 noundef %or.i, i32 noundef 511, i32 noundef 50331699, i32 noundef 0) #13
  %call.i = tail call i32 @__ocelot_read_ix(ptr noundef %2, i32 noundef 50331715, i32 noundef 0) #13
  %and7.i = and i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.i:                                       ; preds = %if.end6.i
  %mul11.i = shl i32 %port, 2
  tail call void @__ocelot_rmw_ix(ptr noundef %2, i32 noundef 16776961, i32 noundef 16776961, i32 noundef 50331698, i32 noundef %mul11.i) #13
  %base_time.i = getelementptr inbounds %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 1
  %11 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %base_time.i, align 8
  %13 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cycle_time.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #13
  %15 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  %ptp_info.i.i = getelementptr inbounds %struct.ocelot, ptr %2, i32 0, i32 37
  %call.i.i = call i32 @ocelot_ptp_gettime64(ptr noundef %ptp_info.i.i, ptr noundef nonnull %ts.i.i) #13
  %16 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %.fca.0.load.i.i = load i64, ptr %ts.i.i, align 8
  %.fca.1.gep.i.i = getelementptr inbounds [2 x i64], ptr %ts.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %.fca.1.gep.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load.i.i)
  %cmp.i.i.i.i = icmp sgt i64 %.fca.0.load.i.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i.i = lshr i64 %.fca.1.load.i.i, 32
  %mul.i.i.i.i = mul i64 %.fca.0.load.i.i, 1000000000
  %add.i.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i.i, %mul.i.i.i.i
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i64 9223372036854775807, i64 %add.i.i.i.i, !prof !183
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i.i.i, i64 %12)
  %cmp.i.i = icmp sgt i64 %retval.0.i.i.i.i, %12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end10.i.vsc9959_new_base_time.exit.i_crit_edge

if.end10.i.vsc9959_new_base_time.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_new_base_time.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  %sub.i.i = sub i64 %retval.0.i.i.i.i, %12
  %conv.i.i = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp171.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !184

if.then175.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv176.i.i = trunc i64 %sub.i.i to i32
  %div179.i.i = udiv i32 %conv176.i.i, %conv.i.i
  %conv180.i.i = zext i32 %div179.i.i to i64
  br label %if.end185.i.i

if.else181.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i.i, i64 %sub.i.i) #18, !srcloc !185
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  br label %if.end185.i.i

if.end185.i.i:                                    ; preds = %if.else181.i.i, %if.then175.i.i
  %nr_of_cycles.0.i.i = phi i64 [ %conv180.i.i, %if.then175.i.i ], [ %asmresult1.i.i.i, %if.else181.i.i ]
  %add187.i.i = add i64 %nr_of_cycles.0.i.i, 1
  %mul188.i.i = mul i64 %add187.i.i, %14
  %add189.i.i = add i64 %mul188.i.i, %12
  br label %vsc9959_new_base_time.exit.i

vsc9959_new_base_time.exit.i:                     ; preds = %if.end185.i.i, %if.end10.i.vsc9959_new_base_time.exit.i_crit_edge
  %new_base_time.0.i.i = phi i64 [ %add189.i.i, %if.end185.i.i ], [ %12, %if.end10.i.vsc9959_new_base_time.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp191.i.i) #13
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp191.i.i, i64 noundef %new_base_time.0.i.i) #13
  %19 = ptrtoint ptr %tmp191.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %base_ts.sroa.0.0.copyload105.i = load i64, ptr %tmp191.i.i, align 8
  %base_ts.sroa.6.0.tmp191.i.sroa_idx.i = getelementptr inbounds i8, ptr %tmp191.i.i, i32 8
  %20 = ptrtoint ptr %base_ts.sroa.6.0.tmp191.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %base_ts.sroa.6.0.copyload106.i = load i32, ptr %base_ts.sroa.6.0.tmp191.i.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp191.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #13
  call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %base_ts.sroa.6.0.copyload106.i, i32 noundef 50331701, i32 noundef 0) #13
  %conv.i = trunc i64 %base_ts.sroa.0.0.copyload105.i to i32
  call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %conv.i, i32 noundef 50331702, i32 noundef 0) #13
  %21 = lshr i64 %base_ts.sroa.0.0.copyload105.i, 32
  %conv16.i = trunc i64 %21 to i32
  %and17.i = and i32 %conv16.i, 65535
  %22 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_entries.i, align 8
  %shl.i = shl i32 %23, 16
  %or20.i = or i32 %shl.i, %and17.i
  call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %or20.i, i32 noundef 50331703, i32 noundef 0) #13
  %24 = ptrtoint ptr %cycle_time.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cycle_time.i, align 8
  %conv22.i = trunc i64 %25 to i32
  call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %conv22.i, i32 noundef 50331704, i32 noundef 0) #13
  %26 = ptrtoint ptr %cycle_time_extension.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cycle_time_extension.i, align 8
  %conv24.i = trunc i64 %27 to i32
  call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %conv24.i, i32 noundef 50331705, i32 noundef 0) #13
  %28 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp26109.not.i = icmp eq i32 %29, 0
  br i1 %cmp26109.not.i, label %vsc9959_new_base_time.exit.i.for.end.i_crit_edge, label %vsc9959_new_base_time.exit.i.for.body.i_crit_edge

vsc9959_new_base_time.exit.i.for.body.i_crit_edge: ; preds = %vsc9959_new_base_time.exit.i
  br label %for.body.i

vsc9959_new_base_time.exit.i.for.end.i_crit_edge: ; preds = %vsc9959_new_base_time.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vsc9959_new_base_time.exit.i.for.body.i_crit_edge
  %i.0110.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %vsc9959_new_base_time.exit.i.for.body.i_crit_edge ]
  %and.i.i = and i32 %i.0110.i, 63
  %gate_mask.i.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.0110.i, i32 1
  %30 = ptrtoint ptr %gate_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gate_mask.i.i, align 4
  %shl.i99.i = shl i32 %31, 8
  %and2.i.i = and i32 %shl.i99.i, 65280
  %or.i.i = or i32 %and2.i.i, %and.i.i
  call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %or.i.i, i32 noundef 50331706, i32 noundef 0) #13
  %interval.i.i = getelementptr %struct.tc_taprio_qopt_offload, ptr %type_data, i32 0, i32 5, i32 %i.0110.i, i32 2
  %32 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interval.i.i, align 4
  call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %33, i32 noundef 50331707, i32 noundef 0) #13
  %inc.i = add nuw i32 %i.0110.i, 1
  %34 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_entries.i, align 8
  %cmp26.i = icmp ult i32 %inc.i, %35
  br i1 %cmp26.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %vsc9959_new_base_time.exit.i.for.end.i_crit_edge
  call void @__ocelot_rmw_ix(ptr noundef %2, i32 noundef 65536, i32 noundef 65536, i32 noundef 50331699, i32 noundef 0) #13
  %call28.i = call i64 @ktime_get() #13
  %add.i100.i = add i64 %call28.i, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1281) #13
  %call.i101111.i = call i32 @__ocelot_read_ix(ptr noundef %2, i32 noundef 50331699, i32 noundef 0) #13
  %and42112.i = and i32 %call.i101111.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42112.i)
  %tobool43.not113.i = icmp eq i32 %and42112.i, 0
  br i1 %tobool43.not113.i, label %for.end.i.for.end58.thread.i_crit_edge, label %for.end.i.land.lhs.true.i_crit_edge

for.end.i.land.lhs.true.i_crit_edge:              ; preds = %for.end.i
  br label %land.lhs.true.i

for.end.i.for.end58.thread.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end58.thread.i

land.lhs.true.i:                                  ; preds = %if.then55.i.land.lhs.true.i_crit_edge, %for.end.i.land.lhs.true.i_crit_edge
  %call47.i = call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call47.i, i64 %add.i100.i)
  %cmp3.i.i = icmp sgt i64 %call47.i, %add.i100.i
  br i1 %cmp3.i.i, label %for.end58.i, label %if.then55.i

if.then55.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #13
  %call.i101.i = call i32 @__ocelot_read_ix(ptr noundef %2, i32 noundef 50331699, i32 noundef 0) #13
  %and42.i = and i32 %call.i101.i, 65536
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.then55.i.for.end58.thread.i_crit_edge, label %if.then55.i.land.lhs.true.i_crit_edge

if.then55.i.land.lhs.true.i_crit_edge:            ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.then55.i.for.end58.thread.i_crit_edge:         ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end58.thread.i

for.end58.i:                                      ; preds = %land.lhs.true.i
  %call.i103.i = call i32 @__ocelot_read_ix(ptr noundef %2, i32 noundef 50331699, i32 noundef 0) #13
  %.pre.i = and i32 %call.i103.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool60.not.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool60.not.i, label %for.end58.i.for.end58.thread.i_crit_edge, label %for.end58.i.cleanup_crit_edge

for.end58.i.cleanup_crit_edge:                    ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end58.i.for.end58.thread.i_crit_edge:         ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end58.thread.i

for.end58.thread.i:                               ; preds = %for.end58.i.for.end58.thread.i_crit_edge, %if.then55.i.for.end58.thread.i_crit_edge, %for.end.i.for.end58.thread.i_crit_edge
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i, align 4
  %mul.i6 = shl i32 %port, 3
  %queue.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 1
  %38 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %queue.i, align 4
  %add.i = add i32 %39, %mul.i6
  %num_tx_queues.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 15
  %40 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.not.i = icmp ult i32 %39, %41
  br i1 %cmp.not.i, label %if.end.i8, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i8:                                        ; preds = %sw.bb1
  %42 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i7 = icmp eq i8 %43, 0
  br i1 %tobool.not.i7, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #15
  %mul3.i = shl i32 %add.i, 7
  tail call void @__ocelot_write_ix(ptr noundef %37, i32 noundef 0, i32 noundef 50331688, i32 noundef %mul3.i) #13
  tail call void @__ocelot_rmw_ix(ptr noundef %37, i32 noundef 0, i32 noundef 16, i32 noundef 50331690, i32 noundef %mul3.i) #13
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #15
  %idleslope.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 4
  %44 = ptrtoint ptr %idleslope.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idleslope.i, align 4
  %sub.i = add i32 %45, 99
  %div.i = sdiv i32 %sub.i, 100
  %46 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #13
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 32767) #13
  %hicredit.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 2
  %48 = ptrtoint ptr %hicredit.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hicredit.i, align 4
  %sub15.i = add i32 %49, 4095
  %div16.i = sdiv i32 %sub15.i, 4096
  %50 = tail call i32 @llvm.umax.i32(i32 %div16.i, i32 1) #13
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 63) #13
  %shl.i9 = shl nuw nsw i32 %47, 6
  %or.i10 = or i32 %shl.i9, %51
  %mul30.i = shl i32 %add.i, 7
  tail call void @__ocelot_write_ix(ptr noundef %37, i32 noundef %or.i10, i32 noundef 50331688, i32 noundef %mul30.i) #13
  tail call void @__ocelot_rmw_ix(ptr noundef %37, i32 noundef 16, i32 noundef 28, i32 noundef 50331690, i32 noundef %mul30.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.then2.i, %sw.bb1.cleanup_crit_edge, %for.end58.thread.i, %for.end58.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -34, %if.end3.i.cleanup_crit_edge ], [ -16, %if.end6.i.cleanup_crit_edge ], [ 0, %for.end58.thread.i ], [ -110, %for.end58.i.cleanup_crit_edge ], [ 0, %if.end5.i ], [ 0, %if.then2.i ], [ -22, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc9959_sched_speed_set(ptr noundef %ocelot, i32 noundef %port, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %speed, label %sw.default [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 100, label %sw.bb1
    i32 1000, label %sw.bb2
    i32 2500, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %tas_speed.0 = phi i32 [ 16, %sw.default ], [ 0, %sw.bb3 ], [ 16, %sw.bb2 ], [ 32, %sw.bb1 ], [ 48, %entry.sw.epilog_crit_edge ]
  %mul = shl i32 %port, 2
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef %tas_speed.0, i32 noundef 48, i32 noundef 50331698, i32 noundef %mul) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_regmap_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @felix_port_to_netdev(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @felix_netdev_to_port(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9959_reset(ptr noundef %ocelot) #2 align 64 {
entry:
  %val.i104 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 54
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %call1 = tail call i64 @ktime_get() #13
  %add.i = add i64 %call1, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 921) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #13
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !186
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call.i103115 = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %val.i) #13
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not116 = icmp eq i32 %6, 0
  br i1 %tobool.not116, label %entry.if.end28_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then20

if.then16:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i104) #13
  %7 = ptrtoint ptr %val.i104 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i104, align 4, !annotation !186
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i106 = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %val.i104) #13
  %10 = ptrtoint ptr %val.i104 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i104, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i104) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp = icmp eq i32 %11, 0
  br i1 %phi.cmp, label %if.then16.if.end28_crit_edge, label %do.end27

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then20:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #13
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !186
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call.i103 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %val.i) #13
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #13
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then20.if.end28_crit_edge, label %if.then20.land.lhs.true_crit_edge

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

do.end27:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ocelot, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.40) #16
  br label %cleanup

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.then16.if.end28_crit_edge, %entry.if.end28_crit_edge
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 2, i32 noundef 83886140, i32 noundef 0) #13
  %call32 = call i64 @ktime_get() #13
  %add.i107 = add i64 %call32, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 931) #13
  %call.i108117 = call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 83886140, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108117)
  %tobool48.not118 = icmp eq i32 %call.i108117, 0
  br i1 %tobool48.not118, label %if.end28.if.end75_crit_edge, label %if.end28.land.lhs.true52_crit_edge

if.end28.land.lhs.true52_crit_edge:               ; preds = %if.end28
  br label %land.lhs.true52

if.end28.if.end75_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

land.lhs.true52:                                  ; preds = %if.then60.land.lhs.true52_crit_edge, %if.end28.land.lhs.true52_crit_edge
  %call53 = call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call53, i64 %add.i107)
  %cmp3.i110 = icmp sgt i64 %call53, %add.i107
  br i1 %cmp3.i110, label %if.then56, label %if.then60

if.then56:                                        ; preds = %land.lhs.true52
  %call.i113 = call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 83886140, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %phi.cmp102 = icmp eq i32 %call.i113, 0
  br i1 %phi.cmp102, label %if.then56.if.end75_crit_edge, label %do.end73

if.then56.if.end75_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then60:                                        ; preds = %land.lhs.true52
  call void @usleep_range_state(i32 noundef 21, i32 noundef 80, i32 noundef 2) #13
  %call.i108 = call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 83886140, i32 noundef 0) #13
  %tobool48.not = icmp eq i32 %call.i108, 0
  br i1 %tobool48.not, label %if.then60.if.end75_crit_edge, label %if.then60.land.lhs.true52_crit_edge

if.then60.land.lhs.true52_crit_edge:              ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true52

if.then60.if.end75_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

do.end73:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ocelot, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.43) #16
  br label %cleanup

if.end75:                                         ; preds = %if.then60.if.end75_crit_edge, %if.then56.if.end75_crit_edge, %if.end28.if.end75_crit_edge
  %arrayidx77 = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 51
  %21 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx77, align 4
  %call.i114 = call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end73, %do.end27
  %retval.0 = phi i32 [ -110, %do.end27 ], [ -110, %do.end73 ], [ 0, %if.end75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vsc9959_wm_enc(i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %value)
  %cmp = icmp ugt i16 %value, 4095
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !183

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1005, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %value)
  %cmp21 = icmp ugt i16 %value, 255
  %0 = lshr i16 %value, 4
  %1 = or i16 %0, 256
  %retval.0 = select i1 %cmp21, i16 %1, i16 %value
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vsc9959_wm_dec(i16 noundef zeroext %wm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wm to i32
  %and = and i32 %conv, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !184

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1015, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and21 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and25 = shl i16 %wm, 4
  %mul = and i16 %and25, 4080
  %retval.0 = select i1 %tobool22.not, i16 %wm, i16 %mul
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @vsc9959_wm_stat(i32 noundef %val, ptr nocapture noundef writeonly %inuse, ptr nocapture noundef writeonly %maxuse) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %val, 12
  %shr = and i32 %and, 4095
  %0 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr, ptr %inuse, align 4
  %and1 = and i32 %val, 4095
  %1 = ptrtoint ptr %maxuse to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and1, ptr %maxuse, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc9959_psfp_init(ptr noundef %ocelot) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %psfp1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27
  %0 = ptrtoint ptr %psfp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %psfp1, ptr %psfp1, align 4
  %prev.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %psfp1, ptr %prev.i, align 4
  %sfi_list = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 1
  %2 = ptrtoint ptr %sfi_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sfi_list, ptr %sfi_list, align 4
  %prev.i4 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sfi_list, ptr %prev.i4, align 4
  %sgi_list = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 2
  %4 = ptrtoint ptr %sgi_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sgi_list, ptr %sgi_list, align 4
  %prev.i5 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sgi_list, ptr %prev.i5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9959_psfp_filter_add(ptr noundef %ocelot, i32 noundef %port, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  %match4.i = alloca %struct.flow_match_eth_addrs, align 4
  %match13.i = alloca %struct.flow_match_vlan, align 4
  %old_sfi = alloca %struct.felix_stream_filter, align 4
  %sfi = alloca %struct.felix_stream_filter, align 4
  %stream = alloca %struct.felix_stream, align 4
  %pol = alloca %struct.ocelot_policer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %old_sfi) #13
  %2 = call ptr @memset(ptr %old_sfi, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sfi) #13
  %3 = call ptr @memset(ptr %sfi, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %stream) #13
  %4 = call ptr @memset(ptr %stream, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pol) #13
  %5 = ptrtoint ptr %pol to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pol, align 4, !annotation !186
  %6 = getelementptr inbounds %struct.ocelot_policer, ptr %pol, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !186
  %psfp2 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27
  %rule.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rule.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, -1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %15 = icmp eq i32 %14, 128
  br i1 %15, label %if.then3.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then3.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match4.i) #13
  %16 = ptrtoint ptr %match4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %match4.i, align 4, !annotation !186
  %17 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match4.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %17, align 4, !annotation !186
  call void @flow_rule_match_eth_addrs(ptr noundef %9, ptr noundef nonnull %match4.i) #13
  %dmac.i = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 5
  %19 = ptrtoint ptr %match4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %match4.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %dmac.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dmac.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr1.i.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %17, align 4
  %src.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src.i, align 4
  %add.ptr.i49.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %28, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %add.ptr.i49.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i49.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %or.i.i = or i32 %30, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match4.i) #13
  br i1 %cmp.i.i, label %if.end10.i, label %if.then3.i.do.body_crit_edge

if.then3.i.do.body_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end10.i:                                       ; preds = %if.then3.i
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %9, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %and.i.i50.i = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50.i)
  %tobool.i.i51.not.i = icmp eq i32 %and.i.i50.i, 0
  br i1 %tobool.i.i51.not.i, label %if.end10.i.do.body_crit_edge, label %if.then12.i

if.end10.i.do.body_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then12.i:                                      ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match13.i) #13
  %37 = ptrtoint ptr %match13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %match13.i, align 4, !annotation !186
  %38 = getelementptr inbounds %struct.flow_match_vlan, ptr %match13.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %38, align 4, !annotation !186
  call void @flow_rule_match_vlan(ptr noundef %9, ptr noundef nonnull %match13.i) #13
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %38, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %41, align 2
  %bf.clear.i = and i16 %bf.load.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear.i)
  %tobool15.not.i = icmp eq i16 %bf.clear.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.if.end22.i_crit_edge, label %if.then16.i

if.then12.i.if.end22.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %match13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %match13.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load18.i = load i16, ptr %44, align 2
  %46 = trunc i16 %bf.load18.i to i8
  %conv.i = and i8 %46, 7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i, %if.then12.i.if.end22.i_crit_edge
  %conv.sink.i = phi i8 [ %conv.i, %if.then16.i ], [ -1, %if.then12.i.if.end22.i_crit_edge ]
  %47 = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 7
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.sink.i, ptr %47, align 4
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load24.i = load i16, ptr %41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load24.i)
  %tobool25.not.i = icmp ult i16 %bf.load24.i, 16
  br i1 %tobool25.not.i, label %cleanup36.critedge.i, label %if.end5

cleanup36.critedge.i:                             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match13.i) #13
  br label %do.body

do.body:                                          ; preds = %cleanup36.critedge.i, %if.end10.i.do.body_crit_edge, %if.then3.i.do.body_crit_edge, %entry.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @vsc9959_psfp_filter_add.__msg) #13
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @vsc9959_psfp_filter_add.__msg, ptr %1, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end22.i
  %51 = ptrtoint ptr %match13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %match13.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load29.i = load i16, ptr %52, align 2
  %bf.lshr30.i = lshr i16 %bf.load29.i, 4
  %vid.i = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 6
  %54 = ptrtoint ptr %vid.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.lshr30.i, ptr %vid.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match13.i) #13
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %55 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cookie.i, align 4
  %id.i = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 1
  %57 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %id.i, align 4
  %58 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rule.i.i, align 8
  %action7269 = getelementptr inbounds %struct.flow_rule, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %action7269 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %action7269, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp270.not = icmp eq i32 %61, 0
  br i1 %cmp270.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %62 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rule.i.i, align 8
  %entries = getelementptr inbounds %struct.flow_rule, ptr %63, i32 1
  %fm_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 7
  %fmid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 8
  %maxsdu = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 11
  %sgi_list.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 2
  %prev.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 2, i32 1
  %sg_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 5
  %sgid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0272 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %a.0271 = phi ptr [ %entries, %for.body.lr.ph ], [ %arrayidx35, %for.inc.for.body_crit_edge ]
  %64 = ptrtoint ptr %a.0271 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %a.0271, align 8
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %65, label %for.body.cleanup_crit_edge [
    i32 28, label %sw.bb
    i32 22, label %sw.bb16
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %num_entries8 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 5, i32 0, i32 4
  %67 = ptrtoint ptr %num_entries8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_entries8, align 8
  %69 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 16) #13
  %70 = extractvalue { i32, i1 } %69, 1
  %71 = extractvalue { i32, i1 } %69, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %71, i32 40) #13
  %retval.0.i = select i1 %70, i32 -1, i32 %spec.select.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #19
  %hw_index.i = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 1
  %72 = ptrtoint ptr %hw_index.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_index.i, align 4
  %74 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %call9.i.i, align 128
  %75 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 5
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %.lobit.i = lshr i32 %77, 31
  %78 = trunc i32 %.lobit.i to i8
  %.not.i = xor i8 %78, 1
  %ipv_valid.i = getelementptr inbounds %struct.felix_stream_gate, ptr %call9.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %ipv_valid.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %.not.i, ptr %ipv_valid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.not.i)
  %tobool.not.i = icmp eq i8 %.not.i, 0
  br i1 %tobool.not.i, label %sw.bb.vsc9959_psfp_parse_gate.exit_crit_edge, label %cond.true.i

sw.bb.vsc9959_psfp_parse_gate.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_psfp_parse_gate.exit

cond.true.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %75, align 8
  %phi.cast.i = trunc i32 %81 to i8
  br label %vsc9959_psfp_parse_gate.exit

vsc9959_psfp_parse_gate.exit:                     ; preds = %cond.true.i, %sw.bb.vsc9959_psfp_parse_gate.exit_crit_edge
  %cond5.i = phi i8 [ %phi.cast.i, %cond.true.i ], [ 0, %sw.bb.vsc9959_psfp_parse_gate.exit_crit_edge ]
  %init_ipv.i = getelementptr inbounds %struct.felix_stream_gate, ptr %call9.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %init_ipv.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %cond5.i, ptr %init_ipv.i, align 2
  %basetime.i = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 5, i32 0, i32 1
  %83 = ptrtoint ptr %basetime.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %basetime.i, align 8
  %basetime7.i = getelementptr inbounds %struct.felix_stream_gate, ptr %call9.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %basetime7.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %basetime7.i, align 8
  %cycletime.i = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 5, i32 0, i32 2
  %86 = ptrtoint ptr %cycletime.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %cycletime.i, align 8
  %cycletime8.i = getelementptr inbounds %struct.felix_stream_gate, ptr %call9.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %cycletime8.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %cycletime8.i, align 16
  %89 = ptrtoint ptr %num_entries8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_entries8, align 8
  %num_entries9.i = getelementptr inbounds %struct.felix_stream_gate, ptr %call9.i.i, i32 0, i32 7
  %91 = ptrtoint ptr %num_entries9.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %num_entries9.i, align 32
  %enable.i = getelementptr inbounds %struct.felix_stream_gate, ptr %call9.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %enable.i, align 4
  %entries.i = getelementptr inbounds %struct.felix_stream_gate, ptr %call9.i.i, i32 0, i32 8
  %entries10.i = getelementptr inbounds %struct.anon.165, ptr %75, i32 0, i32 5
  %93 = ptrtoint ptr %entries10.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %entries10.i, align 4
  %95 = load i32, ptr %num_entries8, align 8
  %mul.i = shl i32 %95, 4
  %96 = call ptr @memcpy(ptr %entries.i, ptr %94, i32 %mul.i)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %vsc9959_psfp_parse_gate.exit
  %tmp.0.in.i = phi ptr [ %sgi_list.i, %vsc9959_psfp_parse_gate.exit ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %97 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %sgi_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %index.i = getelementptr inbounds %struct.felix_stream_gate_entry, ptr %tmp.0.i, i32 0, i32 2
  %98 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %index.i, align 4
  %cmp5.i = icmp eq i32 %99, %73
  br i1 %cmp5.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %refcount.i = getelementptr inbounds %struct.felix_stream_gate_entry, ptr %tmp.0.i, i32 0, i32 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !187
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !183

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %101 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %.not.i.i.i.i = icmp sgt i32 %101, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end14_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !184

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end14_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #13
  br label %if.end14

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3520, i32 noundef 16) #17
  %tobool.not.i204 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i204, label %for.end.i.if.then13_crit_edge, label %if.end12.i

for.end.i.if.then13_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.end12.i:                                       ; preds = %for.end.i
  %call13.i = call fastcc i32 @vsc9959_psfp_sgi_set(ptr noundef %ocelot, ptr noundef %call9.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %if.then13

if.end16.i:                                       ; preds = %if.end12.i
  %103 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call9.i.i, align 128
  %index18.i = getelementptr inbounds %struct.felix_stream_gate_entry, ptr %call7.i.i.i, i32 0, i32 2
  %105 = ptrtoint ptr %index18.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %index18.i, align 4
  %refcount19.i = getelementptr inbounds %struct.felix_stream_gate_entry, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount19.i, i32 noundef 4) #13
  %106 = ptrtoint ptr %refcount19.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 1, ptr %refcount19.i, align 8
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %108, ptr noundef %sgi_list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end16.i.if.end14_crit_edge

if.end16.i.if.end14_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %110 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %sgi_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %call7.i.i.i, ptr %108, align 4
  br label %if.end14

if.then13:                                        ; preds = %if.then15.i, %for.end.i.if.then13_crit_edge
  %retval.0.i205 = phi i32 [ %call13.i, %if.then15.i ], [ -12, %for.end.i.if.then13_crit_edge ]
  call void @kfree(ptr noundef %call9.i.i) #13
  br label %err

if.end14:                                         ; preds = %if.end.i.i.i, %if.end16.i.if.end14_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end14_crit_edge
  %113 = ptrtoint ptr %sg_valid to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %sg_valid, align 4
  %114 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %call9.i.i, align 128
  %116 = ptrtoint ptr %sgid to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %sgid, align 4
  call void @kfree(ptr noundef %call9.i.i) #13
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  %hw_index = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 1
  %117 = ptrtoint ptr %hw_index to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hw_index, align 4
  %add = add i32 %118, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %add)
  %cmp17 = icmp ugt i32 %add, 383
  br i1 %cmp17, label %sw.bb16.err_crit_edge, label %if.end19

sw.bb16.err_crit_edge:                            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end19:                                         ; preds = %sw.bb16
  %119 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 5
  %rate_bytes_ps = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 5, i32 0, i32 1
  %120 = ptrtoint ptr %rate_bytes_ps to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %rate_bytes_ps, align 8
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %119, align 8
  %shr = lshr i32 %123, 6
  %conv = zext i32 %shr to i64
  %mul = mul i64 %121, %conv
  %124 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %121, i32 0) #18, !srcloc !188
  %asmresult.i.i.i = extractvalue { i64, i32 } %124, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %124, 1
  %125 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %121, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !189
  %asmresult10.i.i.i = extractvalue { i64, i32 } %125, 0
  %sh.diff = lshr i64 %asmresult10.i.i.i, 6
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %conv24 = and i32 %tr.sh.diff, -8
  %126 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #18, !srcloc !188
  %asmresult.i.i.i206 = extractvalue { i64, i32 } %126, 0
  %asmresult4.i.i.i207 = extractvalue { i64, i32 } %126, 1
  %127 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i206, i32 %asmresult4.i.i.i207) #18, !srcloc !189
  %asmresult10.i.i.i208 = extractvalue { i64, i32 } %127, 0
  %div158.i.i209262 = lshr i64 %asmresult10.i.i.i208, 23
  %conv27 = trunc i64 %div158.i.i209262 to i32
  %128 = ptrtoint ptr %pol to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv24, ptr %pol, align 4
  %129 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv27, ptr %6, align 4
  %call28 = call i32 @ocelot_vcap_policer_add(ptr noundef %ocelot, i32 noundef %add, ptr noundef nonnull %pol) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end19.err_crit_edge

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %fm_valid to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %fm_valid, align 4
  %131 = ptrtoint ptr %fmid to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add, ptr %fmid, align 4
  %mtu = getelementptr inbounds %struct.flow_action_entry, ptr %a.0271, i32 0, i32 5, i32 0, i32 4
  %132 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mtu, align 8
  %134 = ptrtoint ptr %maxsdu to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %maxsdu, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %if.end14
  %135 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rule.i.i, align 8
  %entries34 = getelementptr inbounds %struct.flow_rule, ptr %136, i32 1
  %inc = add nuw i32 %i.0272, 1
  %arrayidx35 = getelementptr [0 x %struct.flow_action_entry], ptr %entries34, i32 0, i32 %inc
  %action7 = getelementptr inbounds %struct.flow_rule, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %action7 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %action7, align 8
  %cmp = icmp ult i32 %inc, %138
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %shl = shl nuw i32 1, %port
  %ports = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 3
  %139 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %shl, ptr %ports, align 4
  %port36 = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 4
  %140 = ptrtoint ptr %port36 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %port, ptr %port36, align 4
  %portmask = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 4
  %141 = ptrtoint ptr %portmask to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shl, ptr %portmask, align 4
  %142 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %47, align 4
  %144 = xor i8 %143, -1
  %.lobit.not = lshr i8 %144, 7
  %prio_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 9
  %145 = ptrtoint ptr %prio_valid to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %.lobit.not, ptr %prio_valid, align 4
  %146 = call i8 @llvm.smax.i8(i8 %143, i8 0)
  %prio49 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 10
  %147 = ptrtoint ptr %prio49 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %prio49, align 1
  %enable = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 3
  %148 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %enable, align 4
  %149 = ptrtoint ptr %psfp2 to i32
  call void @__asan_load4_noabort(i32 %149)
  %tmp.019.i = load ptr, ptr %psfp2, align 4
  %cmp.not20.i = icmp eq ptr %tmp.019.i, %psfp2
  br i1 %cmp.not20.i, label %for.end.if.else104_crit_edge, label %for.body.lr.ph.i

for.end.if.else104_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else104

for.body.lr.ph.i:                                 ; preds = %for.end
  %150 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dmac.i, align 4
  %152 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %add.ptr1.i.i, align 4
  br label %for.body.i215

for.body.i215:                                    ; preds = %for.inc.i.for.body.i215_crit_edge, %for.body.lr.ph.i
  %tmp.021.i = phi ptr [ %tmp.019.i, %for.body.lr.ph.i ], [ %tmp.0.i217, %for.inc.i.for.body.i215_crit_edge ]
  %dmac.i211 = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 5
  %154 = ptrtoint ptr %dmac.i211 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %dmac.i211, align 4
  %xor.i.i = xor i32 %155, %151
  %add.ptr.i.i212 = getelementptr %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 5, i32 4
  %156 = ptrtoint ptr %add.ptr.i.i212 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.ptr.i.i212, align 2
  %xor37.i.i = xor i16 %157, %153
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i213 = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i213)
  %cmp.i.i214 = icmp eq i32 %or.i.i213, 0
  br i1 %cmp.i.i214, label %land.lhs.true.i, label %for.body.i215.for.inc.i_crit_edge

for.body.i215.for.inc.i_crit_edge:                ; preds = %for.body.i215
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i215
  %vid.i216 = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 6
  %158 = ptrtoint ptr %vid.i216 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %vid.i216, align 2
  %160 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %vid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %159, i16 %161)
  %cmp6.i = icmp eq i16 %159, %161
  br i1 %cmp6.i, label %vsc9959_stream_table_lookup.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i215.for.inc.i_crit_edge
  %162 = ptrtoint ptr %tmp.021.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %tmp.0.i217 = load ptr, ptr %tmp.021.i, align 4
  %cmp.not.i218 = icmp eq ptr %tmp.0.i217, %psfp2
  br i1 %cmp.not.i218, label %for.inc.i.if.else104_crit_edge, label %for.inc.i.for.body.i215_crit_edge

for.inc.i.for.body.i215_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i215

for.inc.i.if.else104_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else104

vsc9959_stream_table_lookup.exit:                 ; preds = %land.lhs.true.i
  %tobool51.not = icmp eq ptr %tmp.021.i, null
  br i1 %tobool51.not, label %vsc9959_stream_table_lookup.exit.if.else104_crit_edge, label %if.then52

vsc9959_stream_table_lookup.exit.if.else104_crit_edge: ; preds = %vsc9959_stream_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else104

if.then52:                                        ; preds = %vsc9959_stream_table_lookup.exit
  %ports53 = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 3
  %163 = ptrtoint ptr %ports53 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ports53, align 4
  %and = and i32 %164, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.end65, label %do.body57

do.body57:                                        ; preds = %if.then52
  call void @do_trace_netlink_extack(ptr noundef nonnull @vsc9959_psfp_filter_add.__msg.45) #13
  %tobool59.not = icmp eq ptr %1, null
  br i1 %tobool59.not, label %do.body57.err_crit_edge, label %if.then60

do.body57.err_crit_edge:                          ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #15
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @vsc9959_psfp_filter_add.__msg.45, ptr %1, align 4
  br label %err

if.end65:                                         ; preds = %if.then52
  %port67 = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 4
  %166 = ptrtoint ptr %port67 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %port67, align 4
  %shl68 = shl nuw i32 1, %167
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %shl68)
  %cmp69.not = icmp eq i32 %164, %shl68
  br i1 %cmp69.not, label %if.end80, label %do.body72

do.body72:                                        ; preds = %if.end65
  call void @do_trace_netlink_extack(ptr noundef nonnull @vsc9959_psfp_filter_add.__msg.46) #13
  %tobool74.not = icmp eq ptr %1, null
  br i1 %tobool74.not, label %do.body72.err_crit_edge, label %if.then75

do.body72.err_crit_edge:                          ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then75:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @vsc9959_psfp_filter_add.__msg.46, ptr %1, align 4
  br label %err

if.end80:                                         ; preds = %if.end65
  %or = or i32 %164, %shl
  %169 = ptrtoint ptr %ports53 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %or, ptr %ports53, align 4
  %170 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or, ptr %ports, align 4
  %sfi_list = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 1
  %sfid = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 10
  %171 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sfid, align 4
  br label %for.cond.i223

for.cond.i223:                                    ; preds = %for.body.i224.for.cond.i223_crit_edge, %if.end80
  %tmp.0.in.i220 = phi ptr [ %sfi_list, %if.end80 ], [ %tmp.0.i221, %for.body.i224.for.cond.i223_crit_edge ]
  %173 = ptrtoint ptr %tmp.0.in.i220 to i32
  call void @__asan_load4_noabort(i32 %173)
  %tmp.0.i221 = load ptr, ptr %tmp.0.in.i220, align 4
  %cmp.not.i222 = icmp eq ptr %tmp.0.i221, %sfi_list
  br i1 %cmp.not.i222, label %for.cond.i223.vsc9959_psfp_sfi_table_get.exit_crit_edge, label %for.body.i224

for.cond.i223.vsc9959_psfp_sfi_table_get.exit_crit_edge: ; preds = %for.cond.i223
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_psfp_sfi_table_get.exit

for.body.i224:                                    ; preds = %for.cond.i223
  %index2.i = getelementptr inbounds %struct.felix_stream_filter, ptr %tmp.0.i221, i32 0, i32 2
  %174 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %index2.i, align 4
  %cmp3.i = icmp eq i32 %175, %172
  br i1 %cmp3.i, label %for.body.i224.vsc9959_psfp_sfi_table_get.exit_crit_edge, label %for.body.i224.for.cond.i223_crit_edge

for.body.i224.for.cond.i223_crit_edge:            ; preds = %for.body.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i223

for.body.i224.vsc9959_psfp_sfi_table_get.exit_crit_edge: ; preds = %for.body.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_psfp_sfi_table_get.exit

vsc9959_psfp_sfi_table_get.exit:                  ; preds = %for.body.i224.vsc9959_psfp_sfi_table_get.exit_crit_edge, %for.cond.i223.vsc9959_psfp_sfi_table_get.exit_crit_edge
  %retval.0.i225 = phi ptr [ %tmp.0.i221, %for.body.i224.vsc9959_psfp_sfi_table_get.exit_crit_edge ], [ null, %for.cond.i223.vsc9959_psfp_sfi_table_get.exit_crit_edge ]
  %176 = call ptr @memcpy(ptr %old_sfi, ptr %retval.0.i225, i32 48)
  %177 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %sfid, align 4
  call fastcc void @vsc9959_psfp_sfi_table_del(ptr noundef %ocelot, i32 noundef %178)
  %179 = ptrtoint ptr %ports53 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ports53, align 4
  %portmask88 = getelementptr inbounds %struct.felix_stream_filter, ptr %old_sfi, i32 0, i32 4
  %181 = ptrtoint ptr %portmask88 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %portmask88, align 4
  %182 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ports, align 4
  %184 = ptrtoint ptr %portmask to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %portmask, align 4
  %185 = ptrtoint ptr %port67 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %port67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %port)
  %cmp92 = icmp sgt i32 %186, %port
  br i1 %cmp92, label %if.then94, label %if.else

if.then94:                                        ; preds = %vsc9959_psfp_sfi_table_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call95 = call fastcc i32 @vsc9959_psfp_sfi_table_add2(ptr noundef %ocelot, ptr noundef nonnull %sfi, ptr noundef nonnull %old_sfi)
  br label %if.end98

if.else:                                          ; preds = %vsc9959_psfp_sfi_table_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call96 = call fastcc i32 @vsc9959_psfp_sfi_table_add2(ptr noundef %ocelot, ptr noundef nonnull %old_sfi, ptr noundef nonnull %sfi)
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then94
  %stream.sink = phi ptr [ %stream, %if.else ], [ %tmp.021.i, %if.then94 ]
  %ret.0 = phi i32 [ %call96, %if.else ], [ %call95, %if.then94 ]
  %dummy97 = getelementptr inbounds %struct.felix_stream, ptr %stream.sink, i32 0, i32 2
  %187 = ptrtoint ptr %dummy97 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %dummy97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool99.not = icmp eq i32 %ret.0, 0
  br i1 %tobool99.not, label %if.end101, label %if.end98.err_crit_edge

if.end98.err_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end101:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  %index102 = getelementptr inbounds %struct.felix_stream_filter, ptr %old_sfi, i32 0, i32 2
  %188 = ptrtoint ptr %index102 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %index102, align 4
  %190 = ptrtoint ptr %sfid to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %sfid, align 4
  br label %if.end109

if.else104:                                       ; preds = %vsc9959_stream_table_lookup.exit.if.else104_crit_edge, %for.inc.i.if.else104_crit_edge, %for.end.if.else104_crit_edge
  %sfi_list.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 1
  %191 = ptrtoint ptr %sfi_list.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sfi_list.i, align 4
  %cmp.i.not68.i = icmp eq ptr %192, %sfi_list.i
  br i1 %cmp.i.not68.i, label %if.else104.vsc9959_psfp_sfi_table_add.exit_crit_edge, label %for.body.lr.ph.i226

if.else104.vsc9959_psfp_sfi_table_add.exit_crit_edge: ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_psfp_sfi_table_add.exit

for.body.lr.ph.i226:                              ; preds = %if.else104
  %sg_valid.i = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 5
  %193 = ptrtoint ptr %sg_valid.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %sg_valid.i, align 4
  %fm_valid.i = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 7
  %sgid19.i = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 6
  %fmid23.i = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 8
  br label %for.body.i227

for.body.i227:                                    ; preds = %if.end.i.for.body.i227_crit_edge, %for.body.lr.ph.i226
  %pos.071.i = phi ptr [ %192, %for.body.lr.ph.i226 ], [ %q.073.i, %if.end.i.for.body.i227_crit_edge ]
  %insert.070.i = phi i32 [ 0, %for.body.lr.ph.i226 ], [ %spec.select63.i, %if.end.i.for.body.i227_crit_edge ]
  %last.069.i = phi ptr [ %sfi_list.i, %for.body.lr.ph.i226 ], [ %spec.select.i240, %if.end.i.for.body.i227_crit_edge ]
  %195 = ptrtoint ptr %pos.071.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %q.073.i = load ptr, ptr %pos.071.i, align 4
  %sg_valid6.i = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 5
  %196 = ptrtoint ptr %sg_valid6.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %sg_valid6.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %194, i8 %197)
  %cmp.i = icmp eq i8 %194, %197
  br i1 %cmp.i, label %land.lhs.true.i228, label %for.body.i227.if.end.i_crit_edge

for.body.i227.if.end.i_crit_edge:                 ; preds = %for.body.i227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i228:                               ; preds = %for.body.i227
  %198 = ptrtoint ptr %fm_valid.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %fm_valid.i, align 4
  %fm_valid10.i = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 7
  %200 = ptrtoint ptr %fm_valid10.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %fm_valid10.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %199, i8 %201)
  %cmp12.i = icmp eq i8 %199, %201
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i228.if.end.i_crit_edge

land.lhs.true.i228.if.end.i_crit_edge:            ; preds = %land.lhs.true.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i228
  %portmask15.i = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 4
  %202 = ptrtoint ptr %portmask15.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %portmask15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %203)
  %cmp16.i = icmp eq i32 %shl, %203
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true14.i.if.end.i_crit_edge

land.lhs.true14.i.if.end.i_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true18.i:                                ; preds = %land.lhs.true14.i
  %sgid.i = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 6
  %204 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %sgid.i, align 4
  %206 = ptrtoint ptr %sgid19.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sgid19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %207)
  %cmp20.i = icmp eq i32 %205, %207
  br i1 %cmp20.i, label %land.lhs.true22.i, label %land.lhs.true18.i.if.end.i_crit_edge

land.lhs.true18.i.if.end.i_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true22.i:                                ; preds = %land.lhs.true18.i
  %fmid.i = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 8
  %208 = ptrtoint ptr %fmid.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %fmid.i, align 4
  %210 = ptrtoint ptr %fmid23.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %fmid23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %211)
  %cmp24.i = icmp eq i32 %209, %211
  br i1 %cmp24.i, label %if.then.i234, label %land.lhs.true22.i.if.end.i_crit_edge

land.lhs.true22.i.if.end.i_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i234:                                     ; preds = %land.lhs.true22.i
  %index.i229 = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 2
  %212 = ptrtoint ptr %index.i229 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %index.i229, align 4
  %index26.i = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 2
  %214 = ptrtoint ptr %index26.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %index26.i, align 4
  %refcount.i230 = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 1
  %call.i.i.i.i.i.i231 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i230, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcount.i230, i32 1, i32 3, i32 1) #13
  %215 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i230, ptr %refcount.i230, i32 1, ptr elementtype(i32) %refcount.i230) #13, !srcloc !187
  %asmresult.i.i.i.i.i.i232 = extractvalue { i32, i32, i32 } %215, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i232)
  %tobool1.not.i.i.i.i233 = icmp eq i32 %asmresult.i.i.i.i.i.i232, 0
  br i1 %tobool1.not.i.i.i.i233, label %if.then.i234.if.end15.sink.split.i.i.i.i239_crit_edge, label %if.else.i.i.i.i237, !prof !183

if.then.i234.if.end15.sink.split.i.i.i.i239_crit_edge: ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i239

if.else.i.i.i.i237:                               ; preds = %if.then.i234
  %add.i.i.i.i235 = add i32 %asmresult.i.i.i.i.i.i232, 1
  %216 = or i32 %add.i.i.i.i235, %asmresult.i.i.i.i.i.i232
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %216)
  %.not.i.i.i.i236 = icmp sgt i32 %216, -1
  br i1 %.not.i.i.i.i236, label %if.else.i.i.i.i237.if.end109_crit_edge, label %if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge, !prof !184

if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge: ; preds = %if.else.i.i.i.i237
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i239

if.else.i.i.i.i237.if.end109_crit_edge:           ; preds = %if.else.i.i.i.i237
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.end15.sink.split.i.i.i.i239:                   ; preds = %if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge, %if.then.i234.if.end15.sink.split.i.i.i.i239_crit_edge
  %.sink.i.i.i.i238 = phi i32 [ 2, %if.then.i234.if.end15.sink.split.i.i.i.i239_crit_edge ], [ 1, %if.else.i.i.i.i237.if.end15.sink.split.i.i.i.i239_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i230, i32 noundef %.sink.i.i.i.i238) #13
  br label %if.end109

if.end.i:                                         ; preds = %land.lhs.true22.i.if.end.i_crit_edge, %land.lhs.true18.i.if.end.i_crit_edge, %land.lhs.true14.i.if.end.i_crit_edge, %land.lhs.true.i228.if.end.i_crit_edge, %for.body.i227.if.end.i_crit_edge
  %index27.i = getelementptr inbounds %struct.felix_stream_filter, ptr %pos.071.i, i32 0, i32 2
  %217 = ptrtoint ptr %index27.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %index27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %insert.070.i)
  %cmp28.i = icmp eq i32 %218, %insert.070.i
  %spec.select.i240 = select i1 %cmp28.i, ptr %pos.071.i, ptr %last.069.i
  %inc.i = zext i1 %cmp28.i to i32
  %spec.select63.i = add i32 %insert.070.i, %inc.i
  %cmp.i.not.i = icmp eq ptr %q.073.i, %sfi_list.i
  br i1 %cmp.i.not.i, label %if.end.i.vsc9959_psfp_sfi_table_add.exit_crit_edge, label %if.end.i.for.body.i227_crit_edge

if.end.i.for.body.i227_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i227

if.end.i.vsc9959_psfp_sfi_table_add.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_psfp_sfi_table_add.exit

vsc9959_psfp_sfi_table_add.exit:                  ; preds = %if.end.i.vsc9959_psfp_sfi_table_add.exit_crit_edge, %if.else104.vsc9959_psfp_sfi_table_add.exit_crit_edge
  %last.0.lcssa.i = phi ptr [ %sfi_list.i, %if.else104.vsc9959_psfp_sfi_table_add.exit_crit_edge ], [ %spec.select.i240, %if.end.i.vsc9959_psfp_sfi_table_add.exit_crit_edge ]
  %insert.0.lcssa.i = phi i32 [ 0, %if.else104.vsc9959_psfp_sfi_table_add.exit_crit_edge ], [ %spec.select63.i, %if.end.i.vsc9959_psfp_sfi_table_add.exit_crit_edge ]
  %index33.i = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 2
  %219 = ptrtoint ptr %index33.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %insert.0.lcssa.i, ptr %index33.i, align 4
  %call34.i = call fastcc i32 @vsc9959_psfp_sfi_list_add(ptr noundef %ocelot, ptr noundef nonnull %sfi, ptr noundef %last.0.lcssa.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool106.not = icmp eq i32 %call34.i, 0
  br i1 %tobool106.not, label %vsc9959_psfp_sfi_table_add.exit.if.end109_crit_edge, label %vsc9959_psfp_sfi_table_add.exit.err_crit_edge

vsc9959_psfp_sfi_table_add.exit.err_crit_edge:    ; preds = %vsc9959_psfp_sfi_table_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

vsc9959_psfp_sfi_table_add.exit.if.end109_crit_edge: ; preds = %vsc9959_psfp_sfi_table_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.end109:                                        ; preds = %vsc9959_psfp_sfi_table_add.exit.if.end109_crit_edge, %if.end15.sink.split.i.i.i.i239, %if.else.i.i.i.i237.if.end109_crit_edge, %if.end101
  %index110 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 2
  %220 = ptrtoint ptr %index110 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %index110, align 4
  %sfid111 = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 10
  %222 = ptrtoint ptr %sfid111 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %sfid111, align 4
  %sfid_valid = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 8
  %223 = ptrtoint ptr %sfid_valid to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 1, ptr %sfid_valid, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %stream, i32 noundef 44, i32 noundef 3264) #13
  %tobool.not.i243 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i243, label %if.end109.if.then115_crit_edge, label %if.end.i244

if.end109.if.then115_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then115

if.end.i244:                                      ; preds = %if.end109
  %dummy.i = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 2
  %224 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %dummy.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool1.not.i = icmp eq i8 %225, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i244.if.end7.i_crit_edge

if.end.i244.if.end7.i_crit_edge:                  ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i244
  %call3.i = call fastcc i32 @vsc9959_mact_stream_set(ptr noundef %ocelot, ptr noundef nonnull %call.i, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end7.i_crit_edge, label %if.then5.i

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call.i) #13
  br label %if.then115

if.end7.i:                                        ; preds = %if.then2.i.if.end7.i_crit_edge, %if.end.i244.if.end7.i_crit_edge
  %prev.i.i245 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 0, i32 1
  %226 = ptrtoint ptr %prev.i.i245 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %prev.i.i245, align 4
  %call.i.i.i246 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %227, ptr noundef %psfp2) #13
  br i1 %call.i.i.i246, label %if.end.i.i.i248, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i248:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %228 = ptrtoint ptr %prev.i.i245 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call.i, ptr %prev.i.i245, align 4
  %229 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %psfp2, ptr %call.i, align 4
  %prev3.i.i.i247 = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %230 = ptrtoint ptr %prev3.i.i.i247 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %227, ptr %prev3.i.i.i247, align 4
  %231 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile ptr %call.i, ptr %227, align 4
  br label %cleanup

if.then115:                                       ; preds = %if.then5.i, %if.end109.if.then115_crit_edge
  %retval.0.i249 = phi i32 [ %call3.i, %if.then5.i ], [ -12, %if.end109.if.then115_crit_edge ]
  %232 = ptrtoint ptr %sfid111 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %sfid111, align 4
  call fastcc void @vsc9959_psfp_sfi_table_del(ptr noundef %ocelot, i32 noundef %233)
  br label %err

err:                                              ; preds = %if.then115, %vsc9959_psfp_sfi_table_add.exit.err_crit_edge, %if.end98.err_crit_edge, %if.then75, %do.body72.err_crit_edge, %if.then60, %do.body57.err_crit_edge, %if.end19.err_crit_edge, %sw.bb16.err_crit_edge, %if.then13
  %ret.1 = phi i32 [ %retval.0.i205, %if.then13 ], [ %ret.0, %if.end98.err_crit_edge ], [ %retval.0.i249, %if.then115 ], [ %call34.i, %vsc9959_psfp_sfi_table_add.exit.err_crit_edge ], [ -17, %if.then60 ], [ -17, %do.body57.err_crit_edge ], [ -17, %if.then75 ], [ -17, %do.body72.err_crit_edge ], [ -22, %sw.bb16.err_crit_edge ], [ %call28, %if.end19.err_crit_edge ]
  %sg_valid118 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 5
  %234 = ptrtoint ptr %sg_valid118 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %sg_valid118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool119.not = icmp eq i8 %235, 0
  br i1 %tobool119.not, label %err.if.end122_crit_edge, label %if.then120

err.if.end122_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then120:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #15
  %sgid121 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 6
  %236 = ptrtoint ptr %sgid121 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %sgid121, align 4
  call fastcc void @vsc9959_psfp_sgi_table_del(ptr noundef %ocelot, i32 noundef %237)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %err.if.end122_crit_edge
  %fm_valid123 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 7
  %238 = ptrtoint ptr %fm_valid123 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %fm_valid123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool124.not = icmp eq i8 %239, 0
  br i1 %tobool124.not, label %if.end122.cleanup_crit_edge, label %if.then125

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %fmid126 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 8
  %240 = ptrtoint ptr %fmid126 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %fmid126, align 4
  %call127 = call i32 @ocelot_vcap_policer_del(ptr noundef %ocelot, i32 noundef %241) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %if.end122.cleanup_crit_edge, %if.end.i.i.i248, %if.end7.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then4 ], [ -95, %do.body.cleanup_crit_edge ], [ %ret.1, %if.then125 ], [ %ret.1, %if.end122.cleanup_crit_edge ], [ 0, %if.end7.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i248 ], [ -95, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pol) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %stream) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sfi) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %old_sfi) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9959_psfp_filter_del(ptr noundef %ocelot, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %psfp1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %tmp.0.in.i = phi ptr [ %psfp1, %entry ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %psfp1
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id2.i = getelementptr inbounds %struct.felix_stream, ptr %tmp.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id2.i, align 4
  %cmp3.i = icmp eq i32 %4, %1
  br i1 %cmp3.i, label %vsc9959_stream_table_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

vsc9959_stream_table_get.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not, label %vsc9959_stream_table_get.exit.cleanup_crit_edge, label %if.end

vsc9959_stream_table_get.exit.cleanup_crit_edge:  ; preds = %vsc9959_stream_table_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %vsc9959_stream_table_get.exit
  %sfi_list = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 1
  %sfid = getelementptr inbounds %struct.felix_stream, ptr %tmp.0.i, i32 0, i32 10
  %5 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sfid, align 4
  br label %for.cond.i53

for.cond.i53:                                     ; preds = %for.body.i55.for.cond.i53_crit_edge, %if.end
  %tmp.0.in.i50 = phi ptr [ %sfi_list, %if.end ], [ %tmp.0.i51, %for.body.i55.for.cond.i53_crit_edge ]
  %7 = ptrtoint ptr %tmp.0.in.i50 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0.i51 = load ptr, ptr %tmp.0.in.i50, align 4
  %cmp.not.i52 = icmp eq ptr %tmp.0.i51, %sfi_list
  br i1 %cmp.not.i52, label %vsc9959_psfp_sfi_table_get.exit.thread, label %for.body.i55

vsc9959_psfp_sfi_table_get.exit.thread:           ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @vsc9959_psfp_filter_del.sfi, align 4
  br label %cleanup

for.body.i55:                                     ; preds = %for.cond.i53
  %index2.i = getelementptr inbounds %struct.felix_stream_filter, ptr %tmp.0.i51, i32 0, i32 2
  %8 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2.i, align 4
  %cmp3.i54 = icmp eq i32 %9, %6
  br i1 %cmp3.i54, label %vsc9959_psfp_sfi_table_get.exit, label %for.body.i55.for.cond.i53_crit_edge

for.body.i55.for.cond.i53_crit_edge:              ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i53

vsc9959_psfp_sfi_table_get.exit:                  ; preds = %for.body.i55
  store ptr %tmp.0.i51, ptr @vsc9959_psfp_filter_del.sfi, align 4
  %tobool3.not = icmp eq ptr %tmp.0.i51, null
  br i1 %tobool3.not, label %vsc9959_psfp_sfi_table_get.exit.cleanup_crit_edge, label %if.end5

vsc9959_psfp_sfi_table_get.exit.cleanup_crit_edge: ; preds = %vsc9959_psfp_sfi_table_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %vsc9959_psfp_sfi_table_get.exit
  %sg_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %tmp.0.i51, i32 0, i32 5
  %10 = ptrtoint ptr %sg_valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sg_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %sgid = getelementptr inbounds %struct.felix_stream_filter, ptr %tmp.0.i51, i32 0, i32 6
  %12 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sgid, align 4
  tail call fastcc void @vsc9959_psfp_sgi_table_del(ptr noundef %ocelot, i32 noundef %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %14 = load ptr, ptr @vsc9959_psfp_filter_del.sfi, align 4
  %fm_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %fm_valid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fm_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %fmid = getelementptr inbounds %struct.felix_stream_filter, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %fmid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmid, align 4
  %call11 = tail call i32 @ocelot_vcap_policer_del(ptr noundef %ocelot, i32 noundef %18) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %19 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sfid, align 4
  tail call fastcc void @vsc9959_psfp_sfi_table_del(ptr noundef %ocelot, i32 noundef %20)
  %tmp.sroa.4.0.retval.0.i.sroa_idx = getelementptr inbounds i8, ptr %tmp.0.i, i32 24
  %21 = ptrtoint ptr %tmp.sroa.4.0.retval.0.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.sroa.4.0.copyload = load i32, ptr %tmp.sroa.4.0.retval.0.i.sroa_idx, align 4
  %tmp.sroa.5.0.retval.0.i.sroa_idx = getelementptr inbounds i8, ptr %tmp.0.i, i32 28
  %22 = ptrtoint ptr %tmp.sroa.5.0.retval.0.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %tmp.sroa.5.0.copyload = load i16, ptr %tmp.sroa.5.0.retval.0.i.sroa_idx, align 4
  %tmp.sroa.6.0.retval.0.i.sroa_idx = getelementptr inbounds i8, ptr %tmp.0.i, i32 30
  %23 = ptrtoint ptr %tmp.sroa.6.0.retval.0.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %tmp.sroa.6.0.copyload = load i16, ptr %tmp.sroa.6.0.retval.0.i.sroa_idx, align 2
  %sfid_valid = getelementptr inbounds %struct.felix_stream, ptr %tmp.0.i, i32 0, i32 8
  %24 = ptrtoint ptr %sfid_valid to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sfid_valid, align 1
  %dummy.i = getelementptr inbounds %struct.felix_stream, ptr %tmp.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dummy.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @vsc9959_mact_stream_set(ptr noundef %ocelot, ptr noundef nonnull %tmp.0.i, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end12.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %tmp.0.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.vsc9959_stream_table_del.exit_crit_edge

if.end.i.vsc9959_stream_table_del.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_stream_table_del.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %tmp.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tmp.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %vsc9959_stream_table_del.exit

vsc9959_stream_table_del.exit:                    ; preds = %if.end.i.i.i, %if.end.i.vsc9959_stream_table_del.exit_crit_edge
  %33 = ptrtoint ptr %tmp.0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %tmp.0.i) #13
  %35 = ptrtoint ptr %psfp1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.019.i = load ptr, ptr %psfp1, align 4
  %cmp.not20.i = icmp eq ptr %tmp.019.i, %psfp1
  br i1 %cmp.not20.i, label %vsc9959_stream_table_del.exit.cleanup_crit_edge, label %vsc9959_stream_table_del.exit.for.body.i57_crit_edge

vsc9959_stream_table_del.exit.for.body.i57_crit_edge: ; preds = %vsc9959_stream_table_del.exit
  br label %for.body.i57

vsc9959_stream_table_del.exit.cleanup_crit_edge:  ; preds = %vsc9959_stream_table_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i57:                                     ; preds = %for.inc.i.for.body.i57_crit_edge, %vsc9959_stream_table_del.exit.for.body.i57_crit_edge
  %tmp.021.i = phi ptr [ %tmp.0.i58, %for.inc.i.for.body.i57_crit_edge ], [ %tmp.019.i, %vsc9959_stream_table_del.exit.for.body.i57_crit_edge ]
  %dmac.i = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 5
  %36 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dmac.i, align 4
  %xor.i.i = xor i32 %37, %tmp.sroa.4.0.copyload
  %add.ptr.i.i = getelementptr %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %39, %tmp.sroa.5.0.copyload
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.body.i57.for.inc.i_crit_edge

for.body.i57.for.inc.i_crit_edge:                 ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i57
  %vid.i = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 6
  %40 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %tmp.sroa.6.0.copyload)
  %cmp6.i = icmp eq i16 %41, %tmp.sroa.6.0.copyload
  br i1 %cmp6.i, label %vsc9959_stream_table_lookup.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i57.for.inc.i_crit_edge
  %42 = ptrtoint ptr %tmp.021.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp.0.i58 = load ptr, ptr %tmp.021.i, align 4
  %cmp.not.i59 = icmp eq ptr %tmp.0.i58, %psfp1
  br i1 %cmp.not.i59, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i57_crit_edge

for.inc.i.for.body.i57_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i57

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

vsc9959_stream_table_lookup.exit:                 ; preds = %land.lhs.true.i
  %tobool16.not = icmp eq ptr %tmp.021.i, null
  br i1 %tobool16.not, label %vsc9959_stream_table_lookup.exit.cleanup_crit_edge, label %if.then17

vsc9959_stream_table_lookup.exit.cleanup_crit_edge: ; preds = %vsc9959_stream_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %vsc9959_stream_table_lookup.exit
  %port = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 4
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %shl = shl nuw i32 1, %44
  %ports = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 3
  %45 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl, ptr %ports, align 4
  %dummy = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 2
  %46 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dummy, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool18.not = icmp eq i8 %47, 0
  br i1 %tobool18.not, label %if.then17.if.end22_crit_edge, label %if.then19

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %dummy, align 4
  %call21 = tail call fastcc i32 @vsc9959_mact_stream_set(ptr noundef %ocelot, ptr noundef nonnull %tmp.021.i, ptr noundef null)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then17.if.end22_crit_edge
  %sfid23 = getelementptr inbounds %struct.felix_stream, ptr %tmp.021.i, i32 0, i32 10
  %49 = ptrtoint ptr %sfid23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sfid23, align 4
  %51 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ports, align 4
  tail call fastcc void @vsc9959_psfp_sfidmask_set(ptr noundef %ocelot, i32 noundef %50, i32 noundef %52)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %vsc9959_stream_table_lookup.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %vsc9959_stream_table_del.exit.cleanup_crit_edge, %vsc9959_psfp_sfi_table_get.exit.cleanup_crit_edge, %vsc9959_psfp_sfi_table_get.exit.thread, %vsc9959_stream_table_get.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %vsc9959_stream_table_get.exit.cleanup_crit_edge ], [ -12, %vsc9959_psfp_sfi_table_get.exit.cleanup_crit_edge ], [ 0, %if.end22 ], [ 0, %vsc9959_stream_table_lookup.exit.cleanup_crit_edge ], [ -12, %vsc9959_psfp_sfi_table_get.exit.thread ], [ 0, %vsc9959_stream_table_del.exit.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ], [ -12, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9959_psfp_stats_get(ptr noundef %ocelot, ptr nocapture noundef readonly %f, ptr nocapture noundef writeonly %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %psfp1 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %tmp.0.in.i = phi ptr [ %psfp1, %entry ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %psfp1
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id2.i = getelementptr inbounds %struct.felix_stream, ptr %tmp.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id2.i, align 4
  %cmp3.i = icmp eq i32 %4, %1
  br i1 %cmp3.i, label %vsc9959_stream_table_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

vsc9959_stream_table_get.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not, label %vsc9959_stream_table_get.exit.cleanup_crit_edge, label %if.end

vsc9959_stream_table_get.exit.cleanup_crit_edge:  ; preds = %vsc9959_stream_table_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %vsc9959_stream_table_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sfid = getelementptr inbounds %struct.felix_stream, ptr %tmp.0.i, i32 0, i32 10
  %5 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sfid, align 4
  %and.i = and i32 %6, 1023
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef %and.i, i32 noundef 1023, i32 noundef 83886119, i32 noundef 0) #13
  %call.i = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 83886135, i32 noundef 2048) #13
  %call1.i = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 83886135, i32 noundef 2052) #13
  %call2.i = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 83886135, i32 noundef 2056) #13
  %call3.i = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 83886135, i32 noundef 2060) #13
  %or.i = or i32 %and.i, 16384
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or.i, i32 noundef 83886119, i32 noundef 0) #13
  %conv = zext i32 %call.i to i64
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %stats, align 8
  %add = add i32 %call2.i, %call1.i
  %add2 = add i32 %add, %call3.i
  %conv3 = zext i32 %add2 to i64
  %drops = getelementptr inbounds %struct.flow_stats, ptr %stats, i32 0, i32 2
  %8 = ptrtoint ptr %drops to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv3, ptr %drops, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vsc9959_stream_table_get.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %vsc9959_stream_table_get.exit.cleanup_crit_edge ], [ -12, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc9959_cut_through_fwd(ptr noundef %ocelot) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ocelot, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 33, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !183

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2146, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %3 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp26158.not = icmp eq i8 %4, 0
  br i1 %cmp26158.not, label %if.end.for.end108_crit_edge, label %for.body.lr.ph

if.end.for.end108_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end108

for.body.lr.ph:                                   ; preds = %if.end
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %npi = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %cleanup100.for.body_crit_edge, %for.body.lr.ph
  %port.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup100.for.body_crit_edge ]
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %port.0159
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %speed = getelementptr inbounds %struct.ocelot_port, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #13
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp30 = icmp slt i32 %10, 1
  br i1 %cmp30, label %for.body.set_crit_edge, label %if.end33

for.body.set_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %set

if.end33:                                         ; preds = %for.body
  %12 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_cpu_port.exit.thread, label %if.end33.for.body.i.i_crit_edge

if.end33.for.body.i.i_crit_edge:                  ; preds = %if.end33
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end33.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end33.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %15 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %16, %1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %17 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %port.0159)
  %cmp5.i.i = icmp eq i32 %18, %port.0159
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %19 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp eq i32 %21, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.for.body.i_crit_edge, label %dsa_is_cpu_port.exit.if.else_crit_edge

dsa_is_cpu_port.exit.if.else_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

dsa_is_cpu_port.exit.for.body.i_crit_edge:        ; preds = %dsa_is_cpu_port.exit
  br label %for.body.i

dsa_is_cpu_port.exit.thread:                      ; preds = %if.end33
  call void @__asan_load4_noabort(i32 24)
  %22 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i149 = icmp eq i32 %22, 1
  br i1 %cmp.i149, label %dsa_is_cpu_port.exit.thread.dsa_user_ports.exit_crit_edge, label %dsa_is_cpu_port.exit.thread.if.else_crit_edge

dsa_is_cpu_port.exit.thread.if.else_crit_edge:    ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

dsa_is_cpu_port.exit.thread.dsa_user_ports.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_user_ports.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dsa_is_cpu_port.exit.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i.i, %dsa_is_cpu_port.exit.for.body.i_crit_edge ]
  %mask.021.i = phi i32 [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %dsa_is_cpu_port.exit.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %23 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %24, %1
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %type.i.i = getelementptr i8, ptr %.pn22.i, i32 -424
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 3
  br i1 %cmp.i.i, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %28
  %or.i = or i32 %shl.i, %mask.021.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %or.i, %if.then5.i ], [ %mask.021.i, %if.then.i.for.inc.i_crit_edge ], [ %mask.021.i, %for.body.i.for.inc.i_crit_edge ]
  %29 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_user_ports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_user_ports.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_user_ports.exit

dsa_user_ports.exit:                              ; preds = %for.inc.i.dsa_user_ports.exit_crit_edge, %dsa_is_cpu_port.exit.thread.dsa_user_ports.exit_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %dsa_is_cpu_port.exit.thread.dsa_user_ports.exit_crit_edge ], [ %mask.1.i, %for.inc.i.dsa_user_ports.exit_crit_edge ]
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mask.0.lcssa.i, ptr %mask, align 4
  br label %if.end47

if.else:                                          ; preds = %dsa_is_cpu_port.exit.thread.if.else_crit_edge, %dsa_is_cpu_port.exit.if.else_crit_edge
  %call37 = call i32 @ocelot_get_bridge_fwd_mask(ptr noundef %ocelot, i32 noundef %port.0159) #13
  %shl = shl nuw i32 1, %port.0159
  %neg = xor i32 %shl, -1
  %and = and i32 %call37, %neg
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and, ptr %mask, align 4
  %32 = ptrtoint ptr %npi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp38 = icmp sgt i32 %33, -1
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %shl42 = shl nuw i32 1, %33
  %or = or i32 %shl42, %and
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %mask, align 4
  br label %if.end47

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = call i32 @ocelot_get_dsa_8021q_cpu_mask(ptr noundef %ocelot) #13
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask, align 4
  %or45 = or i32 %36, %call44
  store i32 %or45, ptr %mask, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then40, %dsa_user_ports.exit
  %37 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_phys_ports, align 4
  %conv49 = zext i8 %38 to i32
  %call50 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %conv49, i32 noundef 0) #13
  %39 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_phys_ports, align 4
  %conv53152 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call50, i32 %conv53152)
  %cmp54153 = icmp slt i32 %call50, %conv53152
  br i1 %cmp54153, label %if.end47.for.body56_crit_edge, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end47.for.body56_crit_edge:                    ; preds = %if.end47
  br label %for.body56

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %if.end47.for.body56_crit_edge
  %conv53156 = phi i32 [ %conv53, %for.body56.for.body56_crit_edge ], [ %conv53152, %if.end47.for.body56_crit_edge ]
  %min_speed.0155 = phi i32 [ %min_speed.2, %for.body56.for.body56_crit_edge ], [ %10, %if.end47.for.body56_crit_edge ]
  %other_port.0154 = phi i32 [ %call72, %for.body56.for.body56_crit_edge ], [ %call50, %if.end47.for.body56_crit_edge ]
  %41 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ports, align 4
  %arrayidx58 = getelementptr ptr, ptr %42, i32 %other_port.0154
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx58, align 4
  %speed59 = getelementptr inbounds %struct.ocelot_port, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %speed59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp60 = icmp slt i32 %46, 1
  %47 = call i32 @llvm.smin.i32(i32 %min_speed.0155, i32 %46)
  %min_speed.2 = select i1 %cmp60, i32 %min_speed.0155, i32 %47
  %add = add nsw i32 %other_port.0154, 1
  %call72 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %conv53156, i32 noundef %add) #13
  %48 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_phys_ports, align 4
  %conv53 = zext i8 %49 to i32
  %cmp54 = icmp slt i32 %call72, %conv53
  br i1 %cmp54, label %for.body56.for.body56_crit_edge, label %for.body56.for.end_crit_edge

for.body56.for.end_crit_edge:                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body56

for.end:                                          ; preds = %for.body56.for.end_crit_edge, %if.end47.for.end_crit_edge
  %min_speed.0.lcssa = phi i32 [ %10, %if.end47.for.end_crit_edge ], [ %min_speed.2, %for.body56.for.end_crit_edge ]
  %50 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %min_speed.0.lcssa)
  %cmp74 = icmp eq i32 %51, %min_speed.0.lcssa
  %spec.select145 = select i1 %cmp74, ptr @.str.49, ptr @.str.50
  %spec.select146 = select i1 %cmp74, i32 255, i32 0
  br label %set

set:                                              ; preds = %for.end, %for.body.set_crit_edge
  %min_speed.3 = phi i32 [ %10, %for.body.set_crit_edge ], [ %min_speed.0.lcssa, %for.end ]
  %tobool95.not = phi ptr [ @.str.50, %for.body.set_crit_edge ], [ %spec.select145, %for.end ]
  %val.0 = phi i32 [ 0, %for.body.set_crit_edge ], [ %spec.select146, %for.end ]
  %mul = shl i32 %port.0159, 2
  %call78 = call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777235, i32 noundef %mul) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call78, i32 %val.0)
  %cmp79 = icmp eq i32 %call78, %val.0
  br i1 %cmp79, label %set.cleanup100_crit_edge, label %do.body83

set.cleanup100_crit_edge:                         ; preds = %set
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

do.body83:                                        ; preds = %set
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc9959_cut_through_fwd.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc9959_cut_through_fwd, %if.then93)) #13
          to label %do.end98 [label %if.then93], !srcloc !191

if.then93:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ocelot, align 4
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask, align 4
  %56 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %speed, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc9959_cut_through_fwd.__UNIQUE_ID_ddebug530, ptr noundef %53, ptr noundef nonnull @.str.48, i32 noundef %port.0159, i32 noundef %55, i32 noundef %57, i32 noundef %min_speed.3, ptr noundef nonnull %tobool95.not) #13
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.body83
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %val.0, i32 noundef 16777235, i32 noundef %mul) #13
  br label %cleanup100

cleanup100:                                       ; preds = %do.end98, %set.cleanup100_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #13
  %inc = add nuw nsw i32 %port.0159, 1
  %58 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %59 to i32
  %cmp26 = icmp ult i32 %inc, %conv
  br i1 %cmp26, label %cleanup100.for.body_crit_edge, label %cleanup100.for.end108_crit_edge

cleanup100.for.end108_crit_edge:                  ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end108

cleanup100.for.body_crit_edge:                    ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end108:                                       ; preds = %cleanup100.for.end108_crit_edge, %if.end.for.end108_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_write_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocelot_read_ix(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_policer_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc9959_psfp_sfi_table_del(ptr noundef %ocelot, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sfi_list = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %sfi_list, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %sfi_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %index9 = getelementptr inbounds %struct.felix_stream_filter, ptr %tmp.0, i32 0, i32 2
  %1 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index9, align 4
  %cmp10 = icmp eq i32 %2, %index
  br i1 %cmp10, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcount = getelementptr inbounds %struct.felix_stream_filter, ptr %tmp.0, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then11, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.end_crit_edge, label %if.then10.i.i.i, !prof !184

if.end5.i.i.i.for.end_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %for.end

if.then11:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  %enable = getelementptr inbounds %struct.felix_stream_filter, ptr %tmp.0, i32 0, i32 3
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enable, align 4
  %call12 = tail call fastcc i32 @vsc9959_psfp_sfi_set(ptr noundef %ocelot, ptr noundef %tmp.0)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then11.list_del.exit_crit_edge
  %11 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.0) #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc9959_psfp_sfi_table_add2(ptr noundef %ocelot, ptr noundef %sfi, ptr noundef %sfi2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sfi_list = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 1
  %0 = ptrtoint ptr %sfi_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sfi_list, align 4
  %cmp.i.not40 = icmp eq ptr %1, %sfi_list
  br i1 %cmp.i.not40, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %index48 = getelementptr inbounds %struct.felix_stream_filter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %index48 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not49 = icmp ult i32 %3, 2
  br i1 %cmp.not49, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %4 = phi i32 [ %7, %for.body.for.cond_crit_edge ], [ %3, %for.body.preheader.for.cond_crit_edge ]
  %pos.04150 = phi ptr [ %q.044, %for.body.for.cond_crit_edge ], [ %1, %for.body.preheader.for.cond_crit_edge ]
  %5 = ptrtoint ptr %pos.04150 to i32
  call void @__asan_load4_noabort(i32 %5)
  %q.044 = load ptr, ptr %pos.04150, align 4
  %cmp.i.not = icmp eq ptr %q.044, %sfi_list
  br i1 %cmp.i.not, label %for.cond.for.end.loopexit_crit_edge, label %for.body

for.cond.for.end.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.felix_stream_filter, ptr %q.044, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %add = add i32 %4, 3
  %cmp.not = icmp ult i32 %7, %add
  br i1 %cmp.not, label %for.body.for.cond_crit_edge, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end.loopexit:                                 ; preds = %for.body.for.end.loopexit_crit_edge, %for.cond.for.end.loopexit_crit_edge
  %add7.le = add nuw i32 %4, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %last.0.lcssa = phi ptr [ %sfi_list, %entry.for.end_crit_edge ], [ %sfi_list, %for.body.preheader.for.end_crit_edge ], [ %pos.04150, %for.end.loopexit ]
  %insert.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %for.body.preheader.for.end_crit_edge ], [ %add7.le, %for.end.loopexit ]
  %index9 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 2
  %8 = ptrtoint ptr %index9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %insert.0.lcssa, ptr %index9, align 4
  %call10 = tail call fastcc i32 @vsc9959_psfp_sfi_list_add(ptr noundef %ocelot, ptr noundef %sfi, ptr noundef %last.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %add14 = add i32 %insert.0.lcssa, 1
  %index15 = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi2, i32 0, i32 2
  %9 = ptrtoint ptr %index15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add14, ptr %index15, align 4
  %10 = ptrtoint ptr %last.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last.0.lcssa, align 4
  %call17 = tail call fastcc i32 @vsc9959_psfp_sfi_list_add(ptr noundef %ocelot, ptr noundef %sfi2, ptr noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end13 ], [ %call10, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc9959_psfp_sgi_table_del(ptr noundef %ocelot, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %sgi = alloca %struct.felix_stream_gate, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sgi) #13
  %0 = call ptr @memset(ptr %sgi, i32 0, i32 40)
  %sgi_list = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 27, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %sgi_list, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %sgi_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %index9 = getelementptr inbounds %struct.felix_stream_gate_entry, ptr %tmp.0, i32 0, i32 2
  %2 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index9, align 4
  %cmp10 = icmp eq i32 %3, %index
  br i1 %cmp10, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcount = getelementptr inbounds %struct.felix_stream_gate_entry, ptr %tmp.0, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then11, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.end_crit_edge, label %if.then10.i.i.i, !prof !184

if.end5.i.i.i.for.end_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %for.end

if.then11:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  %5 = ptrtoint ptr %sgi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %index, ptr %sgi, align 8
  %enable = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 1
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enable, align 4
  %call13 = call fastcc i32 @vsc9959_psfp_sgi_set(ptr noundef %ocelot, ptr noundef nonnull %sgi)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmp.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then11.list_del.exit_crit_edge
  %13 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.0) #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sgi) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_policer_del(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc9959_psfp_sgi_set(ptr noundef %ocelot, ptr nocapture noundef readonly %sgi) unnamed_addr #2 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %tmp191.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sgi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %1)
  %cmp = icmp ugt i32 %1, 183
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %1, i32 noundef 16777259, i32 noundef 0) #13
  %enable = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef 33554432, i32 noundef 34603008, i32 noundef 16777262, i32 noundef 0) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cycletime = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 5
  %4 = ptrtoint ptr %cycletime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cycletime, align 8
  %6 = add i64 %5, -1000000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -999995001, i64 %6)
  %7 = icmp ult i64 %6, -999995001
  br i1 %7, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %num_entries = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 7
  %8 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp9 = icmp ugt i32 %9, 4
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %basetime = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 4
  %10 = ptrtoint ptr %basetime to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %basetime, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #13
  %12 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %ptp_info.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 37
  %call.i = call i32 @ocelot_ptp_gettime64(ptr noundef %ptp_info.i, ptr noundef nonnull %ts.i) #13
  %13 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %.fca.0.load.i = load i64, ptr %ts.i, align 8
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load.i)
  %cmp.i.i.i = icmp sgt i64 %.fca.0.load.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i = lshr i64 %.fca.1.load.i, 32
  %mul.i.i.i = mul i64 %.fca.0.load.i, 1000000000
  %add.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i, %mul.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 9223372036854775807, i64 %add.i.i.i, !prof !183
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i.i, i64 %11)
  %cmp.i = icmp sgt i64 %retval.0.i.i.i, %11
  br i1 %cmp.i, label %if.then.i, label %if.end11.vsc9959_new_base_time.exit_crit_edge

if.end11.vsc9959_new_base_time.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %vsc9959_new_base_time.exit

if.then.i:                                        ; preds = %if.end11
  %sub.i = sub i64 %retval.0.i.i.i, %11
  %conv.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp171.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !184

if.then175.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv176.i = trunc i64 %sub.i to i32
  %div179.i = udiv i32 %conv176.i, %conv.i
  %conv180.i = zext i32 %div179.i to i64
  br label %if.end185.i

if.else181.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %sub.i) #18, !srcloc !185
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.else181.i, %if.then175.i
  %nr_of_cycles.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %add187.i = add i64 %nr_of_cycles.0.i, 1
  %mul188.i = mul i64 %add187.i, %5
  %add189.i = add i64 %mul188.i, %11
  br label %vsc9959_new_base_time.exit

vsc9959_new_base_time.exit:                       ; preds = %if.end185.i, %if.end11.vsc9959_new_base_time.exit_crit_edge
  %new_base_time.0.i = phi i64 [ %add189.i, %if.end185.i ], [ %11, %if.end11.vsc9959_new_base_time.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp191.i) #13
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp191.i, i64 noundef %new_base_time.0.i) #13
  %16 = ptrtoint ptr %tmp191.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %base_ts.sroa.0.0.copyload135 = load i64, ptr %tmp191.i, align 8
  %base_ts.sroa.6.0.tmp191.i.sroa_idx = getelementptr inbounds i8, ptr %tmp191.i, i32 8
  %17 = ptrtoint ptr %base_ts.sroa.6.0.tmp191.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %base_ts.sroa.6.0.copyload136 = load i32, ptr %base_ts.sroa.6.0.tmp191.i.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp191.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #13
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %base_ts.sroa.6.0.copyload136, i32 noundef 16777260, i32 noundef 0) #13
  %conv = trunc i64 %base_ts.sroa.0.0.copyload135 to i32
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %conv, i32 noundef 16777261, i32 noundef 0) #13
  %18 = lshr i64 %base_ts.sroa.0.0.copyload135, 32
  %conv16 = trunc i64 %18 to i32
  %ipv_valid = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 2
  %19 = ptrtoint ptr %ipv_valid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ipv_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool18.not, i32 0, i32 16777216
  %init_ipv = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 3
  %21 = ptrtoint ptr %init_ipv to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %init_ipv, align 2
  %conv19 = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %conv19, 21
  %and20 = and i32 %shl, 14680064
  %23 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_entries, align 8
  %shl23 = shl i32 %24, 16
  %and24 = and i32 %shl23, 458752
  %and27 = and i32 %conv16, 65535
  %or = or i32 %and27, %cond
  %or21 = or i32 %or, %and20
  %or26 = or i32 %or21, %and24
  %or28 = or i32 %or26, 34603008
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or28, i32 noundef 16777262, i32 noundef 0) #13
  %25 = ptrtoint ptr %cycletime to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cycletime, align 8
  %conv30 = trunc i64 %26 to i32
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %conv30, i32 noundef 16777263, i32 noundef 0) #13
  %entries = getelementptr inbounds %struct.felix_stream_gate, ptr %sgi, i32 0, i32 8
  %27 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp32139.not = icmp eq i32 %28, 0
  br i1 %cmp32139.not, label %vsc9959_new_base_time.exit.for.end_crit_edge, label %vsc9959_new_base_time.exit.for.body_crit_edge

vsc9959_new_base_time.exit.for.body_crit_edge:    ; preds = %vsc9959_new_base_time.exit
  br label %for.body

vsc9959_new_base_time.exit.for.end_crit_edge:     ; preds = %vsc9959_new_base_time.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %vsc9959_new_base_time.exit.for.body_crit_edge
  %i.0141 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %vsc9959_new_base_time.exit.for.body_crit_edge ]
  %interval_sum.0140 = phi i32 [ %add46, %for.body.for.body_crit_edge ], [ 0, %vsc9959_new_base_time.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.action_gate_entry, ptr %entries, i32 %i.0141
  %ipv = getelementptr %struct.action_gate_entry, ptr %entries, i32 %i.0141, i32 2
  %29 = ptrtoint ptr %ipv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ipv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp34 = icmp slt i32 %30, 0
  %add = add i32 %30, 8
  %add.op = and i32 %add, 15
  %and39 = select i1 %cmp34, i32 0, i32 %add.op
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool42.not = icmp eq i8 %32, 0
  %cond43 = select i1 %tobool42.not, i32 0, i32 16
  %or44 = or i32 %and39, %cond43
  %mul = shl i32 %i.0141, 2
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or44, i32 noundef 16777265, i32 noundef %mul) #13
  %interval = getelementptr %struct.action_gate_entry, ptr %entries, i32 %i.0141, i32 1
  %33 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %interval, align 4
  %add46 = add i32 %34, %interval_sum.0140
  call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %add46, i32 noundef 16777266, i32 noundef %mul) #13
  %inc = add nuw i32 %i.0141, 1
  %35 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_entries, align 8
  %cmp32 = icmp ult i32 %inc, %36
  br i1 %cmp32, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %vsc9959_new_base_time.exit.for.end_crit_edge
  call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef 268435456, i32 noundef 268435456, i32 noundef 16777259, i32 noundef 0) #13
  %call = call i64 @ktime_get() #13
  %add.i130 = add i64 %call, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1836) #13
  %call.i131142 = call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777259, i32 noundef 0) #13
  %and61143 = and i32 %call.i131142, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61143)
  %tobool62.not144 = icmp eq i32 %and61143, 0
  br i1 %tobool62.not144, label %for.end.for.end78.thread_crit_edge, label %for.end.land.lhs.true_crit_edge

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  br label %land.lhs.true

for.end.for.end78.thread_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78.thread

land.lhs.true:                                    ; preds = %if.then74.land.lhs.true_crit_edge, %for.end.land.lhs.true_crit_edge
  %call66 = call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call66, i64 %add.i130)
  %cmp3.i = icmp sgt i64 %call66, %add.i130
  br i1 %cmp3.i, label %for.end78, label %if.then74

if.then74:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #13
  %call.i131 = call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777259, i32 noundef 0) #13
  %and61 = and i32 %call.i131, 268435456
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then74.for.end78.thread_crit_edge, label %if.then74.land.lhs.true_crit_edge

if.then74.land.lhs.true_crit_edge:                ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then74.for.end78.thread_crit_edge:             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78.thread

for.end78:                                        ; preds = %land.lhs.true
  %call.i133 = call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777259, i32 noundef 0) #13
  %.pre = and i32 %call.i133, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool80.not = icmp eq i32 %.pre, 0
  br i1 %tobool80.not, label %for.end78.for.end78.thread_crit_edge, label %for.end78.cleanup_crit_edge

for.end78.cleanup_crit_edge:                      ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end78.for.end78.thread_crit_edge:             ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78.thread

for.end78.thread:                                 ; preds = %for.end78.for.end78.thread_crit_edge, %if.then74.for.end78.thread_crit_edge, %for.end.for.end78.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end78.thread, %for.end78.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %for.end78.thread ], [ -110, %for.end78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_rmw_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_gettime64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc9959_psfp_sfi_set(ptr noundef %ocelot, ptr nocapture noundef readonly %sfi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %1)
  %cmp = icmp ugt i32 %1, 175
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 3
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end30

if.then1:                                         ; preds = %if.end
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %1, i32 noundef 16777256, i32 noundef 0) #13
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 2, i32 noundef 16777255, i32 noundef 0) #13
  %call = tail call i64 @ktime_get() #13
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1573) #13
  %call.i151 = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %and14152 = and i32 %call.i151, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14152)
  %tobool15.not153 = icmp eq i32 %and14152, 0
  br i1 %tobool15.not153, label %if.then1.for.end.thread_crit_edge, label %if.then1.land.lhs.true_crit_edge

if.then1.land.lhs.true_crit_edge:                 ; preds = %if.then1
  br label %land.lhs.true

if.then1.for.end.thread_crit_edge:                ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %if.then1.land.lhs.true_crit_edge
  %call19 = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #13
  %call.i = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %and14 = and i32 %call.i, 3
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then26.for.end.thread_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then26.for.end.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %call.i138 = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %.pre = and i32 %call.i138, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool29.not = icmp eq i32 %.pre, 0
  br i1 %tobool29.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then26.for.end.thread_crit_edge, %if.then1.for.end.thread_crit_edge
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %sgid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 6
  %4 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %5)
  %cmp31 = icmp ugt i32 %5, 183
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %lor.lhs.false

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end30
  %fmid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 8
  %6 = ptrtoint ptr %fmid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %7)
  %cmp32 = icmp ugt i32 %7, 383
  br i1 %cmp32, label %lor.lhs.false.cleanup_crit_edge, label %if.end34

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false
  %sg_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 5
  %8 = ptrtoint ptr %sg_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sg_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool35.not = icmp eq i8 %9, 0
  %cond36 = select i1 %tobool35.not, i32 0, i32 67108864
  %shl = shl nuw nsw i32 %5, 18
  %and38 = and i32 %shl, 66846720
  %fm_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 7
  %10 = ptrtoint ptr %fm_valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fm_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool40.not = icmp eq i8 %11, 0
  %cond41 = select i1 %tobool40.not, i32 0, i32 131072
  %shl44 = shl nuw nsw i32 %7, 8
  %and45 = and i32 %shl44, 130816
  %or = or i32 %and38, %1
  %or42 = or i32 %or, %and45
  %or46 = or i32 %or42, %cond36
  %or49 = or i32 %or46, %cond41
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or49, i32 noundef 16777256, i32 noundef 0) #13
  %prio_valid = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 9
  %12 = ptrtoint ptr %prio_valid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prio_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool51.not = icmp eq i8 %13, 0
  %prio = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 10
  %14 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prio, align 1
  %conv53 = zext i8 %15 to i32
  %shl54 = shl nuw nsw i32 %conv53, 19
  %and55 = and i32 %shl54, 3670016
  %maxsdu = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 11
  %16 = ptrtoint ptr %maxsdu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxsdu, align 4
  %shl57 = shl i32 %17, 2
  %and58 = and i32 %shl57, 262140
  %or56 = select i1 %tobool51.not, i32 2, i32 4194306
  %or59 = or i32 %or56, %and55
  %or60 = or i32 %or59, %and58
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or60, i32 noundef 16777255, i32 noundef 0) #13
  %call64 = tail call i64 @ktime_get() #13
  %add.i139 = add i64 %call64, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1597) #13
  %call.i140148 = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %and81149 = and i32 %call.i140148, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81149)
  %tobool82.not150 = icmp eq i32 %and81149, 0
  br i1 %tobool82.not150, label %if.end34.for.end99.thread_crit_edge, label %if.end34.land.lhs.true86_crit_edge

if.end34.land.lhs.true86_crit_edge:               ; preds = %if.end34
  br label %land.lhs.true86

if.end34.for.end99.thread_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99.thread

land.lhs.true86:                                  ; preds = %if.then95.land.lhs.true86_crit_edge, %if.end34.land.lhs.true86_crit_edge
  %call87 = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call87, i64 %add.i139)
  %cmp3.i142 = icmp sgt i64 %call87, %add.i139
  br i1 %cmp3.i142, label %for.end99, label %if.then95

if.then95:                                        ; preds = %land.lhs.true86
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #13
  %call.i140 = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %and81 = and i32 %call.i140, 3
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then95.for.end99.thread_crit_edge, label %if.then95.land.lhs.true86_crit_edge

if.then95.land.lhs.true86_crit_edge:              ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true86

if.then95.for.end99.thread_crit_edge:             ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99.thread

for.end99:                                        ; preds = %land.lhs.true86
  %call.i145 = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %.pre155 = and i32 %call.i145, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre155)
  %tobool102.not = icmp eq i32 %.pre155, 0
  br i1 %tobool102.not, label %for.end99.for.end99.thread_crit_edge, label %for.end99.cleanup_crit_edge

for.end99.cleanup_crit_edge:                      ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end99.for.end99.thread_crit_edge:             ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99.thread

for.end99.thread:                                 ; preds = %for.end99.for.end99.thread_crit_edge, %if.then95.for.end99.thread_crit_edge, %if.end34.for.end99.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end99.thread, %for.end99.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ 0, %for.end.thread ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %for.end99.thread ], [ -110, %for.end99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc9959_psfp_sfi_list_add(ptr noundef %ocelot, ptr noundef %sfi, ptr noundef %pos) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %sfi, i32 noundef 48, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.felix_stream_filter, ptr %call, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %refcount, align 4
  %call1 = tail call fastcc i32 @vsc9959_psfp_sfi_set(ptr noundef %ocelot, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 2
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %portmask = getelementptr inbounds %struct.felix_stream_filter, ptr %sfi, i32 0, i32 4
  %3 = ptrtoint ptr %portmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %portmask, align 4
  tail call fastcc void @vsc9959_psfp_sfidmask_set(ptr noundef %ocelot, i32 noundef %2, i32 noundef %4)
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pos, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %pos, ptr noundef %6) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pos, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc9959_psfp_sfidmask_set(ptr noundef %ocelot, i32 noundef %sfid, i32 noundef %ports) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %sfid, 255
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef %and, i32 noundef 255, i32 noundef 16777256, i32 noundef 0) #13
  %shl = shl i32 %ports, 1
  %and1 = and i32 %shl, 254
  %or = or i32 %and1, 1
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef %or, i32 noundef 16777254, i32 noundef 0) #13
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef 2, i32 noundef 3, i32 noundef 16777255, i32 noundef 0) #13
  %call = tail call i64 @ktime_get() #13
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1621) #13
  %call.i2 = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %and103 = and i32 %call.i2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool.not4 = icmp eq i32 %and103, 0
  br i1 %tobool.not4, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then21

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call.i1 = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  br label %for.end

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #13
  %call.i = tail call i32 @__ocelot_read_ix(ptr noundef %ocelot, i32 noundef 16777255, i32 noundef 0) #13
  %and10 = and i32 %call.i, 3
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.then21.for.end_crit_edge, label %if.then21.land.lhs.true_crit_edge

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.then21.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc9959_mact_stream_set(ptr noundef %ocelot, ptr nocapture noundef readonly %stream, ptr noundef writeonly %extack) unnamed_addr #2 align 64 {
entry:
  %type = alloca i32, align 4
  %dst_idx = alloca i32, align 4
  %mac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #13
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_idx) #13
  %1 = ptrtoint ptr %dst_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dst_idx, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #13
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %dmac = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 5
  %3 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dmac, align 4
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.felix_stream, ptr %stream, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %2, align 4
  %vid2 = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 6
  %9 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid2, align 2
  %conv = zext i16 %10 to i32
  %call = call i32 @ocelot_mact_lookup(ptr noundef %ocelot, ptr noundef nonnull %dst_idx, ptr noundef nonnull %mac, i32 noundef %conv, ptr noundef nonnull %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @do_trace_netlink_extack(ptr noundef nonnull @vsc9959_mact_stream_set.__msg) #13
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vsc9959_mact_stream_set.__msg, ptr %extack, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %sfid_valid = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 8
  %12 = ptrtoint ptr %sfid_valid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sfid_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end9.land.lhs.true_crit_edge

if.end9.land.lhs.true_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end9
  %ssid_valid = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 9
  %14 = ptrtoint ptr %ssid_valid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssid_valid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %lor.lhs.false.cond.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end9.land.lhs.true_crit_edge
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge
  br i1 %tobool11.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %sfid20 = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 10
  %19 = ptrtoint ptr %sfid20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sfid20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge, %lor.lhs.false.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.true ], [ -1, %if.end16.cond.end_crit_edge ], [ -1, %lor.lhs.false.cond.end_crit_edge ]
  %ssid_valid21 = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 9
  %21 = ptrtoint ptr %ssid_valid21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ssid_valid21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %cond.end.cond.end27_crit_edge, label %cond.true24

cond.end.cond.end27_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end27

cond.true24:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %ssid25 = getelementptr inbounds %struct.felix_stream, ptr %stream, i32 0, i32 11
  %23 = ptrtoint ptr %ssid25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ssid25, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.true24, %cond.end.cond.end27_crit_edge
  %cond28 = phi i32 [ %24, %cond.true24 ], [ -1, %cond.end.cond.end27_crit_edge ]
  %25 = ptrtoint ptr %dst_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_idx, align 4
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %call30 = call i32 @ocelot_mact_learn_streamdata(ptr noundef %ocelot, i32 noundef %26, ptr noundef nonnull %mac, i32 noundef %conv, i32 noundef %28, i32 noundef %cond, i32 noundef %cond28) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end27, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %cond.end27 ], [ -95, %do.body ], [ -95, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_idx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mact_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mact_learn_streamdata(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_get_bridge_fwd_mask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_get_dsa_8021q_cpu_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_adjfine(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_adjtime(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_settime64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_enable(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_verify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @enetc_hw_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_mdio_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_mdio_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_device_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_pcs_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_get_mdio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lynx_pcs_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_get_txtstamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !166, !168, !169, !170, !172, !173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__initcall__kmod_mscc_felix__531_2389_felix_vsc9959_pci_driver_init6, !1, !"__initcall__kmod_mscc_felix__531_2389_felix_vsc9959_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2389, i32 1}
!2 = !{ptr @__exitcall_felix_vsc9959_pci_driver_exit, !1, !"__exitcall_felix_vsc9959_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description532, !4, !"__UNIQUE_ID_description532", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2391, i32 1}
!5 = !{ptr @__UNIQUE_ID_file533, !6, !"__UNIQUE_ID_file533", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2392, i32 1}
!7 = !{ptr @__UNIQUE_ID_license534, !6, !"__UNIQUE_ID_license534", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @felix_vsc9959_pci_driver, !10, !"felix_vsc9959_pci_driver", i1 false, i1 false}
!10 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2382, i32 26}
!11 = !{ptr @felix_ids, !12, !"felix_ids", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2373, i32 29}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2273, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @felix_pci_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @felix_pci_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2279, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @felix_pci_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @felix_pci_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2286, i32 3}
!28 = !{ptr @felix_pci_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @felix_pci_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2302, i32 6}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2304, i32 3}
!34 = !{ptr @felix_pci_probe._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @felix_pci_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2313, i32 3}
!38 = !{ptr @felix_pci_probe._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @felix_pci_probe._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2327, i32 3}
!42 = !{ptr @felix_pci_probe._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @felix_pci_probe._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @felix_info_vsc9959, !45, !"felix_info_vsc9959", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2219, i32 32}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 391, i32 11}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 396, i32 11}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 401, i32 11}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 406, i32 11}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 411, i32 11}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 416, i32 11}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 421, i32 11}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 426, i32 11}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 431, i32 11}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 436, i32 11}
!66 = !{ptr @vsc9959_target_io_res, !67, !"vsc9959_target_io_res", i1 false, i1 false}
!67 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 387, i32 30}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 444, i32 11}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 449, i32 11}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 454, i32 11}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 459, i32 11}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 464, i32 11}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 469, i32 11}
!80 = !{ptr @vsc9959_port_io_res, !81, !"vsc9959_port_io_res", i1 false, i1 false}
!81 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 440, i32 30}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 479, i32 11}
!84 = !{ptr @vsc9959_imdio_res, !85, !"vsc9959_imdio_res", i1 false, i1 false}
!85 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 476, i32 30}
!86 = !{ptr @vsc9959_regfields, !87, !"vsc9959_regfields", i1 false, i1 false}
!87 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 482, i32 31}
!88 = !{ptr @vsc9959_regmap, !89, !"vsc9959_regmap", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 372, i32 19}
!90 = !{ptr @vsc9959_ana_regmap, !91, !"vsc9959_ana_regmap", i1 false, i1 false}
!91 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 27, i32 18}
!92 = !{ptr @vsc9959_qs_regmap, !93, !"vsc9959_qs_regmap", i1 false, i1 false}
!93 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 129, i32 18}
!94 = !{ptr @vsc9959_qsys_regmap, !95, !"vsc9959_qsys_regmap", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 167, i32 18}
!96 = !{ptr @vsc9959_rew_regmap, !97, !"vsc9959_rew_regmap", i1 false, i1 false}
!97 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 241, i32 18}
!98 = !{ptr @vsc9959_sys_regmap, !99, !"vsc9959_sys_regmap", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 257, i32 18}
!100 = !{ptr @vsc9959_vcap_regmap, !101, !"vsc9959_vcap_regmap", i1 false, i1 false}
!101 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 144, i32 18}
!102 = !{ptr @vsc9959_ptp_regmap, !103, !"vsc9959_ptp_regmap", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 314, i32 18}
!104 = !{ptr @vsc9959_gcb_regmap, !105, !"vsc9959_gcb_regmap", i1 false, i1 false}
!105 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 326, i32 18}
!106 = !{ptr @vsc9959_dev_gmii_regmap, !107, !"vsc9959_dev_gmii_regmap", i1 false, i1 false}
!107 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 330, i32 18}
!108 = !{ptr @vsc9959_ops, !109, !"vsc9959_ops", i1 false, i1 false}
!109 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2205, i32 32}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 923, i32 3}
!112 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vsc9959_reset._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @vsc9959_reset._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 933, i32 3}
!117 = !{ptr @vsc9959_reset._entry.42, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @vsc9959_reset._entry_ptr.44, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @vsc9959_psfp_filter_add.__msg, !120, !"__msg", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1934, i32 3}
!121 = !{ptr @vsc9959_psfp_filter_add.__msg.45, !122, !"__msg", i1 false, i1 false}
!122 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1991, i32 4}
!123 = !{ptr @vsc9959_psfp_filter_add.__msg.46, !124, !"__msg", i1 false, i1 false}
!124 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1998, i32 4}
!125 = !{ptr @vsc9959_mact_stream_set.__msg, !126, !"__msg", i1 false, i1 false}
!126 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1473, i32 4}
!127 = !{ptr @vsc9959_psfp_filter_del.sfi, !128, !"sfi", i1 false, i1 false}
!128 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2060, i32 37}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 2196, i32 3}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @vsc9959_cut_through_fwd.__UNIQUE_ID_ddebug530, !130, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!133 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @vsc9959_stats_layout, !136, !"vsc9959_stats_layout", i1 false, i1 false}
!136 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 532, i32 40}
!137 = !{ptr @vsc9959_vcap_props, !138, !"vsc9959_vcap_props", i1 false, i1 false}
!138 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 832, i32 26}
!139 = !{ptr @vsc9959_vcap_es0_keys, !140, !"vsc9959_vcap_es0_keys", i1 false, i1 false}
!140 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 627, i32 32}
!141 = !{ptr @vsc9959_vcap_es0_actions, !142, !"vsc9959_vcap_es0_actions", i1 false, i1 false}
!142 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 638, i32 32}
!143 = !{ptr @vsc9959_vcap_is1_keys, !144, !"vsc9959_vcap_is1_keys", i1 false, i1 false}
!144 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 659, i32 32}
!145 = !{ptr @vsc9959_vcap_is1_actions, !146, !"vsc9959_vcap_is1_actions", i1 false, i1 false}
!146 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 710, i32 32}
!147 = !{ptr @vsc9959_vcap_is2_keys, !148, !"vsc9959_vcap_is2_keys", i1 false, i1 false}
!148 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 734, i32 26}
!149 = !{ptr @vsc9959_vcap_is2_actions, !150, !"vsc9959_vcap_is2_actions", i1 false, i1 false}
!150 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 814, i32 26}
!151 = !{ptr @vsc9959_ptp_caps, !152, !"vsc9959_ptp_caps", i1 false, i1 false}
!152 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 875, i32 36}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1045, i32 3}
!155 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @vsc9959_mdio_bus_alloc._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @vsc9959_mdio_bus_alloc._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1060, i32 3}
!160 = !{ptr @vsc9959_mdio_bus_alloc._entry.53, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @vsc9959_mdio_bus_alloc._entry_ptr.55, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1068, i32 14}
!164 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1078, i32 37}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1083, i32 3}
!168 = !{ptr @vsc9959_mdio_bus_alloc._entry.58, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @vsc9959_mdio_bus_alloc._entry_ptr.60, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/dsa/ocelot/felix_vsc9959.c", i32 1113, i32 3}
!172 = !{ptr @vsc9959_mdio_bus_alloc._entry.61, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @vsc9959_mdio_bus_alloc._entry_ptr.63, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{i64 2148456812, i64 2148457092, i64 2148457426, i64 2148457760}
!186 = !{!"auto-init"}
!187 = !{i64 2148608557, i64 2148608589, i64 2148608618, i64 2148608652, i64 2148608683, i64 2148608706}
!188 = !{i64 971268, i64 971295, i64 971317, i64 971345}
!189 = !{i64 971676, i64 971703, i64 971736, i64 971757, i64 971784, i64 971810}
!190 = !{i8 0, i8 2}
!191 = !{i64 2148431625, i64 2148431630, i64 2148431643, i64 2148431687, i64 2148431721, i64 2148431742}
!192 = !{i64 2148696582}
!193 = !{i64 2148611022, i64 2148611054, i64 2148611083, i64 2148611117, i64 2148611148, i64 2148611171}
!194 = !{i64 2149603509}
