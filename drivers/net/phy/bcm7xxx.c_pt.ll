; ModuleID = '/llk/IR_all_yes/drivers/net/phy/bcm7xxx.c_pt.bc'
source_filename = "../drivers/net/phy/bcm7xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.bcm7xxx_phy_priv = type { ptr, ptr }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__initcall__kmod_bcm7xxx__281_966_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@bcm7xxx_driver = internal global { [21 x %struct.phy_driver], [1220 x i8] } { [21 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650896, ptr @.str, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650960, ptr @.str.1, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650944, ptr @.str.2, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_resume, ptr @genphy_config_aneg, ptr null, ptr @genphy_read_status, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579520, ptr @.str.3, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579872, ptr @.str.4, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579760, ptr @.str.5, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375580016, ptr @.str.6, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579216, ptr @.str.7, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579744, ptr @.str.8, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579552, ptr @.str.9, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498640, ptr @.str.10, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579424, ptr @.str.11, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498624, ptr @.str.12, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375580032, ptr @.str.13, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498768, ptr @.str.14, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499088, ptr @.str.15, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498672, ptr @.str.16, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499184, ptr @.str.17, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499312, ptr @.str.18, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499344, ptr @.str.19, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650928, ptr @.str.20, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_resume, ptr @genphy_config_aneg, ptr null, ptr @genphy_read_status, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [1220 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description282 = internal constant [57 x i8] c"bcm7xxx.description=Broadcom BCM7xxx internal PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [37 x i8] c"bcm7xxx.file=drivers/net/phy/bcm7xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [20 x i8] c"bcm7xxx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [36 x i8] c"bcm7xxx.author=Broadcom Corporation\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM72113\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM72116\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM72165\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7250\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7255\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7260\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7268\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7271\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7278\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7364\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7366\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM74371\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7439\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Broadcom BCM7439 (2)\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7445\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7346\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7362\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7425\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7429\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7435\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM7712\00", [47 x i8] zeroinitializer }, align 32
@bcm7xxx_28nm_ephy_config_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bcm7xxx_28nm_ephy_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: %s PHY revision: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcm7xxx_28nm_ephy_config_init\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/phy/bcm7xxx.c\00", [38 x i8] zeroinitializer }, align 32
@bcm7xxx_28nm_ephy_config_init._entry_ptr = internal global ptr @bcm7xxx_28nm_ephy_config_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm7xxx_28nm_config_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bcm7xxx_28nm_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.23, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: %s PHY revision: 0x%02x, patch: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm7xxx_28nm_config_init\00", [39 x i8] zeroinitializer }, align 32
@bcm7xxx_28nm_config_init._entry_ptr = internal global ptr @bcm7xxx_28nm_config_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 20, i64 22, i64 60, i64 61]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 20, i64 22, i64 60, i64 61]
@__sancov_gen_cov_switch_values.27 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 16, i64 160, i64 176, i64 208, i64 224, i64 240]
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"bcm7xxx_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 918, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 919, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 920, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 921, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 922, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 923, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 924, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 925, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 926, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 927, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 928, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 929, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 930, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 931, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 932, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 933, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 934, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 935, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 936, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 937, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 938, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 939, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 394, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [29 x i8] c"../drivers/net/phy/bcm7xxx.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 157, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_bcm7xxx__281_966_phy_module_init6, ptr @bcm7xxx_28nm_config_init._entry, ptr @bcm7xxx_28nm_config_init._entry_ptr, ptr @bcm7xxx_28nm_ephy_config_init._entry, ptr @bcm7xxx_28nm_ephy_config_init._entry_ptr, ptr @phy_module_exit, ptr @bcm7xxx_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7xxx_driver to i32), i32 4956, i32 6176, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7xxx_28nm_ephy_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7xxx_28nm_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @bcm7xxx_driver, i32 noundef 21, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_drivers_unregister(ptr noundef nonnull @bcm7xxx_driver, i32 noundef 21) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 8
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_id_mask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %1, %neg
  %.b43 = load i1, ptr @bcm7xxx_28nm_ephy_config_init.__already_done, align 1
  br i1 %.b43, label %entry.if.end_crit_edge, label %if.then, !prof !78

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = and i32 %and, 255
  br label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr @bcm7xxx_28nm_ephy_config_init.__already_done, align 1
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.phydev_name.exit_crit_edge

if.then.phydev_name.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %phydev_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i, %if.then.phydev_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.phydev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %conv7 = and i32 %and, 255
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i.i, ptr noundef %11, i32 noundef %conv7) #10
  br label %if.end

if.end:                                           ; preds = %phydev_name.exit, %entry.if.end_crit_edge
  %conv17.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %conv7, %phydev_name.exit ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv17.pre-phi)
  %cmp = icmp eq i32 %conv17.pre-phi, 1
  br i1 %cmp, label %if.then19, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %if.end
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #7
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 8
  %call.i.i.i.i = tail call i32 @__mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then19.phy_set_clr_bits.exit.i_crit_edge, label %if.end.i.i.i

if.then19.phy_set_clr_bits.exit.i_crit_edge:      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit.i

if.end.i.i.i:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i = or i32 %call.i.i.i.i, 4
  %conv.i.i.i = trunc i32 %or.i.i.i to i16
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 8
  %call.i17.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 31, i16 noundef zeroext %conv.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call.i17.i.i.i, 0
  %call1.or.i.i.i = select i1 %cmp2.i.i.i, i32 %call.i17.i.i.i, i32 %or.i.i.i
  br label %phy_set_clr_bits.exit.i

phy_set_clr_bits.exit.i:                          ; preds = %if.end.i.i.i, %if.then19.phy_set_clr_bits.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i.i, %if.then19.phy_set_clr_bits.exit.i_crit_edge ], [ %call1.or.i.i.i, %if.end.i.i.i ]
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i.i = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i, label %phy_set_clr_bits.exit.i.cleanup_crit_edge, label %if.end.i

phy_set_clr_bits.exit.i.cleanup_crit_edge:        ; preds = %phy_set_clr_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %phy_set_clr_bits.exit.i
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 26, i16 noundef zeroext 15328) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.reset_shadow_mode.i_crit_edge, label %if.end4.i

if.end.i.reset_shadow_mode.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i

if.end4.i:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 8
  %call.i41.i = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 14, i16 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp6.i = icmp slt i32 %call.i41.i, 0
  br i1 %cmp6.i, label %if.end4.i.reset_shadow_mode.i_crit_edge, label %if.end8.i

if.end4.i.reset_shadow_mode.i_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i

if.end8.i:                                        ; preds = %if.end4.i
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i43.i = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i43.i, i32 noundef 0) #7
  %38 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i, align 8
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i, align 8
  %call.i.i.i45.i = tail call i32 @__mdiobus_read(ptr noundef %39, i32 noundef %41, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i45.i)
  %cmp.i.i46.i = icmp slt i32 %call.i.i.i45.i, 0
  br i1 %cmp.i.i46.i, label %if.end8.i.phy_set_clr_bits.exit55.i_crit_edge, label %if.end.i.i52.i

if.end8.i.phy_set_clr_bits.exit55.i_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit55.i

if.end.i.i52.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i47.i = or i32 %call.i.i.i45.i, 6
  %conv.i.i48.i = trunc i32 %or.i.i47.i to i16
  %42 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i, align 8
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i, align 8
  %call.i17.i.i49.i = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %45, i32 noundef 15, i16 noundef zeroext %conv.i.i48.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i49.i)
  %cmp2.i.i50.i = icmp slt i32 %call.i17.i.i49.i, 0
  %call1.or.i.i51.i = select i1 %cmp2.i.i50.i, i32 %call.i17.i.i49.i, i32 %or.i.i47.i
  br label %phy_set_clr_bits.exit55.i

phy_set_clr_bits.exit55.i:                        ; preds = %if.end.i.i52.i, %if.end8.i.phy_set_clr_bits.exit55.i_crit_edge
  %retval.0.i.i53.i = phi i32 [ %call.i.i.i45.i, %if.end8.i.phy_set_clr_bits.exit55.i_crit_edge ], [ %call1.or.i.i51.i, %if.end.i.i52.i ]
  %46 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i54.i = getelementptr inbounds %struct.mii_bus, ptr %47, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i54.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i53.i)
  %cmp10.i = icmp slt i32 %retval.0.i.i53.i, 0
  br i1 %cmp10.i, label %phy_set_clr_bits.exit55.i.reset_shadow_mode.i_crit_edge, label %if.end12.i

phy_set_clr_bits.exit55.i.reset_shadow_mode.i_crit_edge: ; preds = %phy_set_clr_bits.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i

if.end12.i:                                       ; preds = %phy_set_clr_bits.exit55.i
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i, align 8
  %call.i58.i = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 14, i16 noundef zeroext 35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp14.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp14.i, label %if.end12.i.reset_shadow_mode.i_crit_edge, label %if.end16.i

if.end12.i.reset_shadow_mode.i_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i

if.end16.i:                                       ; preds = %if.end12.i
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i60.i = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i60.i, i32 noundef 0) #7
  %54 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i, align 8
  %56 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addr.i, align 8
  %call.i.i.i62.i = tail call i32 @__mdiobus_read(ptr noundef %55, i32 noundef %57, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i62.i)
  %cmp.i.i63.i = icmp slt i32 %call.i.i.i62.i, 0
  br i1 %cmp.i.i63.i, label %if.end16.i.phy_set_clr_bits.exit71.i_crit_edge, label %if.end.i.i68.i

if.end16.i.phy_set_clr_bits.exit71.i_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit71.i

if.end.i.i68.i:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = trunc i32 %call.i.i.i62.i to i16
  %conv.i.i64.i = and i16 %58, -7
  %59 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i, align 8
  %61 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i, align 8
  %call.i17.i.i65.i = tail call i32 @__mdiobus_write(ptr noundef %60, i32 noundef %62, i32 noundef 15, i16 noundef zeroext %conv.i.i64.i) #7
  br label %phy_set_clr_bits.exit71.i

phy_set_clr_bits.exit71.i:                        ; preds = %if.end.i.i68.i, %if.end16.i.phy_set_clr_bits.exit71.i_crit_edge
  %63 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i70.i = getelementptr inbounds %struct.mii_bus, ptr %64, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i70.i) #7
  br label %reset_shadow_mode.i

reset_shadow_mode.i:                              ; preds = %phy_set_clr_bits.exit71.i, %if.end12.i.reset_shadow_mode.i_crit_edge, %phy_set_clr_bits.exit55.i.reset_shadow_mode.i_crit_edge, %if.end4.i.reset_shadow_mode.i_crit_edge, %if.end.i.reset_shadow_mode.i_crit_edge
  %65 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i73.i = getelementptr inbounds %struct.mii_bus, ptr %66, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i73.i, i32 noundef 0) #7
  %67 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i, align 8
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %addr.i, align 8
  %call.i.i.i75.i = tail call i32 @__mdiobus_read(ptr noundef %68, i32 noundef %70, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i75.i)
  %cmp.i.i76.i = icmp slt i32 %call.i.i.i75.i, 0
  br i1 %cmp.i.i76.i, label %reset_shadow_mode.i.bcm7xxx_28nm_ephy_01_afe_config_init.exit_crit_edge, label %if.end.i.i82.i

reset_shadow_mode.i.bcm7xxx_28nm_ephy_01_afe_config_init.exit_crit_edge: ; preds = %reset_shadow_mode.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_01_afe_config_init.exit

if.end.i.i82.i:                                   ; preds = %reset_shadow_mode.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i77.i = and i32 %call.i.i.i75.i, -5
  %conv.i.i78.i = trunc i32 %and.i.i77.i to i16
  %71 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i, align 8
  %73 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr.i, align 8
  %call.i17.i.i79.i = tail call i32 @__mdiobus_write(ptr noundef %72, i32 noundef %74, i32 noundef 31, i16 noundef zeroext %conv.i.i78.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i79.i)
  %cmp2.i.i80.i = icmp slt i32 %call.i17.i.i79.i, 0
  %spec.select = select i1 %cmp2.i.i80.i, i32 %call.i17.i.i79.i, i32 %and.i.i77.i
  br label %bcm7xxx_28nm_ephy_01_afe_config_init.exit

bcm7xxx_28nm_ephy_01_afe_config_init.exit:        ; preds = %if.end.i.i82.i, %reset_shadow_mode.i.bcm7xxx_28nm_ephy_01_afe_config_init.exit_crit_edge
  %retval.0.i.i83.i = phi i32 [ %call.i.i.i75.i, %reset_shadow_mode.i.bcm7xxx_28nm_ephy_01_afe_config_init.exit_crit_edge ], [ %spec.select, %if.end.i.i82.i ]
  %75 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i84.i = getelementptr inbounds %struct.mii_bus, ptr %76, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i84.i) #7
  %77 = tail call i32 @llvm.smin.i32(i32 %retval.0.i.i83.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i83.i)
  %tobool21.not = icmp sgt i32 %retval.0.i.i83.i, -1
  br i1 %tobool21.not, label %bcm7xxx_28nm_ephy_01_afe_config_init.exit.if.end24_crit_edge, label %bcm7xxx_28nm_ephy_01_afe_config_init.exit.cleanup_crit_edge

bcm7xxx_28nm_ephy_01_afe_config_init.exit.cleanup_crit_edge: ; preds = %bcm7xxx_28nm_ephy_01_afe_config_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bcm7xxx_28nm_ephy_01_afe_config_init.exit.if.end24_crit_edge: ; preds = %bcm7xxx_28nm_ephy_01_afe_config_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %bcm7xxx_28nm_ephy_01_afe_config_init.exit.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %78 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i45 = getelementptr inbounds %struct.mii_bus, ptr %79, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i45, i32 noundef 0) #7
  %80 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i, align 8
  %82 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i, align 8
  %call.i.i.i.i47 = tail call i32 @__mdiobus_read(ptr noundef %81, i32 noundef %83, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i47)
  %cmp.i.i.i48 = icmp slt i32 %call.i.i.i.i47, 0
  br i1 %cmp.i.i.i48, label %if.end24.phy_set_clr_bits.exit.i58_crit_edge, label %if.end.i.i.i54

if.end24.phy_set_clr_bits.exit.i58_crit_edge:     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit.i58

if.end.i.i.i54:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i49 = or i32 %call.i.i.i.i47, 4
  %conv.i.i.i50 = trunc i32 %or.i.i.i49 to i16
  %84 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i, align 8
  %86 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i, align 8
  %call.i17.i.i.i51 = tail call i32 @__mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 31, i16 noundef zeroext %conv.i.i.i50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i.i51)
  %cmp2.i.i.i52 = icmp slt i32 %call.i17.i.i.i51, 0
  %call1.or.i.i.i53 = select i1 %cmp2.i.i.i52, i32 %call.i17.i.i.i51, i32 %or.i.i.i49
  br label %phy_set_clr_bits.exit.i58

phy_set_clr_bits.exit.i58:                        ; preds = %if.end.i.i.i54, %if.end24.phy_set_clr_bits.exit.i58_crit_edge
  %retval.0.i.i.i55 = phi i32 [ %call.i.i.i.i47, %if.end24.phy_set_clr_bits.exit.i58_crit_edge ], [ %call1.or.i.i.i53, %if.end.i.i.i54 ]
  %88 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i.i56 = getelementptr inbounds %struct.mii_bus, ptr %89, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i.i56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i55)
  %cmp.i57 = icmp slt i32 %retval.0.i.i.i55, 0
  br i1 %cmp.i57, label %phy_set_clr_bits.exit.i58.cleanup_crit_edge, label %if.end.i61

phy_set_clr_bits.exit.i58.cleanup_crit_edge:      ; preds = %phy_set_clr_bits.exit.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i61:                                       ; preds = %phy_set_clr_bits.exit.i58
  %90 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i, align 8
  %92 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %addr.i, align 8
  %call.i.i59 = tail call i32 @mdiobus_write(ptr noundef %91, i32 noundef %93, i32 noundef 14, i16 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %cmp2.i60 = icmp slt i32 %call.i.i59, 0
  br i1 %cmp2.i60, label %if.end.i61.reset_shadow_mode.i69_crit_edge, label %if.end4.i63

if.end.i61.reset_shadow_mode.i69_crit_edge:       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i69

if.end4.i63:                                      ; preds = %if.end.i61
  %94 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i, align 8
  %96 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr.i, align 8
  %call.i61.i = tail call i32 @mdiobus_write(ptr noundef %95, i32 noundef %97, i32 noundef 15, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp6.i62 = icmp slt i32 %call.i61.i, 0
  br i1 %cmp6.i62, label %if.end4.i63.reset_shadow_mode.i69_crit_edge, label %if.end8.i65

if.end4.i63.reset_shadow_mode.i69_crit_edge:      ; preds = %if.end4.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i69

if.end8.i65:                                      ; preds = %if.end4.i63
  %98 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i, align 8
  %100 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %addr.i, align 8
  %call.i64.i = tail call i32 @mdiobus_write(ptr noundef %99, i32 noundef %101, i32 noundef 14, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %cmp10.i64 = icmp slt i32 %call.i64.i, 0
  br i1 %cmp10.i64, label %if.end8.i65.reset_shadow_mode.i69_crit_edge, label %if.end12.i67

if.end8.i65.reset_shadow_mode.i69_crit_edge:      ; preds = %if.end8.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i69

if.end12.i67:                                     ; preds = %if.end8.i65
  %102 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus.i, align 8
  %104 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %addr.i, align 8
  %call.i67.i = tail call i32 @mdiobus_write(ptr noundef %103, i32 noundef %105, i32 noundef 15, i16 noundef zeroext 17408) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %cmp14.i66 = icmp slt i32 %call.i67.i, 0
  br i1 %cmp14.i66, label %if.end12.i67.reset_shadow_mode.i69_crit_edge, label %if.end16.i68

if.end12.i67.reset_shadow_mode.i69_crit_edge:     ; preds = %if.end12.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i69

if.end16.i68:                                     ; preds = %if.end12.i67
  %106 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus.i, align 8
  %108 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %addr.i, align 8
  %call.i70.i = tail call i32 @mdiobus_write(ptr noundef %107, i32 noundef %109, i32 noundef 14, i16 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %cmp18.i = icmp slt i32 %call.i70.i, 0
  br i1 %cmp18.i, label %if.end16.i68.reset_shadow_mode.i69_crit_edge, label %if.end20.i

if.end16.i68.reset_shadow_mode.i69_crit_edge:     ; preds = %if.end16.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i69

if.end20.i:                                       ; preds = %if.end16.i68
  %110 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i, align 8
  %112 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %addr.i, align 8
  %call.i73.i = tail call i32 @mdiobus_write(ptr noundef %111, i32 noundef %113, i32 noundef 15, i16 noundef zeroext 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp22.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp22.i, label %if.end20.i.reset_shadow_mode.i69_crit_edge, label %if.end24.i

if.end20.i.reset_shadow_mode.i69_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i69

if.end24.i:                                       ; preds = %if.end20.i
  %114 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bus.i, align 8
  %116 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %addr.i, align 8
  %call.i76.i = tail call i32 @mdiobus_write(ptr noundef %115, i32 noundef %117, i32 noundef 14, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %cmp26.i = icmp slt i32 %call.i76.i, 0
  br i1 %cmp26.i, label %if.end24.i.reset_shadow_mode.i69_crit_edge, label %if.end28.i

if.end24.i.reset_shadow_mode.i69_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode.i69

if.end28.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus.i, align 8
  %120 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %addr.i, align 8
  %call.i79.i = tail call i32 @mdiobus_write(ptr noundef %119, i32 noundef %121, i32 noundef 15, i16 noundef zeroext 3) #7
  br label %reset_shadow_mode.i69

reset_shadow_mode.i69:                            ; preds = %if.end28.i, %if.end24.i.reset_shadow_mode.i69_crit_edge, %if.end20.i.reset_shadow_mode.i69_crit_edge, %if.end16.i68.reset_shadow_mode.i69_crit_edge, %if.end12.i67.reset_shadow_mode.i69_crit_edge, %if.end8.i65.reset_shadow_mode.i69_crit_edge, %if.end4.i63.reset_shadow_mode.i69_crit_edge, %if.end.i61.reset_shadow_mode.i69_crit_edge
  %122 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i81.i = getelementptr inbounds %struct.mii_bus, ptr %123, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i81.i, i32 noundef 0) #7
  %124 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus.i, align 8
  %126 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %addr.i, align 8
  %call.i.i.i83.i = tail call i32 @__mdiobus_read(ptr noundef %125, i32 noundef %127, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i83.i)
  %cmp.i.i84.i = icmp slt i32 %call.i.i.i83.i, 0
  br i1 %cmp.i.i84.i, label %reset_shadow_mode.i69.phy_set_clr_bits.exit92.i_crit_edge, label %if.end.i.i89.i

reset_shadow_mode.i69.phy_set_clr_bits.exit92.i_crit_edge: ; preds = %reset_shadow_mode.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit92.i

if.end.i.i89.i:                                   ; preds = %reset_shadow_mode.i69
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i = and i32 %call.i.i.i83.i, -5
  %conv.i.i85.i = trunc i32 %and.i.i.i to i16
  %128 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus.i, align 8
  %130 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %addr.i, align 8
  %call.i17.i.i86.i = tail call i32 @__mdiobus_write(ptr noundef %129, i32 noundef %131, i32 noundef 31, i16 noundef zeroext %conv.i.i85.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i86.i)
  %cmp2.i.i87.i = icmp slt i32 %call.i17.i.i86.i, 0
  %spec.select96 = select i1 %cmp2.i.i87.i, i32 %call.i17.i.i86.i, i32 %and.i.i.i
  br label %phy_set_clr_bits.exit92.i

phy_set_clr_bits.exit92.i:                        ; preds = %if.end.i.i89.i, %reset_shadow_mode.i69.phy_set_clr_bits.exit92.i_crit_edge
  %retval.0.i.i90.i = phi i32 [ %call.i.i.i83.i, %reset_shadow_mode.i69.phy_set_clr_bits.exit92.i_crit_edge ], [ %spec.select96, %if.end.i.i89.i ]
  %132 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i91.i = getelementptr inbounds %struct.mii_bus, ptr %133, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i91.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i90.i)
  %cmp34.i = icmp slt i32 %retval.0.i.i90.i, 0
  br i1 %cmp34.i, label %phy_set_clr_bits.exit92.i.cleanup_crit_edge, label %if.end28

phy_set_clr_bits.exit92.i.cleanup_crit_edge:      ; preds = %phy_set_clr_bits.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %phy_set_clr_bits.exit92.i
  %134 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bus.i, align 8
  %136 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %addr.i, align 8
  %call.i95.i = tail call i32 @mdiobus_write(ptr noundef %135, i32 noundef %137, i32 noundef 0, i16 noundef zeroext 12800) #7
  %138 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i72 = getelementptr inbounds %struct.mii_bus, ptr %139, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i72, i32 noundef 0) #7
  %140 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bus.i, align 8
  %142 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %addr.i, align 8
  %call.i.i.i.i74 = tail call i32 @__mdiobus_read(ptr noundef %141, i32 noundef %143, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i74)
  %cmp.i.i.i75 = icmp slt i32 %call.i.i.i.i74, 0
  br i1 %cmp.i.i.i75, label %if.end28.phy_set_clr_bits.exit.i85_crit_edge, label %if.end.i.i.i81

if.end28.phy_set_clr_bits.exit.i85_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit.i85

if.end.i.i.i81:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i76 = or i32 %call.i.i.i.i74, 128
  %conv.i.i.i77 = trunc i32 %or.i.i.i76 to i16
  %144 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bus.i, align 8
  %146 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %addr.i, align 8
  %call.i17.i.i.i78 = tail call i32 @__mdiobus_write(ptr noundef %145, i32 noundef %147, i32 noundef 31, i16 noundef zeroext %conv.i.i.i77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i.i78)
  %cmp2.i.i.i79 = icmp slt i32 %call.i17.i.i.i78, 0
  %call1.or.i.i.i80 = select i1 %cmp2.i.i.i79, i32 %call.i17.i.i.i78, i32 %or.i.i.i76
  br label %phy_set_clr_bits.exit.i85

phy_set_clr_bits.exit.i85:                        ; preds = %if.end.i.i.i81, %if.end28.phy_set_clr_bits.exit.i85_crit_edge
  %retval.0.i.i.i82 = phi i32 [ %call.i.i.i.i74, %if.end28.phy_set_clr_bits.exit.i85_crit_edge ], [ %call1.or.i.i.i80, %if.end.i.i.i81 ]
  %148 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i.i83 = getelementptr inbounds %struct.mii_bus, ptr %149, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i.i83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i82)
  %cmp.i84 = icmp slt i32 %retval.0.i.i.i82, 0
  br i1 %cmp.i84, label %phy_set_clr_bits.exit.i85.cleanup_crit_edge, label %if.end.i86

phy_set_clr_bits.exit.i85.cleanup_crit_edge:      ; preds = %phy_set_clr_bits.exit.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i86:                                       ; preds = %phy_set_clr_bits.exit.i85
  %150 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i17.i = getelementptr inbounds %struct.mii_bus, ptr %151, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i17.i, i32 noundef 0) #7
  %152 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bus.i, align 8
  %154 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %addr.i, align 8
  %call.i.i.i19.i = tail call i32 @__mdiobus_read(ptr noundef %153, i32 noundef %155, i32 noundef 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i19.i)
  %cmp.i.i20.i = icmp slt i32 %call.i.i.i19.i, 0
  br i1 %cmp.i.i20.i, label %if.end.i86.phy_set_clr_bits.exit29.i_crit_edge, label %if.end.i.i26.i

if.end.i86.phy_set_clr_bits.exit29.i_crit_edge:   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit29.i

if.end.i.i26.i:                                   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i21.i = or i32 %call.i.i.i19.i, 32
  %conv.i.i22.i = trunc i32 %or.i.i21.i to i16
  %156 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bus.i, align 8
  %158 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %addr.i, align 8
  %call.i17.i.i23.i = tail call i32 @__mdiobus_write(ptr noundef %157, i32 noundef %159, i32 noundef 27, i16 noundef zeroext %conv.i.i22.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i23.i)
  %cmp2.i.i24.i = icmp slt i32 %call.i17.i.i23.i, 0
  %call1.or.i.i25.i = select i1 %cmp2.i.i24.i, i32 %call.i17.i.i23.i, i32 %or.i.i21.i
  br label %phy_set_clr_bits.exit29.i

phy_set_clr_bits.exit29.i:                        ; preds = %if.end.i.i26.i, %if.end.i86.phy_set_clr_bits.exit29.i_crit_edge
  %retval.0.i.i27.i = phi i32 [ %call.i.i.i19.i, %if.end.i86.phy_set_clr_bits.exit29.i_crit_edge ], [ %call1.or.i.i25.i, %if.end.i.i26.i ]
  %160 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i28.i = getelementptr inbounds %struct.mii_bus, ptr %161, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i28.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i27.i)
  %cmp2.i87 = icmp slt i32 %retval.0.i.i27.i, 0
  br i1 %cmp2.i87, label %phy_set_clr_bits.exit29.i.cleanup_crit_edge, label %if.end4.i88

phy_set_clr_bits.exit29.i.cleanup_crit_edge:      ; preds = %phy_set_clr_bits.exit29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i88:                                      ; preds = %phy_set_clr_bits.exit29.i
  %162 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i31.i = getelementptr inbounds %struct.mii_bus, ptr %163, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i31.i, i32 noundef 0) #7
  %164 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bus.i, align 8
  %166 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %addr.i, align 8
  %call.i.i.i33.i = tail call i32 @__mdiobus_read(ptr noundef %165, i32 noundef %167, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33.i)
  %cmp.i.i34.i = icmp slt i32 %call.i.i.i33.i, 0
  br i1 %cmp.i.i34.i, label %if.end4.i88.phy_set_clr_bits.exit42.i_crit_edge, label %if.end.i.i39.i

if.end4.i88.phy_set_clr_bits.exit42.i_crit_edge:  ; preds = %if.end4.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit42.i

if.end.i.i39.i:                                   ; preds = %if.end4.i88
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i89 = and i32 %call.i.i.i33.i, -129
  %conv.i.i35.i = trunc i32 %and.i.i.i89 to i16
  %168 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bus.i, align 8
  %170 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %addr.i, align 8
  %call.i17.i.i36.i = tail call i32 @__mdiobus_write(ptr noundef %169, i32 noundef %171, i32 noundef 31, i16 noundef zeroext %conv.i.i35.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i36.i)
  %cmp2.i.i37.i = icmp slt i32 %call.i17.i.i36.i, 0
  %call1.or.i.i38.i = select i1 %cmp2.i.i37.i, i32 %call.i17.i.i36.i, i32 %and.i.i.i89
  br label %phy_set_clr_bits.exit42.i

phy_set_clr_bits.exit42.i:                        ; preds = %if.end.i.i39.i, %if.end4.i88.phy_set_clr_bits.exit42.i_crit_edge
  %retval.0.i.i40.i = phi i32 [ %call.i.i.i33.i, %if.end4.i88.phy_set_clr_bits.exit42.i_crit_edge ], [ %call1.or.i.i38.i, %if.end.i.i39.i ]
  %172 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i41.i = getelementptr inbounds %struct.mii_bus, ptr %173, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i41.i) #7
  %174 = tail call i32 @llvm.smin.i32(i32 %retval.0.i.i40.i, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %phy_set_clr_bits.exit42.i, %phy_set_clr_bits.exit29.i.cleanup_crit_edge, %phy_set_clr_bits.exit.i85.cleanup_crit_edge, %phy_set_clr_bits.exit92.i.cleanup_crit_edge, %phy_set_clr_bits.exit.i58.cleanup_crit_edge, %bcm7xxx_28nm_ephy_01_afe_config_init.exit.cleanup_crit_edge, %phy_set_clr_bits.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %77, %bcm7xxx_28nm_ephy_01_afe_config_init.exit.cleanup_crit_edge ], [ %retval.0.i.i.i82, %phy_set_clr_bits.exit.i85.cleanup_crit_edge ], [ %retval.0.i.i27.i, %phy_set_clr_bits.exit29.i.cleanup_crit_edge ], [ %174, %phy_set_clr_bits.exit42.i ], [ %retval.0.i.i.i, %phy_set_clr_bits.exit.i.cleanup_crit_edge ], [ %retval.0.i.i90.i, %phy_set_clr_bits.exit92.i.cleanup_crit_edge ], [ %retval.0.i.i.i55, %phy_set_clr_bits.exit.i58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv1, align 8
  %call4 = tail call i32 @bcm_phy_get_sset_count(ptr noundef %phydev) #7
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4, i32 8) #7
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !79

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call.i, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef %4, i32 noundef 3520) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end9

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %devm_kcalloc.exit
  %call12 = tail call ptr @devm_clk_get_optional(ptr noundef %phydev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.bcm7xxx_phy_priv, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call.i40 = tail call i32 @clk_prepare(ptr noundef %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call12) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i41 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then3.i, %if.end18.cleanup_crit_edge, %if.then15, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then15 ], [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call1.i, %if.then3.i ], [ %call.i40, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm7xxx_28nm_ephy_config_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7xxx_28nm_remove(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %clk = getelementptr inbounds %struct.bcm7xxx_phy_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_read_mmd(ptr nocapture noundef readonly %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %regnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %regnum, label %entry.cleanup_crit_edge [
    i16 0, label %entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge
    i16 1, label %sw.bb1.i
    i16 20, label %sw.bb2.i
    i16 60, label %sw.bb3.i
    i16 61, label %sw.bb4.i
    i16 22, label %sw.bb5.i
  ]

entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

bcm7xxx_28nm_ephy_regnum_to_shd.exit:             ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge
  %retval.0.i = phi i8 [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge ]
  %1 = and i32 %devnum, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %if.end, label %bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge

bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge: ; preds = %bcm7xxx_28nm_ephy_regnum_to_shd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bcm7xxx_28nm_ephy_regnum_to_shd.exit
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %__phy_set_clr_bits.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__phy_set_clr_bits.exit:                          ; preds = %if.end
  %or.i = or i32 %call.i.i, 4
  %conv.i = trunc i32 %or.i to i16
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i17.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp2.i = icmp slt i32 %call.i17.i, 0
  %call1.or.i = select i1 %cmp2.i, i32 %call.i17.i, i32 %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.or.i)
  %cmp4 = icmp slt i32 %call1.or.i, 0
  br i1 %cmp4, label %__phy_set_clr_bits.exit.cleanup_crit_edge, label %if.end7

__phy_set_clr_bits.exit.cleanup_crit_edge:        ; preds = %__phy_set_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %__phy_set_clr_bits.exit
  %conv8 = zext i8 %retval.0.i to i16
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 14, i16 noundef zeroext %conv8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.end7.reset_shadow_mode_crit_edge, label %if.end13

if.end7.reset_shadow_mode_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i27 = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 15) #7
  br label %reset_shadow_mode

reset_shadow_mode:                                ; preds = %if.end13, %if.end7.reset_shadow_mode_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end7.reset_shadow_mode_crit_edge ], [ %call.i27, %if.end13 ]
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i30 = tail call i32 @__mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp.i31 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp.i31, label %reset_shadow_mode.cleanup_crit_edge, label %if.end.i36

reset_shadow_mode.cleanup_crit_edge:              ; preds = %reset_shadow_mode
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i36:                                       ; preds = %reset_shadow_mode
  call void @__sanitizer_cov_trace_pc() #9
  %22 = trunc i32 %call.i.i30 to i16
  %conv.i32 = and i16 %22, -5
  %23 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i.i, align 8
  %25 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i.i, align 8
  %call.i17.i33 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 31, i16 noundef zeroext %conv.i32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i36, %reset_shadow_mode.cleanup_crit_edge, %__phy_set_clr_bits.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge ], [ %call1.or.i, %__phy_set_clr_bits.exit.cleanup_crit_edge ], [ %ret.0, %reset_shadow_mode.cleanup_crit_edge ], [ %ret.0, %if.end.i36 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_write_mmd(ptr nocapture noundef readonly %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %regnum to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %regnum, label %entry.cleanup_crit_edge [
    i16 0, label %entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge
    i16 1, label %sw.bb1.i
    i16 20, label %sw.bb2.i
    i16 60, label %sw.bb3.i
    i16 61, label %sw.bb4.i
    i16 22, label %sw.bb5.i
  ]

entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm7xxx_28nm_ephy_regnum_to_shd.exit

bcm7xxx_28nm_ephy_regnum_to_shd.exit:             ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge
  %retval.0.i = phi i8 [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.bcm7xxx_28nm_ephy_regnum_to_shd.exit_crit_edge ]
  %1 = and i32 %devnum, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %if.end, label %bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge

bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge: ; preds = %bcm7xxx_28nm_ephy_regnum_to_shd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bcm7xxx_28nm_ephy_regnum_to_shd.exit
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %__phy_set_clr_bits.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__phy_set_clr_bits.exit:                          ; preds = %if.end
  %or.i = or i32 %call.i.i, 4
  %conv.i = trunc i32 %or.i to i16
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i17.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp2.i = icmp slt i32 %call.i17.i, 0
  %call1.or.i = select i1 %cmp2.i, i32 %call.i17.i, i32 %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.or.i)
  %cmp4 = icmp slt i32 %call1.or.i, 0
  br i1 %cmp4, label %__phy_set_clr_bits.exit.cleanup_crit_edge, label %if.end7

__phy_set_clr_bits.exit.cleanup_crit_edge:        ; preds = %__phy_set_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %__phy_set_clr_bits.exit
  %conv8 = zext i8 %retval.0.i to i16
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 14, i16 noundef zeroext %conv8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.end7.reset_shadow_mode_crit_edge, label %if.end13

if.end7.reset_shadow_mode_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_shadow_mode

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i26 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 15, i16 noundef zeroext %val) #7
  br label %reset_shadow_mode

reset_shadow_mode:                                ; preds = %if.end13, %if.end7.reset_shadow_mode_crit_edge
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i29 = tail call i32 @__mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i30, label %reset_shadow_mode.cleanup_crit_edge, label %if.end.i35

reset_shadow_mode.cleanup_crit_edge:              ; preds = %reset_shadow_mode
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i35:                                       ; preds = %reset_shadow_mode
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i.i29, -5
  %conv.i31 = trunc i32 %and.i to i16
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i17.i32 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 31, i16 noundef zeroext %conv.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i32)
  %cmp2.i33 = icmp slt i32 %call.i17.i32, 0
  %call1.or.i34 = select i1 %cmp2.i33, i32 %call.i17.i32, i32 %and.i
  br label %cleanup

cleanup:                                          ; preds = %if.end.i35, %reset_shadow_mode.cleanup_crit_edge, %__phy_set_clr_bits.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %bcm7xxx_28nm_ephy_regnum_to_shd.exit.cleanup_crit_edge ], [ %call1.or.i, %__phy_set_clr_bits.exit.cleanup_crit_edge ], [ %call.i.i29, %reset_shadow_mode.cleanup_crit_edge ], [ %call1.or.i34, %if.end.i35 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_get_sset_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_strings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7xxx_28nm_get_phy_stats(ptr noundef %phydev, ptr noundef %stats, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @bcm_phy_get_stats(ptr noundef %phydev, ptr noundef %3, ptr noundef %stats, ptr noundef %data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_16nm_ephy_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3843, i16 noundef zeroext 6) #7
  %call.i121.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3843, i16 noundef zeroext 0) #7
  %call3.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 48, i16 noundef zeroext 1, i16 noundef zeroext 0) #7
  %call4.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 49, i16 noundef zeroext 0, i16 noundef zeroext 1098) #7
  %call5.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 51, i16 noundef zeroext 2, i16 noundef zeroext 29089) #7
  %call6.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 51, i16 noundef zeroext 1, i16 noundef zeroext -32768) #7
  %call7.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 49, i16 noundef zeroext 1, i16 noundef zeroext 12136) #7
  %call8.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 49, i16 noundef zeroext 2, i16 noundef zeroext 0) #7
  %call9.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 48, i16 noundef zeroext 3, i16 noundef zeroext -16330) #7
  %call10.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 50, i16 noundef zeroext 3, i16 noundef zeroext 0) #7
  %call11.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 51, i16 noundef zeroext 0, i16 noundef zeroext 2) #7
  %call12.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 48, i16 noundef zeroext 2, i16 noundef zeroext 448) #7
  %call13.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 48, i16 noundef zeroext 1, i16 noundef zeroext 1) #7
  %call14.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 0, i16 noundef zeroext 16) #7
  %call15.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext 56) #7
  %call16.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext 59) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 429496) #7
  %call17.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext 63) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %call19.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext 7298) #7
  %call20.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24958) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #7
  %call21.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24702) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #7
  %call22.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24954) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #7
  %call23.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24698) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #7
  %call24.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -6166) #7
  %call25.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 2, i16 noundef zeroext -4640) #7
  %call26.i = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 169) #7
  %and.i = lshr i32 %call26.i, 1
  %div119.i = and i32 %and.i, 63
  %10 = tail call i32 @llvm.umin.i32(i32 %div119.i, i32 47) #7
  %11 = tail call i32 @llvm.umin.i32(i32 %div119.i, i32 53) #7
  %.tr.i = trunc i32 %10 to i16
  %12 = shl nuw nsw i16 %.tr.i, 8
  %conv.i = add nuw nsw i16 %12, 4344
  %call34.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext %conv.i) #7
  %call35.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -6172) #7
  %call36.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 59, i16 noundef zeroext 0, i16 noundef zeroext -32766) #7
  %call37.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 60, i16 noundef zeroext 3, i16 noundef zeroext -1918) #7
  %call38.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 61, i16 noundef zeroext 0, i16 noundef zeroext 12801) #7
  %call39.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 58, i16 noundef zeroext 2, i16 noundef zeroext 3072) #7
  %call40.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 32) #7
  %call41.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 59, i16 noundef zeroext 2, i16 noundef zeroext 0) #7
  %call42.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 59, i16 noundef zeroext 3, i16 noundef zeroext 0) #7
  %call43.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 58, i16 noundef zeroext 3, i16 noundef zeroext 2048) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #7
  %call44.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 0) #7
  %call47.i = tail call i32 @bcm_phy_read_misc(ptr noundef %phydev, i16 noundef zeroext 61, i16 noundef zeroext 1) #7
  %and48.i = and i32 %call47.i, 61471
  %14 = shl nuw nsw i32 %11, 5
  %15 = add nuw nsw i32 %14, 320
  %or.i = or i32 %and48.i, %15
  %16 = trunc i32 %or.i to i16
  %conv51.i = or i16 %16, 32
  %call52.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 61, i16 noundef zeroext 1, i16 noundef zeroext %conv51.i) #7
  %call54.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 61, i16 noundef zeroext 2, i16 noundef zeroext %conv51.i) #7
  %call55.i = tail call i32 @bcm_phy_read_misc(ptr noundef %phydev, i16 noundef zeroext 61, i16 noundef zeroext 0) #7
  %17 = trunc i32 %call55.i to i16
  %conv58.i = or i16 %17, 12288
  %call59.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 61, i16 noundef zeroext 0, i16 noundef zeroext %conv58.i) #7
  %call1 = tail call i32 @bcm_phy_set_eee(ptr noundef %phydev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @bcm_phy_read_shadow(ptr noundef %phydev, i16 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %18 = trunc i32 %call5 to i16
  %19 = and i16 %18, -259
  %conv = or i16 %19, 256
  %call8 = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 5, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @bcm_phy_enable_apd(ptr noundef %phydev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_16nm_ephy_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm7xxx_16nm_ephy_config_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genphy_config_aneg(ptr noundef %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  %count = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_flags, align 8
  %shr = lshr i32 %1, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %count) #7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %count, align 1, !annotation !80
  %3 = and i32 %1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_id, align 4
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv, align 8
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_id_mask, align 4
  %neg = xor i32 %9, -1
  %and6 = and i32 %5, %neg
  br label %land.end

land.end:                                         ; preds = %if.then, %entry.land.end_crit_edge
  %rev.0.in = phi i32 [ %and6, %if.then ], [ %shr, %entry.land.end_crit_edge ]
  %.b81 = load i1, ptr @bcm7xxx_28nm_config_init.__already_done, align 1
  br i1 %.b81, label %land.end.if.end18_crit_edge, label %if.then13, !prof !78

land.end.if.end18_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %land.end
  store i1 true, ptr @bcm7xxx_28nm_config_init.__already_done, align 1
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then13.phydev_name.exit_crit_edge

if.then13.phydev_name.exit_crit_edge:             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %phydev_name.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i, %if.then13.phydev_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then13.phydev_name.exit_crit_edge ]
  %drv14 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %14 = ptrtoint ptr %drv14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drv14, align 8
  %name = getelementptr inbounds %struct.phy_driver, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %conv15 = and i32 %rev.0.in, 255
  %conv16 = and i32 %1, 255
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %retval.0.i.i, ptr noundef %17, i32 noundef %conv15, i32 noundef %conv16) #10
  br label %if.end18

if.end18:                                         ; preds = %phydev_name.exit, %land.end.if.end18_crit_edge
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 1) #7
  %trunc = trunc i32 %rev.0.in to i8
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %trunc, label %if.end18.if.end37_crit_edge [
    i8 -96, label %if.end18.sw.epilog_crit_edge
    i8 -80, label %if.end18.sw.epilog_crit_edge99
    i8 -48, label %sw.bb29
    i8 -32, label %if.end18.sw.bb31_crit_edge
    i8 -16, label %if.end18.sw.bb31_crit_edge100
    i8 16, label %if.end18.sw.bb31_crit_edge101
    i8 1, label %sw.bb33
  ]

if.end18.sw.bb31_crit_edge101:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end18.sw.bb31_crit_edge100:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end18.sw.bb31_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end18.sw.epilog_crit_edge99:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.bb29:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i82 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 0, i16 noundef zeroext -5355) #7
  %call1.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -25809) #7
  %call2.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 2, i16 noundef zeroext 8195) #7
  %call3.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 3, i16 noundef zeroext 32704) #7
  %call4.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 0, i16 noundef zeroext 1073) #7
  %call5.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -22566) #7
  %call6.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext -24544) #7
  %call7.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 58, i16 noundef zeroext 0, i16 noundef zeroext 227) #7
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 30, i16 noundef zeroext 16) #7
  %call9.i = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 283) #7
  br label %if.end37.sink.split

sw.bb31:                                          ; preds = %if.end18.sw.bb31_crit_edge, %if.end18.sw.bb31_crit_edge100, %if.end18.sw.bb31_crit_edge101
  %call.i83 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -25809) #7
  %call1.i84 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 0, i16 noundef zeroext 1073) #7
  %call2.i85 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -22566) #7
  %call3.i86 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 58, i16 noundef zeroext 0, i16 noundef zeroext 227) #7
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 8
  %call.i.i89 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 30, i16 noundef zeroext 16) #7
  %call5.i90 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 283) #7
  br label %if.end37.sink.split

sw.bb33:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i91 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 56, i16 noundef zeroext 2, i16 noundef zeroext -12285) #7
  %call1.i92 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 31003) #7
  %call2.i93 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 58, i16 noundef zeroext 0, i16 noundef zeroext 4323) #7
  %call3.i94 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 33, i16 noundef zeroext 2, i16 noundef zeroext -30730) #7
  %call4.i95 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 381) #7
  %call5.i96 = tail call i32 @bcm_phy_write_misc(ptr noundef %phydev, i16 noundef zeroext 38, i16 noundef zeroext 2, i16 noundef zeroext 21) #7
  br label %if.end37.sink.split

sw.epilog:                                        ; preds = %if.end18.sw.epilog_crit_edge, %if.end18.sw.epilog_crit_edge99
  %call28 = tail call i32 @bcm_phy_28nm_a0b0_afe_config_init(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool35.not = icmp eq i32 %call28, 0
  br i1 %tobool35.not, label %sw.epilog.if.end37_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37.sink.split:                              ; preds = %sw.bb33, %sw.bb31, %sw.bb29
  tail call void @bcm_phy_r_rc_cal_reset(ptr noundef %phydev) #7
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %sw.epilog.if.end37_crit_edge, %if.end18.if.end37_crit_edge
  %call38 = tail call i32 @bcm_phy_enable_jumbo(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = call i32 @bcm_phy_downshift_get(ptr noundef %phydev, ptr noundef nonnull %count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp47 = icmp eq i8 %32, 0
  %call49 = call i32 @bcm_phy_set_eee(ptr noundef %phydev, i1 noundef zeroext %cmp47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = call i32 @bcm_phy_enable_apd(ptr noundef %phydev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %if.end52 ], [ %call28, %sw.epilog.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call49, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %count) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm7xxx_28nm_config_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_get_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @bcm_phy_downshift_get(ptr noundef %phydev, ptr noundef %data) #7
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @bcm_phy_downshift_set(ptr noundef %phydev, i8 noundef zeroext %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %call2 = tail call i32 @bcm_phy_set_eee(ptr noundef %phydev, i1 noundef zeroext %cmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @genphy_restart_aneg(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 4096) #7
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i21 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 29) #7
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #7
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i.i.i = tail call i32 @__mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.phy_set_clr_bits.exit_crit_edge, label %if.end.i.i

entry.phy_set_clr_bits.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %call.i.i.i, 4
  %conv.i.i = trunc i32 %or.i.i to i16
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i17.i.i = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 31, i16 noundef zeroext %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %cmp2.i.i = icmp slt i32 %call.i17.i.i, 0
  %call1.or.i.i = select i1 %cmp2.i.i, i32 %call.i17.i.i, i32 %or.i.i
  br label %phy_set_clr_bits.exit

phy_set_clr_bits.exit:                            ; preds = %if.end.i.i, %entry.phy_set_clr_bits.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i, %entry.phy_set_clr_bits.exit_crit_edge ], [ %call1.or.i.i, %if.end.i.i ]
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %phy_set_clr_bits.exit.cleanup_crit_edge, label %if.end

phy_set_clr_bits.exit.cleanup_crit_edge:          ; preds = %phy_set_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %phy_set_clr_bits.exit
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i25 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 20, i16 noundef zeroext 3840) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #7
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 8
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i, align 8
  %call.i28 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef 20, i16 noundef zeroext 3072) #7
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i, align 8
  %call.i31 = tail call i32 @mdiobus_write(ptr noundef %30, i32 noundef %32, i32 noundef 19, i16 noundef zeroext 30037) #7
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i33 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i33, i32 noundef 0) #7
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 8
  %37 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.i, align 8
  %call.i.i.i35 = tail call i32 @__mdiobus_read(ptr noundef %36, i32 noundef %38, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i35)
  %cmp.i.i36 = icmp slt i32 %call.i.i.i35, 0
  br i1 %cmp.i.i36, label %if.end.phy_set_clr_bits.exit45_crit_edge, label %if.end.i.i42

if.end.phy_set_clr_bits.exit45_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_set_clr_bits.exit45

if.end.i.i42:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i37 = and i32 %call.i.i.i35, -5
  %conv.i.i38 = trunc i32 %and.i.i37 to i16
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 8
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i, align 8
  %call.i17.i.i39 = tail call i32 @__mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 31, i16 noundef zeroext %conv.i.i38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i39)
  %cmp2.i.i40 = icmp slt i32 %call.i17.i.i39, 0
  %call1.or.i.i41 = select i1 %cmp2.i.i40, i32 %call.i17.i.i39, i32 %and.i.i37
  br label %phy_set_clr_bits.exit45

phy_set_clr_bits.exit45:                          ; preds = %if.end.i.i42, %if.end.phy_set_clr_bits.exit45_crit_edge
  %retval.0.i.i43 = phi i32 [ %call.i.i.i35, %if.end.phy_set_clr_bits.exit45_crit_edge ], [ %call1.or.i.i41, %if.end.i.i42 ]
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %mdio_lock3.i44 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3.i44) #7
  %45 = tail call i32 @llvm.smin.i32(i32 %retval.0.i.i43, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %phy_set_clr_bits.exit45, %phy_set_clr_bits.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %phy_set_clr_bits.exit.cleanup_crit_edge ], [ %45, %phy_set_clr_bits.exit45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7xxx_suspend(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 139) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i.1 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 16, i16 noundef zeroext 448) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i.2 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 20, i16 noundef zeroext 28672) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i.3 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 31, i16 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i.4 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 16, i16 noundef zeroext 8400) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i.5 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 31, i16 noundef zeroext 11) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.1, %for.cond.cleanup_crit_edge ], [ %call.i.2, %for.cond.1.cleanup_crit_edge ], [ %call.i.3, %for.cond.2.cleanup_crit_edge ], [ %call.i.4, %for.cond.3.cleanup_crit_edge ], [ %call.i.5, %for.cond.4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_set_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_shadow(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_shadow(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_enable_apd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_misc(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_exp(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_misc(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_exp(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_28nm_a0b0_afe_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_enable_jumbo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_downshift_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_r_rc_cal_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_downshift_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_bcm7xxx__281_966_phy_module_init6, !1, !"__initcall__kmod_bcm7xxx__281_966_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/bcm7xxx.c", i32 966, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description282, !4, !"__UNIQUE_ID_description282", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/bcm7xxx.c", i32 970, i32 1}
!5 = !{ptr @__UNIQUE_ID_file283, !6, !"__UNIQUE_ID_file283", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/bcm7xxx.c", i32 971, i32 1}
!7 = !{ptr @__UNIQUE_ID_license284, !6, !"__UNIQUE_ID_license284", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author285, !9, !"__UNIQUE_ID_author285", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/bcm7xxx.c", i32 972, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/bcm7xxx.c", i32 919, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/bcm7xxx.c", i32 920, i32 2}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/bcm7xxx.c", i32 921, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/bcm7xxx.c", i32 922, i32 2}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/bcm7xxx.c", i32 923, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/bcm7xxx.c", i32 924, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/bcm7xxx.c", i32 925, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/bcm7xxx.c", i32 926, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/bcm7xxx.c", i32 927, i32 2}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/bcm7xxx.c", i32 928, i32 2}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/bcm7xxx.c", i32 929, i32 2}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/bcm7xxx.c", i32 930, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/bcm7xxx.c", i32 931, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/bcm7xxx.c", i32 932, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/bcm7xxx.c", i32 933, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/bcm7xxx.c", i32 934, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/bcm7xxx.c", i32 935, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/bcm7xxx.c", i32 936, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/bcm7xxx.c", i32 937, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/bcm7xxx.c", i32 938, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/bcm7xxx.c", i32 939, i32 2}
!52 = !{ptr @bcm7xxx_driver, !53, !"bcm7xxx_driver", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/bcm7xxx.c", i32 918, i32 26}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/bcm7xxx.c", i32 394, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bcm7xxx_28nm_ephy_config_init._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @bcm7xxx_28nm_ephy_config_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/net/phy/bcm7xxx.c", i32 157, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bcm7xxx_28nm_config_init._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @bcm7xxx_28nm_config_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"bcm7xxx_suspend_cfg", i1 false, i1 false}
!68 = !{!"../drivers/net/phy/bcm7xxx.c", i32 741, i32 4}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{!"auto-init"}
