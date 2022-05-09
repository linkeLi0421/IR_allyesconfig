; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/lantiq_gswip.c_pt.bc'
source_filename = "../drivers/net/dsa/lantiq_gswip.c"
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
%struct.xway_gphy_match_data = type { ptr, ptr }
%struct.gswip_hw_info = type { i32, i32, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gswip_pce_microcode = type { i16, i16, i16, i16 }
%struct.gswip_rmon_cnt_desc = type { i32, i32, ptr }
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
%struct.gswip_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.gswip_vlan], i32, ptr, i32, %struct.mutex }
%struct.gswip_vlan = type { ptr, i16, i8 }
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
%struct.gswip_gphy_fw = type { ptr, ptr, i32, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.firmware = type { i32, ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.gswip_pce_table_entry = type { i16, i16, [8 x i16], [5 x i16], i16, i8, i8, i8, i8 }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@__initcall__kmod_lantiq_gswip__497_2233_gswip_driver_init6 = internal global ptr @gswip_driver_init, section ".initcall6.init", align 4
@gswip_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gswip_probe, ptr @gswip_remove, ptr @gswip_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gswip_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gswip_driver_exit = internal global ptr @gswip_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_firmware498 = internal constant [51 x i8] c"lantiq_gswip.firmware=lantiq/xrx300_phy11g_a21.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware499 = internal constant [51 x i8] c"lantiq_gswip.firmware=lantiq/xrx300_phy22f_a21.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware500 = internal constant [51 x i8] c"lantiq_gswip.firmware=lantiq/xrx200_phy11g_a14.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware501 = internal constant [51 x i8] c"lantiq_gswip.firmware=lantiq/xrx200_phy11g_a22.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware502 = internal constant [51 x i8] c"lantiq_gswip.firmware=lantiq/xrx200_phy22f_a14.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware503 = internal constant [51 x i8] c"lantiq_gswip.firmware=lantiq/xrx200_phy22f_a22.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_author504 = internal constant [54 x i8] c"lantiq_gswip.author=Hauke Mehrtens <hauke@hauke-m.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description505 = internal constant [53 x i8] c"lantiq_gswip.description=Lantiq / Intel GSWIP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file506 = internal constant [47 x i8] c"lantiq_gswip.file=drivers/net/dsa/lantiq_gswip\00", section ".modinfo", align 1
@__UNIQUE_ID_license507 = internal constant [28 x i8] c"lantiq_gswip.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gswip\00", [26 x i8] zeroinitializer }, align 32
@gswip_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200-gswip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gswip_xrx200 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx300-gswip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gswip_xrx300 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx330-gswip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gswip_xrx300 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@gswip_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&priv->pce_table_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lantiq,xrx200-gswip\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lantiq,xrx300-gswip\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lantiq,xrx330-gswip\00", [44 x i8] zeroinitializer }, align 32
@gswip_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2105, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown GSWIP version: 0x%x\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gswip_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/dsa/lantiq_gswip.c\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gswip_probe._entry_ptr = internal global ptr @gswip_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lantiq,gphy-fw\00", [17 x i8] zeroinitializer }, align 32
@gswip_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 2115, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gphy fw probe failed\0A\00", [42 x i8] zeroinitializer }, align 32
@gswip_probe._entry_ptr.13 = internal global ptr @gswip_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lantiq,xrx200-mdio\00", [45 x i8] zeroinitializer }, align 32
@gswip_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 2125, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mdio probe failed\0A\00", [45 x i8] zeroinitializer }, align 32
@gswip_probe._entry_ptr.17 = internal global ptr @gswip_probe._entry.15, section ".printk_index", align 4
@gswip_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 2132, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dsa switch register failed: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@gswip_probe._entry_ptr.20 = internal global ptr @gswip_probe._entry.18, section ".printk_index", align 4
@gswip_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 2137, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"wrong CPU port defined, HW only supports port: %i\00", [46 x i8] zeroinitializer }, align 32
@gswip_probe._entry_ptr.23 = internal global ptr @gswip_probe._entry.21, section ".printk_index", align 4
@gswip_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 2146, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"probed GSWIP version %lx mod %lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gswip_probe._entry_ptr.27 = internal global ptr @gswip_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lantiq,xrx200-gphy-fw\00", [42 x i8] zeroinitializer }, align 32
@xrx200a1x_gphy_data = internal constant { %struct.xway_gphy_match_data, [24 x i8] } { %struct.xway_gphy_match_data { ptr @.str.34, ptr @.str.35 }, [24 x i8] zeroinitializer }, align 32
@xrx200a2x_gphy_data = internal constant { %struct.xway_gphy_match_data, [24 x i8] } { %struct.xway_gphy_match_data { ptr @.str.36, ptr @.str.37 }, [24 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.29, ptr @.str.7, i32 1995, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gswip_gphy_fw_list\00", [45 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_list._entry_ptr = internal global ptr @gswip_gphy_fw_list._entry, section ".printk_index", align 4
@xway_gphy_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200-gphy-fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200a1x-gphy-fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xrx200a1x_gphy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx200a2x-gphy-fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xrx200a2x_gphy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx300-gphy-fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xrx300_gphy_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,xrx330-gphy-fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xrx300_gphy_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_list._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 2005, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"GPHY compatible type not supported\00", [61 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_list._entry_ptr.32 = internal global ptr @gswip_gphy_fw_list._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lantiq,rcu\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lantiq/xrx200_phy22f_a14.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lantiq/xrx200_phy11g_a14.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lantiq/xrx200_phy22f_a22.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lantiq/xrx200_phy11g_a22.bin\00", [35 x i8] zeroinitializer }, align 32
@xrx300_gphy_data = internal constant { %struct.xway_gphy_match_data, [24 x i8] } { %struct.xway_gphy_match_data { ptr @.str.38, ptr @.str.39 }, [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lantiq/xrx300_phy22f_a21.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lantiq/xrx300_phy11g_a21.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gphy%d\00", [25 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 1920, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup gate clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gswip_gphy_fw_probe\00", [44 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_probe._entry_ptr = internal global ptr @gswip_gphy_fw_probe._entry, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lantiq,gphy-mode\00", [47 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.7, i32 1941, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown GPHY mode %d\0A\00", [42 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_probe._entry_ptr.47 = internal global ptr @gswip_gphy_fw_probe._entry.45, section ".printk_index", align 4
@gswip_gphy_fw_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.7, i32 1948, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup gphy reset\0A\00", [35 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_probe._entry_ptr.50 = internal global ptr @gswip_gphy_fw_probe._entry.48, section ".printk_index", align 4
@gswip_gphy_fw_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.7, i32 1876, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to load firmware: %s, error: %i\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gswip_gphy_fw_load\00", [45 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_load._entry_ptr = internal global ptr @gswip_gphy_fw_load._entry, section ".printk_index", align 4
@gswip_gphy_fw_load._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.7, i32 1891, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to alloc firmware memory\0A\00", [63 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_load._entry_ptr.55 = internal global ptr @gswip_gphy_fw_load._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-mii\00", [25 x i8] zeroinitializer }, align 32
@gswip_mdio_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.7, i32 480, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"waiting for MDIO bus busy timed out\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gswip_mdio_rd\00", [18 x i8] zeroinitializer }, align 32
@gswip_mdio_rd._entry_ptr = internal global ptr @gswip_mdio_rd._entry, section ".printk_index", align 4
@gswip_mdio_rd._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.7, i32 491, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_mdio_rd._entry_ptr.60 = internal global ptr @gswip_mdio_rd._entry.59, section ".printk_index", align 4
@gswip_mdio_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.61, ptr @.str.7, i32 460, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gswip_mdio_wr\00", [18 x i8] zeroinitializer }, align 32
@gswip_mdio_wr._entry_ptr = internal global ptr @gswip_mdio_wr._entry, section ".printk_index", align 4
@gswip_gphy_fw_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.7, i32 1966, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can not reset GPHY FW pointer\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gswip_gphy_fw_remove\00", [43 x i8] zeroinitializer }, align 32
@gswip_gphy_fw_remove._entry_ptr = internal global ptr @gswip_gphy_fw_remove._entry, section ".printk_index", align 4
@gswip_xrx200 = internal constant { %struct.gswip_hw_info, [20 x i8] } { %struct.gswip_hw_info { i32 7, i32 6, ptr @gswip_xrx200_switch_ops }, [20 x i8] zeroinitializer }, align 32
@gswip_xrx300 = internal constant { %struct.gswip_hw_info, [20 x i8] } { %struct.gswip_hw_info { i32 7, i32 6, ptr @gswip_xrx300_switch_ops }, [20 x i8] zeroinitializer }, align 32
@gswip_xrx200_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @gswip_get_tag_protocol, ptr null, ptr null, ptr @gswip_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gswip_xrx200_phylink_get_caps, ptr null, ptr null, ptr @gswip_phylink_mac_config, ptr null, ptr @gswip_phylink_mac_link_down, ptr @gswip_phylink_mac_link_up, ptr null, ptr @gswip_get_strings, ptr @gswip_get_ethtool_stats, ptr @gswip_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gswip_port_enable, ptr @gswip_port_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gswip_port_bridge_join, ptr @gswip_port_bridge_leave, ptr @gswip_port_stp_state_set, ptr @gswip_port_fast_age, ptr null, ptr null, ptr @gswip_port_vlan_filtering, ptr @gswip_port_vlan_add, ptr @gswip_port_vlan_del, ptr @gswip_port_fdb_add, ptr @gswip_port_fdb_del, ptr @gswip_port_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@gswip_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.7, i32 822, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"writing PCE microcode failed, %i\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gswip_setup\00", [20 x i8] zeroinitializer }, align 32
@gswip_setup._entry_ptr = internal global ptr @gswip_setup._entry, section ".printk_index", align 4
@gswip_setup._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.7, i32 882, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MAC flushing didn't finish\0A\00", [36 x i8] zeroinitializer }, align 32
@gswip_setup._entry_ptr.68 = internal global ptr @gswip_setup._entry.66, section ".printk_index", align 4
@gswip_pce_microcode = internal constant { [64 x %struct.gswip_pce_microcode], [128 x i8] } { [64 x %struct.gswip_pce_microcode] [%struct.gswip_pce_microcode { i16 -30525, i16 -1, i16 1170, i16 0 }, %struct.gswip_pce_microcode { i16 -32512, i16 -1, i16 2161, i16 512 }, %struct.gswip_pce_microcode { i16 -30552, i16 -1, i16 1137, i16 512 }, %struct.gswip_pce_microcode { i16 -32512, i16 -1, i16 1137, i16 512 }, %struct.gswip_pce_microcode { i16 -30620, i16 -1, i16 17504, i16 -26112 }, %struct.gswip_pce_microcode { i16 2048, i16 -1, i16 21600, i16 -26112 }, %struct.gswip_pce_microcode { i16 -31011, i16 -1, i16 22624, i16 -26112 }, %struct.gswip_pce_microcode { i16 -30621, i16 -1, i16 16480, i16 -26112 }, %struct.gswip_pce_microcode { i16 0, i16 -2048, i16 11248, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -24480, i16 -26112 }, %struct.gswip_pce_microcode { i16 1536, i16 1536, i16 -24480, i16 -26112 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 13296, i16 -26112 }, %struct.gswip_pce_microcode { i16 -21846, i16 -1, i16 15344, i16 -26112 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6656 }, %struct.gswip_pce_microcode { i16 768, i16 -256, i16 -22544, i16 1024 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -23039, i16 -26112 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 18945, i16 -31232 }, %struct.gswip_pce_microcode { i16 33, i16 -1, i16 22512, i16 -26112 }, %struct.gswip_pce_microcode { i16 87, i16 -1, i16 23536, i16 -26112 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -23568, i16 6656 }, %struct.gswip_pce_microcode { i16 16384, i16 -4096, i16 24786, i16 3328 }, %struct.gswip_pce_microcode { i16 24576, i16 -4096, i16 27857, i16 -30720 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 25857, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 26898, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -23568, i16 23040 }, %struct.gswip_pce_microcode { i16 4352, i16 -256, i16 -25056, i16 -26112 }, %struct.gswip_pce_microcode { i16 1536, i16 -256, i16 -25056, i16 -26112 }, %struct.gswip_pce_microcode { i16 0, i16 -256, i16 -31480, i16 -28160 }, %struct.gswip_pce_microcode { i16 11008, i16 -256, i16 -31480, i16 -27648 }, %struct.gswip_pce_microcode { i16 15360, i16 -256, i16 -31480, i16 -27136 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -25056, i16 -26112 }, %struct.gswip_pce_microcode { i16 0, i16 224, i16 -28688, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -23568, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 -256, i16 -30736, i16 12800 }, %struct.gswip_pce_microcode { i16 11008, i16 -256, i16 -30736, i16 13312 }, %struct.gswip_pce_microcode { i16 15360, i16 -256, i16 -30736, i16 13824 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -24032, i16 -17920 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -24296, i16 6656 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22990, i16 3584 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }, %struct.gswip_pce_microcode { i16 0, i16 0, i16 -22544, i16 6144 }], [128 x i8] zeroinitializer }, align 32
@gswip_phylink_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.7, i32 1655, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported interface: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gswip_phylink_mac_config\00", [39 x i8] zeroinitializer }, align 32
@gswip_phylink_mac_config._entry_ptr = internal global ptr @gswip_phylink_mac_config._entry, section ".printk_index", align 4
@gswip_rmon_cnt = internal constant { [37 x %struct.gswip_rmon_cnt_desc], [100 x i8] } { [37 x %struct.gswip_rmon_cnt_desc] [%struct.gswip_rmon_cnt_desc { i32 1, i32 31, ptr @.str.71 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 35, ptr @.str.72 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 34, ptr @.str.73 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 33, ptr @.str.74 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 29, ptr @.str.75 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 30, ptr @.str.76 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 27, ptr @.str.77 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 28, ptr @.str.78 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 32, ptr @.str.79 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 26, ptr @.str.80 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 18, ptr @.str.81 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 19, ptr @.str.82 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 20, ptr @.str.83 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 21, ptr @.str.84 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 22, ptr @.str.85 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 23, ptr @.str.86 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 24, ptr @.str.87 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 25, ptr @.str.88 }, %struct.gswip_rmon_cnt_desc { i32 2, i32 36, ptr @.str.89 }, %struct.gswip_rmon_cnt_desc { i32 2, i32 38, ptr @.str.90 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 17, ptr @.str.91 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 12, ptr @.str.92 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 6, ptr @.str.93 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 7, ptr @.str.94 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 0, ptr @.str.95 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 1, ptr @.str.96 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 2, ptr @.str.97 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 3, ptr @.str.98 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 4, ptr @.str.99 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 5, ptr @.str.100 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 8, ptr @.str.101 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 9, ptr @.str.102 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 10, ptr @.str.103 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 11, ptr @.str.104 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 13, ptr @.str.105 }, %struct.gswip_rmon_cnt_desc { i32 1, i32 16, ptr @.str.106 }, %struct.gswip_rmon_cnt_desc { i32 2, i32 14, ptr @.str.107 }], [100 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxGoodPkts\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxUnicastPkts\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxMulticastPkts\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RxFCSErrorPkts\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxUnderSizeGoodPkts\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RxUnderSizeErrorPkts\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RxOversizeGoodPkts\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxOversizeErrorPkts\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxGoodPausePkts\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RxAlignErrorPkts\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Rx64BytePkts\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx127BytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx255BytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx511BytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Rx1023BytePkts\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxMaxBytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxDroppedPkts\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RxFilteredPkts\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxGoodBytes\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxBadBytes\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxAcmDroppedPkts\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxGoodPkts\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TxUnicastPkts\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxMulticastPkts\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tx64BytePkts\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tx127BytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tx255BytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tx511BytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx1023BytePkts\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TxMaxBytePkts\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TxSingleCollCount\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxMultCollCount\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxLateCollCount\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TxExcessCollCount\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TxPauseCount\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TxDroppedPkts\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxGoodBytes\00", [20 x i8] zeroinitializer }, align 32
@gswip_bcm_ram_entry_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.7, i32 1740, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timeout while reading table: %u, index: %u\00", [53 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gswip_bcm_ram_entry_read\00", [39 x i8] zeroinitializer }, align 32
@gswip_bcm_ram_entry_read._entry_ptr = internal global ptr @gswip_bcm_ram_entry_read._entry, section ".printk_index", align 4
@gswip_add_single_port_br._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.7, i32 643, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"single port for %i supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gswip_add_single_port_br\00", [39 x i8] zeroinitializer }, align 32
@gswip_add_single_port_br._entry_ptr = internal global ptr @gswip_add_single_port_br._entry, section ".printk_index", align 4
@gswip_add_single_port_br._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.7, i32 654, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write active VLAN: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@gswip_add_single_port_br._entry_ptr.114 = internal global ptr @gswip_add_single_port_br._entry.112, section ".printk_index", align 4
@gswip_add_single_port_br._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.7, i32 668, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to write VLAN mapping: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gswip_add_single_port_br._entry_ptr.117 = internal global ptr @gswip_add_single_port_br._entry.115, section ".printk_index", align 4
@gswip_vlan_add_unaware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.7, i32 998, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read VLAN mapping: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gswip_vlan_add_unaware\00", [41 x i8] zeroinitializer }, align 32
@gswip_vlan_add_unaware._entry_ptr = internal global ptr @gswip_vlan_add_unaware._entry, section ".printk_index", align 4
@gswip_vlan_add_unaware._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.119, ptr @.str.7, i32 1008, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_vlan_add_unaware._entry_ptr.121 = internal global ptr @gswip_vlan_add_unaware._entry.120, section ".printk_index", align 4
@gswip_vlan_active_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.122, ptr @.str.7, i32 932, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gswip_vlan_active_create\00", [39 x i8] zeroinitializer }, align 32
@gswip_vlan_active_create._entry_ptr = internal global ptr @gswip_vlan_active_create._entry, section ".printk_index", align 4
@gswip_vlan_active_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.7, i32 953, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to delete active VLAN: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gswip_vlan_active_remove\00", [39 x i8] zeroinitializer }, align 32
@gswip_vlan_active_remove._entry_ptr = internal global ptr @gswip_vlan_active_remove._entry, section ".printk_index", align 4
@gswip_vlan_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.7, i32 1116, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bridge to leave does not exists\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gswip_vlan_remove\00", [46 x i8] zeroinitializer }, align 32
@gswip_vlan_remove._entry_ptr = internal global ptr @gswip_vlan_remove._entry, section ".printk_index", align 4
@gswip_vlan_remove._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.126, ptr @.str.7, i32 1124, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_vlan_remove._entry_ptr.128 = internal global ptr @gswip_vlan_remove._entry.127, section ".printk_index", align 4
@gswip_vlan_remove._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.126, ptr @.str.7, i32 1132, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_vlan_remove._entry_ptr.130 = internal global ptr @gswip_vlan_remove._entry.129, section ".printk_index", align 4
@gswip_vlan_remove._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.126, ptr @.str.7, i32 1141, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_vlan_remove._entry_ptr.132 = internal global ptr @gswip_vlan_remove._entry.131, section ".printk_index", align 4
@gswip_port_stp_state_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.7, i32 1338, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid STP state: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gswip_port_stp_state_set\00", [39 x i8] zeroinitializer }, align 32
@gswip_port_stp_state_set._entry_ptr = internal global ptr @gswip_port_stp_state_set._entry, section ".printk_index", align 4
@gswip_port_fast_age._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.7, i32 1294, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read mac bridge: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gswip_port_fast_age\00", [44 x i8] zeroinitializer }, align 32
@gswip_port_fast_age._entry_ptr = internal global ptr @gswip_port_fast_age._entry, section ".printk_index", align 4
@gswip_port_fast_age._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.7, i32 1311, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to write mac bridge: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@gswip_port_fast_age._entry_ptr.139 = internal global ptr @gswip_port_fast_age._entry.137, section ".printk_index", align 4
@gswip_port_vlan_filtering.__msg = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"lantiq_gswip: Dynamic toggling of vlan_filtering not supported\00", [33 x i8] zeroinitializer }, align 32
@gswip_port_vlan_prepare.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lantiq_gswip: No slot in VLAN table\00", [60 x i8] zeroinitializer }, align 32
@gswip_vlan_add_aware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.7, i32 1037, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"one bridge with multiple flow ids\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gswip_vlan_add_aware\00", [43 x i8] zeroinitializer }, align 32
@gswip_vlan_add_aware._entry_ptr = internal global ptr @gswip_vlan_add_aware._entry, section ".printk_index", align 4
@gswip_vlan_add_aware._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.141, ptr @.str.7, i32 1066, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_vlan_add_aware._entry_ptr.143 = internal global ptr @gswip_vlan_add_aware._entry.142, section ".printk_index", align 4
@gswip_vlan_add_aware._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.141, ptr @.str.7, i32 1082, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_vlan_add_aware._entry_ptr.145 = internal global ptr @gswip_vlan_add_aware._entry.144, section ".printk_index", align 4
@gswip_port_fdb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.7, i32 1370, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Port not part of a bridge\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gswip_port_fdb\00", [17 x i8] zeroinitializer }, align 32
@gswip_port_fdb._entry_ptr = internal global ptr @gswip_port_fdb._entry, section ".printk_index", align 4
@gswip_port_fdb._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.147, ptr @.str.7, i32 1386, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@gswip_port_fdb._entry_ptr.149 = internal global ptr @gswip_port_fdb._entry.148, section ".printk_index", align 4
@gswip_port_fdb_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.150, ptr @.str.7, i32 1419, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gswip_port_fdb_dump\00", [44 x i8] zeroinitializer }, align 32
@gswip_port_fdb_dump._entry_ptr = internal global ptr @gswip_port_fdb_dump._entry, section ".printk_index", align 4
@gswip_xrx300_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @gswip_get_tag_protocol, ptr null, ptr null, ptr @gswip_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gswip_xrx300_phylink_get_caps, ptr null, ptr null, ptr @gswip_phylink_mac_config, ptr null, ptr @gswip_phylink_mac_link_down, ptr @gswip_phylink_mac_link_up, ptr null, ptr @gswip_get_strings, ptr @gswip_get_ethtool_stats, ptr @gswip_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gswip_port_enable, ptr @gswip_port_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gswip_port_bridge_join, ptr @gswip_port_bridge_leave, ptr @gswip_port_stp_state_set, ptr @gswip_port_fast_age, ptr null, ptr null, ptr @gswip_port_vlan_filtering, ptr @gswip_port_vlan_add, ptr @gswip_port_vlan_del, ptr @gswip_port_fdb_add, ptr @gswip_port_fdb_del, ptr @gswip_port_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@switch.table.gswip_xrx200_phylink_get_caps = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 7876, i32 7876, i32 2, i32 2, i32 2, i32 7682], [40 x i8] zeroinitializer }, align 32
@switch.table.gswip_phylink_mac_config = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 4097, i32 4097, i32 4105, i32 4097, i32 4097, i32 4096, i32 4227, i32 4097, i32 4100, i32 4100, i32 4100, i32 4100], [48 x i8] zeroinitializer }, align 32
@switch.table.gswip_xrx300_phylink_get_caps = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 7816, i32 2, i32 2, i32 2, i32 2, i32 7810], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 33, i64 34, i64 256, i64 290]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 33, i64 256]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.158 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"gswip_driver\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2223, i32 31 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2228, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"gswip_of_match\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2215, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2088, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2095, i32 36 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2100, i32 36 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2101, i32 36 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2105, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2110, i32 53 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2115, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2121, i32 50 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2125, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2132, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2136, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2144, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1986, i32 47 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"xrx200a1x_gphy_data\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1827, i32 42 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"xrx200a2x_gphy_data\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1832, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1995, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant [16 x i8] c"xway_gphy_match\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1842, i32 34 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2005, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2014, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1828, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1829, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1833, i32 22 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1834, i32 22 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"xrx300_gphy_data\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1837, i32 42 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1838, i32 22 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1839, i32 22 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1916, i32 39 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1920, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1924, i32 41 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1928, i32 41 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1941, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1948, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1875, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1891, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 511, i32 51 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 480, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 491, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 460, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1966, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [13 x i8] c"gswip_xrx200\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2203, i32 35 }
@___asan_gen_.366 = private unnamed_addr constant [13 x i8] c"gswip_xrx300\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 2209, i32 35 }
@___asan_gen_.369 = private unnamed_addr constant [24 x i8] c"gswip_xrx200_switch_ops\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1779, i32 36 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 822, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 882, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c"gswip_pce_microcode\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [32 x i8] c"../drivers/net/dsa/lantiq_pce.h\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 87, i32 41 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1654, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [15 x i8] c"gswip_rmon_cnt\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 302, i32 41 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 304, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 305, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 306, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 307, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 308, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 309, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 310, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 311, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 312, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 313, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 314, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 315, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 316, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 317, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 318, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 320, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 321, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 322, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 323, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 324, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 325, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 326, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 327, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 328, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 329, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 330, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 331, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 332, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 333, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 335, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 336, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 337, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 338, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 339, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 340, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 341, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 342, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1739, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 643, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 654, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 668, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 997, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1008, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 932, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 953, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1116, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1124, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1132, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1140, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1338, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1293, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1310, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 772, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1228, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1037, i32 5 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1065, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1082, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1370, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1386, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1418, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant [24 x i8] c"gswip_xrx300_switch_ops\00", align 1
@___asan_gen_.652 = private constant [34 x i8] c"../drivers/net/dsa/lantiq_gswip.c\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.652, i32 1803, i32 36 }
@___asan_gen_.654 = private unnamed_addr constant [43 x i8] c"switch.table.gswip_xrx200_phylink_get_caps\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [38 x i8] c"switch.table.gswip_phylink_mac_config\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [43 x i8] c"switch.table.gswip_xrx300_phylink_get_caps\00", align 1
@llvm.compiler.used = appending global [222 x ptr] [ptr @__UNIQUE_ID_author504, ptr @__UNIQUE_ID_description505, ptr @__UNIQUE_ID_file506, ptr @__UNIQUE_ID_firmware498, ptr @__UNIQUE_ID_firmware499, ptr @__UNIQUE_ID_firmware500, ptr @__UNIQUE_ID_firmware501, ptr @__UNIQUE_ID_firmware502, ptr @__UNIQUE_ID_firmware503, ptr @__UNIQUE_ID_license507, ptr @__exitcall_gswip_driver_exit, ptr @__initcall__kmod_lantiq_gswip__497_2233_gswip_driver_init6, ptr @gswip_add_single_port_br._entry, ptr @gswip_add_single_port_br._entry.112, ptr @gswip_add_single_port_br._entry.115, ptr @gswip_add_single_port_br._entry_ptr, ptr @gswip_add_single_port_br._entry_ptr.114, ptr @gswip_add_single_port_br._entry_ptr.117, ptr @gswip_bcm_ram_entry_read._entry, ptr @gswip_bcm_ram_entry_read._entry_ptr, ptr @gswip_driver_exit, ptr @gswip_gphy_fw_list._entry, ptr @gswip_gphy_fw_list._entry.30, ptr @gswip_gphy_fw_list._entry_ptr, ptr @gswip_gphy_fw_list._entry_ptr.32, ptr @gswip_gphy_fw_load._entry, ptr @gswip_gphy_fw_load._entry.53, ptr @gswip_gphy_fw_load._entry_ptr, ptr @gswip_gphy_fw_load._entry_ptr.55, ptr @gswip_gphy_fw_probe._entry, ptr @gswip_gphy_fw_probe._entry.45, ptr @gswip_gphy_fw_probe._entry.48, ptr @gswip_gphy_fw_probe._entry_ptr, ptr @gswip_gphy_fw_probe._entry_ptr.47, ptr @gswip_gphy_fw_probe._entry_ptr.50, ptr @gswip_gphy_fw_remove._entry, ptr @gswip_gphy_fw_remove._entry_ptr, ptr @gswip_mdio_rd._entry, ptr @gswip_mdio_rd._entry.59, ptr @gswip_mdio_rd._entry_ptr, ptr @gswip_mdio_rd._entry_ptr.60, ptr @gswip_mdio_wr._entry, ptr @gswip_mdio_wr._entry_ptr, ptr @gswip_phylink_mac_config._entry, ptr @gswip_phylink_mac_config._entry_ptr, ptr @gswip_port_fast_age._entry, ptr @gswip_port_fast_age._entry.137, ptr @gswip_port_fast_age._entry_ptr, ptr @gswip_port_fast_age._entry_ptr.139, ptr @gswip_port_fdb._entry, ptr @gswip_port_fdb._entry.148, ptr @gswip_port_fdb._entry_ptr, ptr @gswip_port_fdb._entry_ptr.149, ptr @gswip_port_fdb_dump._entry, ptr @gswip_port_fdb_dump._entry_ptr, ptr @gswip_port_stp_state_set._entry, ptr @gswip_port_stp_state_set._entry_ptr, ptr @gswip_probe._entry, ptr @gswip_probe._entry.11, ptr @gswip_probe._entry.15, ptr @gswip_probe._entry.18, ptr @gswip_probe._entry.21, ptr @gswip_probe._entry.24, ptr @gswip_probe._entry_ptr, ptr @gswip_probe._entry_ptr.13, ptr @gswip_probe._entry_ptr.17, ptr @gswip_probe._entry_ptr.20, ptr @gswip_probe._entry_ptr.23, ptr @gswip_probe._entry_ptr.27, ptr @gswip_setup._entry, ptr @gswip_setup._entry.66, ptr @gswip_setup._entry_ptr, ptr @gswip_setup._entry_ptr.68, ptr @gswip_vlan_active_create._entry, ptr @gswip_vlan_active_create._entry_ptr, ptr @gswip_vlan_active_remove._entry, ptr @gswip_vlan_active_remove._entry_ptr, ptr @gswip_vlan_add_aware._entry, ptr @gswip_vlan_add_aware._entry.142, ptr @gswip_vlan_add_aware._entry.144, ptr @gswip_vlan_add_aware._entry_ptr, ptr @gswip_vlan_add_aware._entry_ptr.143, ptr @gswip_vlan_add_aware._entry_ptr.145, ptr @gswip_vlan_add_unaware._entry, ptr @gswip_vlan_add_unaware._entry.120, ptr @gswip_vlan_add_unaware._entry_ptr, ptr @gswip_vlan_add_unaware._entry_ptr.121, ptr @gswip_vlan_remove._entry, ptr @gswip_vlan_remove._entry.127, ptr @gswip_vlan_remove._entry.129, ptr @gswip_vlan_remove._entry.131, ptr @gswip_vlan_remove._entry_ptr, ptr @gswip_vlan_remove._entry_ptr.128, ptr @gswip_vlan_remove._entry_ptr.130, ptr @gswip_vlan_remove._entry_ptr.132, ptr @gswip_driver, ptr @.str, ptr @gswip_of_match, ptr @gswip_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @xrx200a1x_gphy_data, ptr @xrx200a2x_gphy_data, ptr @.str.29, ptr @xway_gphy_match, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @xrx300_gphy_data, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @gswip_xrx200, ptr @gswip_xrx300, ptr @gswip_xrx200_switch_ops, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @gswip_pce_microcode, ptr @.str.69, ptr @.str.70, ptr @gswip_rmon_cnt, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @gswip_port_vlan_filtering.__msg, ptr @gswip_port_vlan_prepare.__msg, ptr @.str.140, ptr @.str.141, ptr @.str.146, ptr @.str.147, ptr @.str.150, ptr @gswip_xrx300_switch_ops, ptr @switch.table.gswip_xrx200_phylink_get_caps, ptr @switch.table.gswip_phylink_mac_config, ptr @switch.table.gswip_xrx300_phylink_get_caps], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrx200a1x_gphy_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrx200a2x_gphy_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_gphy_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_list._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrx300_gphy_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_load._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_mdio_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_mdio_rd._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_mdio_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_gphy_fw_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_xrx200 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_xrx300 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_xrx200_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_setup._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_pce_microcode to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_phylink_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_rmon_cnt to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_bcm_ram_entry_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_add_single_port_br._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_add_single_port_br._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_add_single_port_br._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_add_unaware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_add_unaware._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_active_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_active_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_remove._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_remove._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_remove._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_stp_state_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_fast_age._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_fast_age._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_vlan_filtering.__msg to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_vlan_prepare.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_add_aware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_add_aware._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_vlan_add_aware._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_fdb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_fdb._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_port_fdb_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gswip_xrx300_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gswip_xrx200_phylink_get_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gswip_phylink_mac_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gswip_xrx300_phylink_get_caps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gswip_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gswip_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @gswip_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #11
  %mdio = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %mdio, align 4
  %cmp.i191 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #11
  %mii = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %mii, align 4
  %cmp.i192 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %hw_info = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %hw_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %hw_info, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call.i193 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #11
  %ds = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i193, ptr %ds, align 4
  %tobool30.not = icmp eq ptr %call.i193, null
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %8 = ptrtoint ptr %call.i193 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %call.i193, align 4
  %9 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_info, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %call.i193, i32 0, i32 18
  %13 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %num_ports, align 4
  %priv38 = getelementptr inbounds %struct.dsa_switch, ptr %call.i193, i32 0, i32 5
  %14 = ptrtoint ptr %priv38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv38, align 4
  %ops = getelementptr inbounds %struct.gswip_hw_info, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %ops41 = getelementptr inbounds %struct.dsa_switch, ptr %call.i193, i32 0, i32 8
  %17 = ptrtoint ptr %ops41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ops41, align 4
  %dev42 = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %dev42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %dev42, align 4
  %pce_table_lock = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %pce_table_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gswip_probe.__key) #11
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 76
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !348
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %24 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end57 [
    i32 256, label %if.end32.sw.bb_crit_edge
    i32 33, label %if.end32.sw.bb_crit_edge205
    i32 290, label %if.end32.sw.bb48_crit_edge
    i32 34, label %if.end32.sw.bb48_crit_edge206
  ]

if.end32.sw.bb48_crit_edge206:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end32.sw.bb48_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

if.end32.sw.bb_crit_edge205:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge205
  %call44 = tail call i32 @of_device_is_compatible(ptr noundef %23, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb48:                                          ; preds = %if.end32.sw.bb48_crit_edge, %if.end32.sw.bb48_crit_edge206
  %call49 = tail call i32 @of_device_is_compatible(ptr noundef %23, ptr noundef nonnull @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true, label %sw.bb48.sw.epilog_crit_edge

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb48
  %call51 = tail call i32 @of_device_is_compatible(ptr noundef %23, ptr noundef nonnull @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end57:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %21) #14
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true.sw.epilog_crit_edge, %sw.bb48.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call59 = tail call ptr @of_get_compatible_child(ptr noundef %26, ptr noundef nonnull @.str.10) #11
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %sw.epilog.if.end69_crit_edge, label %if.then61

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then61:                                        ; preds = %sw.epilog
  %call62 = tail call fastcc i32 @gswip_gphy_fw_list(ptr noundef nonnull %call.i, ptr noundef nonnull %call59, i32 noundef %21)
  tail call void @of_node_put(ptr noundef nonnull %call59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then61.if.end69_crit_edge, label %do.end67

if.then61.if.end69_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end67:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #14
  br label %cleanup

if.end69:                                         ; preds = %if.then61.if.end69_crit_edge, %sw.epilog.if.end69_crit_edge
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call71 = tail call ptr @of_get_compatible_child(ptr noundef %28, ptr noundef nonnull @.str.14) #11
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.end69.if.end81_crit_edge, label %if.then73

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then73:                                        ; preds = %if.end69
  %call74 = tail call fastcc i32 @gswip_mdio(ptr noundef nonnull %call.i, ptr noundef nonnull %call71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end81_crit_edge, label %do.end79

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.end79:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #14
  br label %put_mdio_node

if.end81:                                         ; preds = %if.then73.if.end81_crit_edge, %if.end69.if.end81_crit_edge
  %29 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds, align 4
  %call83 = tail call i32 @dsa_register_switch(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end89, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call83) #14
  br label %mdio_bus

if.end89:                                         ; preds = %if.end81
  %31 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ds, align 4
  %33 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_info, align 4
  %cpu_port = getelementptr inbounds %struct.gswip_hw_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %cpu_port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu_port, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.end89.dsa_is_cpu_port.exit_crit_edge, label %if.end89.for.body.i.i_crit_edge

if.end89.for.body.i.i_crit_edge:                  ; preds = %if.end89
  br label %for.body.i.i

if.end89.dsa_is_cpu_port.exit_crit_edge:          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end89.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end89.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %40 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %41, %32
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %42 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %36)
  %cmp5.i.i = icmp eq i32 %43, %36
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %44 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %if.end89.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.end89.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i194 = icmp eq i32 %46, 1
  br i1 %cmp.i194, label %if.end99, label %do.end96

do.end96:                                         ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %36) #14
  %47 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdio, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !348
  %and.i = and i32 %49, -32769
  %50 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %and.i) #11, !srcloc !349
  %52 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %53) #11
  br label %mdio_bus

if.end99:                                         ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %and = and i32 %21, 255
  %and103 = lshr i32 %21, 8
  %shr104 = and i32 %and103, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %and, i32 noundef %shr104) #14
  br label %cleanup

mdio_bus:                                         ; preds = %do.end96, %do.end88
  %err.0 = phi i32 [ %call83, %do.end88 ], [ -22, %do.end96 ]
  br i1 %tobool72.not, label %mdio_bus.put_mdio_node_crit_edge, label %if.then107

mdio_bus.put_mdio_node_crit_edge:                 ; preds = %mdio_bus
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_mdio_node

if.then107:                                       ; preds = %mdio_bus
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ds, align 4
  %slave_mii_bus = getelementptr inbounds %struct.dsa_switch, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %slave_mii_bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %58) #11
  %59 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ds, align 4
  %slave_mii_bus110 = getelementptr inbounds %struct.dsa_switch, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %slave_mii_bus110 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %slave_mii_bus110, align 4
  tail call void @mdiobus_free(ptr noundef %62) #11
  br label %put_mdio_node

put_mdio_node:                                    ; preds = %if.then107, %mdio_bus.put_mdio_node_crit_edge, %do.end79
  %err.1 = phi i32 [ %call74, %do.end79 ], [ %err.0, %if.then107 ], [ %err.0, %mdio_bus.put_mdio_node_crit_edge ]
  tail call void @of_node_put(ptr noundef %call71) #11
  %num_gphy_fw = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 9
  %63 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_gphy_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp197 = icmp sgt i32 %64, 0
  br i1 %cmp197, label %for.body.lr.ph, label %put_mdio_node.cleanup_crit_edge

put_mdio_node.cleanup_crit_edge:                  ; preds = %put_mdio_node
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %put_mdio_node
  %gphy_fw = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 10
  %rcu_regmap.i = getelementptr inbounds %struct.gswip_priv, ptr %call.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %gswip_gphy_fw_remove.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %gswip_gphy_fw_remove.exit.for.body_crit_edge ]
  %65 = ptrtoint ptr %gphy_fw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gphy_fw, align 4
  %arrayidx = getelementptr %struct.gswip_gphy_fw, ptr %66, i32 %i.0198
  %fw_name.i = getelementptr %struct.gswip_gphy_fw, ptr %66, i32 %i.0198, i32 3
  %67 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw_name.i, align 4
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %for.body.gswip_gphy_fw_remove.exit_crit_edge, label %if.end.i

for.body.gswip_gphy_fw_remove.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_gphy_fw_remove.exit

if.end.i:                                         ; preds = %for.body
  %69 = ptrtoint ptr %rcu_regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rcu_regmap.i, align 4
  %fw_addr_offset.i = getelementptr %struct.gswip_gphy_fw, ptr %66, i32 %i.0198, i32 2
  %71 = ptrtoint ptr %fw_addr_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fw_addr_offset.i, align 4
  %call.i195 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef %72, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool1.not.i = icmp eq i32 %call.i195, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %do.end.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.62) #14
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.end.i.if.end3.i_crit_edge
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %76) #11
  tail call void @clk_unprepare(ptr noundef %76) #11
  %reset.i = getelementptr %struct.gswip_gphy_fw, ptr %66, i32 %i.0198, i32 1
  %77 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reset.i, align 4
  tail call void @reset_control_put(ptr noundef %78) #11
  br label %gswip_gphy_fw_remove.exit

gswip_gphy_fw_remove.exit:                        ; preds = %if.end3.i, %for.body.gswip_gphy_fw_remove.exit_crit_edge
  %inc = add nuw nsw i32 %i.0198, 1
  %79 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_gphy_fw, align 4
  %cmp = icmp slt i32 %inc, %80
  br i1 %cmp, label %gswip_gphy_fw_remove.exit.for.body_crit_edge, label %gswip_gphy_fw_remove.exit.cleanup_crit_edge

gswip_gphy_fw_remove.exit.cleanup_crit_edge:      ; preds = %gswip_gphy_fw_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

gswip_gphy_fw_remove.exit.for.body_crit_edge:     ; preds = %gswip_gphy_fw_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %gswip_gphy_fw_remove.exit.cleanup_crit_edge, %put_mdio_node.cleanup_crit_edge, %if.end99, %do.end67, %do.end57, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then19, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then12 ], [ %5, %if.then19 ], [ -2, %do.end57 ], [ %call62, %do.end67 ], [ 0, %if.end99 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %err.1, %put_mdio_node.cleanup_crit_edge ], [ %err.1, %gswip_gphy_fw_remove.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdio.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !348
  %and.i = and i32 %4, -32769
  %5 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %and.i) #11, !srcloc !349
  %ds = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %8) #11
  %9 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds, align 4
  %slave_mii_bus = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave_mii_bus, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mdiobus_unregister(ptr noundef nonnull %12) #11
  %13 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds, align 4
  %slave_mii_bus7 = getelementptr inbounds %struct.dsa_switch, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %slave_mii_bus7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave_mii_bus7, align 4
  %of_node = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 11, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %18) #11
  %19 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds, align 4
  %slave_mii_bus9 = getelementptr inbounds %struct.dsa_switch, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %slave_mii_bus9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave_mii_bus9, align 4
  tail call void @mdiobus_free(ptr noundef %22) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  %num_gphy_fw = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_gphy_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25 = icmp sgt i32 %24, 0
  br i1 %cmp25, label %for.body.lr.ph, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %gphy_fw = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 10
  %rcu_regmap.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 7
  %dev.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %gswip_gphy_fw_remove.exit.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %gswip_gphy_fw_remove.exit.for.body_crit_edge ]
  %25 = ptrtoint ptr %gphy_fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gphy_fw, align 4
  %arrayidx = getelementptr %struct.gswip_gphy_fw, ptr %26, i32 %i.026
  %fw_name.i = getelementptr %struct.gswip_gphy_fw, ptr %26, i32 %i.026, i32 3
  %27 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_name.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %for.body.gswip_gphy_fw_remove.exit_crit_edge, label %if.end.i

for.body.gswip_gphy_fw_remove.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_gphy_fw_remove.exit

if.end.i:                                         ; preds = %for.body
  %29 = ptrtoint ptr %rcu_regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rcu_regmap.i, align 4
  %fw_addr_offset.i = getelementptr %struct.gswip_gphy_fw, ptr %26, i32 %i.026, i32 2
  %31 = ptrtoint ptr %fw_addr_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_addr_offset.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %32, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %do.end.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.62) #14
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %if.end.i.if.end3.i_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %36) #11
  tail call void @clk_unprepare(ptr noundef %36) #11
  %reset.i = getelementptr %struct.gswip_gphy_fw, ptr %26, i32 %i.026, i32 1
  %37 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reset.i, align 4
  tail call void @reset_control_put(ptr noundef %38) #11
  br label %gswip_gphy_fw_remove.exit

gswip_gphy_fw_remove.exit:                        ; preds = %if.end3.i, %for.body.gswip_gphy_fw_remove.exit_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %39 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_gphy_fw, align 4
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %gswip_gphy_fw_remove.exit.for.body_crit_edge, label %gswip_gphy_fw_remove.exit.for.end_crit_edge

gswip_gphy_fw_remove.exit.for.end_crit_edge:      ; preds = %gswip_gphy_fw_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

gswip_gphy_fw_remove.exit.for.body_crit_edge:     ; preds = %gswip_gphy_fw_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %gswip_gphy_fw_remove.exit.for.end_crit_edge, %if.end10.for.end_crit_edge
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_shutdown(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ds = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #11
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
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_gphy_fw_list(ptr nocapture noundef %priv, ptr noundef %gphy_fw_list_np, i32 noundef %version) unnamed_addr #2 align 64 {
entry:
  %fw.i.i = alloca ptr, align 4
  %dma_addr.i.i = alloca i32, align 4
  %gphy_mode.i = alloca i32, align 4
  %gphyname.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @of_device_is_compatible(ptr noundef %gphy_fw_list_np, ptr noundef nonnull @.str.28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %version, label %do.end [
    i32 256, label %if.then.if.end.sink.split_crit_edge
    i32 33, label %sw.bb2
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %version) #14
  br label %cleanup

if.end.sink.split:                                ; preds = %sw.bb2, %if.then.if.end.sink.split_crit_edge
  %xrx200a1x_gphy_data.sink = phi ptr [ @xrx200a2x_gphy_data, %sw.bb2 ], [ @xrx200a1x_gphy_data, %if.then.if.end.sink.split_crit_edge ]
  %gphy_fw_name_cfg = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %gphy_fw_name_cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %xrx200a1x_gphy_data.sink, ptr %gphy_fw_name_cfg, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %call4 = tail call ptr @of_match_node(ptr noundef nonnull @xway_gphy_match, ptr noundef %gphy_fw_list_np) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %gphy_fw_name_cfg9 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %gphy_fw_name_cfg9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %gphy_fw_name_cfg9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %gphy_fw_name_cfg11 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 4
  %7 = ptrtoint ptr %gphy_fw_name_cfg11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gphy_fw_name_cfg11, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %gphy_fw_list_np, ptr noundef null) #11
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_available_child_count.exit.thread, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

of_get_available_child_count.exit.thread:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %num_gphy_fw102 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 9
  %9 = ptrtoint ptr %num_gphy_fw102 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_gphy_fw102, align 4
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end17.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %gphy_fw_list_np, ptr noundef nonnull %child.06.i) #11
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  %num_gphy_fw = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 9
  %10 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %num_gphy_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool20.not = icmp eq i32 %inc.i, 0
  br i1 %tobool20.not, label %of_get_available_child_count.exit.cleanup_crit_edge, label %if.end22

of_get_available_child_count.exit.cleanup_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %of_get_available_child_count.exit
  %call23 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %gphy_fw_list_np, ptr noundef nonnull @.str.33) #11
  %rcu_regmap = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 7
  %11 = ptrtoint ptr %rcu_regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %rcu_regmap, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_gphy_fw, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 16) #11
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !350

devm_kmalloc_array.exit.thread:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %gphy_fw105 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 10
  %17 = ptrtoint ptr %gphy_fw105 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %gphy_fw105, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end29
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %18, i32 noundef 3520) #11
  %gphy_fw = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 10
  %19 = ptrtoint ptr %gphy_fw to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i, ptr %gphy_fw, align 4
  %tobool33.not = icmp eq ptr %call5.i, null
  br i1 %tobool33.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %if.end35

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %devm_kmalloc_array.exit
  %call36 = tail call ptr @of_get_next_available_child(ptr noundef %gphy_fw_list_np, ptr noundef null) #11
  %cmp.not107 = icmp eq ptr %call36, null
  br i1 %cmp.not107, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %if.end35.for.body_crit_edge
  %i.0110 = phi i32 [ %inc, %if.end41.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %gphy_fw_np.0108 = phi ptr [ %call42, %if.end41.for.body_crit_edge ], [ %call36, %if.end35.for.body_crit_edge ]
  %20 = ptrtoint ptr %gphy_fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gphy_fw, align 4
  %arrayidx = getelementptr %struct.gswip_gphy_fw, ptr %21, i32 %i.0110
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gphy_mode.i) #11
  %24 = ptrtoint ptr %gphy_mode.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %gphy_mode.i, align 4, !annotation !351
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %gphyname.i) #11
  %25 = call ptr @memset(ptr %gphyname.i, i32 255, i32 10)
  %call.i91 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %gphyname.i, i32 noundef 10, ptr noundef nonnull @.str.40, i32 noundef %i.0110) #11
  %call3.i = call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull %gphyname.i) #11
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call3.i, ptr %arrayidx, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i92

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.41) #14
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %gswip_gphy_fw_probe.exit

if.end.i92:                                       ; preds = %for.body
  %fw_addr_offset.i = getelementptr %struct.gswip_gphy_fw, ptr %21, i32 %i.0110, i32 2
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %gphy_fw_np.0108, ptr noundef nonnull @.str.43, ptr noundef %fw_addr_offset.i, i32 noundef 1, i32 noundef 0) #11
  %30 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end10.i, label %if.end.i92.gswip_gphy_fw_probe.exit_crit_edge

if.end.i92.gswip_gphy_fw_probe.exit_crit_edge:    ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_gphy_fw_probe.exit

if.end10.i:                                       ; preds = %if.end.i92
  %call.i.i59.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %gphy_fw_np.0108, ptr noundef nonnull @.str.44, ptr noundef nonnull %gphy_mode.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i59.i)
  %tobool12.not.i = icmp sgt i32 %call.i.i59.i, -1
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end14.thread.i

if.end14.thread.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %gphy_mode.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %gphy_mode.i, align 4
  br label %sw.bb15.i

if.end14.i:                                       ; preds = %if.end10.i
  %32 = ptrtoint ptr %gphy_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i = load i32, ptr %gphy_mode.i, align 4
  %33 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %.pr.i, label %gswip_gphy_fw_probe.exit.thread [
    i32 2, label %sw.bb.i
    i32 1, label %if.end14.i.sw.bb15.i_crit_edge
  ]

if.end14.i.sw.bb15.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15.i

sw.bb.i:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %gphy_fw_name_cfg11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gphy_fw_name_cfg11, align 4
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end14.i.sw.bb15.i_crit_edge, %if.end14.thread.i
  %36 = ptrtoint ptr %gphy_fw_name_cfg11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gphy_fw_name_cfg11, align 4
  %ge_firmware_name.i = getelementptr inbounds %struct.xway_gphy_match_data, ptr %37, i32 0, i32 1
  br label %sw.epilog.i

gswip_gphy_fw_probe.exit.thread:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.46, i32 noundef %.pr.i) #14
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %gphyname.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gphy_mode.i) #11
  br label %for.cond43.preheader

sw.epilog.i:                                      ; preds = %sw.bb15.i, %sw.bb.i
  %ge_firmware_name.sink.i = phi ptr [ %ge_firmware_name.i, %sw.bb15.i ], [ %35, %sw.bb.i ]
  %38 = ptrtoint ptr %ge_firmware_name.sink.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ge_firmware_name.sink.i, align 4
  %fw_name17.i = getelementptr %struct.gswip_gphy_fw, ptr %21, i32 %i.0110, i32 3
  %40 = ptrtoint ptr %fw_name17.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %fw_name17.i, align 4
  %call.i.i = call ptr @of_reset_control_array_get(ptr noundef nonnull %gphy_fw_np.0108, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %reset.i = getelementptr %struct.gswip_gphy_fw, ptr %21, i32 %i.0110, i32 1
  %41 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i.i, ptr %reset.i, align 4
  %cmp.i60.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i, label %if.then24.i, label %if.end34.i

if.then24.i:                                      ; preds = %sw.epilog.i
  %cmp.not.i93 = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i93, label %if.then24.i.if.end31.i_crit_edge, label %do.end30.i

if.then24.i.if.end31.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

do.end30.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.49) #14
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end30.i, %if.then24.i.if.end31.i_crit_edge
  %42 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reset.i, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %gswip_gphy_fw_probe.exit

if.end34.i:                                       ; preds = %sw.epilog.i
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #11
  %47 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i.i) #11
  %48 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %dma_addr.i.i, align 4, !annotation !351
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %call.i.i61.i = call i32 @clk_prepare(ptr noundef %50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i61.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end34.i.gswip_gphy_fw_load.exit.i_crit_edge

if.end34.i.gswip_gphy_fw_load.exit.i_crit_edge:   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_gphy_fw_load.exit.i

if.end.i.i.i:                                     ; preds = %if.end34.i
  %call1.i.i.i = call i32 @clk_enable(ptr noundef %50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %50) #11
  br label %gswip_gphy_fw_load.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %51 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reset.i, align 4
  %call2.i.i = call i32 @reset_control_assert(ptr noundef %52) #11
  call void @msleep(i32 noundef 200) #11
  %53 = ptrtoint ptr %fw_name17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw_name17.i, align 4
  %call3.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef %54, ptr noundef %46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %fw_name17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw_name17.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.51, ptr noundef %56, i32 noundef %call3.i.i) #14
  br label %gswip_gphy_fw_load.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %57 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add.i.i = add i32 %60, 16384
  %call.i50.i.i = call ptr @dmam_alloc_attrs(ptr noundef %46, i32 noundef %add.i.i, ptr noundef nonnull %dma_addr.i.i, i32 noundef 3264, i32 noundef 0) #11
  %tobool10.not.i.i = icmp eq ptr %call.i50.i.i, null
  br i1 %tobool10.not.i.i, label %do.end18.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  %61 = ptrtoint ptr %call.i50.i.i to i32
  %add12.i.i = add i32 %61, 16383
  %and.i.i = and i32 %add12.i.i, -16384
  %62 = inttoptr i32 %and.i.i to ptr
  %63 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_addr.i.i, align 4
  %add13.i.i = add i32 %64, 16383
  %and14.i.i = and i32 %add13.i.i, -16384
  %65 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %66, align 4
  %71 = call ptr @memcpy(ptr %62, ptr %68, i32 %70)
  %72 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %72) #11
  %73 = ptrtoint ptr %rcu_regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rcu_regmap, align 4
  %75 = ptrtoint ptr %fw_addr_offset.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_addr_offset.i, align 4
  %call20.i.i = call i32 @regmap_write(ptr noundef %74, i32 noundef %76, i32 noundef %and14.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.then11.i.i.gswip_gphy_fw_load.exit.i_crit_edge

if.then11.i.i.gswip_gphy_fw_load.exit.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_gphy_fw_load.exit.i

do.end18.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.54) #14
  %77 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %78) #11
  br label %gswip_gphy_fw_load.exit.i

if.end23.i.i:                                     ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reset.i, align 4
  %call25.i.i = call i32 @reset_control_deassert(ptr noundef %80) #11
  br label %gswip_gphy_fw_load.exit.i

gswip_gphy_fw_load.exit.i:                        ; preds = %if.end23.i.i, %do.end18.i.i, %if.then11.i.i.gswip_gphy_fw_load.exit.i_crit_edge, %do.end.i.i, %if.then3.i.i.i, %if.end34.i.gswip_gphy_fw_load.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %do.end.i.i ], [ 0, %if.end23.i.i ], [ -12, %do.end18.i.i ], [ %call20.i.i, %if.then11.i.i.gswip_gphy_fw_load.exit.i_crit_edge ], [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i.i61.i, %if.end34.i.gswip_gphy_fw_load.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #11
  br label %gswip_gphy_fw_probe.exit

gswip_gphy_fw_probe.exit:                         ; preds = %gswip_gphy_fw_load.exit.i, %if.end31.i, %if.end.i92.gswip_gphy_fw_probe.exit_crit_edge, %do.end.i
  %retval.0.i94 = phi i32 [ %29, %do.end.i ], [ %44, %if.end31.i ], [ %retval.0.i.i, %gswip_gphy_fw_load.exit.i ], [ %30, %if.end.i92.gswip_gphy_fw_probe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %gphyname.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gphy_mode.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i94)
  %tobool39.not = icmp eq i32 %retval.0.i94, 0
  br i1 %tobool39.not, label %if.end41, label %gswip_gphy_fw_probe.exit.for.cond43.preheader_crit_edge

gswip_gphy_fw_probe.exit.for.cond43.preheader_crit_edge: ; preds = %gswip_gphy_fw_probe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %gswip_gphy_fw_probe.exit.for.cond43.preheader_crit_edge, %gswip_gphy_fw_probe.exit.thread
  %retval.0.i94118 = phi i32 [ -22, %gswip_gphy_fw_probe.exit.thread ], [ %retval.0.i94, %gswip_gphy_fw_probe.exit.for.cond43.preheader_crit_edge ]
  %81 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_gphy_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp45112 = icmp sgt i32 %82, 0
  br i1 %cmp45112, label %for.cond43.preheader.for.body46_crit_edge, label %for.cond43.preheader.cleanup_crit_edge

for.cond43.preheader.cleanup_crit_edge:           ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond43.preheader.for.body46_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body46

if.end41:                                         ; preds = %gswip_gphy_fw_probe.exit
  %inc = add i32 %i.0110, 1
  %call42 = call ptr @of_get_next_available_child(ptr noundef %gphy_fw_list_np, ptr noundef nonnull %gphy_fw_np.0108) #11
  %cmp.not = icmp eq ptr %call42, null
  br i1 %cmp.not, label %if.end41.for.end_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end41.for.end_crit_edge, %if.end35.for.end_crit_edge
  call void @msleep(i32 noundef 300) #11
  br label %cleanup

for.body46:                                       ; preds = %gswip_gphy_fw_remove.exit.for.body46_crit_edge, %for.cond43.preheader.for.body46_crit_edge
  %i.1113 = phi i32 [ %inc50, %gswip_gphy_fw_remove.exit.for.body46_crit_edge ], [ 0, %for.cond43.preheader.for.body46_crit_edge ]
  %83 = ptrtoint ptr %gphy_fw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %gphy_fw, align 4
  %arrayidx48 = getelementptr %struct.gswip_gphy_fw, ptr %84, i32 %i.1113
  %fw_name.i = getelementptr %struct.gswip_gphy_fw, ptr %84, i32 %i.1113, i32 3
  %85 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw_name.i, align 4
  %tobool.not.i95 = icmp eq ptr %86, null
  br i1 %tobool.not.i95, label %for.body46.gswip_gphy_fw_remove.exit_crit_edge, label %if.end.i98

for.body46.gswip_gphy_fw_remove.exit_crit_edge:   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_gphy_fw_remove.exit

if.end.i98:                                       ; preds = %for.body46
  %87 = ptrtoint ptr %rcu_regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rcu_regmap, align 4
  %fw_addr_offset.i96 = getelementptr %struct.gswip_gphy_fw, ptr %84, i32 %i.1113, i32 2
  %89 = ptrtoint ptr %fw_addr_offset.i96 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fw_addr_offset.i96, align 4
  %call.i97 = call i32 @regmap_write(ptr noundef %88, i32 noundef %90, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool1.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool1.not.i, label %if.end.i98.if.end3.i_crit_edge, label %do.end.i99

if.end.i98.if.end3.i_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

do.end.i99:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.62) #14
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i99, %if.end.i98.if.end3.i_crit_edge
  %93 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx48, align 4
  call void @clk_disable(ptr noundef %94) #11
  call void @clk_unprepare(ptr noundef %94) #11
  %reset.i100 = getelementptr %struct.gswip_gphy_fw, ptr %84, i32 %i.1113, i32 1
  %95 = ptrtoint ptr %reset.i100 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reset.i100, align 4
  call void @reset_control_put(ptr noundef %96) #11
  br label %gswip_gphy_fw_remove.exit

gswip_gphy_fw_remove.exit:                        ; preds = %if.end3.i, %for.body46.gswip_gphy_fw_remove.exit_crit_edge
  %inc50 = add nuw nsw i32 %i.1113, 1
  %97 = ptrtoint ptr %num_gphy_fw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_gphy_fw, align 4
  %cmp45 = icmp slt i32 %inc50, %98
  br i1 %cmp45, label %gswip_gphy_fw_remove.exit.for.body46_crit_edge, label %gswip_gphy_fw_remove.exit.cleanup_crit_edge

gswip_gphy_fw_remove.exit.cleanup_crit_edge:      ; preds = %gswip_gphy_fw_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

gswip_gphy_fw_remove.exit.for.body46_crit_edge:   ; preds = %gswip_gphy_fw_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46

cleanup:                                          ; preds = %gswip_gphy_fw_remove.exit.cleanup_crit_edge, %for.end, %for.cond43.preheader.cleanup_crit_edge, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %if.then26, %of_get_available_child_count.exit.cleanup_crit_edge, %of_get_available_child_count.exit.thread, %do.end16, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %12, %if.then26 ], [ 0, %for.end ], [ -2, %do.end16 ], [ -2, %of_get_available_child_count.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -2, %of_get_available_child_count.exit.thread ], [ -12, %devm_kmalloc_array.exit.thread ], [ %retval.0.i94118, %for.cond43.preheader.cleanup_crit_edge ], [ %retval.0.i94118, %gswip_gphy_fw_remove.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_mdio(ptr noundef %priv, ptr noundef %mdio_np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #11
  %slave_mii_bus = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %slave_mii_bus, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv4 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %priv4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv4, align 8
  %4 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_mii_bus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gswip_mdio_rd, ptr %read, align 4
  %7 = load ptr, ptr %slave_mii_bus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gswip_mdio_wr, ptr %write, align 8
  %9 = load ptr, ptr %slave_mii_bus, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.14, ptr %name, align 4
  %11 = load ptr, ptr %slave_mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 2
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end.dev_name.exit_crit_edge ]
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.56, ptr noundef %retval.0.i)
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave_mii_bus, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %parent, align 4
  %phys_mii_mask = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %phys_mii_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys_mii_mask, align 4
  %neg = xor i32 %24, -1
  %25 = load ptr, ptr %slave_mii_bus, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %neg, ptr %phy_mask, align 8
  %27 = load ptr, ptr %slave_mii_bus, align 4
  %call15 = tail call i32 @of_mdiobus_register(ptr noundef %27, ptr noundef %mdio_np) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %dev_name.exit.cleanup_crit_edge, label %if.then17

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slave_mii_bus, align 4
  tail call void @mdiobus_free(ptr noundef %29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.then17 ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_mdio_rd(ptr noundef %bus, i32 noundef %addr, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mdio.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec4.i = phi i32 [ 99, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %and.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #11
  %dec.i = add nsw i32 %dec4.i, -1
  %tobool.not.i = icmp eq i32 %dec4.i, 0
  br i1 %tobool.not.i, label %do.end, label %if.end.i.while.body.i_crit_edge, !prof !350

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #14
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %and = shl i32 %addr, 5
  %shl = and i32 %and, 992
  %and2 = and i32 %reg, 31
  %or = or i32 %and2, %shl
  %or3 = or i32 %or, 6144
  %5 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or3) #11, !srcloc !349
  br label %while.body.i27

while.body.i27:                                   ; preds = %if.end.i30.while.body.i27_crit_edge, %if.end
  %dec4.i23 = phi i32 [ 99, %if.end ], [ %dec.i28, %if.end.i30.while.body.i27_crit_edge ]
  %7 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #11, !srcloc !348
  %and.i25 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %cmp.i26 = icmp eq i32 %and.i25, 0
  br i1 %cmp.i26, label %if.end11, label %if.end.i30

if.end.i30:                                       ; preds = %while.body.i27
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #11
  %dec.i28 = add nsw i32 %dec4.i23, -1
  %tobool.not.i29 = icmp eq i32 %dec4.i23, 0
  br i1 %tobool.not.i29, label %do.end9, label %if.end.i30.while.body.i27_crit_edge, !prof !350

if.end.i30.while.body.i27_crit_edge:              ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i27

do.end9:                                          ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.57) #14
  br label %cleanup

if.end11:                                         ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #11, !srcloc !348
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ -110, %do.end9 ], [ %12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_mdio_wr(ptr noundef %bus, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mdio.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec4.i = phi i32 [ 99, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %and.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #11
  %dec.i = add nsw i32 %dec4.i, -1
  %tobool.not.i = icmp eq i32 %dec4.i, 0
  br i1 %tobool.not.i, label %do.end, label %if.end.i.while.body.i_crit_edge, !prof !350

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #14
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %val to i32
  %5 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv) #11, !srcloc !349
  %and = shl i32 %addr, 5
  %shl = and i32 %and, 992
  %and2 = and i32 %reg, 31
  %or = or i32 %and2, %shl
  %or3 = or i32 %or, 5120
  %7 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %or3) #11, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gswip_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_setup(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %hw_info = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_info, align 4
  %cpu_port2 = getelementptr inbounds %struct.gswip_hw_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cpu_port2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu_port2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #11, !srcloc !349
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #11, !srcloc !349
  %10 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_info, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp140 = icmp sgt i32 %13, 0
  br i1 %cmp140, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %gswip_port_vlan_filtering.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %gswip_port_vlan_filtering.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1, align 4
  %16 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.dsa_is_user_port.exit.i_crit_edge, label %for.body.for.body.i.i.i_crit_edge

for.body.for.body.i.i.i_crit_edge:                ; preds = %for.body
  br label %for.body.i.i.i

for.body.dsa_is_user_port.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %19 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %20, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %21 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %i.0141)
  %cmp5.i.i.i = icmp eq i32 %22, %i.0141
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %23 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, %for.body.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.dsa_is_user_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 3
  br i1 %cmp.i.i, label %if.end.i, label %dsa_is_user_port.exit.i.gswip_port_disable.exit_crit_edge

dsa_is_user_port.exit.i.gswip_port_disable.exit_crit_edge: ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_port_disable.exit

if.end.i:                                         ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %15, align 4
  %add.i = mul i32 %i.0141, 24
  %mul.i.i.i = add i32 %add.i, 10752
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %mul.i.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !348
  %and.i.i = and i32 %28, -2
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %15, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %30, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %and.i.i) #11, !srcloc !349
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %15, align 4
  %mul.i.i8.i = add i32 %add.i, 12032
  %add.ptr.i.i9.i = getelementptr i8, ptr %32, i32 %mul.i.i8.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #11, !srcloc !348
  %and.i10.i = and i32 %33, -2
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %15, align 4
  %add.ptr.i6.i11.i = getelementptr i8, ptr %35, i32 %mul.i.i8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i11.i, i32 %and.i10.i) #11, !srcloc !349
  br label %gswip_port_disable.exit

gswip_port_disable.exit:                          ; preds = %if.end.i, %dsa_is_user_port.exit.i.gswip_port_disable.exit_crit_edge
  %36 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %gswip_port_disable.exit.dsa_to_port.exit.i_crit_edge, label %gswip_port_disable.exit.for.body.i.i_crit_edge

gswip_port_disable.exit.for.body.i.i_crit_edge:   ; preds = %gswip_port_disable.exit
  br label %for.body.i.i

gswip_port_disable.exit.dsa_to_port.exit.i_crit_edge: ; preds = %gswip_port_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %gswip_port_disable.exit.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %gswip_port_disable.exit.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %39 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %40, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %41 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %i.0141)
  %cmp5.i.i = icmp eq i32 %42, %i.0141
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %43 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %gswip_port_disable.exit.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %gswip_port_disable.exit.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 14
  %44 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %dsa_port_bridge_dev_get.exit.thread.i, label %dsa_port_bridge_dev_get.exit.i

dsa_port_bridge_dev_get.exit.thread.i:            ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv1, align 4
  br label %if.end9.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %dsa_to_port.exit.i
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %50 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv1, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.i.if.end9.i_crit_edge, label %land.lhs.true.i

dsa_port_bridge_dev_get.exit.i.if.end9.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %dsa_port_bridge_dev_get.exit.i
  %port_vlan_filter.i = getelementptr inbounds %struct.gswip_priv, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %port_vlan_filter.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_vlan_filter.i, align 4
  %54 = shl nuw i32 1, %i.0141
  %55 = and i32 %53, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %land.lhs.true.i.if.end9.i_crit_edge, label %do.body.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gswip_port_vlan_filtering.__msg) #11
  br label %gswip_port_vlan_filtering.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.if.end9.i_crit_edge, %dsa_port_bridge_dev_get.exit.thread.i
  %57 = phi ptr [ %47, %dsa_port_bridge_dev_get.exit.thread.i ], [ %51, %land.lhs.true.i.if.end9.i_crit_edge ], [ %51, %dsa_port_bridge_dev_get.exit.i.if.end9.i_crit_edge ]
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %add.i73 = mul i32 %i.0141, 40
  %mul.i.i.i74 = add i32 %add.i73, 4628
  %add.ptr.i.i.i75 = getelementptr i8, ptr %59, i32 %mul.i.i.i74
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75) #11
  %and.i.i76 = and i32 %60, -58
  %or.i39.i = or i32 %and.i.i76, 32
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %57, align 4
  %add.ptr.i6.i40.i = getelementptr i8, ptr %62, i32 %mul.i.i.i74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i40.i, i32 %or.i39.i) #11, !srcloc !349
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %57, align 4
  %mul.i.i41.i = add i32 %add.i73, 4608
  %add.ptr.i.i42.i = getelementptr i8, ptr %64, i32 %mul.i.i41.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42.i) #11, !srcloc !348
  %or.i43.i = or i32 %65, 32
  %66 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %57, align 4
  %add.ptr.i6.i44.i = getelementptr i8, ptr %67, i32 %mul.i.i41.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i44.i, i32 %or.i43.i) #11, !srcloc !349
  br label %gswip_port_vlan_filtering.exit

gswip_port_vlan_filtering.exit:                   ; preds = %if.end9.i, %do.body.i
  %inc = add nuw nsw i32 %i.0141, 1
  %68 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw_info, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %cmp = icmp slt i32 %inc, %71
  br i1 %cmp, label %gswip_port_vlan_filtering.exit.for.body_crit_edge, label %gswip_port_vlan_filtering.exit.for.end_crit_edge

gswip_port_vlan_filtering.exit.for.end_crit_edge: ; preds = %gswip_port_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

gswip_port_vlan_filtering.exit.for.body_crit_edge: ; preds = %gswip_port_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %gswip_port_vlan_filtering.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mdio.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mdio.i.i, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #11, !srcloc !348
  %or.i = or i32 %74, 32768
  %75 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mdio.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %or.i) #11, !srcloc !349
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i77 = getelementptr i8, ptr %78, i32 4412
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i77) #11, !srcloc !348
  %and.i.i78 = and i32 %79, -128
  %or.i.i = or i32 %and.i.i78, 32
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %add.ptr.i6.i.i79 = getelementptr i8, ptr %81, i32 4412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i79, i32 %or.i.i) #11, !srcloc !349
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 4384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !349
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end
  %i.038.i = phi i32 [ 0, %for.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %85, i32 4408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %i.038.i) #11, !srcloc !349
  %arrayidx.i = getelementptr [64 x %struct.gswip_pce_microcode], ptr @gswip_pce_microcode, i32 0, i32 %i.038.i
  %val_0.i = getelementptr [64 x %struct.gswip_pce_microcode], ptr @gswip_pce_microcode, i32 0, i32 %i.038.i, i32 3
  %86 = ptrtoint ptr %val_0.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %val_0.i, align 2
  %conv.i = zext i16 %87 to i32
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %89, i32 4404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %conv.i) #11, !srcloc !349
  %val_1.i = getelementptr [64 x %struct.gswip_pce_microcode], ptr @gswip_pce_microcode, i32 0, i32 %i.038.i, i32 2
  %90 = ptrtoint ptr %val_1.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %val_1.i, align 2
  %conv2.i = zext i16 %91 to i32
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %93, i32 4400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %conv2.i) #11, !srcloc !349
  %val_2.i = getelementptr [64 x %struct.gswip_pce_microcode], ptr @gswip_pce_microcode, i32 0, i32 %i.038.i, i32 1
  %94 = ptrtoint ptr %val_2.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %val_2.i, align 2
  %conv4.i = zext i16 %95 to i32
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %97, i32 4396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %conv4.i) #11, !srcloc !349
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.i, align 2
  %conv6.i = zext i16 %99 to i32
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %101, i32 4392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %conv6.i) #11, !srcloc !349
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %103, i32 4412
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i) #11, !srcloc !348
  %or.i30.i = or i32 %104, 32768
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %add.ptr.i6.i31.i = getelementptr i8, ptr %106, i32 4412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i31.i, i32 %or.i30.i) #11, !srcloc !349
  %call.i.i = tail call i64 @ktime_get() #11
  %add.i.i.i = add i64 %call.i.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 371) #11
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %108, i32 4412
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i.i) #11, !srcloc !348
  %and37.i.i = and i32 %109, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %cmp938.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %cmp938.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.land.lhs.true.i.i80_crit_edge

for.body.i.land.lhs.true.i.i80_crit_edge:         ; preds = %for.body.i
  br label %land.lhs.true.i.i80

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.i80:                              ; preds = %if.then22.i.i.land.lhs.true.i.i80_crit_edge, %for.body.i.land.lhs.true.i.i80_crit_edge
  %call12.i.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true.i.i80
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %111, i32 4412
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #11, !srcloc !348
  %and.i33.i = and i32 %112, 32768
  %cmp9.i.i = icmp eq i32 %and.i33.i, 0
  br i1 %cmp9.i.i, label %if.then22.i.i.for.inc.i_crit_edge, label %if.then22.i.i.land.lhs.true.i.i80_crit_edge

if.then22.i.i.land.lhs.true.i.i80_crit_edge:      ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i80

if.then22.i.i.for.inc.i_crit_edge:                ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i80
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %114, i32 4412
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #11, !srcloc !348
  %.pre.i.i = and i32 %115, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i.i)
  %cmp25.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %cmp25.i.i, label %for.end.i.i.for.inc.i_crit_edge, label %do.end

for.end.i.i.for.inc.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.end.i.i.for.inc.i_crit_edge, %if.then22.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end:                                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 6
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.64, i32 noundef -110) #14
  br label %cleanup

if.end:                                           ; preds = %for.inc.i
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %119, i32 4440
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i) #11, !srcloc !348
  %or.i35.i = or i32 %120, 8
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %add.ptr.i6.i36.i = getelementptr i8, ptr %122, i32 4440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i36.i, i32 %or.i35.i) #11, !srcloc !349
  %shl = shl nuw i32 1, %5
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %124, i32 4428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shl) #11, !srcloc !349
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %add.ptr.i82 = getelementptr i8, ptr %126, i32 4432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %shl) #11, !srcloc !349
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %add.ptr.i83 = getelementptr i8, ptr %128, i32 4436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %shl) #11, !srcloc !349
  %129 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %130, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 0) #11, !srcloc !349
  %131 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %132, i32 48
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86) #11, !srcloc !348
  %and.i = and i32 %133, -256
  %or.i87 = or i32 %and.i, 9
  %134 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %135, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %or.i87) #11, !srcloc !349
  %136 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw_info, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp10144 = icmp sgt i32 %139, 0
  br i1 %cmp10144, label %for.body11.lr.ph, label %if.end.for.end14_crit_edge

if.end.for.end14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.body11.lr.ph:                                 ; preds = %if.end
  %ds.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 5
  %mii.i.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  br label %for.body11

for.body11:                                       ; preds = %gswip_mii_mask_cfg.exit.for.body11_crit_edge, %for.body11.lr.ph
  %i.1145 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc13, %gswip_mii_mask_cfg.exit.for.body11_crit_edge ]
  %140 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ds.i, align 4
  %dst1.i.i.i88 = getelementptr inbounds %struct.dsa_switch, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %dst1.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dst1.i.i.i88, align 4
  %ports.i.i.i89 = getelementptr inbounds %struct.dsa_switch_tree, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %ports.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pn20.i.i.i90 = load ptr, ptr %ports.i.i.i89, align 4
  %cmp.not21.i.i.i91 = icmp eq ptr %.pn20.i.i.i90, %ports.i.i.i89
  br i1 %cmp.not21.i.i.i91, label %for.body11.dsa_is_cpu_port.exit.i_crit_edge, label %for.body11.for.body.i.i.i95_crit_edge

for.body11.for.body.i.i.i95_crit_edge:            ; preds = %for.body11
  br label %for.body.i.i.i95

for.body11.dsa_is_cpu_port.exit.i_crit_edge:      ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i95:                                 ; preds = %for.inc.i.i.i101.for.body.i.i.i95_crit_edge, %for.body11.for.body.i.i.i95_crit_edge
  %.pn22.i.i.i92 = phi ptr [ %.pn.i.i.i99, %for.inc.i.i.i101.for.body.i.i.i95_crit_edge ], [ %.pn20.i.i.i90, %for.body11.for.body.i.i.i95_crit_edge ]
  %ds3.i.i.i93 = getelementptr i8, ptr %.pn22.i.i.i92, i32 -432
  %145 = ptrtoint ptr %ds3.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ds3.i.i.i93, align 4
  %cmp4.i.i.i94 = icmp eq ptr %146, %141
  br i1 %cmp4.i.i.i94, label %land.lhs.true.i.i.i98, label %for.body.i.i.i95.for.inc.i.i.i101_crit_edge

for.body.i.i.i95.for.inc.i.i.i101_crit_edge:      ; preds = %for.body.i.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i101

land.lhs.true.i.i.i98:                            ; preds = %for.body.i.i.i95
  %index.i.i.i96 = getelementptr i8, ptr %.pn22.i.i.i92, i32 -428
  %147 = ptrtoint ptr %index.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %index.i.i.i96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %i.1145)
  %cmp5.i.i.i97 = icmp eq i32 %148, %i.1145
  br i1 %cmp5.i.i.i97, label %cleanup.split.loop.exit18.i.i.i103, label %land.lhs.true.i.i.i98.for.inc.i.i.i101_crit_edge

land.lhs.true.i.i.i98.for.inc.i.i.i101_crit_edge: ; preds = %land.lhs.true.i.i.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i101

for.inc.i.i.i101:                                 ; preds = %land.lhs.true.i.i.i98.for.inc.i.i.i101_crit_edge, %for.body.i.i.i95.for.inc.i.i.i101_crit_edge
  %149 = ptrtoint ptr %.pn22.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn.i.i.i99 = load ptr, ptr %.pn22.i.i.i92, align 4
  %cmp.not.i.i.i100 = icmp eq ptr %.pn.i.i.i99, %ports.i.i.i89
  br i1 %cmp.not.i.i.i100, label %for.inc.i.i.i101.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i101.for.body.i.i.i95_crit_edge

for.inc.i.i.i101.for.body.i.i.i95_crit_edge:      ; preds = %for.inc.i.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i95

for.inc.i.i.i101.dsa_is_cpu_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i103:               ; preds = %land.lhs.true.i.i.i98
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i102 = getelementptr i8, ptr %.pn22.i.i.i92, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i103, %for.inc.i.i.i101.dsa_is_cpu_port.exit.i_crit_edge, %for.body11.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i104 = phi ptr [ %dp.0.le.i.i.i102, %cleanup.split.loop.exit18.i.i.i103 ], [ null, %for.body11.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i101.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i105 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i104, i32 0, i32 6
  %150 = ptrtoint ptr %type.i.i105 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %type.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.i.i106 = icmp eq i32 %151, 1
  br i1 %cmp.i.i106, label %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge, label %if.then.i

dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_mii_mask_cfg.exit

if.then.i:                                        ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %i.1145, 3
  %152 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i.i.i107 = getelementptr i8, ptr %153, i32 %mul.i
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i107) #11, !srcloc !348
  %and.i.i108 = and i32 %154, -24577
  %155 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %156, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %and.i.i108) #11, !srcloc !349
  br label %gswip_mii_mask_cfg.exit

gswip_mii_mask_cfg.exit:                          ; preds = %if.then.i, %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge
  %inc13 = add nuw nsw i32 %i.1145, 1
  %157 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw_info, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %cmp10 = icmp slt i32 %inc13, %160
  br i1 %cmp10, label %gswip_mii_mask_cfg.exit.for.body11_crit_edge, label %gswip_mii_mask_cfg.exit.for.end14_crit_edge

gswip_mii_mask_cfg.exit.for.end14_crit_edge:      ; preds = %gswip_mii_mask_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

gswip_mii_mask_cfg.exit.for.body11_crit_edge:     ; preds = %gswip_mii_mask_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

for.end14:                                        ; preds = %gswip_mii_mask_cfg.exit.for.end14_crit_edge, %if.end.for.end14_crit_edge
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  %add = mul i32 %5, 24
  %mul.i.i = add i32 %add, 10752
  %add.ptr.i.i110 = getelementptr i8, ptr %162, i32 %mul.i.i
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i110) #11, !srcloc !348
  %or.i111 = or i32 %163, 2
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %165, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i111) #11, !srcloc !349
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %add16 = mul i32 %5, 40
  %mul.i.i112 = add i32 %add16, 4608
  %add.ptr.i.i113 = getelementptr i8, ptr %167, i32 %mul.i.i112
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i113) #11, !srcloc !348
  %or.i114 = or i32 %168, 2048
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 4
  %add.ptr.i6.i115 = getelementptr i8, ptr %170, i32 %mul.i.i112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i115, i32 %or.i114) #11, !srcloc !349
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %add18 = mul i32 %5, 48
  %mul.i.i116 = add i32 %add18, 9236
  %add.ptr.i.i117 = getelementptr i8, ptr %172, i32 %mul.i.i116
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i117) #11, !srcloc !348
  %or.i118 = or i32 %173, 8
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 4
  %add.ptr.i6.i119 = getelementptr i8, ptr %175, i32 %mul.i.i116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i119, i32 %or.i118) #11, !srcloc !349
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %add.ptr.i120 = getelementptr i8, ptr %177, i32 8980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 1530) #11, !srcloc !349
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %179, i32 296
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #11, !srcloc !348
  %or.i122 = or i32 %180, 1024
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 4
  %add.ptr.i6.i123 = getelementptr i8, ptr %182, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i123, i32 %or.i122) #11, !srcloc !349
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %add.ptr.i.i124 = getelementptr i8, ptr %184, i32 4440
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i124) #11, !srcloc !348
  %or.i125 = or i32 %185, 16384
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %1, align 4
  %add.ptr.i6.i126 = getelementptr i8, ptr %187, i32 4440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i126, i32 %or.i125) #11, !srcloc !349
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %189, i32 4440
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127) #11, !srcloc !348
  %or.i128 = or i32 %190, 1
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %add.ptr.i6.i129 = getelementptr i8, ptr %192, i32 4440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i129, i32 %or.i128) #11, !srcloc !349
  %call.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 371) #11
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %add.ptr36.i = getelementptr i8, ptr %194, i32 4440
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #11, !srcloc !348
  %and37.i = and i32 %195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp938.i = icmp eq i32 %and37.i, 0
  br i1 %cmp938.i, label %for.end14.if.end26_crit_edge, label %for.end14.land.lhs.true.i130_crit_edge

for.end14.land.lhs.true.i130_crit_edge:           ; preds = %for.end14
  br label %land.lhs.true.i130

for.end14.if.end26_crit_edge:                     ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true.i130:                               ; preds = %if.then22.i.land.lhs.true.i130_crit_edge, %for.end14.land.lhs.true.i130_crit_edge
  %call12.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i133, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i130
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 4
  %add.ptr.i131 = getelementptr i8, ptr %197, i32 4440
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #11, !srcloc !348
  %and.i132 = and i32 %198, 1
  %cmp9.i = icmp eq i32 %and.i132, 0
  br i1 %cmp9.i, label %if.then22.i.if.end26_crit_edge, label %if.then22.i.land.lhs.true.i130_crit_edge

if.then22.i.land.lhs.true.i130_crit_edge:         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i130

if.then22.i.if.end26_crit_edge:                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

for.end.i133:                                     ; preds = %land.lhs.true.i130
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %add.ptr18.i = getelementptr i8, ptr %200, i32 4440
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !348
  %.pre.i = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %cmp25.i = icmp eq i32 %.pre.i, 0
  br i1 %cmp25.i, label %for.end.i133.if.end26_crit_edge, label %do.end24

for.end.i133.if.end26_crit_edge:                  ; preds = %for.end.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end24:                                         ; preds = %for.end.i133
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 6
  %202 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %203, ptr noundef nonnull @.str.67) #14
  br label %cleanup

if.end26:                                         ; preds = %for.end.i133.if.end26_crit_edge, %if.then22.i.if.end26_crit_edge, %for.end14.if.end26_crit_edge
  %call27 = tail call i32 @gswip_port_enable(ptr noundef %ds, i32 noundef %5, ptr noundef null)
  %configure_vlan_while_not_filtering = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %204 = ptrtoint ptr %configure_vlan_while_not_filtering to i32
  call void @__asan_load2_noabort(i32 %204)
  %bf.load = load i16, ptr %configure_vlan_while_not_filtering, align 4
  %bf.clear = and i16 %bf.load, -4097
  store i16 %bf.clear, ptr %configure_vlan_while_not_filtering, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end24, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ -110, %do.end24 ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gswip_xrx200_phylink_get_caps(ptr nocapture noundef readnone %ds, i32 noundef %port, ptr nocapture noundef %config) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %port)
  %0 = icmp ult i32 %port, 6
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.gswip_xrx200_phylink_get_caps, i32 0, i32 %port
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %supported_interfaces = getelementptr inbounds %struct.phylink_config, ptr %config, i32 0, i32 7
  %2 = ptrtoint ptr %supported_interfaces to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_interfaces, align 4
  %or.i25 = or i32 %3, %switch.load
  store i32 %or.i25, ptr %supported_interfaces, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mac_capabilities = getelementptr inbounds %struct.phylink_config, ptr %config, i32 0, i32 8
  %4 = ptrtoint ptr %mac_capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %mac_capabilities, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_phylink_mac_config(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 12
  br i1 %4, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.69, i32 noundef %3) #14
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 3943, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.gswip_phylink_mac_config, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ds.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds.i, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %switch.lookup.dsa_is_cpu_port.exit.i_crit_edge, label %switch.lookup.for.body.i.i.i_crit_edge

switch.lookup.for.body.i.i.i_crit_edge:           ; preds = %switch.lookup
  br label %for.body.i.i.i

switch.lookup.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %switch.lookup.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %switch.lookup.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %14 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %15, %10
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %16 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %port)
  %cmp5.i.i.i = icmp eq i32 %17, %port
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %18 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, %switch.lookup.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %switch.lookup.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 1
  br i1 %cmp.i.i, label %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge, label %if.then.i

dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_mii_mask_cfg.exit

if.then.i:                                        ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %port, 3
  %mii.i.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %mul.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !348
  %and.i.i = and i32 %23, -4496
  %or.i.i = or i32 %and.i.i, %switch.load
  %24 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %25, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %or.i.i) #11, !srcloc !349
  br label %gswip_mii_mask_cfg.exit

gswip_mii_mask_cfg.exit:                          ; preds = %if.then.i, %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge
  %26 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interface, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %27, label %gswip_mii_mask_cfg.exit.cleanup_crit_edge [
    i32 10, label %sw.bb14
    i32 11, label %sw.bb15
    i32 12, label %sw.bb16
  ]

gswip_mii_mask_cfg.exit.cleanup_crit_edge:        ; preds = %gswip_mii_mask_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb14:                                          ; preds = %gswip_mii_mask_cfg.exit
  %29 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %port, label %sw.bb14.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 5, label %sw.bb2.i
  ]

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i.i36 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %mii.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mii.i.i.i36, align 4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i37) #11, !srcloc !348
  %and.i.i38 = and i32 %32, -904
  %33 = ptrtoint ptr %mii.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mii.i.i.i36, align 4
  %add.ptr.i7.i.i39 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i39, i32 %and.i.i38) #11, !srcloc !349
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i1.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %mii.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mii.i.i1.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %36, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #11, !srcloc !348
  %and.i4.i = and i32 %37, -904
  %38 = ptrtoint ptr %mii.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mii.i.i1.i, align 4
  %add.ptr.i7.i5.i = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i5.i, i32 %and.i4.i) #11, !srcloc !349
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i6.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %mii.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mii.i.i6.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %41, i32 20
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #11, !srcloc !348
  %and.i9.i = and i32 %42, -904
  %43 = ptrtoint ptr %mii.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mii.i.i6.i, align 4
  %add.ptr.i7.i10.i = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i10.i, i32 %and.i9.i) #11, !srcloc !349
  br label %cleanup

sw.bb15:                                          ; preds = %gswip_mii_mask_cfg.exit
  %45 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %port, label %sw.bb15.cleanup_crit_edge [
    i32 0, label %sw.bb.i44
    i32 1, label %sw.bb1.i49
    i32 5, label %sw.bb2.i54
  ]

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i44:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i.i40 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %mii.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mii.i.i.i40, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i41) #11, !srcloc !348
  %and.i.i42 = and i32 %48, -897
  %49 = ptrtoint ptr %mii.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mii.i.i.i40, align 4
  %add.ptr.i7.i.i43 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i43, i32 %and.i.i42) #11, !srcloc !349
  br label %cleanup

sw.bb1.i49:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i1.i45 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %mii.i.i1.i45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mii.i.i1.i45, align 4
  %add.ptr.i.i2.i46 = getelementptr i8, ptr %52, i32 12
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i46) #11, !srcloc !348
  %and.i4.i47 = and i32 %53, -897
  %54 = ptrtoint ptr %mii.i.i1.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mii.i.i1.i45, align 4
  %add.ptr.i7.i5.i48 = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i5.i48, i32 %and.i4.i47) #11, !srcloc !349
  br label %cleanup

sw.bb2.i54:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i6.i50 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %mii.i.i6.i50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mii.i.i6.i50, align 4
  %add.ptr.i.i7.i51 = getelementptr i8, ptr %57, i32 20
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i51) #11, !srcloc !348
  %and.i9.i52 = and i32 %58, -897
  %59 = ptrtoint ptr %mii.i.i6.i50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mii.i.i6.i50, align 4
  %add.ptr.i7.i10.i53 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i10.i53, i32 %and.i9.i52) #11, !srcloc !349
  br label %cleanup

sw.bb16:                                          ; preds = %gswip_mii_mask_cfg.exit
  %61 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %port, label %sw.bb16.cleanup_crit_edge [
    i32 0, label %sw.bb.i60
    i32 1, label %sw.bb1.i65
    i32 5, label %sw.bb2.i70
  ]

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i60:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i.i56 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %mii.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mii.i.i.i56, align 4
  %add.ptr.i.i.i57 = getelementptr i8, ptr %63, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i57) #11, !srcloc !348
  %and.i.i58 = and i32 %64, -8
  %65 = ptrtoint ptr %mii.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mii.i.i.i56, align 4
  %add.ptr.i7.i.i59 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i59, i32 %and.i.i58) #11, !srcloc !349
  br label %cleanup

sw.bb1.i65:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i1.i61 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %mii.i.i1.i61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mii.i.i1.i61, align 4
  %add.ptr.i.i2.i62 = getelementptr i8, ptr %68, i32 12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i62) #11, !srcloc !348
  %and.i4.i63 = and i32 %69, -8
  %70 = ptrtoint ptr %mii.i.i1.i61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mii.i.i1.i61, align 4
  %add.ptr.i7.i5.i64 = getelementptr i8, ptr %71, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i5.i64, i32 %and.i4.i63) #11, !srcloc !349
  br label %cleanup

sw.bb2.i70:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  %mii.i.i6.i66 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %mii.i.i6.i66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mii.i.i6.i66, align 4
  %add.ptr.i.i7.i67 = getelementptr i8, ptr %73, i32 20
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i67) #11, !srcloc !348
  %and.i9.i68 = and i32 %74, -8
  %75 = ptrtoint ptr %mii.i.i6.i66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mii.i.i6.i66, align 4
  %add.ptr.i7.i10.i69 = getelementptr i8, ptr %76, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i10.i69, i32 %and.i9.i68) #11, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2.i70, %sw.bb1.i65, %sw.bb.i60, %sw.bb16.cleanup_crit_edge, %sw.bb2.i54, %sw.bb1.i49, %sw.bb.i44, %sw.bb15.cleanup_crit_edge, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %sw.bb14.cleanup_crit_edge, %gswip_mii_mask_cfg.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_phylink_mac_link_down(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ds.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds.i, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %entry.dsa_is_cpu_port.exit.i_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.dsa_is_cpu_port.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %entry.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %7 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %8, %3
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %9 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %port)
  %cmp5.i.i.i = icmp eq i32 %10, %port
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, %entry.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %entry.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 1
  br i1 %cmp.i.i, label %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge, label %if.then.i

dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_mii_mask_cfg.exit

if.then.i:                                        ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %port, 3
  %mii.i.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %mul.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !348
  %and.i.i = and i32 %16, -16385
  %17 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %18, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %and.i.i) #11, !srcloc !349
  br label %gswip_mii_mask_cfg.exit

gswip_mii_mask_cfg.exit:                          ; preds = %if.then.i, %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %19 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %gswip_mii_mask_cfg.exit.dsa_is_cpu_port.exit_crit_edge, label %gswip_mii_mask_cfg.exit.for.body.i.i_crit_edge

gswip_mii_mask_cfg.exit.for.body.i.i_crit_edge:   ; preds = %gswip_mii_mask_cfg.exit
  br label %for.body.i.i

gswip_mii_mask_cfg.exit.dsa_is_cpu_port.exit_crit_edge: ; preds = %gswip_mii_mask_cfg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %gswip_mii_mask_cfg.exit.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %gswip_mii_mask_cfg.exit.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %22 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %23, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %24 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %port)
  %cmp5.i.i = icmp eq i32 %25, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %26 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %gswip_mii_mask_cfg.exit.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %gswip_mii_mask_cfg.exit.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i = icmp eq i32 %28, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.if.end_crit_edge, label %if.then

dsa_is_cpu_port.exit.if.end_crit_edge:            ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mdio.i.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdio.i.i.i, align 4
  %.neg.i = mul i32 %port, -4
  %mul.i.i.i = add i32 %.neg.i, 84
  %add.ptr.i.i.i6 = getelementptr i8, ptr %30, i32 %mul.i.i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i6) #11, !srcloc !348
  %and.i.i7 = and i32 %31, -24577
  %or.i.i = or i32 %and.i.i7, 16384
  %32 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i7.i.i8 = getelementptr i8, ptr %33, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i8, i32 %or.i.i) #11, !srcloc !349
  br label %if.end

if.end:                                           ; preds = %if.then, %dsa_is_cpu_port.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_phylink_mac_link_up(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr nocapture noundef readnone %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_cpu_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_cpu_port.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i.i = icmp eq i32 %8, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %entry.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.if.end_crit_edge, label %if.then

dsa_is_cpu_port.exit.if.end_crit_edge:            ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dsa_is_cpu_port.exit
  %mdio.i.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio.i.i.i, align 4
  %.neg.i = mul i32 %port, -4
  %mul.i.i.i = add i32 %.neg.i, 84
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %mul.i.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !348
  %and.i.i = and i32 %14, -24577
  %or.i.i = or i32 %and.i.i, 8192
  %15 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %16, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %or.i.i) #11, !srcloc !349
  %17 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %speed, label %if.then.sw.epilog.i_crit_edge [
    i32 10, label %sw.bb.i
    i32 100, label %sw.bb1.i
    i32 1000, label %sw.bb6.i
  ]

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %interface)
  %cmp.i14 = icmp eq i32 %interface, 7
  %..i = select i1 %cmp.i14, i32 48, i32 0
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %interface)
  %cmp2.i = icmp eq i32 %interface, 7
  %.12.i = select i1 %cmp2.i, i32 48, i32 16
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb1.i, %sw.bb.i, %if.then.sw.epilog.i_crit_edge
  %mdio_phy.0.i = phi i32 [ 0, %if.then.sw.epilog.i_crit_edge ], [ 4096, %sw.bb6.i ], [ 2048, %sw.bb1.i ], [ 0, %sw.bb.i ]
  %mii_cfg.2.i = phi i32 [ 0, %if.then.sw.epilog.i_crit_edge ], [ 32, %sw.bb6.i ], [ %.12.i, %sw.bb1.i ], [ %..i, %sw.bb.i ]
  %mac_ctrl_0.0.i = phi i32 [ 0, %if.then.sw.epilog.i_crit_edge ], [ 2, %sw.bb6.i ], [ 1, %sw.bb1.i ], [ 1, %sw.bb.i ]
  %18 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i.i.i18 = getelementptr i8, ptr %19, i32 %mul.i.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i18) #11, !srcloc !348
  %and.i.i19 = and i32 %20, -6145
  %or.i.i20 = or i32 %and.i.i19, %mdio_phy.0.i
  %21 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i7.i.i21 = getelementptr i8, ptr %22, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i21, i32 %or.i.i20) #11, !srcloc !349
  %ds.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %ds.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ds.i.i, align 4
  %dst1.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dst1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst1.i.i.i.i, align 4
  %ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn20.i.i.i.i = load ptr, ptr %ports.i.i.i.i, align 4
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not21.i.i.i.i, label %sw.epilog.i.dsa_is_cpu_port.exit.i.i_crit_edge, label %sw.epilog.i.for.body.i.i.i.i_crit_edge

sw.epilog.i.for.body.i.i.i.i_crit_edge:           ; preds = %sw.epilog.i
  br label %for.body.i.i.i.i

sw.epilog.i.dsa_is_cpu_port.exit.i.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %sw.epilog.i.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %sw.epilog.i.for.body.i.i.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %28 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %29, %24
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %index.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %30 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %port)
  %cmp5.i.i.i.i = icmp eq i32 %31, %port
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %32 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i.i.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i.i

cleanup.split.loop.exit18.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i.i

dsa_is_cpu_port.exit.i.i:                         ; preds = %cleanup.split.loop.exit18.i.i.i.i, %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, %sw.epilog.i.dsa_is_cpu_port.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %dp.0.le.i.i.i.i, %cleanup.split.loop.exit18.i.i.i.i ], [ null, %sw.epilog.i.dsa_is_cpu_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge ]
  %type.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.i.i = icmp eq i32 %34, 1
  br i1 %cmp.i.i.i, label %dsa_is_cpu_port.exit.i.i.gswip_port_set_speed.exit_crit_edge, label %if.then.i.i

dsa_is_cpu_port.exit.i.i.gswip_port_set_speed.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_port_set_speed.exit

if.then.i.i:                                      ; preds = %dsa_is_cpu_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i = shl i32 %port, 3
  %mii.i.i.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %mii.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mii.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 %mul.i.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !348
  %and.i.i.i = and i32 %37, -113
  %or.i.i.i = or i32 %and.i.i.i, %mii_cfg.2.i
  %38 = ptrtoint ptr %mii.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mii.i.i.i.i, align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %39, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %or.i.i.i) #11, !srcloc !349
  br label %gswip_port_set_speed.exit

gswip_port_set_speed.exit:                        ; preds = %if.then.i.i, %dsa_is_cpu_port.exit.i.i.gswip_port_set_speed.exit_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.i = mul i32 %port, 48
  %mul.i.i13.i = add i32 %add.i, 9228
  %add.ptr.i.i14.i = getelementptr i8, ptr %41, i32 %mul.i.i13.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14.i) #11, !srcloc !348
  %and.i15.i = and i32 %42, -4
  %or.i16.i = or i32 %and.i15.i, %mac_ctrl_0.0.i
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %44, i32 %mul.i.i13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %or.i16.i) #11, !srcloc !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp.i22 = icmp eq i32 %duplex, 1
  %..i23 = select i1 %cmp.i22, i32 4, i32 12
  %.3.i = select i1 %cmp.i22, i32 512, i32 1536
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %46, i32 %mul.i.i13.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26) #11, !srcloc !348
  %and.i.i27 = and i32 %47, -13
  %or.i.i28 = or i32 %and.i.i27, %..i23
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %add.ptr.i6.i.i29 = getelementptr i8, ptr %49, i32 %mul.i.i13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i29, i32 %or.i.i28) #11, !srcloc !349
  %50 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %51, i32 %mul.i.i.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #11, !srcloc !348
  %and.i6.i = and i32 %52, -1537
  %or.i7.i = or i32 %and.i6.i, %.3.i
  %53 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i7.i.i32 = getelementptr i8, ptr %54, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i32, i32 %or.i7.i) #11, !srcloc !349
  %brmerge.demorgan.i = and i1 %tx_pause, %rx_pause
  %.mux.i = select i1 %brmerge.demorgan.i, i32 48, i32 32
  %.mux17.i = select i1 %brmerge.demorgan.i, i32 288, i32 352
  %..i33 = select i1 %rx_pause, i32 16, i32 64
  %.15.i = select i1 %rx_pause, i32 416, i32 480
  %mac_ctrl_0.0.i34 = select i1 %tx_pause, i32 %.mux.i, i32 %..i33
  %mdio_phy.0.i35 = select i1 %tx_pause, i32 %.mux17.i, i32 %.15.i
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i38 = getelementptr i8, ptr %56, i32 %mul.i.i13.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i38) #11, !srcloc !348
  %and.i.i39 = and i32 %57, -113
  %or.i.i40 = or i32 %and.i.i39, %mac_ctrl_0.0.i34
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %add.ptr.i6.i.i41 = getelementptr i8, ptr %59, i32 %mul.i.i13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i41, i32 %or.i.i40) #11, !srcloc !349
  %60 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %61, i32 %mul.i.i.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #11, !srcloc !348
  %and.i20.i = and i32 %62, -481
  %or.i21.i = or i32 %and.i20.i, %mdio_phy.0.i35
  %63 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdio.i.i.i, align 4
  %add.ptr.i7.i.i44 = getelementptr i8, ptr %64, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i44, i32 %or.i21.i) #11, !srcloc !349
  br label %if.end

if.end:                                           ; preds = %gswip_port_set_speed.exit, %dsa_is_cpu_port.exit.if.end_crit_edge
  %ds.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ds.i, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %if.end.dsa_is_cpu_port.exit.i_crit_edge, label %if.end.for.body.i.i.i_crit_edge

if.end.for.body.i.i.i_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i.i

if.end.dsa_is_cpu_port.exit.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %if.end.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %70 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %71, %66
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %72 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %port)
  %cmp5.i.i.i = icmp eq i32 %73, %port
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %74 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, %if.end.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %if.end.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i.i = icmp eq i32 %76, 1
  br i1 %cmp.i.i, label %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge, label %if.then.i

dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_mii_mask_cfg.exit

if.then.i:                                        ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl i32 %port, 3
  %mii.i.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 2
  %77 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i.i.i45 = getelementptr i8, ptr %78, i32 %mul.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i45) #11, !srcloc !348
  %or.i.i46 = or i32 %79, 16384
  %80 = ptrtoint ptr %mii.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mii.i.i.i, align 4
  %add.ptr.i7.i.i47 = getelementptr i8, ptr %81, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i47, i32 %or.i.i46) #11, !srcloc !349
  br label %gswip_mii_mask_cfg.exit

gswip_mii_mask_cfg.exit:                          ; preds = %if.then.i, %dsa_is_cpu_port.exit.i.gswip_mii_mask_cfg.exit_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_get_strings(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.05, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %name = getelementptr [37 x %struct.gswip_rmon_cnt_desc], ptr @gswip_rmon_cnt, i32 0, i32 %i.05, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 32)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [37 x %struct.gswip_rmon_cnt_desc], ptr @gswip_rmon_cnt, i32 0, i32 %i.018
  %offset = getelementptr [37 x %struct.gswip_rmon_cnt_desc], ptr @gswip_rmon_cnt, i32 0, i32 %i.018, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %call = tail call fastcc i32 @gswip_bcm_ram_entry_read(ptr noundef %1, i32 noundef %port, i32 noundef %3)
  %conv = zext i32 %call to i64
  %arrayidx2 = getelementptr i64, ptr %data, i32 %i.018
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %arrayidx2, align 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %3, 1
  %call6 = tail call fastcc i32 @gswip_bcm_ram_entry_read(ptr noundef %1, i32 noundef %port, i32 noundef %add)
  %conv7 = zext i32 %call6 to i64
  %shl = shl nuw i64 %conv7, 32
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx2, align 8
  %or = or i64 %shl, %8
  store i64 %or, ptr %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 37
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gswip_get_sset_count(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %sset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 37, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_enable(ptr noundef readonly %ds, i32 noundef %port, ptr noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_user_port.exit.thread, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i.i = icmp eq i32 %8, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %dsa_is_user_port.exit.for.body.i.i42_crit_edge, label %dsa_is_user_port.exit.cleanup_crit_edge

dsa_is_user_port.exit.cleanup_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dsa_is_user_port.exit.for.body.i.i42_crit_edge:   ; preds = %dsa_is_user_port.exit
  br label %for.body.i.i42

dsa_is_user_port.exit.thread:                     ; preds = %entry
  call void @__asan_load4_noabort(i32 24)
  %12 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i83 = icmp eq i32 %12, 3
  br i1 %cmp.i83, label %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge, label %dsa_is_user_port.exit.thread.cleanup_crit_edge

dsa_is_user_port.exit.thread.cleanup_crit_edge:   ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i42:                                   ; preds = %for.inc.i.i48.for.body.i.i42_crit_edge, %dsa_is_user_port.exit.for.body.i.i42_crit_edge
  %.pn22.i.i39 = phi ptr [ %.pn.i.i46, %for.inc.i.i48.for.body.i.i42_crit_edge ], [ %.pn20.i.i, %dsa_is_user_port.exit.for.body.i.i42_crit_edge ]
  %ds3.i.i40 = getelementptr i8, ptr %.pn22.i.i39, i32 -432
  %13 = ptrtoint ptr %ds3.i.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds3.i.i40, align 4
  %cmp4.i.i41 = icmp eq ptr %14, %ds
  br i1 %cmp4.i.i41, label %land.lhs.true.i.i45, label %for.body.i.i42.for.inc.i.i48_crit_edge

for.body.i.i42.for.inc.i.i48_crit_edge:           ; preds = %for.body.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i48

land.lhs.true.i.i45:                              ; preds = %for.body.i.i42
  %index.i.i43 = getelementptr i8, ptr %.pn22.i.i39, i32 -428
  %15 = ptrtoint ptr %index.i.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %port)
  %cmp5.i.i44 = icmp eq i32 %16, %port
  br i1 %cmp5.i.i44, label %cleanup.split.loop.exit18.i.i50, label %land.lhs.true.i.i45.for.inc.i.i48_crit_edge

land.lhs.true.i.i45.for.inc.i.i48_crit_edge:      ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i48

for.inc.i.i48:                                    ; preds = %land.lhs.true.i.i45.for.inc.i.i48_crit_edge, %for.body.i.i42.for.inc.i.i48_crit_edge
  %17 = ptrtoint ptr %.pn22.i.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i.i46 = load ptr, ptr %.pn22.i.i39, align 4
  %cmp.not.i.i47 = icmp eq ptr %.pn.i.i46, %ports.i.i
  br i1 %cmp.not.i.i47, label %for.inc.i.i48.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i48.for.body.i.i42_crit_edge

for.inc.i.i48.for.body.i.i42_crit_edge:           ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i42

for.inc.i.i48.dsa_is_cpu_port.exit_crit_edge:     ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i50:                  ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i49 = getelementptr i8, ptr %.pn22.i.i39, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i50, %for.inc.i.i48.dsa_is_cpu_port.exit_crit_edge, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i51 = phi ptr [ %dp.0.le.i.i49, %cleanup.split.loop.exit18.i.i50 ], [ null, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i48.dsa_is_cpu_port.exit_crit_edge ]
  %type.i52 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i51, i32 0, i32 6
  %18 = ptrtoint ptr %type.i52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i53 = icmp eq i32 %19, 1
  br i1 %cmp.i53, label %dsa_is_cpu_port.exit.if.end7_crit_edge, label %if.then3

dsa_is_cpu_port.exit.if.end7_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %dsa_is_cpu_port.exit
  %call4 = tail call fastcc i32 @gswip_add_single_port_br(ptr noundef %1, i32 noundef %port, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then3.if.end7_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %dsa_is_cpu_port.exit.if.end7_crit_edge
  %mul = shl i32 %port, 3
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %mul.i = add i32 %mul, 512
  %add.ptr.i = getelementptr i8, ptr %21, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #11, !srcloc !349
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add9 = mul i32 %port, 24
  %mul.i.i = add i32 %add9, 10752
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %mul.i.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %or.i = or i32 %24, 25
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %26, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #11, !srcloc !349
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %mul.i.i54 = add i32 %add9, 12032
  %add.ptr.i.i55 = getelementptr i8, ptr %28, i32 %mul.i.i54
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #11, !srcloc !348
  %or.i56 = or i32 %29, 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i6.i57 = getelementptr i8, ptr %31, i32 %mul.i.i54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i57, i32 %or.i56) #11, !srcloc !349
  %32 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i59 = getelementptr inbounds %struct.dsa_switch_tree, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ports.i.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn20.i.i60 = load ptr, ptr %ports.i.i59, align 4
  %cmp.not21.i.i61 = icmp eq ptr %.pn20.i.i60, %ports.i.i59
  br i1 %cmp.not21.i.i61, label %if.end7.dsa_is_cpu_port.exit77_crit_edge, label %if.end7.for.body.i.i65_crit_edge

if.end7.for.body.i.i65_crit_edge:                 ; preds = %if.end7
  br label %for.body.i.i65

if.end7.dsa_is_cpu_port.exit77_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit77

for.body.i.i65:                                   ; preds = %for.inc.i.i71.for.body.i.i65_crit_edge, %if.end7.for.body.i.i65_crit_edge
  %.pn22.i.i62 = phi ptr [ %.pn.i.i69, %for.inc.i.i71.for.body.i.i65_crit_edge ], [ %.pn20.i.i60, %if.end7.for.body.i.i65_crit_edge ]
  %ds3.i.i63 = getelementptr i8, ptr %.pn22.i.i62, i32 -432
  %35 = ptrtoint ptr %ds3.i.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ds3.i.i63, align 4
  %cmp4.i.i64 = icmp eq ptr %36, %ds
  br i1 %cmp4.i.i64, label %land.lhs.true.i.i68, label %for.body.i.i65.for.inc.i.i71_crit_edge

for.body.i.i65.for.inc.i.i71_crit_edge:           ; preds = %for.body.i.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i71

land.lhs.true.i.i68:                              ; preds = %for.body.i.i65
  %index.i.i66 = getelementptr i8, ptr %.pn22.i.i62, i32 -428
  %37 = ptrtoint ptr %index.i.i66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index.i.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %port)
  %cmp5.i.i67 = icmp eq i32 %38, %port
  br i1 %cmp5.i.i67, label %cleanup.split.loop.exit18.i.i73, label %land.lhs.true.i.i68.for.inc.i.i71_crit_edge

land.lhs.true.i.i68.for.inc.i.i71_crit_edge:      ; preds = %land.lhs.true.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i71

for.inc.i.i71:                                    ; preds = %land.lhs.true.i.i68.for.inc.i.i71_crit_edge, %for.body.i.i65.for.inc.i.i71_crit_edge
  %39 = ptrtoint ptr %.pn22.i.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i.i69 = load ptr, ptr %.pn22.i.i62, align 4
  %cmp.not.i.i70 = icmp eq ptr %.pn.i.i69, %ports.i.i59
  br i1 %cmp.not.i.i70, label %for.inc.i.i71.dsa_is_cpu_port.exit77_crit_edge, label %for.inc.i.i71.for.body.i.i65_crit_edge

for.inc.i.i71.for.body.i.i65_crit_edge:           ; preds = %for.inc.i.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i65

for.inc.i.i71.dsa_is_cpu_port.exit77_crit_edge:   ; preds = %for.inc.i.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit77

cleanup.split.loop.exit18.i.i73:                  ; preds = %land.lhs.true.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i72 = getelementptr i8, ptr %.pn22.i.i62, i32 -448
  br label %dsa_is_cpu_port.exit77

dsa_is_cpu_port.exit77:                           ; preds = %cleanup.split.loop.exit18.i.i73, %for.inc.i.i71.dsa_is_cpu_port.exit77_crit_edge, %if.end7.dsa_is_cpu_port.exit77_crit_edge
  %retval.0.i.i74 = phi ptr [ %dp.0.le.i.i72, %cleanup.split.loop.exit18.i.i73 ], [ null, %if.end7.dsa_is_cpu_port.exit77_crit_edge ], [ null, %for.inc.i.i71.dsa_is_cpu_port.exit77_crit_edge ]
  %type.i75 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i74, i32 0, i32 6
  %40 = ptrtoint ptr %type.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i76 = icmp eq i32 %41, 1
  br i1 %cmp.i76, label %dsa_is_cpu_port.exit77.cleanup_crit_edge, label %if.then13

dsa_is_cpu_port.exit77.cleanup_crit_edge:         ; preds = %dsa_is_cpu_port.exit77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %dsa_is_cpu_port.exit77
  %tobool14.not = icmp eq ptr %phydev, null
  br i1 %tobool14.not, label %if.then13.if.end16_crit_edge, label %if.then15

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr, align 8
  %and = and i32 %43, 31
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13.if.end16_crit_edge
  %mdio_phy.0 = phi i32 [ %and, %if.then15 ], [ 0, %if.then13.if.end16_crit_edge ]
  %mdio.i.i = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdio.i.i, align 4
  %.neg = mul i32 %port, -4
  %mul.i.i78 = add i32 %.neg, 84
  %add.ptr.i.i79 = getelementptr i8, ptr %45, i32 %mul.i.i78
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79) #11, !srcloc !348
  %and.i = and i32 %46, -32
  %or.i80 = or i32 %and.i, %mdio_phy.0
  %47 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %48, i32 %mul.i.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %or.i80) #11, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %dsa_is_cpu_port.exit77.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %dsa_is_user_port.exit.thread.cleanup_crit_edge, %dsa_is_user_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dsa_is_user_port.exit.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.end16 ], [ 0, %dsa_is_cpu_port.exit77.cleanup_crit_edge ], [ 0, %dsa_is_user_port.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_port_disable(ptr noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_user_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_user_port.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i.i = icmp eq i32 %8, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %entry.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.end, label %dsa_is_user_port.exit.cleanup_crit_edge

dsa_is_user_port.exit.cleanup_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add = mul i32 %port, 24
  %mul.i.i = add i32 %add, 10752
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %mul.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %and.i = and i32 %14, -2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %16, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %and.i) #11, !srcloc !349
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %mul.i.i8 = add i32 %add, 12032
  %add.ptr.i.i9 = getelementptr i8, ptr %18, i32 %mul.i.i8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #11, !srcloc !348
  %and.i10 = and i32 %19, -2
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i6.i11 = getelementptr i8, ptr %21, i32 %mul.i.i8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i11, i32 %and.i10) #11, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dsa_is_user_port.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_bridge_join(ptr nocapture noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef readnone %tx_fwd_offload) #2 align 64 {
entry:
  %vlan_active.i = alloca %struct.gswip_pce_table_entry, align 2
  %vlan_active.i71.i = alloca %struct.gswip_pce_table_entry, align 2
  %vlan_active.i.i = alloca %struct.gswip_pce_table_entry, align 2
  %vlan_mapping.i = alloca %struct.gswip_pce_table_entry, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %call = tail call zeroext i1 @br_vlan_enabled(ptr noundef %0) #11
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_mapping.i) #11
  %3 = call ptr @memset(ptr %vlan_mapping.i, i32 0, i32 36)
  %hw_info.i = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_info.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %cpu_port3.i = getelementptr inbounds %struct.gswip_hw_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %cpu_port3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu_port3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp90.i = icmp ult i32 %7, 64
  br i1 %cmp90.i, label %for.body.i.preheader, label %if.then7.thread.i

for.body.i.preheader:                             ; preds = %if.then
  %arrayidx.i32 = getelementptr %struct.gswip_priv, ptr %2, i32 0, i32 8, i32 %7
  %10 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i32, align 4
  %cmp5.i33 = icmp eq ptr %11, %0
  br i1 %cmp5.i33, label %for.body.i.preheader.if.else.i_crit_edge, label %for.body.i.preheader.for.inc.i_crit_edge

for.body.i.preheader.for.inc.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %for.inc.i

for.body.i.preheader.if.else.i_crit_edge:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then7.thread.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active.i.i) #11
  br label %gswip_vlan_active_create.exit.thread.i

for.body.i:                                       ; preds = %for.inc.i
  %arrayidx.i = getelementptr %struct.gswip_priv, ptr %2, i32 0, i32 8, i32 %inc.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %cmp5.i = icmp eq ptr %13, %0
  br i1 %cmp5.i, label %if.else.i.loopexit, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.preheader.for.inc.i_crit_edge
  %i.091.i34 = phi i32 [ %inc.i, %for.body.i.for.inc.i_crit_edge ], [ %7, %for.body.i.preheader.for.inc.i_crit_edge ]
  %inc.i = add i32 %i.091.i34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.body.i.i.preheader, label %for.body.i

for.body.i.i.preheader:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.091.i34)
  %cmp.i.le44 = icmp ult i32 %i.091.i34, 63
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active.i.i) #11
  %14 = getelementptr inbounds i8, ptr %vlan_active.i.i, i32 6
  %15 = call ptr @memset(ptr %14, i32 0, i32 30)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.053.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %7, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr %struct.gswip_priv, ptr %2, i32 0, i32 8, i32 %i.053.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.gswip_vlan_active_create.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.gswip_vlan_active_create.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_active_create.exit.thread.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %conv.i.i = trunc i32 %i.053.i.i to i16
  %18 = ptrtoint ptr %vlan_active.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %vlan_active.i.i, align 2
  %table.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %table.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %table.i.i, align 2
  %key.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %key.i.i, align 2
  %val.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %val.i.i, align 2
  %valid.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %valid.i.i, align 2
  %call.i.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %2, ptr noundef nonnull %vlan_active.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 6
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.113, i32 noundef %call.i.i) #14
  br label %gswip_vlan_active_create.exit.i

if.end14.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %0, ptr %arrayidx.i.i, align 4
  %vid20.i.i = getelementptr %struct.gswip_priv, ptr %2, i32 0, i32 8, i32 %i.053.i.i, i32 1
  %26 = ptrtoint ptr %vid20.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %vid20.i.i, align 4
  %conv21.i.i = trunc i32 %i.053.i.i to i8
  %fid24.i.i = getelementptr %struct.gswip_priv, ptr %2, i32 0, i32 8, i32 %i.053.i.i, i32 2
  %27 = ptrtoint ptr %fid24.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv21.i.i, ptr %fid24.i.i, align 2
  br label %gswip_vlan_active_create.exit.i

gswip_vlan_active_create.exit.thread.i:           ; preds = %for.inc.i.i.gswip_vlan_active_create.exit.thread.i_crit_edge, %if.then7.thread.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i.i) #11
  br label %gswip_vlan_add_unaware.exit.thread

gswip_vlan_active_create.exit.i:                  ; preds = %if.end14.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %i.053.i.i, %if.end14.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp8.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp8.i, label %gswip_vlan_active_create.exit.i.gswip_vlan_add_unaware.exit.thread_crit_edge, label %if.end10.i

gswip_vlan_active_create.exit.i.gswip_vlan_add_unaware.exit.thread_crit_edge: ; preds = %gswip_vlan_active_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_add_unaware.exit.thread

if.end10.i:                                       ; preds = %gswip_vlan_active_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %retval.0.i.i to i16
  %28 = ptrtoint ptr %vlan_mapping.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %vlan_mapping.i, align 2
  %table.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 1
  %29 = ptrtoint ptr %table.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %table.i, align 2
  %val.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 3
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %val.i, align 2
  br label %if.end18.i

if.else.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.091.i34)
  %cmp.i.le = icmp ult i32 %i.091.i34, 63
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.i.loopexit, %for.body.i.preheader.if.else.i_crit_edge
  %cmp92.i.lcssa = phi i1 [ true, %for.body.i.preheader.if.else.i_crit_edge ], [ %cmp.i.le, %if.else.i.loopexit ]
  %i.091.i.lcssa = phi i32 [ %7, %for.body.i.preheader.if.else.i_crit_edge ], [ %inc.i, %if.else.i.loopexit ]
  %conv12.i = trunc i32 %i.091.i.lcssa to i16
  %31 = ptrtoint ptr %vlan_mapping.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv12.i, ptr %vlan_mapping.i, align 2
  %table14.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 1
  %32 = ptrtoint ptr %table14.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %table14.i, align 2
  %call15.i = call fastcc i32 @gswip_pce_table_entry_read(ptr noundef %2, ptr noundef nonnull %vlan_mapping.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end18.i_crit_edge, label %do.end.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 6
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.118, i32 noundef %call15.i) #14
  br label %gswip_vlan_add_unaware.exit.thread

if.end18.i:                                       ; preds = %if.else.i.if.end18.i_crit_edge, %if.end10.i
  %cmp88.i = phi i1 [ %cmp.i.le44, %if.end10.i ], [ %cmp92.i.lcssa, %if.else.i.if.end18.i_crit_edge ]
  %idx.1.i = phi i32 [ %retval.0.i.i, %if.end10.i ], [ %i.091.i.lcssa, %if.else.i.if.end18.i_crit_edge ]
  %shl.i = shl nuw i32 1, %9
  %arrayidx20.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx20.i, align 2
  %shl23.i = shl nuw i32 1, %port
  %conv2293.i = or i32 %shl.i, %shl23.i
  %conv22.i = trunc i32 %conv2293.i to i16
  %conv28.i = or i16 %36, %conv22.i
  store i16 %conv28.i, ptr %arrayidx20.i, align 2
  %call29.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %2, ptr noundef nonnull %vlan_mapping.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end, label %do.end34.i

do.end34.i:                                       ; preds = %if.end18.i
  %dev35.i = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 6
  %37 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev35.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.116, i32 noundef %call29.i) #14
  br i1 %cmp88.i, label %do.end34.i.gswip_vlan_add_unaware.exit.thread_crit_edge, label %if.then37.i

do.end34.i.gswip_vlan_add_unaware.exit.thread_crit_edge: ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_add_unaware.exit.thread

if.then37.i:                                      ; preds = %do.end34.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active.i71.i) #11
  %39 = getelementptr inbounds i8, ptr %vlan_active.i71.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 32)
  %conv.i72.i = trunc i32 %idx.1.i to i16
  %41 = ptrtoint ptr %vlan_active.i71.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i72.i, ptr %vlan_active.i71.i, align 2
  %table.i73.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i71.i, i32 0, i32 1
  %42 = ptrtoint ptr %table.i73.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %table.i73.i, align 2
  %call.i74.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %2, ptr noundef nonnull %vlan_active.i71.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool.not.i75.i, label %if.then37.i.gswip_vlan_active_remove.exit.i_crit_edge, label %do.end.i77.i

if.then37.i.gswip_vlan_active_remove.exit.i_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_active_remove.exit.i

do.end.i77.i:                                     ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev35.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.123, i32 noundef %call.i74.i) #14
  br label %gswip_vlan_active_remove.exit.i

gswip_vlan_active_remove.exit.i:                  ; preds = %do.end.i77.i, %if.then37.i.gswip_vlan_active_remove.exit.i_crit_edge
  %arrayidx.i78.i = getelementptr %struct.gswip_priv, ptr %2, i32 0, i32 8, i32 %idx.1.i
  %45 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.i78.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i71.i) #11
  br label %gswip_vlan_add_unaware.exit.thread

gswip_vlan_add_unaware.exit.thread:               ; preds = %gswip_vlan_active_remove.exit.i, %do.end34.i.gswip_vlan_add_unaware.exit.thread_crit_edge, %do.end.i, %gswip_vlan_active_create.exit.i.gswip_vlan_add_unaware.exit.thread_crit_edge, %gswip_vlan_active_create.exit.thread.i
  %retval.0.i.ph = phi i32 [ -28, %gswip_vlan_active_create.exit.thread.i ], [ %call29.i, %do.end34.i.gswip_vlan_add_unaware.exit.thread_crit_edge ], [ %call29.i, %gswip_vlan_active_remove.exit.i ], [ %retval.0.i.i, %gswip_vlan_active_create.exit.i.gswip_vlan_add_unaware.exit.thread_crit_edge ], [ %call15.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_mapping.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %2, align 4
  %add.i = mul i32 %port, 40
  %mul.i.i = add i32 %add.i, 4632
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !349
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_mapping.i) #11
  %neg = xor i32 %shl23.i, -1
  %port_vlan_filter = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 11
  %48 = ptrtoint ptr %port_vlan_filter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_vlan_filter, align 4
  %and = and i32 %49, %neg
  store i32 %and, ptr %port_vlan_filter, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shl4 = shl nuw i32 1, %port
  %port_vlan_filter5 = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 11
  %50 = ptrtoint ptr %port_vlan_filter5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_vlan_filter5, align 4
  %or = or i32 %51, %shl4
  store i32 %or, ptr %port_vlan_filter5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active.i) #11
  %52 = getelementptr inbounds i8, ptr %vlan_active.i, i32 6
  %53 = call ptr @memset(ptr %52, i32 0, i32 30)
  %hw_info.i19 = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 3
  %54 = ptrtoint ptr %hw_info.i19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_info.i19, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %port)
  %cmp.not.i = icmp ugt i32 %57, %port
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i21

do.end.i21:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i20 = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 6
  %58 = ptrtoint ptr %dev.i20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.110, i32 noundef %port) #14
  br label %gswip_add_single_port_br.exit

if.end.i:                                         ; preds = %if.end6
  %60 = trunc i32 %port to i16
  %conv.i22 = add i16 %60, 1
  %61 = ptrtoint ptr %vlan_active.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i22, ptr %vlan_active.i, align 2
  %table.i23 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i, i32 0, i32 1
  %62 = ptrtoint ptr %table.i23 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %table.i23, align 2
  %key.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i, i32 0, i32 2
  %63 = ptrtoint ptr %key.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %key.i, align 2
  %val.i24 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i, i32 0, i32 3
  %64 = ptrtoint ptr %val.i24 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i22, ptr %val.i24, align 2
  %call.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %2, ptr noundef nonnull %vlan_active.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end.i.gswip_add_single_port_br.exit_crit_edge, label %do.end13.i

if.end.i.gswip_add_single_port_br.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_add_single_port_br.exit

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev14.i = getelementptr inbounds %struct.gswip_priv, ptr %2, i32 0, i32 6
  %65 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.113, i32 noundef %call.i) #14
  br label %gswip_add_single_port_br.exit

gswip_add_single_port_br.exit:                    ; preds = %do.end13.i, %if.end.i.gswip_add_single_port_br.exit_crit_edge, %do.end.i21
  %retval.0.i25 = phi i32 [ -5, %do.end.i21 ], [ %call.i, %do.end13.i ], [ 0, %if.end.i.gswip_add_single_port_br.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i) #11
  br label %cleanup

cleanup:                                          ; preds = %gswip_add_single_port_br.exit, %gswip_vlan_add_unaware.exit.thread
  %retval.0 = phi i32 [ %retval.0.i25, %gswip_add_single_port_br.exit ], [ %retval.0.i.ph, %gswip_vlan_add_unaware.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_port_bridge_leave(ptr nocapture noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %call = tail call fastcc i32 @gswip_add_single_port_br(ptr noundef %2, i32 noundef %port, i1 noundef zeroext true)
  %call2 = tail call zeroext i1 @br_vlan_enabled(ptr noundef %0) #11
  br i1 %call2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call fastcc i32 @gswip_vlan_remove(ptr noundef %2, ptr noundef %0, i32 noundef %port, i16 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %state, label %do.end [
    i8 0, label %sw.bb
    i8 4, label %entry.sw.epilog_crit_edge
    i8 1, label %entry.sw.epilog_crit_edge25
    i8 2, label %sw.bb3
    i8 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge25:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add = mul i32 %port, 24
  %mul.i.i = add i32 %add, 12032
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %mul.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %and.i = and i32 %5, -2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %and.i) #11, !srcloc !349
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %state to i32
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.133, i32 noundef %conv) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge25
  %stp_state.0 = phi i32 [ 7, %sw.bb4 ], [ 3, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge25 ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add7 = mul i32 %port, 24
  %mul.i.i17 = add i32 %add7, 12032
  %add.ptr.i.i18 = getelementptr i8, ptr %11, i32 %mul.i.i17
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #11, !srcloc !348
  %or.i = or i32 %12, 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i6.i19 = getelementptr i8, ptr %14, i32 %mul.i.i17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i19, i32 %or.i) #11, !srcloc !349
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add9 = mul i32 %port, 40
  %mul.i.i20 = add i32 %add9, 4608
  %add.ptr.i.i21 = getelementptr i8, ptr %16, i32 %mul.i.i20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #11, !srcloc !348
  %and.i22 = and i32 %17, -8
  %or.i23 = or i32 %and.i22, %stp_state.0
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i6.i24 = getelementptr i8, ptr %19, i32 %mul.i.i20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i24, i32 %or.i23) #11, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gswip_port_fast_age(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  %mac_bridge = alloca %struct.gswip_pce_table_entry, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mac_bridge) #11
  %2 = getelementptr inbounds i8, ptr %mac_bridge, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %table = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 1
  %valid = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 7
  %arrayidx = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 3, i32 1
  %val = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %table to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 11, ptr %table, align 2
  %conv = trunc i32 %i.038 to i16
  %5 = ptrtoint ptr %mac_bridge to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %mac_bridge, align 2
  %call = call fastcc i32 @gswip_pce_table_entry_read(ptr noundef %1, ptr noundef nonnull %mac_bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.135, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid, align 2, !range !352
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool6.not = icmp eq i16 %12, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %if.end4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %val, align 2
  %15 = lshr i16 %14, 4
  %16 = and i16 %15, 15
  %shr = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %port)
  %cmp13.not = icmp eq i32 %shr, %port
  br i1 %cmp13.not, label %if.end16, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end16:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %valid, align 2
  %call18 = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %1, ptr noundef nonnull %mac_bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.for.inc_crit_edge, label %do.end23

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %dev24 = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.138, i32 noundef %call18) #14
  br label %cleanup

for.inc:                                          ; preds = %if.end16.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %if.end4.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end23, %do.end
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mac_bridge) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_vlan_filtering(ptr noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %vlan_filtering, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.thread, label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit.thread:              ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %priv246 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %10 = ptrtoint ptr %priv246 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv246, align 4
  br label %if.end9

dsa_port_bridge_dev_get.exit:                     ; preds = %dsa_to_port.exit
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %14 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv2, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %dsa_port_bridge_dev_get.exit.if.end9_crit_edge, label %land.lhs.true

dsa_port_bridge_dev_get.exit.if.end9_crit_edge:   ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %dsa_port_bridge_dev_get.exit
  %port_vlan_filter = getelementptr inbounds %struct.gswip_priv, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %port_vlan_filter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_vlan_filter, align 4
  %18 = shl nuw i32 1, %port
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  %cmp.not = xor i1 %20, %vlan_filtering
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %do.body

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gswip_port_vlan_filtering.__msg) #11
  %tobool7.not = icmp eq ptr %extack, null
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %if.then8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gswip_port_vlan_filtering.__msg, ptr %extack, align 4
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %dsa_port_bridge_dev_get.exit.if.end9_crit_edge, %dsa_port_bridge_dev_get.exit.thread
  %22 = phi ptr [ %11, %dsa_port_bridge_dev_get.exit.thread ], [ %15, %land.lhs.true.if.end9_crit_edge ], [ %15, %dsa_port_bridge_dev_get.exit.if.end9_crit_edge ]
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %add = mul i32 %port, 40
  %mul.i.i = add i32 %add, 4628
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %mul.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11
  %and.i = and i32 %25, -58
  br i1 %vlan_filtering, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %and.i, 25
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %27, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #11, !srcloc !349
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %22, align 4
  %mul.i.i32 = add i32 %add, 4608
  %add.ptr.i.i33 = getelementptr i8, ptr %29, i32 %mul.i.i32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #11, !srcloc !348
  %and.i34 = and i32 %30, -33
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %22, align 4
  %add.ptr.i6.i35 = getelementptr i8, ptr %32, i32 %mul.i.i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i35, i32 %and.i34) #11, !srcloc !349
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %or.i39 = or i32 %and.i, 32
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %22, align 4
  %add.ptr.i6.i40 = getelementptr i8, ptr %34, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i40, i32 %or.i39) #11, !srcloc !349
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %22, align 4
  %mul.i.i41 = add i32 %add, 4608
  %add.ptr.i.i42 = getelementptr i8, ptr %36, i32 %mul.i.i41
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #11, !srcloc !348
  %or.i43 = or i32 %37, 32
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %22, align 4
  %add.ptr.i6.i44 = getelementptr i8, ptr %39, i32 %mul.i.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i44, i32 %or.i43) #11, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.then8, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then8 ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_vlan_add(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr noundef writeonly %extack) #2 align 64 {
entry:
  %vlan_active.i143.i = alloca %struct.gswip_pce_table_entry, align 2
  %vlan_active.i.i = alloca %struct.gswip_pce_table_entry, align 2
  %vlan_mapping.i = alloca %struct.gswip_pce_table_entry, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge, label %cond.true.i

dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge: ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_port_bridge_dev_get.exit

cond.true.i:                                      ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  br label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit:                     ; preds = %cond.true.i, %dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.true.i ], [ null, %dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge ]
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %12 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv2, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 4
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %cmp.not21.i, label %dsa_port_bridge_dev_get.exit.dsa_to_port.exit.i_crit_edge, label %dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge

dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit
  br label %for.body.i.i

dsa_port_bridge_dev_get.exit.dsa_to_port.exit.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i, %dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %16 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %17, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %port)
  %cmp5.i.i = icmp eq i32 %19, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %20 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %dsa_port_bridge_dev_get.exit.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %dsa_port_bridge_dev_get.exit.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.i.dsa_port_bridge_dev_get.exit.i_crit_edge, label %cond.true.i.i

dsa_to_port.exit.i.dsa_port_bridge_dev_get.exit.i_crit_edge: ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_port_bridge_dev_get.exit.i

cond.true.i.i:                                    ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  br label %dsa_port_bridge_dev_get.exit.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %cond.true.i.i, %dsa_to_port.exit.i.dsa_port_bridge_dev_get.exit.i_crit_edge
  %cond.i.i = phi ptr [ %24, %cond.true.i.i ], [ null, %dsa_to_port.exit.i.dsa_port_bridge_dev_get.exit.i_crit_edge ]
  %hw_info.i = getelementptr inbounds %struct.gswip_priv, ptr %13, i32 0, i32 3
  %25 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_info.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  br i1 %cmp.not21.i, label %dsa_port_bridge_dev_get.exit.i.dsa_is_cpu_port.exit.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i.for.body.i.i.i_crit_edge

dsa_port_bridge_dev_get.exit.i.for.body.i.i.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  br label %for.body.i.i.i

dsa_port_bridge_dev_get.exit.i.dsa_is_cpu_port.exit.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i, %dsa_port_bridge_dev_get.exit.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %29 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %30, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %31 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %port)
  %cmp5.i.i.i = icmp eq i32 %32, %port
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %33 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %dsa_port_bridge_dev_get.exit.i.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i.i = icmp ne i32 %35, 1
  %tobool.not.i30 = icmp eq ptr %cond.i.i, null
  %or.cond.i = select i1 %cmp.i.i, i1 %tobool.not.i30, i1 false
  br i1 %or.cond.i, label %dsa_is_cpu_port.exit.i.cleanup_crit_edge, label %for.cond.preheader.i

dsa_is_cpu_port.exit.i.cleanup_crit_edge:         ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i:                             ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %28)
  %cmp71.i = icmp ult i32 %28, 64
  br i1 %cmp71.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.do.body.i_crit_edge

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %vid10.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.inc.i32.for.body.i31_crit_edge, %for.body.lr.ph.i
  %i.072.i = phi i32 [ %28, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i32.for.body.i31_crit_edge ]
  %arrayidx.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.072.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %cmp6.i = icmp eq ptr %37, %cond.i.i
  br i1 %cmp6.i, label %land.lhs.true7.i, label %for.body.i31.for.inc.i32_crit_edge

for.body.i31.for.inc.i32_crit_edge:               ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i32

land.lhs.true7.i:                                 ; preds = %for.body.i31
  %vid.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.072.i, i32 1
  %38 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid.i, align 4
  %40 = ptrtoint ptr %vid10.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vid10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp12.i = icmp eq i16 %39, %41
  br i1 %cmp12.i, label %land.lhs.true7.i.if.end_crit_edge, label %land.lhs.true7.i.for.inc.i32_crit_edge

land.lhs.true7.i.for.inc.i32_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i32

land.lhs.true7.i.if.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i32:                                      ; preds = %land.lhs.true7.i.for.inc.i32_crit_edge, %for.body.i31.for.inc.i32_crit_edge
  %inc.i = add i32 %i.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i32.for.body22.i_crit_edge, label %for.inc.i32.for.body.i31_crit_edge

for.inc.i32.for.body.i31_crit_edge:               ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i31

for.inc.i32.for.body22.i_crit_edge:               ; preds = %for.inc.i32
  br label %for.body22.i

for.cond19.i:                                     ; preds = %for.body22.i
  %inc31.i = add i32 %pos.075.i, 1
  %exitcond79.not.i = icmp eq i32 %inc31.i, 64
  br i1 %exitcond79.not.i, label %for.cond19.i.do.body.i_crit_edge, label %for.cond19.i.for.body22.i_crit_edge

for.cond19.i.for.body22.i_crit_edge:              ; preds = %for.cond19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i

for.cond19.i.do.body.i_crit_edge:                 ; preds = %for.cond19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.body22.i:                                     ; preds = %for.cond19.i.for.body22.i_crit_edge, %for.inc.i32.for.body22.i_crit_edge
  %pos.075.i = phi i32 [ %inc31.i, %for.cond19.i.for.body22.i_crit_edge ], [ %28, %for.inc.i32.for.body22.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %pos.075.i
  %42 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx24.i, align 4
  %tobool26.not.i = icmp eq ptr %43, null
  br i1 %tobool26.not.i, label %for.body22.i.if.end_crit_edge, label %for.cond19.i

for.body22.i.if.end_crit_edge:                    ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.i:                                        ; preds = %for.cond19.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @gswip_port_vlan_prepare.__msg) #11
  %tobool36.not.i = icmp eq ptr %extack, null
  br i1 %tobool36.not.i, label %do.body.i.cleanup_crit_edge, label %if.then37.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @gswip_port_vlan_prepare.__msg, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body22.i.if.end_crit_edge, %land.lhs.true7.i.if.end_crit_edge
  %45 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst1.i, align 4
  %ports.i.i35 = getelementptr inbounds %struct.dsa_switch_tree, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %ports.i.i35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn20.i.i36 = load ptr, ptr %ports.i.i35, align 4
  %cmp.not21.i.i37 = icmp eq ptr %.pn20.i.i36, %ports.i.i35
  br i1 %cmp.not21.i.i37, label %if.end.dsa_is_cpu_port.exit_crit_edge, label %if.end.for.body.i.i41_crit_edge

if.end.for.body.i.i41_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i41

if.end.dsa_is_cpu_port.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i41:                                   ; preds = %for.inc.i.i47.for.body.i.i41_crit_edge, %if.end.for.body.i.i41_crit_edge
  %.pn22.i.i38 = phi ptr [ %.pn.i.i45, %for.inc.i.i47.for.body.i.i41_crit_edge ], [ %.pn20.i.i36, %if.end.for.body.i.i41_crit_edge ]
  %ds3.i.i39 = getelementptr i8, ptr %.pn22.i.i38, i32 -432
  %48 = ptrtoint ptr %ds3.i.i39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ds3.i.i39, align 4
  %cmp4.i.i40 = icmp eq ptr %49, %ds
  br i1 %cmp4.i.i40, label %land.lhs.true.i.i44, label %for.body.i.i41.for.inc.i.i47_crit_edge

for.body.i.i41.for.inc.i.i47_crit_edge:           ; preds = %for.body.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i47

land.lhs.true.i.i44:                              ; preds = %for.body.i.i41
  %index.i.i42 = getelementptr i8, ptr %.pn22.i.i38, i32 -428
  %50 = ptrtoint ptr %index.i.i42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %port)
  %cmp5.i.i43 = icmp eq i32 %51, %port
  br i1 %cmp5.i.i43, label %cleanup.split.loop.exit18.i.i49, label %land.lhs.true.i.i44.for.inc.i.i47_crit_edge

land.lhs.true.i.i44.for.inc.i.i47_crit_edge:      ; preds = %land.lhs.true.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i47

for.inc.i.i47:                                    ; preds = %land.lhs.true.i.i44.for.inc.i.i47_crit_edge, %for.body.i.i41.for.inc.i.i47_crit_edge
  %52 = ptrtoint ptr %.pn22.i.i38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i.i45 = load ptr, ptr %.pn22.i.i38, align 4
  %cmp.not.i.i46 = icmp eq ptr %.pn.i.i45, %ports.i.i35
  br i1 %cmp.not.i.i46, label %for.inc.i.i47.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i47.for.body.i.i41_crit_edge

for.inc.i.i47.for.body.i.i41_crit_edge:           ; preds = %for.inc.i.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i41

for.inc.i.i47.dsa_is_cpu_port.exit_crit_edge:     ; preds = %for.inc.i.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i49:                  ; preds = %land.lhs.true.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i48 = getelementptr i8, ptr %.pn22.i.i38, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i49, %for.inc.i.i47.dsa_is_cpu_port.exit_crit_edge, %if.end.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i50 = phi ptr [ %dp.0.le.i.i48, %cleanup.split.loop.exit18.i.i49 ], [ null, %if.end.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i47.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i50, i32 0, i32 6
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i = icmp eq i32 %54, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.cleanup_crit_edge, label %if.end12

dsa_is_cpu_port.exit.cleanup_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %dsa_is_cpu_port.exit
  %55 = ptrtoint ptr %vid10.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vid10.i, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_mapping.i) #11
  %57 = call ptr @memset(ptr %vlan_mapping.i, i32 0, i32 36)
  %58 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_info.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %cpu_port4.i = getelementptr inbounds %struct.gswip_hw_info, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %cpu_port4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu_port4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %61)
  %cmp165.i = icmp ult i32 %61, 64
  br i1 %cmp165.i, label %for.body.lr.ph.i53, label %if.end12.if.then30.i_crit_edge

if.end12.if.then30.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30.i

for.body.lr.ph.i53:                               ; preds = %if.end12
  %dev.i = getelementptr inbounds %struct.gswip_priv, ptr %13, i32 0, i32 6
  br label %for.body.i56

for.body.i56:                                     ; preds = %for.inc.i61.for.body.i56_crit_edge, %for.body.lr.ph.i53
  %cmp169.i = phi i1 [ true, %for.body.lr.ph.i53 ], [ %cmp.i59, %for.inc.i61.for.body.i56_crit_edge ]
  %i.0167.i = phi i32 [ %61, %for.body.lr.ph.i53 ], [ %inc.i58, %for.inc.i61.for.body.i56_crit_edge ]
  %fid.0166.i = phi i32 [ -1, %for.body.lr.ph.i53 ], [ %fid.1.i, %for.inc.i61.for.body.i56_crit_edge ]
  %arrayidx.i54 = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.0167.i
  %64 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i54, align 4
  %cmp6.i55 = icmp eq ptr %65, %cond.i
  br i1 %cmp6.i55, label %if.then.i, label %for.body.i56.for.inc.i61_crit_edge

for.body.i56.for.inc.i61_crit_edge:               ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i61

if.then.i:                                        ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fid.0166.i)
  %cmp7.not.i = icmp eq i32 %fid.0166.i, -1
  br i1 %cmp7.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i57

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i57:                                ; preds = %if.then.i
  %fid10.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.0167.i, i32 2
  %66 = ptrtoint ptr %fid10.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %fid10.i, align 2
  %conv.i = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fid.0166.i, i32 %conv.i)
  %cmp11.not.i = icmp eq i32 %fid.0166.i, %conv.i
  br i1 %cmp11.not.i, label %land.lhs.true.i57.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i57.if.end.i_crit_edge:             ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.140) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.i57.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %fid16.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.0167.i, i32 2
  %70 = ptrtoint ptr %fid16.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fid16.i, align 2
  %conv17.i = zext i8 %71 to i32
  %vid20.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.0167.i, i32 1
  %72 = ptrtoint ptr %vid20.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vid20.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %56)
  %cmp23.i = icmp eq i16 %73, %56
  br i1 %cmp23.i, label %if.else.i, label %if.end.i.for.inc.i61_crit_edge

if.end.i.for.inc.i61_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i61

for.inc.i61:                                      ; preds = %if.end.i.for.inc.i61_crit_edge, %for.body.i56.for.inc.i61_crit_edge
  %fid.1.i = phi i32 [ %conv17.i, %if.end.i.for.inc.i61_crit_edge ], [ %fid.0166.i, %for.body.i56.for.inc.i61_crit_edge ]
  %inc.i58 = add i32 %i.0167.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.0167.i)
  %cmp.i59 = icmp ult i32 %i.0167.i, 63
  %exitcond.not.i60 = icmp eq i32 %inc.i58, 64
  br i1 %exitcond.not.i60, label %for.inc.i61.if.then30.i_crit_edge, label %for.inc.i61.for.body.i56_crit_edge

for.inc.i61.for.body.i56_crit_edge:               ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i56

for.inc.i61.if.then30.i_crit_edge:                ; preds = %for.inc.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30.i

if.then30.i:                                      ; preds = %for.inc.i61.if.then30.i_crit_edge, %if.end12.if.then30.i_crit_edge
  %fid.0.lcssa.i = phi i32 [ -1, %if.end12.if.then30.i_crit_edge ], [ %fid.1.i, %for.inc.i61.if.then30.i_crit_edge ]
  %cmp.lcssa.i = phi i1 [ false, %if.end12.if.then30.i_crit_edge ], [ %cmp.i59, %for.inc.i61.if.then30.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active.i.i) #11
  %74 = getelementptr inbounds i8, ptr %vlan_active.i.i, i32 6
  %75 = call ptr @memset(ptr %74, i32 0, i32 30)
  %76 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_info.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %79)
  %cmp52.i.i = icmp ult i32 %79, 64
  br i1 %cmp52.i.i, label %if.then30.i.for.body.i.i63_crit_edge, label %if.then30.i.gswip_vlan_active_create.exit.thread.i_crit_edge

if.then30.i.gswip_vlan_active_create.exit.thread.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_active_create.exit.thread.i

if.then30.i.for.body.i.i63_crit_edge:             ; preds = %if.then30.i
  br label %for.body.i.i63

for.body.i.i63:                                   ; preds = %for.inc.i.i64.for.body.i.i63_crit_edge, %if.then30.i.for.body.i.i63_crit_edge
  %i.053.i.i = phi i32 [ %inc.i.i, %for.inc.i.i64.for.body.i.i63_crit_edge ], [ %79, %if.then30.i.for.body.i.i63_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.053.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i62 = icmp eq ptr %81, null
  br i1 %tobool.not.i.i62, label %if.end5.i.i, label %for.inc.i.i64

for.inc.i.i64:                                    ; preds = %for.body.i.i63
  %inc.i.i = add i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i64.gswip_vlan_active_create.exit.thread.i_crit_edge, label %for.inc.i.i64.for.body.i.i63_crit_edge

for.inc.i.i64.for.body.i.i63_crit_edge:           ; preds = %for.inc.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i63

for.inc.i.i64.gswip_vlan_active_create.exit.thread.i_crit_edge: ; preds = %for.inc.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_active_create.exit.thread.i

if.end5.i.i:                                      ; preds = %for.body.i.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fid.0.lcssa.i)
  %cmp6.i.i = icmp eq i32 %fid.0.lcssa.i, -1
  %spec.select.i.i = select i1 %cmp6.i.i, i32 %i.053.i.i, i32 %fid.0.lcssa.i
  %conv.i.i = trunc i32 %i.053.i.i to i16
  %82 = ptrtoint ptr %vlan_active.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i.i, ptr %vlan_active.i.i, align 2
  %table.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %table.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %table.i.i, align 2
  %key.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %56, ptr %key.i.i, align 2
  %conv10.i.i = trunc i32 %spec.select.i.i to i16
  %val.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv10.i.i, ptr %val.i.i, align 2
  %valid.i.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i.i, i32 0, i32 7
  %86 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %valid.i.i, align 2
  %call.i.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %13, ptr noundef nonnull %vlan_active.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.gswip_priv, ptr %13, i32 0, i32 6
  %87 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.113, i32 noundef %call.i.i) #14
  br label %gswip_vlan_active_create.exit.i

if.end14.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %cond.i, ptr %arrayidx.i.i, align 4
  %vid20.i.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.053.i.i, i32 1
  %90 = ptrtoint ptr %vid20.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %56, ptr %vid20.i.i, align 4
  %conv21.i.i = trunc i32 %spec.select.i.i to i8
  %fid24.i.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.053.i.i, i32 2
  %91 = ptrtoint ptr %fid24.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv21.i.i, ptr %fid24.i.i, align 2
  br label %gswip_vlan_active_create.exit.i

gswip_vlan_active_create.exit.thread.i:           ; preds = %for.inc.i.i64.gswip_vlan_active_create.exit.thread.i_crit_edge, %if.then30.i.gswip_vlan_active_create.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i.i) #11
  br label %gswip_vlan_add_aware.exit

gswip_vlan_active_create.exit.i:                  ; preds = %if.end14.i.i, %do.end.i.i
  %retval.0.i.i65 = phi i32 [ %call.i.i, %do.end.i.i ], [ %i.053.i.i, %if.end14.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i65)
  %cmp31.i = icmp slt i32 %retval.0.i.i65, 0
  br i1 %cmp31.i, label %gswip_vlan_active_create.exit.i.gswip_vlan_add_aware.exit_crit_edge, label %if.end34.i

gswip_vlan_active_create.exit.i.gswip_vlan_add_aware.exit_crit_edge: ; preds = %gswip_vlan_active_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_add_aware.exit

if.end34.i:                                       ; preds = %gswip_vlan_active_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv35.i = trunc i32 %retval.0.i.i65 to i16
  %92 = ptrtoint ptr %vlan_mapping.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv35.i, ptr %vlan_mapping.i, align 2
  %table.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 1
  %93 = ptrtoint ptr %table.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 2, ptr %table.i, align 2
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end.i
  %conv37.i = trunc i32 %i.0167.i to i16
  %94 = ptrtoint ptr %vlan_mapping.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv37.i, ptr %vlan_mapping.i, align 2
  %table39.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 1
  %95 = ptrtoint ptr %table39.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2, ptr %table39.i, align 2
  %call40.i = call fastcc i32 @gswip_pce_table_entry_read(ptr noundef %13, ptr noundef nonnull %vlan_mapping.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool.not.i66 = icmp eq i32 %call40.i, 0
  br i1 %tobool.not.i66, label %if.else.i.if.end47.i_crit_edge, label %do.end44.i

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

do.end44.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.118, i32 noundef %call40.i) #14
  br label %gswip_vlan_add_aware.exit

if.end47.i:                                       ; preds = %if.else.i.if.end47.i_crit_edge, %if.end34.i
  %cmp162.i = phi i1 [ %cmp.lcssa.i, %if.end34.i ], [ %cmp169.i, %if.else.i.if.end47.i_crit_edge ]
  %idx.1.i = phi i32 [ %retval.0.i.i65, %if.end34.i ], [ %i.0167.i, %if.else.i.if.end47.i_crit_edge ]
  %val48.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 3
  %98 = ptrtoint ptr %val48.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %56, ptr %val48.i, align 2
  %shl.i = shl nuw i32 1, %63
  %arrayidx51.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx51.i, align 2
  %101 = trunc i32 %shl.i to i16
  %arrayidx56.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping.i, i32 0, i32 3, i32 2
  %102 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx56.i, align 2
  %conv59.i = or i16 %103, %101
  %shl60.i = shl nuw i32 1, %port
  %104 = trunc i32 %shl60.i to i16
  %conv53.i79 = or i32 %shl.i, %shl60.i
  %conv53.i = trunc i32 %conv53.i79 to i16
  %conv65.i = or i16 %100, %conv53.i
  store i16 %conv65.i, ptr %arrayidx51.i, align 2
  %conv79.i = or i16 %conv59.i, %104
  %105 = xor i16 %104, -1
  %conv72.i = and i16 %conv59.i, %105
  %storemerge.i = select i1 %tobool.not, i16 %conv79.i, i16 %conv72.i
  store i16 %storemerge.i, ptr %arrayidx56.i, align 2
  %call81.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %13, ptr noundef nonnull %vlan_mapping.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end92.i, label %do.end86.i

do.end86.i:                                       ; preds = %if.end47.i
  %dev87.i = getelementptr inbounds %struct.gswip_priv, ptr %13, i32 0, i32 6
  %106 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev87.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.116, i32 noundef %call81.i) #14
  br i1 %cmp162.i, label %do.end86.i.gswip_vlan_add_aware.exit_crit_edge, label %if.then89.i

do.end86.i.gswip_vlan_add_aware.exit_crit_edge:   ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_add_aware.exit

if.then89.i:                                      ; preds = %do.end86.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active.i143.i) #11
  %108 = getelementptr inbounds i8, ptr %vlan_active.i143.i, i32 4
  %109 = call ptr @memset(ptr %108, i32 0, i32 32)
  %conv.i144.i = trunc i32 %idx.1.i to i16
  %110 = ptrtoint ptr %vlan_active.i143.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i144.i, ptr %vlan_active.i143.i, align 2
  %table.i145.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i143.i, i32 0, i32 1
  %111 = ptrtoint ptr %table.i145.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 1, ptr %table.i145.i, align 2
  %call.i146.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %13, ptr noundef nonnull %vlan_active.i143.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i)
  %tobool.not.i147.i = icmp eq i32 %call.i146.i, 0
  br i1 %tobool.not.i147.i, label %if.then89.i.gswip_vlan_active_remove.exit.i_crit_edge, label %do.end.i149.i

if.then89.i.gswip_vlan_active_remove.exit.i_crit_edge: ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_active_remove.exit.i

do.end.i149.i:                                    ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev87.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.123, i32 noundef %call.i146.i) #14
  br label %gswip_vlan_active_remove.exit.i

gswip_vlan_active_remove.exit.i:                  ; preds = %do.end.i149.i, %if.then89.i.gswip_vlan_active_remove.exit.i_crit_edge
  %arrayidx.i150.i = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %idx.1.i
  %114 = ptrtoint ptr %arrayidx.i150.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %arrayidx.i150.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i143.i) #11
  br label %gswip_vlan_add_aware.exit

if.end92.i:                                       ; preds = %if.end47.i
  br i1 %tobool6.not, label %if.end92.i.gswip_vlan_add_aware.exit_crit_edge, label %if.then94.i

if.end92.i.gswip_vlan_add_aware.exit_crit_edge:   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_vlan_add_aware.exit

if.then94.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %13, align 4
  %add.i = mul i32 %port, 40
  %mul.i.i = add i32 %add.i, 4632
  %add.ptr.i.i = getelementptr i8, ptr %116, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %idx.1.i) #11, !srcloc !349
  br label %gswip_vlan_add_aware.exit

gswip_vlan_add_aware.exit:                        ; preds = %if.then94.i, %if.end92.i.gswip_vlan_add_aware.exit_crit_edge, %gswip_vlan_active_remove.exit.i, %do.end86.i.gswip_vlan_add_aware.exit_crit_edge, %do.end44.i, %gswip_vlan_active_create.exit.i.gswip_vlan_add_aware.exit_crit_edge, %gswip_vlan_active_create.exit.thread.i
  %retval.0.i67 = phi i32 [ %call40.i, %do.end44.i ], [ %retval.0.i.i65, %gswip_vlan_active_create.exit.i.gswip_vlan_add_aware.exit_crit_edge ], [ %call81.i, %gswip_vlan_active_remove.exit.i ], [ %call81.i, %do.end86.i.gswip_vlan_add_aware.exit_crit_edge ], [ 0, %if.then94.i ], [ 0, %if.end92.i.gswip_vlan_add_aware.exit_crit_edge ], [ -28, %gswip_vlan_active_create.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_mapping.i) #11
  br label %cleanup

cleanup:                                          ; preds = %gswip_vlan_add_aware.exit, %dsa_is_cpu_port.exit.cleanup_crit_edge, %if.then37.i, %do.body.i.cleanup_crit_edge, %dsa_is_cpu_port.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i67, %gswip_vlan_add_aware.exit ], [ 0, %dsa_is_cpu_port.exit.cleanup_crit_edge ], [ -28, %do.body.i.cleanup_crit_edge ], [ -28, %if.then37.i ], [ -95, %dsa_is_cpu_port.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_vlan_del(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge, label %cond.true.i

dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge: ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_port_bridge_dev_get.exit

cond.true.i:                                      ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  br label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit:                     ; preds = %cond.true.i, %dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge
  %cond.i = phi ptr [ %11, %cond.true.i ], [ null, %dsa_to_port.exit.dsa_port_bridge_dev_get.exit_crit_edge ]
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %12 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv2, align 4
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 4
  br i1 %cmp.not21.i, label %dsa_port_bridge_dev_get.exit.dsa_is_cpu_port.exit_crit_edge, label %dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge

dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit
  br label %for.body.i.i

dsa_port_bridge_dev_get.exit.dsa_is_cpu_port.exit_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i, %dsa_port_bridge_dev_get.exit.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %16 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %17, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %port)
  %cmp5.i.i = icmp eq i32 %19, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %20 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %dsa_port_bridge_dev_get.exit.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %dsa_port_bridge_dev_get.exit.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.cleanup_crit_edge, label %if.end

dsa_is_cpu_port.exit.cleanup_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = and i16 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool = icmp ne i16 %23, 0
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %24 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vid, align 2
  %call5 = tail call fastcc i32 @gswip_vlan_remove(ptr noundef %13, ptr noundef %cond.i, i32 noundef %port, i16 noundef zeroext %25, i1 noundef zeroext %tobool, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dsa_is_cpu_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %dsa_is_cpu_port.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_fdb_add(ptr noundef %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gswip_port_fdb(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_fdb_del(ptr noundef %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gswip_port_fdb(ptr noundef %ds, i32 noundef %port, ptr noundef %addr, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gswip_port_fdb_dump(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cb, ptr noundef %data) #2 align 64 {
entry:
  %mac_bridge = alloca %struct.gswip_pce_table_entry, align 2
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mac_bridge) #11
  %2 = getelementptr inbounds i8, ptr %mac_bridge, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #11
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %table = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 1
  %valid = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 7
  %key = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 2, i32 1
  %arrayidx28 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 2, i32 2
  %val = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 3, i32 1
  %shl = shl nuw i32 1, %port
  %9 = call ptr @memset(ptr %addr, i32 255, i32 6)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.087 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %table to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 11, ptr %table, align 2
  %conv = trunc i32 %i.087 to i16
  %11 = ptrtoint ptr %mac_bridge to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %mac_bridge, align 2
  %call = call fastcc i32 @gswip_pce_table_entry_read(ptr noundef %1, ptr noundef nonnull %mac_bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.138, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %valid, align 2, !range !352
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.end4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %key, align 2
  %conv6 = trunc i16 %17 to i8
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv6, ptr %8, align 1
  %19 = lshr i16 %17, 8
  %conv12 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %7, align 1
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx15, align 2
  %conv18 = trunc i16 %22 to i8
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv18, ptr %6, align 1
  %24 = lshr i16 %22, 8
  %conv25 = trunc i16 %24 to i8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv25, ptr %5, align 1
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx28, align 2
  %conv31 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv31, ptr %4, align 1
  %29 = lshr i16 %27, 8
  %conv38 = trunc i16 %29 to i8
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv38, ptr %addr, align 1
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx40, align 2
  %33 = and i16 %32, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool43.not = icmp eq i16 %33, 0
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %val, align 2
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end4
  %conv47 = zext i16 %35 to i32
  %and48 = and i32 %shl, %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then44.for.inc_crit_edge, label %if.then50

if.then44.for.inc_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then50:                                        ; preds = %if.then44
  %call51 = call i32 %cb(ptr noundef nonnull %addr, i16 noundef zeroext 0, i1 noundef zeroext true, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.for.inc_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then50.for.inc_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %if.end4
  %36 = lshr i16 %35, 4
  %37 = and i16 %36, 15
  %shr60 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr60, i32 %port)
  %cmp61 = icmp eq i32 %shr60, %port
  br i1 %cmp61, label %if.then63, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then63:                                        ; preds = %if.else
  %call65 = call i32 %cb(ptr noundef nonnull %addr, i16 noundef zeroext 0, i1 noundef zeroext false, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then63.for.inc_crit_edge, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then63.for.inc_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.then63.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then50.for.inc_crit_edge, %if.then44.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.inc.cleanup_crit_edge ], [ %call65, %if.then63.cleanup_crit_edge ], [ %call51, %if.then50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mac_bridge) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_bcm_ram_entry_read(ptr nocapture noundef readonly %priv, i32 noundef %table, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %index) #11, !srcloc !349
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 276
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %and.i = and i32 %4, -32832
  %or = or i32 %and.i, %table
  %or.i = or i32 %or, 32768
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %6, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #11, !srcloc !349
  %call.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 371) #11
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %add.ptr36.i = getelementptr i8, ptr %8, i32 276
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #11, !srcloc !348
  %and37.i = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp938.i = icmp eq i32 %and37.i, 0
  br i1 %cmp938.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then22.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %add.ptr.i13 = getelementptr i8, ptr %11, i32 276
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #11, !srcloc !348
  %and.i14 = and i32 %12, 32768
  %cmp9.i = icmp eq i32 %and.i14, 0
  br i1 %cmp9.i, label %if.then22.i.if.end_crit_edge, label %if.then22.i.land.lhs.true.i_crit_edge

if.then22.i.land.lhs.true.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then22.i.if.end_crit_edge:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr18.i = getelementptr i8, ptr %14, i32 276
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !348
  %.pre.i = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %cmp25.i = icmp eq i32 %.pre.i, 0
  br i1 %cmp25.i, label %for.end.i.if.end_crit_edge, label %do.end

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.108, i32 noundef %table, i32 noundef %index) #14
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then22.i.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %add.ptr.i15 = getelementptr i8, ptr %19, i32 268
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #11, !srcloc !348
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %add.ptr.i16 = getelementptr i8, ptr %22, i32 264
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #11, !srcloc !348
  %shl = shl i32 %23, 16
  %or3 = or i32 %shl, %20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %or3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_add_single_port_br(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext %add) unnamed_addr #2 align 64 {
entry:
  %vlan_active = alloca %struct.gswip_pce_table_entry, align 2
  %vlan_mapping = alloca %struct.gswip_pce_table_entry, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active) #11
  %0 = getelementptr inbounds i8, ptr %vlan_active, i32 6
  %1 = call ptr @memset(ptr %0, i32 0, i32 30)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_mapping) #11
  %2 = getelementptr inbounds i8, ptr %vlan_mapping, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %hw_info = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_info, align 4
  %cpu_port1 = getelementptr inbounds %struct.gswip_hw_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cpu_port1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_port1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %port)
  %cmp.not = icmp ugt i32 %9, %port
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.110, i32 noundef %port) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %add to i8
  %12 = trunc i32 %port to i16
  %conv = add i16 %12, 1
  %13 = ptrtoint ptr %vlan_active to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %vlan_active, align 2
  %table = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active, i32 0, i32 1
  %14 = ptrtoint ptr %table to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %table, align 2
  %key = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active, i32 0, i32 2
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %key, align 2
  %val = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active, i32 0, i32 3
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %val, align 2
  %valid = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active, i32 0, i32 7
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %valid, align 2
  %call = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %priv, ptr noundef nonnull %vlan_active)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev14 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %18 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.113, i32 noundef %call) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  br i1 %add, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %vlan_mapping to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vlan_mapping, align 2
  %table22 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping, i32 0, i32 1
  %21 = ptrtoint ptr %table22 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %table22, align 2
  %val23 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping, i32 0, i32 3
  %22 = ptrtoint ptr %val23 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %val23, align 2
  %shl = shl nuw i32 1, %port
  %shl25 = shl nuw i32 1, %7
  %or = or i32 %shl25, %shl
  %conv26 = trunc i32 %or to i16
  %arrayidx28 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv26, ptr %arrayidx28, align 2
  %arrayidx30 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %arrayidx30, align 2
  %call31 = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %priv, ptr noundef nonnull %vlan_mapping)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end18.cleanup_crit_edge, label %do.end36

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end36:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %dev37 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %25 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.116, i32 noundef %call31) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %do.end13 ], [ %call31, %do.end36 ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_mapping) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_pce_table_entry_write(ptr noundef %priv, ptr nocapture noundef readonly %tbl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %key_mode = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 8
  %0 = ptrtoint ptr %key_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_mode, align 1, !range !352
  %pce_table_lock = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %pce_table_lock, i32 noundef 0) #11
  %call.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 371) #11
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr36.i = getelementptr i8, ptr %3, i32 4412
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #11, !srcloc !348
  %and37.i = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp938.i = icmp eq i32 %and37.i, 0
  br i1 %cmp938.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then22.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4412
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !348
  %and.i = and i32 %7, 32768
  %cmp9.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.i, label %if.then22.i.if.end_crit_edge, label %if.then22.i.land.lhs.true.i_crit_edge

if.then22.i.land.lhs.true.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then22.i.if.end_crit_edge:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %add.ptr18.i = getelementptr i8, ptr %9, i32 4412
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !348
  %.pre.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %cmp25.i = icmp eq i32 %.pre.i, 0
  br i1 %cmp25.i, label %for.end.i.if.end_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then22.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %11 = ptrtoint ptr %tbl to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tbl, align 2
  %conv3 = zext i16 %12 to i32
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr.i89 = getelementptr i8, ptr %14, i32 4408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %conv3) #11, !srcloc !349
  %table = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 1
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %table, align 2
  %conv4 = zext i16 %16 to i32
  %conv5 = select i1 %tobool.not, i32 32, i32 96
  %or = or i32 %conv5, %conv4
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4412
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %and.i90 = and i32 %19, -128
  %or.i = or i32 %or, %and.i90
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %21, i32 4412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #11, !srcloc !349
  %arrayidx = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %conv7 = zext i16 %23 to i32
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %add.ptr.i91 = getelementptr i8, ptr %25, i32 4380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %conv7) #11, !srcloc !349
  %arrayidx.1 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.1, align 2
  %conv7.1 = zext i16 %27 to i32
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %add.ptr.i91.1 = getelementptr i8, ptr %29, i32 4376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.1, i32 %conv7.1) #11, !srcloc !349
  %arrayidx.2 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.2, align 2
  %conv7.2 = zext i16 %31 to i32
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %add.ptr.i91.2 = getelementptr i8, ptr %33, i32 4372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.2, i32 %conv7.2) #11, !srcloc !349
  %arrayidx.3 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.3, align 2
  %conv7.3 = zext i16 %35 to i32
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %add.ptr.i91.3 = getelementptr i8, ptr %37, i32 4368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.3, i32 %conv7.3) #11, !srcloc !349
  %arrayidx.4 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.4, align 2
  %conv7.4 = zext i16 %39 to i32
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %add.ptr.i91.4 = getelementptr i8, ptr %41, i32 4364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.4, i32 %conv7.4) #11, !srcloc !349
  %arrayidx.5 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.5, align 2
  %conv7.5 = zext i16 %43 to i32
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %add.ptr.i91.5 = getelementptr i8, ptr %45, i32 4360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.5, i32 %conv7.5) #11, !srcloc !349
  %arrayidx.6 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 6
  %46 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.6, align 2
  %conv7.6 = zext i16 %47 to i32
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 4
  %add.ptr.i91.6 = getelementptr i8, ptr %49, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.6, i32 %conv7.6) #11, !srcloc !349
  %arrayidx.7 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 7
  %50 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.7, align 2
  %conv7.7 = zext i16 %51 to i32
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 4
  %add.ptr.i91.7 = getelementptr i8, ptr %53, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.7, i32 %conv7.7) #11, !srcloc !349
  %arrayidx12 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 0
  %54 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %55 to i32
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %add.ptr.i93 = getelementptr i8, ptr %57, i32 4404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %conv13) #11, !srcloc !349
  %arrayidx12.1 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx12.1, align 2
  %conv13.1 = zext i16 %59 to i32
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 4
  %add.ptr.i93.1 = getelementptr i8, ptr %61, i32 4400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.1, i32 %conv13.1) #11, !srcloc !349
  %arrayidx12.2 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx12.2, align 2
  %conv13.2 = zext i16 %63 to i32
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 4
  %add.ptr.i93.2 = getelementptr i8, ptr %65, i32 4396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.2, i32 %conv13.2) #11, !srcloc !349
  %arrayidx12.3 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 3
  %66 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx12.3, align 2
  %conv13.3 = zext i16 %67 to i32
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 4
  %add.ptr.i93.3 = getelementptr i8, ptr %69, i32 4392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.3, i32 %conv13.3) #11, !srcloc !349
  %arrayidx12.4 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 4
  %70 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx12.4, align 2
  %conv13.4 = zext i16 %71 to i32
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 4
  %add.ptr.i93.4 = getelementptr i8, ptr %73, i32 4388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.4, i32 %conv13.4) #11, !srcloc !349
  %74 = ptrtoint ptr %table to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %table, align 2
  %conv19 = zext i16 %75 to i32
  %or21 = or i32 %conv5, %conv19
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %77, i32 4412
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #11, !srcloc !348
  %and.i95 = and i32 %78, -128
  %or.i96 = or i32 %or21, %and.i95
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %add.ptr.i6.i97 = getelementptr i8, ptr %80, i32 4412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i97, i32 %or.i96) #11, !srcloc !349
  %mask = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 4
  %81 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mask, align 2
  %conv22 = zext i16 %82 to i32
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 4
  %add.ptr.i98 = getelementptr i8, ptr %84, i32 4384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %conv22) #11, !srcloc !349
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 4
  %add.ptr.i99 = getelementptr i8, ptr %86, i32 4412
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #11, !srcloc !348
  %88 = trunc i32 %87 to i16
  %conv26 = and i16 %88, -14209
  %type = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 6
  %89 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %type, align 1, !range !352
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool27.not = icmp eq i8 %90, 0
  %91 = or i16 %conv26, 8192
  %spec.select = select i1 %tobool27.not, i16 %conv26, i16 %91
  %valid = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 7
  %92 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %valid, align 2, !range !352
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool33.not = icmp eq i8 %93, 0
  %94 = or i16 %spec.select, 4096
  %crtl.1 = select i1 %tobool33.not, i16 %spec.select, i16 %94
  %gmap = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 5
  %95 = ptrtoint ptr %gmap to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %gmap, align 2
  %conv39 = zext i8 %96 to i16
  %shl = shl nuw nsw i16 %conv39, 7
  %and40 = and i16 %shl, 1920
  %or42 = or i16 %crtl.1, %and40
  %97 = or i16 %or42, -32768
  %conv47 = zext i16 %97 to i32
  %98 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv, align 4
  %add.ptr.i100 = getelementptr i8, ptr %99, i32 4412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %conv47) #11, !srcloc !349
  %call.i101 = tail call i64 @ktime_get() #11
  %add.i.i102 = add i64 %call.i101, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 371) #11
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 4
  %add.ptr36.i103 = getelementptr i8, ptr %101, i32 4412
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i103) #11, !srcloc !348
  %and37.i104 = and i32 %102, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i104)
  %cmp938.i105 = icmp eq i32 %and37.i104, 0
  br i1 %cmp938.i105, label %if.end.for.end.thread.i117_crit_edge, label %if.end.land.lhs.true.i108_crit_edge

if.end.land.lhs.true.i108_crit_edge:              ; preds = %if.end
  br label %land.lhs.true.i108

if.end.for.end.thread.i117_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i117

land.lhs.true.i108:                               ; preds = %if.then22.i112.land.lhs.true.i108_crit_edge, %if.end.land.lhs.true.i108_crit_edge
  %call12.i106 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i106, i64 %add.i.i102)
  %cmp3.i.i107 = icmp sgt i64 %call12.i106, %add.i.i102
  br i1 %cmp3.i.i107, label %for.end.i116, label %if.then22.i112

if.then22.i112:                                   ; preds = %land.lhs.true.i108
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv, align 4
  %add.ptr.i109 = getelementptr i8, ptr %104, i32 4412
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #11, !srcloc !348
  %and.i110 = and i32 %105, 32768
  %cmp9.i111 = icmp eq i32 %and.i110, 0
  br i1 %cmp9.i111, label %if.then22.i112.for.end.thread.i117_crit_edge, label %if.then22.i112.land.lhs.true.i108_crit_edge

if.then22.i112.land.lhs.true.i108_crit_edge:      ; preds = %if.then22.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i108

if.then22.i112.for.end.thread.i117_crit_edge:     ; preds = %if.then22.i112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i117

for.end.i116:                                     ; preds = %land.lhs.true.i108
  %106 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv, align 4
  %add.ptr18.i113 = getelementptr i8, ptr %107, i32 4412
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i113) #11, !srcloc !348
  %.pre.i114 = and i32 %108, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i114)
  %cmp25.i115 = icmp eq i32 %.pre.i114, 0
  br i1 %cmp25.i115, label %for.end.i116.for.end.thread.i117_crit_edge, label %for.end.i116.cleanup_crit_edge

for.end.i116.cleanup_crit_edge:                   ; preds = %for.end.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i116.for.end.thread.i117_crit_edge:       ; preds = %for.end.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i117

for.end.thread.i117:                              ; preds = %for.end.i116.for.end.thread.i117_crit_edge, %if.then22.i112.for.end.thread.i117_crit_edge, %if.end.for.end.thread.i117_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread.i117, %for.end.i116.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.i.cleanup_crit_edge ], [ 0, %for.end.thread.i117 ], [ -110, %for.end.i116.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pce_table_lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_pce_table_entry_read(ptr noundef %priv, ptr nocapture noundef %tbl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %key_mode = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 8
  %0 = ptrtoint ptr %key_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_mode, align 1, !range !352
  %pce_table_lock = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %pce_table_lock, i32 noundef 0) #11
  %call.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 371) #11
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr36.i = getelementptr i8, ptr %3, i32 4412
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #11, !srcloc !348
  %and37.i = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp938.i = icmp eq i32 %and37.i, 0
  br i1 %cmp938.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then22.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4412
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !348
  %and.i = and i32 %7, 32768
  %cmp9.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.i, label %if.then22.i.if.end_crit_edge, label %if.then22.i.land.lhs.true.i_crit_edge

if.then22.i.land.lhs.true.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then22.i.if.end_crit_edge:                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %add.ptr18.i = getelementptr i8, ptr %9, i32 4412
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !348
  %.pre.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %cmp25.i = icmp eq i32 %.pre.i, 0
  br i1 %cmp25.i, label %for.end.i.if.end_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then22.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %11 = ptrtoint ptr %tbl to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tbl, align 2
  %conv3 = zext i16 %12 to i32
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr.i77 = getelementptr i8, ptr %14, i32 4408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %conv3) #11, !srcloc !349
  %table = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 1
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %table, align 2
  %conv4 = zext i16 %16 to i32
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4412
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !348
  %and.i78 = and i32 %19, -32896
  %or = select i1 %tobool.not, i32 32768, i32 32832
  %or6 = or i32 %or, %conv4
  %or.i = or i32 %or6, %and.i78
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %21, i32 4412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %or.i) #11, !srcloc !349
  %call.i79 = tail call i64 @ktime_get() #11
  %add.i.i80 = add i64 %call.i79, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 371) #11
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %add.ptr36.i81 = getelementptr i8, ptr %23, i32 4412
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i81) #11, !srcloc !348
  %and37.i82 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i82)
  %cmp938.i83 = icmp eq i32 %and37.i82, 0
  br i1 %cmp938.i83, label %if.end.gswip_switch_r_timeout.exit96_crit_edge, label %if.end.land.lhs.true.i86_crit_edge

if.end.land.lhs.true.i86_crit_edge:               ; preds = %if.end
  br label %land.lhs.true.i86

if.end.gswip_switch_r_timeout.exit96_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_switch_r_timeout.exit96

land.lhs.true.i86:                                ; preds = %if.then22.i90.land.lhs.true.i86_crit_edge, %if.end.land.lhs.true.i86_crit_edge
  %call12.i84 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i84, i64 %add.i.i80)
  %cmp3.i.i85 = icmp sgt i64 %call12.i84, %add.i.i80
  br i1 %cmp3.i.i85, label %for.end.i94, label %if.then22.i90

if.then22.i90:                                    ; preds = %land.lhs.true.i86
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %add.ptr.i87 = getelementptr i8, ptr %26, i32 4412
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #11, !srcloc !348
  %and.i88 = and i32 %27, 32768
  %cmp9.i89 = icmp eq i32 %and.i88, 0
  br i1 %cmp9.i89, label %if.then22.i90.gswip_switch_r_timeout.exit96_crit_edge, label %if.then22.i90.land.lhs.true.i86_crit_edge

if.then22.i90.land.lhs.true.i86_crit_edge:        ; preds = %if.then22.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i86

if.then22.i90.gswip_switch_r_timeout.exit96_crit_edge: ; preds = %if.then22.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_switch_r_timeout.exit96

for.end.i94:                                      ; preds = %land.lhs.true.i86
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %add.ptr18.i91 = getelementptr i8, ptr %29, i32 4412
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i91) #11, !srcloc !348
  %.pre.i92 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i92)
  %cmp25.i93 = icmp eq i32 %.pre.i92, 0
  br i1 %cmp25.i93, label %for.end.i94.gswip_switch_r_timeout.exit96_crit_edge, label %for.end.i94.cleanup_crit_edge

for.end.i94.cleanup_crit_edge:                    ; preds = %for.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.i94.gswip_switch_r_timeout.exit96_crit_edge: ; preds = %for.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %gswip_switch_r_timeout.exit96

gswip_switch_r_timeout.exit96:                    ; preds = %for.end.i94.gswip_switch_r_timeout.exit96_crit_edge, %if.then22.i90.gswip_switch_r_timeout.exit96_crit_edge, %if.end.gswip_switch_r_timeout.exit96_crit_edge
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %add.ptr.i97 = getelementptr i8, ptr %32, i32 4380
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #11, !srcloc !348
  %conv14 = trunc i32 %33 to i16
  %arrayidx = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv14, ptr %arrayidx, align 2
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  %add.ptr.i97.1 = getelementptr i8, ptr %36, i32 4376
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.1) #11, !srcloc !348
  %conv14.1 = trunc i32 %37 to i16
  %arrayidx.1 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv14.1, ptr %arrayidx.1, align 2
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 4
  %add.ptr.i97.2 = getelementptr i8, ptr %40, i32 4372
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.2) #11, !srcloc !348
  %conv14.2 = trunc i32 %41 to i16
  %arrayidx.2 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv14.2, ptr %arrayidx.2, align 2
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 4
  %add.ptr.i97.3 = getelementptr i8, ptr %44, i32 4368
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.3) #11, !srcloc !348
  %conv14.3 = trunc i32 %45 to i16
  %arrayidx.3 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv14.3, ptr %arrayidx.3, align 2
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %add.ptr.i97.4 = getelementptr i8, ptr %48, i32 4364
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.4) #11, !srcloc !348
  %conv14.4 = trunc i32 %49 to i16
  %arrayidx.4 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv14.4, ptr %arrayidx.4, align 2
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 4
  %add.ptr.i97.5 = getelementptr i8, ptr %52, i32 4360
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.5) #11, !srcloc !348
  %conv14.5 = trunc i32 %53 to i16
  %arrayidx.5 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 5
  %54 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv14.5, ptr %arrayidx.5, align 2
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 4
  %add.ptr.i97.6 = getelementptr i8, ptr %56, i32 4356
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.6) #11, !srcloc !348
  %conv14.6 = trunc i32 %57 to i16
  %arrayidx.6 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 6
  %58 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv14.6, ptr %arrayidx.6, align 2
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 4
  %add.ptr.i97.7 = getelementptr i8, ptr %60, i32 4352
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.7) #11, !srcloc !348
  %conv14.7 = trunc i32 %61 to i16
  %arrayidx.7 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 2, i32 7
  %62 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv14.7, ptr %arrayidx.7, align 2
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 4
  %add.ptr.i99 = getelementptr i8, ptr %64, i32 4404
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #11, !srcloc !348
  %conv21 = trunc i32 %65 to i16
  %arrayidx22 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 0
  %66 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv21, ptr %arrayidx22, align 2
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 4
  %add.ptr.i99.1 = getelementptr i8, ptr %68, i32 4400
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.1) #11, !srcloc !348
  %conv21.1 = trunc i32 %69 to i16
  %arrayidx22.1 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv21.1, ptr %arrayidx22.1, align 2
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 4
  %add.ptr.i99.2 = getelementptr i8, ptr %72, i32 4396
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.2) #11, !srcloc !348
  %conv21.2 = trunc i32 %73 to i16
  %arrayidx22.2 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 2
  %74 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv21.2, ptr %arrayidx22.2, align 2
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 4
  %add.ptr.i99.3 = getelementptr i8, ptr %76, i32 4392
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.3) #11, !srcloc !348
  %conv21.3 = trunc i32 %77 to i16
  %arrayidx22.3 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 3
  %78 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv21.3, ptr %arrayidx22.3, align 2
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %add.ptr.i99.4 = getelementptr i8, ptr %80, i32 4388
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.4) #11, !srcloc !348
  %conv21.4 = trunc i32 %81 to i16
  %arrayidx22.4 = getelementptr %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 3, i32 4
  %82 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv21.4, ptr %arrayidx22.4, align 2
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 4
  %add.ptr.i100 = getelementptr i8, ptr %84, i32 4384
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #11, !srcloc !348
  %conv27 = trunc i32 %85 to i16
  %mask = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 4
  %86 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv27, ptr %mask, align 2
  %87 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv, align 4
  %add.ptr.i101 = getelementptr i8, ptr %88, i32 4412
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #11, !srcloc !348
  %type = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 6
  %and = lshr i32 %89, 13
  %90 = trunc i32 %and to i8
  %91 = and i8 %90, 1
  %92 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %type, align 1
  %valid = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 7
  %and34 = lshr i32 %89, 12
  %93 = trunc i32 %and34 to i8
  %94 = and i8 %93, 1
  %95 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %valid, align 2
  %and40 = lshr i32 %89, 7
  %96 = trunc i32 %and40 to i8
  %conv41 = and i8 %96, 15
  %gmap = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %tbl, i32 0, i32 5
  %97 = ptrtoint ptr %gmap to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv41, ptr %gmap, align 2
  br label %cleanup

cleanup:                                          ; preds = %gswip_switch_r_timeout.exit96, %for.end.i94.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gswip_switch_r_timeout.exit96 ], [ -110, %for.end.i.cleanup_crit_edge ], [ -110, %for.end.i94.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pce_table_lock) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_vlan_remove(ptr noundef %priv, ptr noundef readnone %bridge, i32 noundef %port, i16 noundef zeroext %vid, i1 noundef zeroext %pvid, i1 noundef zeroext %vlan_aware) unnamed_addr #2 align 64 {
entry:
  %vlan_active.i = alloca %struct.gswip_pce_table_entry, align 2
  %vlan_mapping = alloca %struct.gswip_pce_table_entry, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_mapping) #11
  %0 = getelementptr inbounds i8, ptr %vlan_mapping, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %hw_info = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %cpu_port4 = getelementptr inbounds %struct.gswip_hw_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cpu_port4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_port4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp101 = icmp ult i32 %5, 64
  br i1 %cmp101, label %entry.for.body_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gswip_priv, ptr %priv, i32 0, i32 8, i32 %i.0102
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp6 = icmp eq ptr %9, %bridge
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  br i1 %vlan_aware, label %lor.lhs.false, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

lor.lhs.false:                                    ; preds = %land.lhs.true
  %vid9 = getelementptr %struct.gswip_priv, ptr %priv, i32 0, i32 8, i32 %i.0102, i32 1
  %10 = ptrtoint ptr %vid9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %vid)
  %cmp11 = icmp eq i16 %11, %vid
  br i1 %cmp11, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.125) #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge
  %conv17 = trunc i32 %i.0102 to i16
  %14 = ptrtoint ptr %vlan_mapping to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv17, ptr %vlan_mapping, align 2
  %table = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping, i32 0, i32 1
  %15 = ptrtoint ptr %table to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %table, align 2
  %call = call fastcc i32 @gswip_pce_table_entry_read(ptr noundef %priv, ptr noundef nonnull %vlan_mapping)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %dev23 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %16 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.118, i32 noundef %call) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %shl = shl nuw i32 1, %port
  %arrayidx25 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx25, align 2
  %20 = trunc i32 %shl to i16
  %21 = xor i16 %20, -1
  %conv27 = and i16 %19, %21
  store i16 %conv27, ptr %arrayidx25, align 2
  %arrayidx31 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_mapping, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx31, align 2
  %conv34 = and i16 %23, %21
  store i16 %conv34, ptr %arrayidx31, align 2
  %call35 = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %priv, ptr noundef nonnull %vlan_mapping)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %dev41 = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %24 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.116, i32 noundef %call35) #14
  br label %cleanup

if.end42:                                         ; preds = %if.end24
  %conv45 = zext i16 %conv27 to i32
  %shl46 = shl nuw i32 1, %7
  %neg47 = xor i32 %shl46, -1
  %and48 = and i32 %conv45, %neg47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %if.then51, label %if.end42.if.end60_crit_edge

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then51:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %vlan_active.i) #11
  %26 = getelementptr inbounds i8, ptr %vlan_active.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 32)
  %28 = ptrtoint ptr %vlan_active.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv17, ptr %vlan_active.i, align 2
  %table.i = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %vlan_active.i, i32 0, i32 1
  %29 = ptrtoint ptr %table.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %table.i, align 2
  %call.i = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %priv, ptr noundef nonnull %vlan_active.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %gswip_vlan_active_remove.exit.thread, label %do.end57

gswip_vlan_active_remove.exit.thread:             ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i) #11
  br label %if.end60

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.gswip_priv, ptr %priv, i32 0, i32 6
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.123, i32 noundef %call.i) #14
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_active.i) #11
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.113, i32 noundef %call.i) #14
  br label %cleanup

if.end60:                                         ; preds = %gswip_vlan_active_remove.exit.thread, %if.end42.if.end60_crit_edge
  br i1 %pvid, label %if.then62, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %add = mul i32 %port, 40
  %mul.i = add i32 %add, 4632
  %add.ptr.i = getelementptr i8, ptr %37, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end60.cleanup_crit_edge, %do.end57, %do.end40, %do.end22, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %call, %do.end22 ], [ %call35, %do.end40 ], [ %call.i, %do.end57 ], [ 0, %if.then62 ], [ 0, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %vlan_mapping) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gswip_port_fdb(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i1 noundef zeroext %add) unnamed_addr #2 align 64 {
entry:
  %mac_bridge = alloca %struct.gswip_pce_table_entry, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %add to i8
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 14
  %8 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.thread, label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit.thread:              ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mac_bridge) #11
  br label %cleanup

dsa_port_bridge_dev_get.exit:                     ; preds = %dsa_to_port.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %12 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %mac_bridge) #11
  %14 = call ptr @memset(ptr %mac_bridge, i32 0, i32 34)
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %dsa_port_bridge_dev_get.exit.cleanup_crit_edge, label %if.end

dsa_port_bridge_dev_get.exit.cleanup_crit_edge:   ; preds = %dsa_port_bridge_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dsa_port_bridge_dev_get.exit
  %hw_info = getelementptr inbounds %struct.gswip_priv, ptr %13, i32 0, i32 3
  %15 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_info, align 4
  %cpu_port3 = getelementptr inbounds %struct.gswip_hw_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cpu_port3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu_port3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %18)
  %cmp8 = icmp ult i32 %18, 64
  br i1 %cmp8, label %if.end.for.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %18, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.09
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %20, %11
  br i1 %cmp5, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.end:                                          ; preds = %for.body
  %fid9 = getelementptr %struct.gswip_priv, ptr %13, i32 0, i32 8, i32 %i.09, i32 2
  %21 = ptrtoint ptr %fid9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fid9, align 2
  %table = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 1
  %23 = ptrtoint ptr %table to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 11, ptr %table, align 2
  %key_mode = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 8
  %24 = ptrtoint ptr %key_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %key_mode, align 1
  %arrayidx15 = getelementptr i8, ptr %addr, i32 5
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %26 to i16
  %arrayidx17 = getelementptr i8, ptr %addr, i32 4
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %28 to i16
  %shl = shl nuw i16 %conv18, 8
  %or = or i16 %shl, %conv16
  %key = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 2
  %29 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %or, ptr %key, align 2
  %arrayidx21 = getelementptr i8, ptr %addr, i32 3
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %31 to i16
  %arrayidx23 = getelementptr i8, ptr %addr, i32 2
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %33 to i16
  %shl25 = shl nuw i16 %conv24, 8
  %or26 = or i16 %shl25, %conv22
  %arrayidx29 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or26, ptr %arrayidx29, align 2
  %arrayidx30 = getelementptr i8, ptr %addr, i32 1
  %35 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %36 to i16
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %addr, align 1
  %conv33 = zext i8 %38 to i16
  %shl34 = shl nuw i16 %conv33, 8
  %or35 = or i16 %shl34, %conv31
  %arrayidx38 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or35, ptr %arrayidx38, align 2
  %conv39 = zext i8 %22 to i16
  %arrayidx41 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv39, ptr %arrayidx41, align 2
  %shl44 = shl nuw i32 1, %port
  %phi.cast = trunc i32 %shl44 to i16
  %cond = select i1 %add, i16 %phi.cast, i16 0
  %val = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 3
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %cond, ptr %val, align 2
  %arrayidx48 = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %arrayidx48, align 2
  %valid = getelementptr inbounds %struct.gswip_pce_table_entry, ptr %mac_bridge, i32 0, i32 7
  %43 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %valid, align 2
  %call51 = call fastcc i32 @gswip_pce_table_entry_write(ptr noundef %13, ptr noundef nonnull %mac_bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.end.cleanup_crit_edge, label %do.end56

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.gswip_priv, ptr %13, i32 0, i32 6
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.146) #14
  br label %cleanup

do.end56:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev57 = getelementptr inbounds %struct.gswip_priv, ptr %13, i32 0, i32 6
  %46 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.138, i32 noundef %call51) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.end, %for.end.cleanup_crit_edge, %dsa_port_bridge_dev_get.exit.cleanup_crit_edge, %dsa_port_bridge_dev_get.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %dsa_port_bridge_dev_get.exit.cleanup_crit_edge ], [ %call51, %do.end56 ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %dsa_port_bridge_dev_get.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %mac_bridge) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gswip_xrx300_phylink_get_caps(ptr nocapture noundef readnone %ds, i32 noundef %port, ptr nocapture noundef %config) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %port)
  %0 = icmp ult i32 %port, 6
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.gswip_xrx300_phylink_get_caps, i32 0, i32 %port
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %supported_interfaces = getelementptr inbounds %struct.phylink_config, ptr %config, i32 0, i32 7
  %2 = ptrtoint ptr %supported_interfaces to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_interfaces, align 4
  %or.i25 = or i32 %3, %switch.load
  store i32 %or.i25, ptr %supported_interfaces, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mac_capabilities = getelementptr inbounds %struct.phylink_config, ptr %config, i32 0, i32 8
  %4 = ptrtoint ptr %mac_capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %mac_capabilities, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !166, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !312, !314, !315, !316, !317, !319, !320, !322, !323, !325, !326, !327, !328, !330, !331, !333, !334, !335, !337}
!llvm.module.flags = !{!339, !340, !341, !342, !343, !344, !345, !346}
!llvm.ident = !{!347}

!0 = !{ptr @__initcall__kmod_lantiq_gswip__497_2233_gswip_driver_init6, !1, !"__initcall__kmod_lantiq_gswip__497_2233_gswip_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2233, i32 1}
!2 = !{ptr @__exitcall_gswip_driver_exit, !1, !"__exitcall_gswip_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_firmware498, !4, !"__UNIQUE_ID_firmware498", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2235, i32 1}
!5 = !{ptr @__UNIQUE_ID_firmware499, !6, !"__UNIQUE_ID_firmware499", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2236, i32 1}
!7 = !{ptr @__UNIQUE_ID_firmware500, !8, !"__UNIQUE_ID_firmware500", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2237, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware501, !10, !"__UNIQUE_ID_firmware501", i1 false, i1 false}
!10 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2238, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware502, !12, !"__UNIQUE_ID_firmware502", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2239, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware503, !14, !"__UNIQUE_ID_firmware503", i1 false, i1 false}
!14 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2240, i32 1}
!15 = !{ptr @__UNIQUE_ID_author504, !16, !"__UNIQUE_ID_author504", i1 false, i1 false}
!16 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2241, i32 1}
!17 = !{ptr @__UNIQUE_ID_description505, !18, !"__UNIQUE_ID_description505", i1 false, i1 false}
!18 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2242, i32 1}
!19 = !{ptr @__UNIQUE_ID_file506, !20, !"__UNIQUE_ID_file506", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2243, i32 1}
!21 = !{ptr @__UNIQUE_ID_license507, !20, !"__UNIQUE_ID_license507", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2228, i32 11}
!24 = !{ptr @gswip_driver, !25, !"gswip_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2223, i32 31}
!26 = !{ptr @gswip_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2088, i32 2}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2095, i32 36}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2100, i32 36}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2101, i32 36}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2105, i32 3}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gswip_probe._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @gswip_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2110, i32 53}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2115, i32 4}
!47 = !{ptr @gswip_probe._entry.11, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gswip_probe._entry_ptr.13, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2121, i32 50}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2125, i32 4}
!53 = !{ptr @gswip_probe._entry.15, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @gswip_probe._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2132, i32 3}
!57 = !{ptr @gswip_probe._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @gswip_probe._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2136, i32 3}
!61 = !{ptr @gswip_probe._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @gswip_probe._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2144, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @gswip_probe._entry.24, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @gswip_probe._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1986, i32 47}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1995, i32 4}
!72 = !{ptr @gswip_gphy_fw_list._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gswip_gphy_fw_list._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2005, i32 3}
!76 = !{ptr @gswip_gphy_fw_list._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @gswip_gphy_fw_list._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2014, i32 11}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1828, i32 22}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1829, i32 22}
!84 = !{ptr @xrx200a1x_gphy_data, !85, !"xrx200a1x_gphy_data", i1 false, i1 false}
!85 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1827, i32 42}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1833, i32 22}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1834, i32 22}
!90 = !{ptr @xrx200a2x_gphy_data, !91, !"xrx200a2x_gphy_data", i1 false, i1 false}
!91 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1832, i32 42}
!92 = !{ptr @xway_gphy_match, !93, !"xway_gphy_match", i1 false, i1 false}
!93 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1842, i32 34}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1838, i32 22}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1839, i32 22}
!98 = !{ptr @xrx300_gphy_data, !99, !"xrx300_gphy_data", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1837, i32 42}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1916, i32 39}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1920, i32 3}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @gswip_gphy_fw_probe._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @gswip_gphy_fw_probe._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1924, i32 41}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1928, i32 41}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1941, i32 3}
!113 = !{ptr @gswip_gphy_fw_probe._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @gswip_gphy_fw_probe._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1948, i32 4}
!117 = !{ptr @gswip_gphy_fw_probe._entry.48, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @gswip_gphy_fw_probe._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1875, i32 3}
!121 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @gswip_gphy_fw_load._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @gswip_gphy_fw_load._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1891, i32 3}
!126 = !{ptr @gswip_gphy_fw_load._entry.53, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @gswip_gphy_fw_load._entry_ptr.55, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 511, i32 51}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 480, i32 3}
!132 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @gswip_mdio_rd._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @gswip_mdio_rd._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @gswip_mdio_rd._entry.59, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 491, i32 3}
!137 = !{ptr @gswip_mdio_rd._entry_ptr.60, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 460, i32 3}
!140 = !{ptr @gswip_mdio_wr._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @gswip_mdio_wr._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1966, i32 3}
!144 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @gswip_gphy_fw_remove._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @gswip_gphy_fw_remove._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @gswip_of_match, !148, !"gswip_of_match", i1 false, i1 false}
!148 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2215, i32 34}
!149 = !{ptr @gswip_xrx200, !150, !"gswip_xrx200", i1 false, i1 false}
!150 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2203, i32 35}
!151 = !{ptr @gswip_xrx200_switch_ops, !152, !"gswip_xrx200_switch_ops", i1 false, i1 false}
!152 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1779, i32 36}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 822, i32 3}
!155 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @gswip_setup._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @gswip_setup._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 882, i32 3}
!160 = !{ptr @gswip_setup._entry.66, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @gswip_setup._entry_ptr.68, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @gswip_pce_microcode, !163, !"gswip_pce_microcode", i1 false, i1 false}
!163 = !{!"../drivers/net/dsa/lantiq_pce.h", i32 87, i32 41}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1654, i32 3}
!166 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @gswip_phylink_mac_config._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @gswip_phylink_mac_config._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 304, i32 2}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 305, i32 2}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 306, i32 2}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 307, i32 2}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 308, i32 2}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 309, i32 2}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 310, i32 2}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 311, i32 2}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 312, i32 2}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 313, i32 2}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 314, i32 2}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 315, i32 2}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 316, i32 2}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 317, i32 2}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 318, i32 2}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 320, i32 2}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 321, i32 2}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 322, i32 2}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 323, i32 2}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 324, i32 2}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 325, i32 2}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 326, i32 2}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 327, i32 2}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 328, i32 2}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 329, i32 2}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 330, i32 2}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 331, i32 2}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 332, i32 2}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 333, i32 2}
!227 = !{ptr @.str.100, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 335, i32 2}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 336, i32 2}
!231 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 337, i32 2}
!233 = !{ptr @.str.103, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 338, i32 2}
!235 = !{ptr @.str.104, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 339, i32 2}
!237 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 340, i32 2}
!239 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 341, i32 2}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 342, i32 2}
!243 = !{ptr @gswip_rmon_cnt, !244, !"gswip_rmon_cnt", i1 false, i1 false}
!244 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 302, i32 41}
!245 = !{ptr @.str.108, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1739, i32 3}
!247 = !{ptr @.str.109, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @gswip_bcm_ram_entry_read._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @gswip_bcm_ram_entry_read._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.110, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 643, i32 3}
!252 = !{ptr @.str.111, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @gswip_add_single_port_br._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @gswip_add_single_port_br._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.113, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 654, i32 3}
!257 = !{ptr @gswip_add_single_port_br._entry.112, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @gswip_add_single_port_br._entry_ptr.114, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.116, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 668, i32 3}
!261 = !{ptr @gswip_add_single_port_br._entry.115, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @gswip_add_single_port_br._entry_ptr.117, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 997, i32 4}
!265 = !{ptr @.str.119, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @gswip_vlan_add_unaware._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @gswip_vlan_add_unaware._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @gswip_vlan_add_unaware._entry.120, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1008, i32 3}
!270 = !{ptr @gswip_vlan_add_unaware._entry_ptr.121, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 932, i32 3}
!273 = !{ptr @gswip_vlan_active_create._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @gswip_vlan_active_create._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.123, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 953, i32 3}
!277 = !{ptr @.str.124, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @gswip_vlan_active_remove._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @gswip_vlan_active_remove._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.125, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1116, i32 3}
!282 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @gswip_vlan_remove._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @gswip_vlan_remove._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @gswip_vlan_remove._entry.127, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1124, i32 3}
!287 = !{ptr @gswip_vlan_remove._entry_ptr.128, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @gswip_vlan_remove._entry.129, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1132, i32 3}
!290 = !{ptr @gswip_vlan_remove._entry_ptr.130, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @gswip_vlan_remove._entry.131, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1140, i32 4}
!293 = !{ptr @gswip_vlan_remove._entry_ptr.132, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.133, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1338, i32 3}
!296 = !{ptr @.str.134, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @gswip_port_stp_state_set._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @gswip_port_stp_state_set._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.135, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1293, i32 4}
!301 = !{ptr @.str.136, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @gswip_port_fast_age._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @gswip_port_fast_age._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.138, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1310, i32 4}
!306 = !{ptr @gswip_port_fast_age._entry.137, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @gswip_port_fast_age._entry_ptr.139, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @gswip_port_vlan_filtering.__msg, !309, !"__msg", i1 false, i1 false}
!309 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 772, i32 3}
!310 = !{ptr @gswip_port_vlan_prepare.__msg, !311, !"__msg", i1 false, i1 false}
!311 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1228, i32 4}
!312 = !{ptr @.str.140, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1037, i32 5}
!314 = !{ptr @.str.141, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @gswip_vlan_add_aware._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @gswip_vlan_add_aware._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @gswip_vlan_add_aware._entry.142, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1065, i32 4}
!319 = !{ptr @gswip_vlan_add_aware._entry_ptr.143, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @gswip_vlan_add_aware._entry.144, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1082, i32 3}
!322 = !{ptr @gswip_vlan_add_aware._entry_ptr.145, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.146, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1370, i32 3}
!325 = !{ptr @.str.147, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @gswip_port_fdb._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @gswip_port_fdb._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @gswip_port_fdb._entry.148, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1386, i32 3}
!330 = !{ptr @gswip_port_fdb._entry_ptr.149, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.150, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1418, i32 4}
!333 = !{ptr @gswip_port_fdb_dump._entry, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @gswip_port_fdb_dump._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @gswip_xrx300, !336, !"gswip_xrx300", i1 false, i1 false}
!336 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 2209, i32 35}
!337 = !{ptr @gswip_xrx300_switch_ops, !338, !"gswip_xrx300_switch_ops", i1 false, i1 false}
!338 = !{!"../drivers/net/dsa/lantiq_gswip.c", i32 1803, i32 36}
!339 = !{i32 1, !"wchar_size", i32 2}
!340 = !{i32 1, !"min_enum_size", i32 4}
!341 = !{i32 8, !"branch-target-enforcement", i32 0}
!342 = !{i32 8, !"sign-return-address", i32 0}
!343 = !{i32 8, !"sign-return-address-all", i32 0}
!344 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!345 = !{i32 7, !"uwtable", i32 1}
!346 = !{i32 7, !"frame-pointer", i32 2}
!347 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!348 = !{i64 6144975}
!349 = !{i64 6144557}
!350 = !{!"branch_weights", i32 1, i32 2000}
!351 = !{!"auto-init"}
!352 = !{i8 0, i8 2}
