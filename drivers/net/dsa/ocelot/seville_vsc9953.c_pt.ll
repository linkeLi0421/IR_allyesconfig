; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/ocelot/seville_vsc9953.c_pt.bc'
source_filename = "../drivers/net/dsa/ocelot/seville_vsc9953.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.felix_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i16, i16, i16, i16, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.ocelot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocelot_stat_layout = type { i32, [32 x i8] }
%struct.vcap_props = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x %struct.anon.165], i16, i16, i32, ptr, ptr }
%struct.anon.165 = type { i16, i16 }
%struct.vcap_field = type { i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.felix = type { ptr, ptr, %struct.ocelot, ptr, ptr, i32, i32, i32, ptr }
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@__initcall__kmod_mscc_seville__497_1217_seville_vsc9953_driver_init6 = internal global ptr @seville_vsc9953_driver_init, section ".initcall6.init", align 4
@seville_vsc9953_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @seville_probe, ptr @seville_remove, ptr @seville_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @seville_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_seville_vsc9953_driver_exit = internal global ptr @seville_vsc9953_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description498 = internal constant [47 x i8] c"mscc_seville.description=Seville Switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file499 = internal constant [54 x i8] c"mscc_seville.file=drivers/net/dsa/ocelot/mscc_seville\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [28 x i8] c"mscc_seville.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mscc_seville\00", [19 x i8] zeroinitializer }, align 32
@seville_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,vsc9953-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@seville_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate driver memory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"seville_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/dsa/ocelot/seville_vsc9953.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@seville_probe._entry_ptr = internal global ptr @seville_probe._entry, section ".printk_index", align 4
@seville_info_vsc9953 = internal constant { %struct.felix_info, [36 x i8] } { %struct.felix_info { ptr @vsc9953_target_io_res, ptr @vsc9953_port_io_res, ptr null, ptr @vsc9953_regfields, ptr @vsc9953_regmap, ptr @vsc9953_ops, i32 2048, ptr @vsc9953_stats_layout, i32 93, i32 10, i32 8, ptr @vsc9953_vcap_props, i16 11, i16 31, i16 120, i16 161, ptr null, i8 0, ptr @vsc9953_mdio_bus_alloc, ptr @vsc9953_mdio_bus_free, ptr @vsc9953_phylink_validate, ptr @vsc9953_prevalidate_phy_mode, ptr null, ptr null, ptr @ocelot_regmap_init }, [36 x i8] zeroinitializer }, align 32
@seville_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid resource\0A\00", [46 x i8] zeroinitializer }, align 32
@seville_probe._entry_ptr.8 = internal global ptr @seville_probe._entry.6, section ".printk_index", align 4
@seville_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate DSA switch\0A\00", [33 x i8] zeroinitializer }, align 32
@seville_probe._entry_ptr.11 = internal global ptr @seville_probe._entry.9, section ".printk_index", align 4
@felix_switch_ops = external dso_local constant %struct.dsa_switch_ops, align 4
@seville_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register DSA switch: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@seville_probe._entry_ptr.14 = internal global ptr @seville_probe._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vsc9953_target_io_res = internal constant { [14 x %struct.resource], [96 x i8] } { [14 x %struct.resource] [%struct.resource zeroinitializer, %struct.resource { i32 2621440, i32 2686975, ptr @.str.15, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 524288, i32 524543, ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2097152, i32 2228223, ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 196608, i32 262143, ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 65536, i32 131071, ptr @.str.19, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 262144, i32 263167, ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 327680, i32 328703, ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 393216, i32 394239, ptr @.str.22, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource zeroinitializer, %struct.resource { i32 589824, i32 590027, ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource zeroinitializer, %struct.resource { i32 458752, i32 459263, ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource zeroinitializer], [96 x i8] zeroinitializer }, align 32
@vsc9953_port_io_res = internal constant { [10 x %struct.resource], [64 x i8] } { [10 x %struct.resource] [%struct.resource { i32 1048576, i32 1114111, ptr @.str.25, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1114112, i32 1179647, ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1179648, i32 1245183, ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1245184, i32 1310719, ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1310720, i32 1376255, ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1376256, i32 1441791, ptr @.str.30, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1441792, i32 1507327, ptr @.str.31, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1507328, i32 1572863, ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1572864, i32 1638399, ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 1638400, i32 1703935, ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null }], [64 x i8] zeroinitializer }, align 32
@vsc9953_regfields = internal constant { [60 x %struct.reg_field], [304 x i8] } { [60 x %struct.reg_field] [%struct.reg_field { i32 16777216, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 16777216, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777220, i32 24, i32 24, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777220, i32 22, i32 22, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 16, i32 16, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777220, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 16777220, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 16777241, i32 16, i32 16, i32 0, i32 0 }, %struct.reg_field { i32 16777242, i32 11, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 16777242, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 50331649, i32 13, i32 13, i32 11, i32 4 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 50331649, i32 10, i32 10, i32 11, i32 4 }, %struct.reg_field { i32 50331649, i32 9, i32 9, i32 11, i32 4 }, %struct.reg_field { i32 50331649, i32 1, i32 8, i32 11, i32 4 }, %struct.reg_field { i32 50331649, i32 0, i32 0, i32 11, i32 4 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 83886116, i32 4, i32 5, i32 11, i32 4 }, %struct.reg_field { i32 83886116, i32 2, i32 3, i32 11, i32 4 }, %struct.reg_field { i32 83886116, i32 0, i32 0, i32 11, i32 4 }, %struct.reg_field { i32 83886113, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 83886113, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 83886113, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 201326592, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 201326593, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 201326593, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 83886126, i32 11, i32 20, i32 11, i32 4 }, %struct.reg_field { i32 83886126, i32 1, i32 10, i32 11, i32 4 }, %struct.reg_field { i32 83886126, i32 0, i32 1, i32 11, i32 4 }], [304 x i8] zeroinitializer }, align 32
@vsc9953_regmap = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr null, ptr @vsc9953_ana_regmap, ptr @vsc9953_qs_regmap, ptr @vsc9953_qsys_regmap, ptr @vsc9953_rew_regmap, ptr @vsc9953_sys_regmap, ptr @vsc9953_vcap_regmap, ptr @vsc9953_vcap_regmap, ptr @vsc9953_vcap_regmap, ptr null, ptr null, ptr null, ptr @vsc9953_gcb_regmap, ptr @vsc9953_dev_gmii_regmap], [40 x i8] zeroinitializer }, align 32
@vsc9953_ops = internal constant { %struct.ocelot_ops, [52 x i8] } { %struct.ocelot_ops { ptr @felix_port_to_netdev, ptr @felix_netdev_to_port, ptr @vsc9953_reset, ptr @vsc9953_wm_enc, ptr @vsc9953_wm_dec, ptr @vsc9953_wm_stat, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@vsc9953_stats_layout = internal constant { [93 x %struct.ocelot_stat_layout], [844 x i8] } { [93 x %struct.ocelot_stat_layout] [%struct.ocelot_stat_layout { i32 0, [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 1, [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 2, [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 3, [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 4, [32 x i8] c"rx_shorts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 5, [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 6, [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 7, [32 x i8] c"rx_crc_align_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 8, [32 x i8] c"rx_sym_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 9, [32 x i8] c"rx_frames_below_65_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 10, [32 x i8] c"rx_frames_65_to_127_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 11, [32 x i8] c"rx_frames_128_to_255_octets\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 12, [32 x i8] c"rx_frames_256_to_511_octets\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 13, [32 x i8] c"rx_frames_512_to_1023_octets\00\00\00\00" }, %struct.ocelot_stat_layout { i32 14, [32 x i8] c"rx_frames_1024_to_1526_octets\00\00\00" }, %struct.ocelot_stat_layout { i32 15, [32 x i8] c"rx_frames_over_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 16, [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 17, [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 18, [32 x i8] c"rx_longs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 19, [32 x i8] c"rx_classified_drops\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 20, [32 x i8] c"rx_red_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 21, [32 x i8] c"rx_red_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 22, [32 x i8] c"rx_red_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 23, [32 x i8] c"rx_red_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 24, [32 x i8] c"rx_red_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 25, [32 x i8] c"rx_red_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 26, [32 x i8] c"rx_red_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 27, [32 x i8] c"rx_red_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 28, [32 x i8] c"rx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 29, [32 x i8] c"rx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 30, [32 x i8] c"rx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 31, [32 x i8] c"rx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 32, [32 x i8] c"rx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 33, [32 x i8] c"rx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 34, [32 x i8] c"rx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 35, [32 x i8] c"rx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 36, [32 x i8] c"rx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 37, [32 x i8] c"rx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 38, [32 x i8] c"rx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 39, [32 x i8] c"rx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 40, [32 x i8] c"rx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 41, [32 x i8] c"rx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 42, [32 x i8] c"rx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 43, [32 x i8] c"rx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 64, [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 65, [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 66, [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 67, [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 68, [32 x i8] c"tx_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 69, [32 x i8] c"tx_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 70, [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 71, [32 x i8] c"tx_frames_below_65_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 72, [32 x i8] c"tx_frames_65_to_127_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 73, [32 x i8] c"tx_frames_128_255_octets\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 74, [32 x i8] c"tx_frames_256_511_octets\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 75, [32 x i8] c"tx_frames_512_1023_octets\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 76, [32 x i8] c"tx_frames_1024_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 77, [32 x i8] c"tx_frames_over_1526_octets\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 78, [32 x i8] c"tx_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 79, [32 x i8] c"tx_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 80, [32 x i8] c"tx_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 81, [32 x i8] c"tx_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 82, [32 x i8] c"tx_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 83, [32 x i8] c"tx_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 84, [32 x i8] c"tx_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 85, [32 x i8] c"tx_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 86, [32 x i8] c"tx_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 87, [32 x i8] c"tx_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 88, [32 x i8] c"tx_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 89, [32 x i8] c"tx_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 90, [32 x i8] c"tx_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 91, [32 x i8] c"tx_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 92, [32 x i8] c"tx_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 93, [32 x i8] c"tx_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 94, [32 x i8] c"tx_aged\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 128, [32 x i8] c"drop_local\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 129, [32 x i8] c"drop_tail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 130, [32 x i8] c"drop_yellow_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 131, [32 x i8] c"drop_yellow_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 132, [32 x i8] c"drop_yellow_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 133, [32 x i8] c"drop_yellow_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 134, [32 x i8] c"drop_yellow_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 135, [32 x i8] c"drop_yellow_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 136, [32 x i8] c"drop_yellow_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 137, [32 x i8] c"drop_yellow_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 138, [32 x i8] c"drop_green_prio_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 139, [32 x i8] c"drop_green_prio_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 140, [32 x i8] c"drop_green_prio_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 141, [32 x i8] c"drop_green_prio_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 142, [32 x i8] c"drop_green_prio_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 143, [32 x i8] c"drop_green_prio_5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 144, [32 x i8] c"drop_green_prio_6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.ocelot_stat_layout { i32 145, [32 x i8] c"drop_green_prio_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [844 x i8] zeroinitializer }, align 32
@vsc9953_vcap_props = internal global { [3 x %struct.vcap_props], [60 x i8] } { [3 x %struct.vcap_props] [%struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, [2 x %struct.anon.165] [%struct.anon.165 { i16 73, i16 1 }, %struct.anon.165 zeroinitializer], i16 0, i16 0, i32 6, ptr @vsc9953_vcap_es0_keys, ptr @vsc9953_vcap_es0_actions }, %struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, [2 x %struct.anon.165] [%struct.anon.165 { i16 80, i16 4 }, %struct.anon.165 zeroinitializer], i16 0, i16 0, i32 7, ptr @vsc9953_vcap_is1_keys, ptr @vsc9953_vcap_is1_actions }, %struct.vcap_props { i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, [2 x %struct.anon.165] [%struct.anon.165 { i16 50, i16 2 }, %struct.anon.165 { i16 6, i16 4 }], i16 0, i16 0, i32 8, ptr @vsc9953_vcap_is2_keys, ptr @vsc9953_vcap_is2_actions }], [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ana\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"qs\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qsys\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rew\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s0\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s2\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"devcpu_gcb\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port0\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port1\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port2\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port3\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port4\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port5\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port6\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port7\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port8\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"port9\00", [26 x i8] zeroinitializer }, align 32
@vsc9953_ana_regmap = internal constant { [99 x i32], [116 x i8] } { [99 x i32] [i32 46336, i32 46340, i32 -1, i32 46348, i32 46352, i32 46356, i32 46360, i32 46376, i32 46380, i32 46384, i32 46388, i32 46392, i32 46396, i32 46400, i32 46404, i32 46408, i32 46412, i32 46416, i32 46460, i32 -1, i32 46592, i32 46252, i32 46256, i32 46260, i32 -1, i32 46264, i32 46268, i32 46272, i32 46276, i32 -1, i32 -1, i32 46208, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 4, i32 8, i32 12, i32 16, i32 28, i32 32, i32 96, i32 100, i32 104, i32 108, i32 112, i32 116, i32 -1, i32 -1, i32 -1, i32 -1, i32 49152, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 50688, i32 50692, i32 -1, i32 50700, i32 50764, i32 51020, i32 51084, i32 51116, i32 -1, i32 -1, i32 -1, i32 51160, i32 51164, i32 40960, i32 40964, i32 40968, i32 40972, i32 40976, i32 -1, i32 49792, i32 49900, i32 -1], [116 x i8] zeroinitializer }, align 32
@vsc9953_qs_regmap = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 8, i32 16, i32 24, i32 28, i32 32, i32 36, i32 44, i32 52, i32 60, i32 64, i32 -1], [48 x i8] zeroinitializer }, align 32
@vsc9953_qsys_regmap = internal constant { [71 x i32], [68 x i8] } { [71 x i32] [i32 13824, i32 13872, i32 13916, i32 13920, i32 13960, i32 13964, i32 13968, i32 13972, i32 14016, i32 -1, i32 14024, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 14116, i32 14180, i32 16384, i32 16388, i32 14184, i32 14188, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 8, i32 12, i32 -1, i32 -1, i32 68, i32 -1, i32 -1, i32 14196, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [68 x i8] zeroinitializer }, align 32
@vsc9953_rew_regmap = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 -1, i32 -1, i32 -1, i32 1552, i32 1808, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@vsc9953_sys_regmap = internal constant { [66 x i32], [88 x i8] } { [66 x i32] [i32 0, i32 0, i32 8, i32 0, i32 16, i32 20, i32 24, i32 0, i32 0, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 0, i32 0, i32 72, i32 0, i32 256, i32 0, i32 0, i32 0, i32 272, i32 276, i32 0, i32 284, i32 288, i32 292, i32 296, i32 300, i32 304, i32 376, i32 792, i32 -1, i32 800, i32 804, i32 852, i32 892, i32 896, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1100, i32 1144, i32 1148, i32 1192, i32 1196, i32 1236, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [88 x i8] zeroinitializer }, align 32
@vsc9953_vcap_regmap = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 4, i32 8, i32 264, i32 520, i32 776, i32 904, i32 920, i32 924, i32 928, i32 932, i32 936, i32 940, i32 944, i32 948, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@vsc9953_gcb_regmap = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 172, i32 180, i32 184], [16 x i8] zeroinitializer }, align 32
@vsc9953_dev_gmii_regmap = internal constant { [39 x i32], [36 x i8] } { [39 x i32] [i32 0, i32 4, i32 -1, i32 12, i32 -1, i32 -1, i32 -1, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 -1, i32 48, i32 52, i32 56, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@vsc9953_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout: switch core reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vsc9953_reset\00", [18 x i8] zeroinitializer }, align 32
@vsc9953_reset._entry_ptr = internal global ptr @vsc9953_reset._entry, section ".printk_index", align 4
@vsc9953_reset._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 906, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout: switch sram init\0A\00", [37 x i8] zeroinitializer }, align 32
@vsc9953_reset._entry_ptr.39 = internal global ptr @vsc9953_reset._entry.37, section ".printk_index", align 4
@vsc9953_vcap_es0_keys = internal constant { [8 x %struct.vcap_field], [32 x i8] } { [8 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 4 }, %struct.vcap_field { i32 4, i32 4 }, %struct.vcap_field { i32 8, i32 2 }, %struct.vcap_field { i32 10, i32 1 }, %struct.vcap_field { i32 11, i32 1 }, %struct.vcap_field { i32 12, i32 12 }, %struct.vcap_field { i32 24, i32 1 }, %struct.vcap_field { i32 25, i32 3 }], [32 x i8] zeroinitializer }, align 32
@vsc9953_vcap_es0_actions = internal constant { [18 x %struct.vcap_field], [48 x i8] } { [18 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 2 }, %struct.vcap_field { i32 2, i32 1 }, %struct.vcap_field { i32 3, i32 2 }, %struct.vcap_field { i32 5, i32 1 }, %struct.vcap_field { i32 6, i32 2 }, %struct.vcap_field { i32 8, i32 2 }, %struct.vcap_field { i32 10, i32 2 }, %struct.vcap_field { i32 12, i32 1 }, %struct.vcap_field { i32 13, i32 2 }, %struct.vcap_field { i32 15, i32 2 }, %struct.vcap_field { i32 17, i32 12 }, %struct.vcap_field { i32 29, i32 3 }, %struct.vcap_field { i32 32, i32 1 }, %struct.vcap_field { i32 33, i32 12 }, %struct.vcap_field { i32 45, i32 3 }, %struct.vcap_field { i32 48, i32 1 }, %struct.vcap_field { i32 49, i32 24 }, %struct.vcap_field { i32 73, i32 1 }], [48 x i8] zeroinitializer }, align 32
@vsc9953_vcap_is1_keys = internal constant { [44 x %struct.vcap_field], [64 x i8] } { [44 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 1 }, %struct.vcap_field { i32 1, i32 2 }, %struct.vcap_field { i32 3, i32 11 }, %struct.vcap_field { i32 14, i32 10 }, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 24, i32 1 }, %struct.vcap_field { i32 25, i32 1 }, %struct.vcap_field { i32 26, i32 1 }, %struct.vcap_field { i32 27, i32 1 }, %struct.vcap_field { i32 28, i32 1 }, %struct.vcap_field { i32 29, i32 1 }, %struct.vcap_field { i32 30, i32 12 }, %struct.vcap_field { i32 42, i32 1 }, %struct.vcap_field { i32 43, i32 3 }, %struct.vcap_field { i32 46, i32 48 }, %struct.vcap_field { i32 94, i32 1 }, %struct.vcap_field { i32 95, i32 16 }, %struct.vcap_field { i32 111, i32 1 }, %struct.vcap_field { i32 112, i32 1 }, %struct.vcap_field { i32 113, i32 1 }, %struct.vcap_field { i32 114, i32 1 }, %struct.vcap_field { i32 115, i32 1 }, %struct.vcap_field { i32 116, i32 6 }, %struct.vcap_field { i32 122, i32 32 }, %struct.vcap_field { i32 154, i32 1 }, %struct.vcap_field { i32 155, i32 1 }, %struct.vcap_field { i32 156, i32 16 }, %struct.vcap_field { i32 172, i32 8 }, %struct.vcap_field { i32 46, i32 1 }, %struct.vcap_field { i32 47, i32 12 }, %struct.vcap_field { i32 59, i32 1 }, %struct.vcap_field { i32 60, i32 3 }, %struct.vcap_field { i32 63, i32 1 }, %struct.vcap_field { i32 64, i32 1 }, %struct.vcap_field { i32 65, i32 1 }, %struct.vcap_field { i32 66, i32 1 }, %struct.vcap_field { i32 67, i32 6 }, %struct.vcap_field { i32 73, i32 32 }, %struct.vcap_field { i32 105, i32 32 }, %struct.vcap_field { i32 137, i32 8 }, %struct.vcap_field { i32 145, i32 1 }, %struct.vcap_field { i32 146, i32 1 }, %struct.vcap_field { i32 147, i32 8 }, %struct.vcap_field { i32 155, i32 32 }], [64 x i8] zeroinitializer }, align 32
@vsc9953_vcap_is1_actions = internal constant { [20 x %struct.vcap_field], [32 x i8] } { [20 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 1 }, %struct.vcap_field { i32 1, i32 6 }, %struct.vcap_field { i32 7, i32 1 }, %struct.vcap_field { i32 8, i32 3 }, %struct.vcap_field { i32 11, i32 1 }, %struct.vcap_field { i32 12, i32 1 }, %struct.vcap_field { i32 13, i32 8 }, %struct.vcap_field { i32 21, i32 8 }, %struct.vcap_field { i32 29, i32 11 }, %struct.vcap_field { i32 40, i32 1 }, %struct.vcap_field { i32 41, i32 12 }, %struct.vcap_field { i32 53, i32 2 }, %struct.vcap_field { i32 55, i32 13 }, %struct.vcap_field { i32 68, i32 1 }, %struct.vcap_field { i32 69, i32 3 }, %struct.vcap_field { i32 72, i32 1 }, %struct.vcap_field { i32 73, i32 1 }, %struct.vcap_field { i32 74, i32 2 }, %struct.vcap_field { i32 76, i32 4 }, %struct.vcap_field { i32 80, i32 1 }], [32 x i8] zeroinitializer }, align 32
@vsc9953_vcap_is2_keys = internal global { [64 x %struct.vcap_field], [128 x i8] } { [64 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 4 }, %struct.vcap_field { i32 4, i32 1 }, %struct.vcap_field { i32 5, i32 8 }, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 13, i32 11 }, %struct.vcap_field { i32 24, i32 1 }, %struct.vcap_field { i32 25, i32 1 }, %struct.vcap_field { i32 26, i32 1 }, %struct.vcap_field { i32 27, i32 1 }, %struct.vcap_field { i32 28, i32 1 }, %struct.vcap_field { i32 29, i32 12 }, %struct.vcap_field { i32 41, i32 1 }, %struct.vcap_field { i32 42, i32 3 }, %struct.vcap_field { i32 45, i32 48 }, %struct.vcap_field { i32 93, i32 48 }, %struct.vcap_field { i32 141, i32 16 }, %struct.vcap_field { i32 157, i32 16 }, %struct.vcap_field { i32 173, i32 8 }, %struct.vcap_field { i32 181, i32 3 }, %struct.vcap_field zeroinitializer, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 141, i32 40 }, %struct.vcap_field zeroinitializer, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 141, i32 40 }, %struct.vcap_field { i32 45, i32 48 }, %struct.vcap_field { i32 93, i32 1 }, %struct.vcap_field { i32 94, i32 1 }, %struct.vcap_field { i32 95, i32 1 }, %struct.vcap_field { i32 96, i32 1 }, %struct.vcap_field { i32 97, i32 1 }, %struct.vcap_field { i32 98, i32 1 }, %struct.vcap_field { i32 99, i32 2 }, %struct.vcap_field { i32 101, i32 32 }, %struct.vcap_field { i32 133, i32 32 }, %struct.vcap_field { i32 165, i32 1 }, %struct.vcap_field { i32 45, i32 1 }, %struct.vcap_field { i32 46, i32 1 }, %struct.vcap_field { i32 47, i32 1 }, %struct.vcap_field { i32 48, i32 1 }, %struct.vcap_field { i32 49, i32 1 }, %struct.vcap_field { i32 50, i32 8 }, %struct.vcap_field { i32 58, i32 32 }, %struct.vcap_field { i32 90, i32 32 }, %struct.vcap_field { i32 122, i32 1 }, %struct.vcap_field { i32 123, i32 1 }, %struct.vcap_field { i32 140, i32 16 }, %struct.vcap_field { i32 124, i32 16 }, %struct.vcap_field { i32 156, i32 8 }, %struct.vcap_field { i32 164, i32 1 }, %struct.vcap_field { i32 165, i32 1 }, %struct.vcap_field { i32 171, i32 1 }, %struct.vcap_field { i32 170, i32 1 }, %struct.vcap_field { i32 169, i32 1 }, %struct.vcap_field { i32 168, i32 1 }, %struct.vcap_field { i32 167, i32 1 }, %struct.vcap_field { i32 166, i32 1 }, %struct.vcap_field zeroinitializer, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 123, i32 8 }, %struct.vcap_field { i32 131, i32 56 }, %struct.vcap_field { i32 45, i32 1 }, %struct.vcap_field { i32 174, i32 8 }, %struct.vcap_field { i32 46, i32 128 }], [128 x i8] zeroinitializer }, align 32
@vsc9953_vcap_is2_actions = internal global { [15 x %struct.vcap_field], [40 x i8] } { [15 x %struct.vcap_field] [%struct.vcap_field { i32 0, i32 1 }, %struct.vcap_field { i32 1, i32 1 }, %struct.vcap_field { i32 2, i32 3 }, %struct.vcap_field { i32 5, i32 2 }, %struct.vcap_field { i32 7, i32 1 }, %struct.vcap_field { i32 8, i32 1 }, %struct.vcap_field { i32 9, i32 1 }, %struct.vcap_field { i32 10, i32 8 }, %struct.vcap_field { i32 21, i32 1 }, %struct.vcap_field { i32 22, i32 10 }, %struct.vcap_field zeroinitializer, %struct.vcap_field zeroinitializer, %struct.vcap_field zeroinitializer, %struct.vcap_field { i32 44, i32 6 }, %struct.vcap_field { i32 50, i32 32 }], [40 x i8] zeroinitializer }, align 32
@vsc9953_mdio_bus_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 1018, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate array for PCS PHYs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vsc9953_mdio_bus_alloc\00", [41 x i8] zeroinitializer }, align 32
@vsc9953_mdio_bus_alloc._entry_ptr = internal global ptr @vsc9953_mdio_bus_alloc._entry, section ".printk_index", align 4
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VSC9953 internal MDIO bus\00", [38 x i8] zeroinitializer }, align 32
@vsc9953_mdio_bus_alloc._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.3, i32 1027, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to setup MDIO bus\0A\00", [38 x i8] zeroinitializer }, align 32
@vsc9953_mdio_bus_alloc._entry_ptr.45 = internal global ptr @vsc9953_mdio_bus_alloc._entry.43, section ".printk_index", align 4
@vsc9953_mdio_bus_alloc._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.3, i32 1034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@vsc9953_mdio_bus_alloc._entry_ptr.48 = internal global ptr @vsc9953_mdio_bus_alloc._entry.46, section ".printk_index", align 4
@vsc9953_mdio_bus_alloc._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.41, ptr @.str.3, i32 1064, ptr @.str.51, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Found PCS at internal MDIO address %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vsc9953_mdio_bus_alloc._entry_ptr.52 = internal global ptr @vsc9953_mdio_bus_alloc._entry.49, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 18]
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"seville_vsc9953_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1208, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1213, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"seville_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1202, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1124, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"seville_info_vsc9953\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1090, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1138, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1146, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1159, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"vsc9953_target_io_res\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 372, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"vsc9953_port_io_res\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 425, i32 30 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"vsc9953_regfields\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 478, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"vsc9953_regmap\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 358, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"vsc9953_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 997, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"vsc9953_stats_layout\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 527, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"vsc9953_vcap_props\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 814, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 376, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 381, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 386, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 391, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 396, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 401, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 406, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 411, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 416, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 421, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 429, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 434, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 439, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 444, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 449, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 454, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 459, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 464, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 469, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 474, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"vsc9953_ana_regmap\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 22, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"vsc9953_qs_regmap\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 124, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"vsc9953_qsys_regmap\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 162, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"vsc9953_rew_regmap\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 236, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"vsc9953_sys_regmap\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 252, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"vsc9953_vcap_regmap\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 139, i32 18 }
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"vsc9953_gcb_regmap\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 309, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant [24 x i8] c"vsc9953_dev_gmii_regmap\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 316, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 894, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 906, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [22 x i8] c"vsc9953_vcap_es0_keys\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 623, i32 32 }
@___asan_gen_.224 = private unnamed_addr constant [25 x i8] c"vsc9953_vcap_es0_actions\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 634, i32 32 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"vsc9953_vcap_is1_keys\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 655, i32 32 }
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"vsc9953_vcap_is1_actions\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 706, i32 32 }
@___asan_gen_.233 = private unnamed_addr constant [22 x i8] c"vsc9953_vcap_is2_keys\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 729, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant [25 x i8] c"vsc9953_vcap_is2_actions\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 799, i32 26 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1018, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1022, i32 34 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1027, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1034, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [44 x i8] c"../drivers/net/dsa/ocelot/seville_vsc9953.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1064, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_license500, ptr @__exitcall_seville_vsc9953_driver_exit, ptr @__initcall__kmod_mscc_seville__497_1217_seville_vsc9953_driver_init6, ptr @seville_probe._entry, ptr @seville_probe._entry.12, ptr @seville_probe._entry.6, ptr @seville_probe._entry.9, ptr @seville_probe._entry_ptr, ptr @seville_probe._entry_ptr.11, ptr @seville_probe._entry_ptr.14, ptr @seville_probe._entry_ptr.8, ptr @seville_vsc9953_driver_exit, ptr @vsc9953_mdio_bus_alloc._entry, ptr @vsc9953_mdio_bus_alloc._entry.43, ptr @vsc9953_mdio_bus_alloc._entry.46, ptr @vsc9953_mdio_bus_alloc._entry.49, ptr @vsc9953_mdio_bus_alloc._entry_ptr, ptr @vsc9953_mdio_bus_alloc._entry_ptr.45, ptr @vsc9953_mdio_bus_alloc._entry_ptr.48, ptr @vsc9953_mdio_bus_alloc._entry_ptr.52, ptr @vsc9953_reset._entry, ptr @vsc9953_reset._entry.37, ptr @vsc9953_reset._entry_ptr, ptr @vsc9953_reset._entry_ptr.39, ptr @seville_vsc9953_driver, ptr @.str, ptr @seville_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @seville_info_vsc9953, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @vsc9953_target_io_res, ptr @vsc9953_port_io_res, ptr @vsc9953_regfields, ptr @vsc9953_regmap, ptr @vsc9953_ops, ptr @vsc9953_stats_layout, ptr @vsc9953_vcap_props, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @vsc9953_ana_regmap, ptr @vsc9953_qs_regmap, ptr @vsc9953_qsys_regmap, ptr @vsc9953_rew_regmap, ptr @vsc9953_sys_regmap, ptr @vsc9953_vcap_regmap, ptr @vsc9953_gcb_regmap, ptr @vsc9953_dev_gmii_regmap, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @vsc9953_vcap_es0_keys, ptr @vsc9953_vcap_es0_actions, ptr @vsc9953_vcap_is1_keys, ptr @vsc9953_vcap_is1_actions, ptr @vsc9953_vcap_is2_keys, ptr @vsc9953_vcap_is2_actions, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_vsc9953_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_info_vsc9953 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_target_io_res to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_port_io_res to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_regfields to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_regmap to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_stats_layout to i32), i32 3348, i32 4192, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_props to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_ana_regmap to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_qs_regmap to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_qsys_regmap to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_rew_regmap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_sys_regmap to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_regmap to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_gcb_regmap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_dev_gmii_regmap to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_reset._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_es0_keys to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_es0_actions to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_is1_keys to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_is1_actions to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_is2_keys to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_vcap_is2_actions to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_mdio_bus_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_mdio_bus_alloc._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_mdio_bus_alloc._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc9953_mdio_bus_alloc._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @seville_vsc9953_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @seville_vsc9953_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @seville_vsc9953_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @seville_vsc9953_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seville_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1616) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %err_alloc_felix

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %ocelot1 = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 2
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %2 = ptrtoint ptr %ocelot1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev2, ptr %ocelot1, align 8
  %num_flooding_pgids = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 2, i32 16
  %3 = ptrtoint ptr %num_flooding_pgids to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_flooding_pgids, align 4
  %info = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @seville_info_vsc9953, ptr %info, align 4
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7) #13
  br label %err_alloc_felix

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call4, align 4
  %switch_base = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %switch_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %switch_base, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 84) #12
  %tobool13.not = icmp eq ptr %call7.i.i64, null
  br i1 %tobool13.not, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10) #13
  br label %err_alloc_felix

if.end19:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %call7.i.i64 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev2, ptr %call7.i.i64, align 8
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %num_ports = getelementptr inbounds %struct.felix_info, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports, align 4
  %num_ports23 = getelementptr inbounds %struct.dsa_switch, ptr %call7.i.i64, i32 0, i32 18
  %14 = ptrtoint ptr %num_ports23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_ports23, align 8
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %call7.i.i64, i32 0, i32 8
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @felix_switch_ops, ptr %ops, align 8
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %call7.i.i64, i32 0, i32 5
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ocelot1, ptr %priv, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i64, ptr %call7.i.i, align 8
  %tag_proto = getelementptr inbounds %struct.felix, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %tag_proto to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 21, ptr %tag_proto, align 8
  %call25 = tail call i32 @dsa_register_switch(ptr noundef nonnull %call7.i.i64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end19.cleanup_crit_edge, label %do.end30

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.13, i32 noundef %call25) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i64) #9
  br label %err_alloc_felix

err_alloc_felix:                                  ; preds = %do.end30, %if.then14, %if.then6, %if.then
  %err.0 = phi i32 [ %call25, %do.end30 ], [ -12, %if.then14 ], [ -22, %if.then6 ], [ -12, %if.then ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_felix, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_alloc_felix ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seville_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_unregister_switch(ptr noundef %3) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seville_shutdown(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #9
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9953_mdio_bus_alloc(ptr nocapture noundef %ocelot) #2 align 64 {
entry:
  %bus = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ocelot, i32 -8
  %0 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus) #9
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bus, align 4, !annotation !156
  %info = getelementptr i8, ptr %ocelot, i32 -4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %num_ports = getelementptr inbounds %struct.felix_info, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ports, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !157

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pcs82 = getelementptr i8, ptr %ocelot, i32 1588
  %9 = ptrtoint ptr %pcs82 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pcs82, align 4
  br label %do.end

devm_kcalloc.exit:                                ; preds = %entry
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %10, i32 noundef 3520) #9
  %pcs = getelementptr i8, ptr %ocelot, i32 1588
  %11 = ptrtoint ptr %pcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %pcs, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.do.end_crit_edge, label %if.end

devm_kcalloc.exit.do.end_crit_edge:               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %devm_kcalloc.exit.do.end_crit_edge, %devm_kcalloc.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.40) #13
  br label %cleanup45

if.end:                                           ; preds = %devm_kcalloc.exit
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 4, i32 12
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %map = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 6
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %arrayidx3 = getelementptr ptr, ptr %15, i32 12
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4, align 4
  %call5 = call i32 @mscc_miim_setup(ptr noundef %1, ptr noundef nonnull %bus, ptr noundef nonnull @.str.42, ptr noundef %13, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44) #13
  br label %cleanup45

if.end11:                                         ; preds = %if.end
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %call12 = call i32 @devm_of_mdiobus_register(ptr noundef %1, ptr noundef %21, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #13
  br label %cleanup45

if.end17:                                         ; preds = %if.end11
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %imdio = getelementptr i8, ptr %ocelot, i32 1584
  %24 = ptrtoint ptr %imdio to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %imdio, align 4
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %num_ports1985 = getelementptr inbounds %struct.felix_info, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %num_ports1985 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports1985, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2086 = icmp sgt i32 %28, 0
  br i1 %cmp2086, label %for.body.lr.ph, label %if.end17.cleanup45_crit_edge

if.end17.cleanup45_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup45

for.body.lr.ph:                                   ; preds = %if.end17
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %port.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %29 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ports, align 4
  %arrayidx21 = getelementptr ptr, ptr %30, i32 %port.087
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx21, align 4
  %add = add nuw i32 %port.087, 4
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_unused_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_unused_port.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %38 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %39, %34
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %40 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %port.087)
  %cmp5.i.i = icmp eq i32 %41, %port.087
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %42 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.dsa_is_unused_port.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, %for.body.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i79 = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i79, i32 0, i32 6
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i = icmp eq i32 %44, 0
  br i1 %cmp.i, label %dsa_is_unused_port.exit.cleanup_crit_edge, label %if.end24

dsa_is_unused_port.exit.cleanup_crit_edge:        ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %dsa_is_unused_port.exit
  %phy_mode = getelementptr inbounds %struct.ocelot_port, ptr %32, i32 0, i32 8
  %45 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp25 = icmp eq i32 %46, 1
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %47 = ptrtoint ptr %imdio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %imdio, align 4
  %call29 = call ptr @mdio_device_create(ptr noundef %48, i32 noundef %add) #9
  %cmp.i80 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %call33 = call ptr @lynx_pcs_create(ptr noundef %call29) #9
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @mdio_device_free(ptr noundef %call29) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcs, align 4
  %arrayidx38 = getelementptr ptr, ptr %50, i32 %port.087
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call33, ptr %arrayidx38, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %add) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then35, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %dsa_is_unused_port.exit.cleanup_crit_edge
  %inc = add nuw nsw i32 %port.087, 1
  %52 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info, align 4
  %num_ports19 = getelementptr inbounds %struct.felix_info, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %num_ports19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_ports19, align 4
  %cmp20 = icmp slt i32 %inc, %55
  br i1 %cmp20, label %cleanup.for.body_crit_edge, label %cleanup.cleanup45_crit_edge

cleanup.cleanup45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup45

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup45:                                        ; preds = %cleanup.cleanup45_crit_edge, %if.end17.cleanup45_crit_edge, %do.end16, %do.end10, %do.end
  %retval.0 = phi i32 [ %call5, %do.end10 ], [ %call12, %do.end16 ], [ -12, %do.end ], [ 0, %if.end17.cleanup45_crit_edge ], [ 0, %cleanup.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc9953_mdio_bus_free(ptr nocapture noundef readonly %ocelot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %0 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp9.not = icmp eq i8 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pcs = getelementptr i8, ptr %ocelot, i32 1588
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %port.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %port.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @lynx_get_mdio_device(ptr noundef nonnull %5) #9
  tail call void @mdio_device_free(ptr noundef %call) #9
  tail call void @lynx_pcs_destroy(ptr noundef nonnull %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %port.010, 1
  %6 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc9953_phylink_validate(ptr nocapture noundef readonly %ocelot, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #9
  %4 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memset(ptr %supported, i32 0, i32 12)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #9
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %or.i35 = or i32 %11, 24687
  store i32 %or.i35, ptr %mask, align 4
  %12 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %if.then13, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr inbounds i32, ptr %mask, i32 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %or.i36 = or i32 %15, 32768
  store i32 %or.i36, ptr %add.ptr.i, align 4
  %or.i37 = or i32 %11, 57455
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i37, ptr %mask, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #9
  %call.i.i38 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc9953_prevalidate_phy_mode(ptr nocapture noundef readnone %ocelot, i32 noundef %port, i32 noundef %phy_mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %phy_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %phy_mode, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.bb2_crit_edge
    i32 18, label %entry.sw.bb2_crit_edge13
  ]

entry.sw.bb2_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = and i32 %port, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %switch = icmp eq i32 %1, 8
  %spec.select = select i1 %switch, i32 0, i32 -524
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge13
  %2 = and i32 %port, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %switch11 = icmp eq i32 %2, 8
  %spec.select12 = select i1 %switch11, i32 -524, i32 0
  br label %return

return:                                           ; preds = %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -524, %entry.return_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select12, %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_regmap_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @felix_port_to_netdev(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @felix_netdev_to_port(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc9953_reset(ptr nocapture noundef readonly %ocelot) #2 align 64 {
entry:
  %val.i124 = alloca i32, align 4
  %val.i117 = alloca i32, align 4
  %val.i111 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 54
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call1 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call1, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 892) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !156
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call.i110128 = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %val.i) #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not129 = icmp eq i32 %6, 0
  br i1 %tobool.not129, label %entry.if.end28_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then20

if.then16:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i111) #9
  %7 = ptrtoint ptr %val.i111 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i111, align 4, !annotation !156
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i113 = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %val.i111) #9
  %10 = ptrtoint ptr %val.i111 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i111, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i111) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp = icmp eq i32 %11, 0
  br i1 %phi.cmp, label %if.then16.if.end28_crit_edge, label %do.end27

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then20:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !156
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call.i110 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %val.i) #9
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then20.if.end28_crit_edge, label %if.then20.land.lhs.true_crit_edge

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end27:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ocelot, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.then16.if.end28_crit_edge, %entry.if.end28_crit_edge
  %arrayidx30 = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 52
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx30, align 4
  %call.i114 = call i32 @regmap_field_update_bits_base(ptr noundef %20, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx33 = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 53
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx33, align 4
  %call.i115 = call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call38 = call i64 @ktime_get() #9
  %add.i116 = add i64 %call38, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 904) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i117) #9
  %23 = ptrtoint ptr %val.i117 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i117, align 4, !annotation !156
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx33, align 4
  %call.i119130 = call i32 @regmap_field_read(ptr noundef %25, ptr noundef nonnull %val.i117) #9
  %26 = ptrtoint ptr %val.i117 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i117) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool54.not131 = icmp eq i32 %27, 0
  br i1 %tobool54.not131, label %if.end28.if.end81_crit_edge, label %if.end28.land.lhs.true58_crit_edge

if.end28.land.lhs.true58_crit_edge:               ; preds = %if.end28
  br label %land.lhs.true58

if.end28.if.end81_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true58:                                  ; preds = %if.then66.land.lhs.true58_crit_edge, %if.end28.land.lhs.true58_crit_edge
  %call59 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call59, i64 %add.i116)
  %cmp3.i121 = icmp sgt i64 %call59, %add.i116
  br i1 %cmp3.i121, label %if.then62, label %if.then66

if.then62:                                        ; preds = %land.lhs.true58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i124) #9
  %28 = ptrtoint ptr %val.i124 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i124, align 4, !annotation !156
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx33, align 4
  %call.i126 = call i32 @regmap_field_read(ptr noundef %30, ptr noundef nonnull %val.i124) #9
  %31 = ptrtoint ptr %val.i124 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i124, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %phi.cmp109 = icmp eq i32 %32, 0
  br i1 %phi.cmp109, label %if.then62.if.end81_crit_edge, label %do.end79

if.then62.if.end81_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then66:                                        ; preds = %land.lhs.true58
  call void @usleep_range_state(i32 noundef 21, i32 noundef 80, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i117) #9
  %33 = ptrtoint ptr %val.i117 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %val.i117, align 4, !annotation !156
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx33, align 4
  %call.i119 = call i32 @regmap_field_read(ptr noundef %35, ptr noundef nonnull %val.i117) #9
  %36 = ptrtoint ptr %val.i117 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i117) #9
  %tobool54.not = icmp eq i32 %37, 0
  br i1 %tobool54.not, label %if.then66.if.end81_crit_edge, label %if.then66.land.lhs.true58_crit_edge

if.then66.land.lhs.true58_crit_edge:              ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true58

if.then66.if.end81_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

do.end79:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ocelot, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end81:                                         ; preds = %if.then66.if.end81_crit_edge, %if.then62.if.end81_crit_edge, %if.end28.if.end81_crit_edge
  %arrayidx83 = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 5, i32 51
  %40 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx83, align 4
  %call.i127 = call i32 @regmap_field_update_bits_base(ptr noundef %41, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.end79, %do.end27
  %retval.0 = phi i32 [ -110, %do.end27 ], [ -110, %do.end79 ], [ 0, %if.end81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vsc9953_wm_enc(i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %value)
  %cmp = icmp ugt i16 %value, 8191
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !157

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 973, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %value)
  %cmp21 = icmp ugt i16 %value, 511
  %0 = lshr i16 %value, 4
  %1 = or i16 %0, 512
  %retval.0 = select i1 %cmp21, i16 %1, i16 %value
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vsc9953_wm_dec(i16 noundef zeroext %wm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wm to i32
  %and = and i32 %conv, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !158

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 983, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and21 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and25 = shl i16 %wm, 4
  %mul = and i16 %and25, 8176
  %retval.0 = select i1 %tobool22.not, i16 %wm, i16 %mul
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @vsc9953_wm_stat(i32 noundef %val, ptr nocapture noundef writeonly %inuse, ptr nocapture noundef writeonly %maxuse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %val, 13
  %shr = and i32 %and, 8191
  %0 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr, ptr %inuse, align 4
  %and1 = and i32 %val, 8191
  %1 = ptrtoint ptr %maxuse to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and1, ptr %maxuse, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mscc_miim_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_device_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_pcs_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lynx_get_mdio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lynx_pcs_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__initcall__kmod_mscc_seville__497_1217_seville_vsc9953_driver_init6, !1, !"__initcall__kmod_mscc_seville__497_1217_seville_vsc9953_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1217, i32 1}
!2 = !{ptr @__exitcall_seville_vsc9953_driver_exit, !1, !"__exitcall_seville_vsc9953_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description498, !4, !"__UNIQUE_ID_description498", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1219, i32 1}
!5 = !{ptr @__UNIQUE_ID_file499, !6, !"__UNIQUE_ID_file499", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1220, i32 1}
!7 = !{ptr @__UNIQUE_ID_license500, !6, !"__UNIQUE_ID_license500", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1213, i32 12}
!10 = !{ptr @seville_vsc9953_driver, !11, !"seville_vsc9953_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1208, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1124, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @seville_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @seville_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1138, i32 3}
!22 = !{ptr @seville_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @seville_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1146, i32 3}
!26 = !{ptr @seville_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @seville_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1159, i32 3}
!30 = !{ptr @seville_probe._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @seville_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @seville_info_vsc9953, !33, !"seville_info_vsc9953", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1090, i32 32}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 376, i32 11}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 381, i32 11}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 386, i32 11}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 391, i32 11}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 396, i32 11}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 401, i32 11}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 406, i32 11}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 411, i32 11}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 416, i32 11}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 421, i32 11}
!54 = !{ptr @vsc9953_target_io_res, !55, !"vsc9953_target_io_res", i1 false, i1 false}
!55 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 372, i32 30}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 429, i32 11}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 434, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 439, i32 11}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 444, i32 11}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 449, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 454, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 459, i32 11}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 464, i32 11}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 469, i32 11}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 474, i32 11}
!76 = !{ptr @vsc9953_port_io_res, !77, !"vsc9953_port_io_res", i1 false, i1 false}
!77 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 425, i32 30}
!78 = !{ptr @vsc9953_regfields, !79, !"vsc9953_regfields", i1 false, i1 false}
!79 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 478, i32 31}
!80 = !{ptr @vsc9953_regmap, !81, !"vsc9953_regmap", i1 false, i1 false}
!81 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 358, i32 19}
!82 = !{ptr @vsc9953_ana_regmap, !83, !"vsc9953_ana_regmap", i1 false, i1 false}
!83 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 22, i32 18}
!84 = !{ptr @vsc9953_qs_regmap, !85, !"vsc9953_qs_regmap", i1 false, i1 false}
!85 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 124, i32 18}
!86 = !{ptr @vsc9953_qsys_regmap, !87, !"vsc9953_qsys_regmap", i1 false, i1 false}
!87 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 162, i32 18}
!88 = !{ptr @vsc9953_rew_regmap, !89, !"vsc9953_rew_regmap", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 236, i32 18}
!90 = !{ptr @vsc9953_sys_regmap, !91, !"vsc9953_sys_regmap", i1 false, i1 false}
!91 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 252, i32 18}
!92 = !{ptr @vsc9953_vcap_regmap, !93, !"vsc9953_vcap_regmap", i1 false, i1 false}
!93 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 139, i32 18}
!94 = !{ptr @vsc9953_gcb_regmap, !95, !"vsc9953_gcb_regmap", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 309, i32 18}
!96 = !{ptr @vsc9953_dev_gmii_regmap, !97, !"vsc9953_dev_gmii_regmap", i1 false, i1 false}
!97 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 316, i32 18}
!98 = !{ptr @vsc9953_ops, !99, !"vsc9953_ops", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 997, i32 32}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 894, i32 3}
!102 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vsc9953_reset._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @vsc9953_reset._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 906, i32 3}
!107 = !{ptr @vsc9953_reset._entry.37, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @vsc9953_reset._entry_ptr.39, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @vsc9953_stats_layout, !110, !"vsc9953_stats_layout", i1 false, i1 false}
!110 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 527, i32 40}
!111 = !{ptr @vsc9953_vcap_props, !112, !"vsc9953_vcap_props", i1 false, i1 false}
!112 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 814, i32 26}
!113 = !{ptr @vsc9953_vcap_es0_keys, !114, !"vsc9953_vcap_es0_keys", i1 false, i1 false}
!114 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 623, i32 32}
!115 = !{ptr @vsc9953_vcap_es0_actions, !116, !"vsc9953_vcap_es0_actions", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 634, i32 32}
!117 = !{ptr @vsc9953_vcap_is1_keys, !118, !"vsc9953_vcap_is1_keys", i1 false, i1 false}
!118 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 655, i32 32}
!119 = !{ptr @vsc9953_vcap_is1_actions, !120, !"vsc9953_vcap_is1_actions", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 706, i32 32}
!121 = !{ptr @vsc9953_vcap_is2_keys, !122, !"vsc9953_vcap_is2_keys", i1 false, i1 false}
!122 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 729, i32 26}
!123 = !{ptr @vsc9953_vcap_is2_actions, !124, !"vsc9953_vcap_is2_actions", i1 false, i1 false}
!124 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 799, i32 26}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1018, i32 3}
!127 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @vsc9953_mdio_bus_alloc._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @vsc9953_mdio_bus_alloc._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1022, i32 34}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1027, i32 3}
!134 = !{ptr @vsc9953_mdio_bus_alloc._entry.43, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @vsc9953_mdio_bus_alloc._entry_ptr.45, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1034, i32 3}
!138 = !{ptr @vsc9953_mdio_bus_alloc._entry.46, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @vsc9953_mdio_bus_alloc._entry_ptr.48, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1064, i32 3}
!142 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @vsc9953_mdio_bus_alloc._entry.49, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @vsc9953_mdio_bus_alloc._entry_ptr.52, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @seville_of_match, !146, !"seville_of_match", i1 false, i1 false}
!146 = !{!"../drivers/net/dsa/ocelot/seville_vsc9953.c", i32 1202, i32 34}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{!"branch_weights", i32 2000, i32 1}
