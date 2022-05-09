; ModuleID = '/llk/IR_all_yes/drivers/net/phy/broadcom.c_pt.bc'
source_filename = "../drivers/net/phy/broadcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__UNIQUE_ID_description281 = internal constant [41 x i8] c"broadcom.description=Broadcom PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [34 x i8] c"broadcom.author=Maciej W. Rozycki\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [39 x i8] c"broadcom.file=drivers/net/phy/broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [21 x i8] c"broadcom.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_broadcom__285_1038_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@broadcom_drivers = internal global { [19 x %struct.phy_driver], [1148 x i8] } { [19 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121840, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121952, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498656, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121920, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778336, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778000, ptr @.str.5, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @bcm54xx_config_init, ptr @bcm54616s_probe, ptr null, ptr null, ptr null, ptr @bcm54616s_config_aneg, ptr null, ptr @bcm54616s_read_status, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121904, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216416, ptr @.str.7, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr @bcm5481_config_aneg, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56777984, ptr @.str.8, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr @bcm5481_config_aneg, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56777920, ptr @.str.9, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54811_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr @bcm5481_config_aneg, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216432, ptr @.str.10, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216608, ptr @.str.11, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216624, ptr @.str.12, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778128, ptr @.str.13, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216368, ptr @.str.14, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @brcm_fet_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_fet_config_intr, ptr @brcm_fet_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216304, ptr @.str.15, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @brcm_fet_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_fet_config_intr, ptr @brcm_fet_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216496, ptr @.str.16, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr null, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778528, ptr @.str.17, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56777936, ptr @.str.18, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }], [1148 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5411\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5421\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Broadcom BCM54210E\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5461\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Broadcom BCM54612E\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Broadcom BCM54616S\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5464\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5481\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM54810\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM54811\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5482\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM50610\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Broadcom BCM50610M\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM57780\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCMAC131\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5241\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Broadcom BCM5395\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM53125\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcom BCM89610\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enet-phy-lane-swap\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21216608, i64 21216624]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 21216608, i64 21216624, i64 56777920, i64 56777984, i64 56778128, i64 1611498656]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 21216608, i64 21216624]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 56777920, i64 56777984, i64 1611498656]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 21216608, i64 21216624, i64 56777984, i64 56778000, i64 56778336, i64 1611498656]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 21216608, i64 21216624]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 12]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 11]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"broadcom_drivers\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 784, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 788, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 801, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 814, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 829, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 842, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 855, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 868, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 883, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 897, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 913, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 929, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 942, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 957, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 972, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 985, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 993, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1001, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1012, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1026, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [30 x i8] c"../drivers/net/phy/broadcom.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 500, i32 32 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_broadcom__285_1038_phy_module_init6, ptr @phy_module_exit, ptr @broadcom_drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadcom_drivers to i32), i32 4484, i32 5632, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @broadcom_drivers, i32 noundef 19, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_drivers_unregister(ptr noundef nonnull @broadcom_drivers, i32 noundef 19) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54xx_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = trunc i32 %call.i to i16
  %conv = or i16 %4, 4096
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i91 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 16, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp2 = icmp slt i32 %call.i91, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i94 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 27, i16 noundef zeroext -15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp8 = icmp slt i32 %call.i94, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %13 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_id, align 4
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_id_mask, align 4
  %and = and i32 %18, %16
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end11.if.end25_crit_edge [
    i32 21216608, label %if.end11.land.lhs.true_crit_edge
    i32 21216624, label %if.end11.land.lhs.true_crit_edge131
  ]

if.end11.land.lhs.true_crit_edge131:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end11.land.lhs.true_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end11.land.lhs.true_crit_edge, %if.end11.land.lhs.true_crit_edge131
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %20 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_flags, align 8
  %and22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %land.lhs.true.if.end25_crit_edge, label %if.then23

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 11, i16 noundef zeroext 0) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %22 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv, align 8
  %phy_id.i = getelementptr inbounds %struct.phy_driver, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_id.i, align 4
  %phy_id_mask.i = getelementptr inbounds %struct.phy_driver, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %phy_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_id_mask.i, align 4
  %and.i = and i32 %27, %25
  %28 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and.i, label %if.end25.bcm54xx_adjust_rxrefclk.exit_crit_edge [
    i32 56778128, label %if.end25.if.end.i_crit_edge
    i32 21216608, label %if.end25.if.end.i_crit_edge132
    i32 21216624, label %if.end25.if.end.i_crit_edge133
    i32 1611498656, label %if.end25.if.end.i_crit_edge134
    i32 56777984, label %if.end25.if.end.i_crit_edge135
    i32 56777920, label %if.end25.if.end.i_crit_edge136
  ]

if.end25.if.end.i_crit_edge136:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end25.if.end.i_crit_edge135:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end25.if.end.i_crit_edge134:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end25.if.end.i_crit_edge133:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end25.if.end.i_crit_edge132:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end25.bcm54xx_adjust_rxrefclk.exit_crit_edge:  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcm54xx_adjust_rxrefclk.exit

if.end.i:                                         ; preds = %if.end25.if.end.i_crit_edge, %if.end25.if.end.i_crit_edge132, %if.end25.if.end.i_crit_edge133, %if.end25.if.end.i_crit_edge134, %if.end25.if.end.i_crit_edge135, %if.end25.if.end.i_crit_edge136
  %call.i95 = tail call i32 @bcm_phy_read_shadow(ptr noundef %phydev, i16 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp36.i = icmp slt i32 %call.i95, 0
  br i1 %cmp36.i, label %if.end.i.bcm54xx_adjust_rxrefclk.exit_crit_edge, label %if.end38.i

if.end.i.bcm54xx_adjust_rxrefclk.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcm54xx_adjust_rxrefclk.exit

if.end38.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drv, align 8
  %phy_id40.i = getelementptr inbounds %struct.phy_driver, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %phy_id40.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phy_id40.i, align 4
  %phy_id_mask42.i = getelementptr inbounds %struct.phy_driver, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %phy_id_mask42.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phy_id_mask42.i, align 4
  %and43.i = and i32 %34, %32
  %35 = zext i32 %and43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and43.i, label %if.end38.i.if.else.i_crit_edge [
    i32 21216608, label %if.end38.i.land.lhs.true51.i_crit_edge
    i32 21216624, label %if.end38.i.land.lhs.true51.i_crit_edge137
  ]

if.end38.i.land.lhs.true51.i_crit_edge137:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true51.i

if.end38.i.land.lhs.true51.i_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true51.i

if.end38.i.if.else.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true51.i:                                ; preds = %if.end38.i.land.lhs.true51.i_crit_edge, %if.end38.i.land.lhs.true51.i_crit_edge137
  %neg.i = xor i32 %34, -1
  %and56.i = and i32 %32, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and56.i)
  %cmp57.i = icmp ugt i32 %and56.i, 2
  br i1 %cmp57.i, label %land.lhs.true51.i.if.then77.i_crit_edge, label %land.lhs.true51.i.if.else.i_crit_edge

land.lhs.true51.i.if.else.i_crit_edge:            ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true51.i.if.then77.i_crit_edge:          ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77.i

if.else.i:                                        ; preds = %land.lhs.true51.i.if.else.i_crit_edge, %if.end38.i.if.else.i_crit_edge
  %dev_flags.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %36 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev_flags.i, align 8
  %and59.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false73.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 56777920, i32 %and43.i)
  %cmp66.not.i = icmp eq i32 %and43.i, 56777920
  %and68.i = and i32 %call.i95, -2
  %spec.select.i = select i1 %cmp66.not.i, i32 %call.i95, i32 %and68.i
  br label %if.then77.i

lor.lhs.false73.i:                                ; preds = %if.else.i
  %and75.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.else79.i, label %lor.lhs.false73.i.if.then77.i_crit_edge

lor.lhs.false73.i.if.then77.i_crit_edge:          ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77.i

if.then77.i:                                      ; preds = %lor.lhs.false73.i.if.then77.i_crit_edge, %if.then60.i, %land.lhs.true51.i.if.then77.i_crit_edge
  %clk125en.0.off0191.i = phi i1 [ true, %lor.lhs.false73.i.if.then77.i_crit_edge ], [ false, %if.then60.i ], [ false, %land.lhs.true51.i.if.then77.i_crit_edge ]
  %val.1189.i = phi i32 [ %call.i95, %lor.lhs.false73.i.if.then77.i_crit_edge ], [ %spec.select.i, %if.then60.i ], [ %call.i95, %land.lhs.true51.i.if.then77.i_crit_edge ]
  %and78.i = and i32 %val.1189.i, -3
  br label %if.end80.i

if.else79.i:                                      ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %call.i95, 2
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else79.i, %if.then77.i
  %clk125en.0.off0190.i = phi i1 [ %clk125en.0.off0191.i, %if.then77.i ], [ true, %if.else79.i ]
  %val.2.i = phi i32 [ %and78.i, %if.then77.i ], [ %or.i, %if.else79.i ]
  %dev_flags81.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %38 = ptrtoint ptr %dev_flags81.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_flags81.i, align 8
  %and82.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %if.end80.i.if.end110.i_crit_edge, label %if.then84.i

if.end80.i.if.end110.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110.i

if.then84.i:                                      ; preds = %if.end80.i
  %40 = zext i32 %and43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and43.i, label %if.else107.i [
    i32 1611498656, label %if.then84.i.if.then105.i_crit_edge
    i32 56777984, label %if.then84.i.if.then105.i_crit_edge138
    i32 56777920, label %if.then84.i.if.then105.i_crit_edge139
  ]

if.then84.i.if.then105.i_crit_edge139:            ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then84.i.if.then105.i_crit_edge138:            ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then84.i.if.then105.i_crit_edge:               ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.i:                                     ; preds = %if.then84.i.if.then105.i_crit_edge, %if.then84.i.if.then105.i_crit_edge138, %if.then84.i.if.then105.i_crit_edge139
  %or106.i = or i32 %val.2.i, 256
  br label %if.end110.i

if.else107.i:                                     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #6
  %or108.i = or i32 %val.2.i, 4
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.else107.i, %if.then105.i, %if.end80.i.if.end110.i_crit_edge
  %val.3.i = phi i32 [ %or106.i, %if.then105.i ], [ %or108.i, %if.else107.i ], [ %val.2.i, %if.end80.i.if.end110.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i95, i32 %val.3.i)
  %cmp111.not.i = icmp eq i32 %call.i95, %val.3.i
  br i1 %cmp111.not.i, label %if.end110.i.if.end114.i_crit_edge, label %if.then112.i

if.end110.i.if.end114.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.i

if.then112.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %val.3.i to i16
  %call113.i = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 5, i16 noundef zeroext %conv.i) #4
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then112.i, %if.end110.i.if.end114.i_crit_edge
  %call115.i = tail call i32 @bcm_phy_read_shadow(ptr noundef %phydev, i16 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %cmp116.i = icmp slt i32 %call115.i, 0
  br i1 %cmp116.i, label %if.end114.i.bcm54xx_adjust_rxrefclk.exit_crit_edge, label %if.end119.i

if.end114.i.bcm54xx_adjust_rxrefclk.exit_crit_edge: ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcm54xx_adjust_rxrefclk.exit

if.end119.i:                                      ; preds = %if.end114.i
  br i1 %clk125en.0.off0190.i, label %lor.lhs.false121.i, label %if.end119.i.if.then125.i_crit_edge

if.end119.i.if.then125.i_crit_edge:               ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then125.i

lor.lhs.false121.i:                               ; preds = %if.end119.i
  %41 = ptrtoint ptr %dev_flags81.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dev_flags81.i, align 8
  %and123.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  br i1 %tobool124.not.i, label %if.else127.i, label %lor.lhs.false121.i.if.then125.i_crit_edge

lor.lhs.false121.i.if.then125.i_crit_edge:        ; preds = %lor.lhs.false121.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then125.i

if.then125.i:                                     ; preds = %lor.lhs.false121.i.if.then125.i_crit_edge, %if.end119.i.if.then125.i_crit_edge
  %or126.i = or i32 %call115.i, 32
  br label %if.end129.i

if.else127.i:                                     ; preds = %lor.lhs.false121.i
  call void @__sanitizer_cov_trace_pc() #6
  %and128.i = and i32 %call115.i, -33
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.else127.i, %if.then125.i
  %val.4.i = phi i32 [ %or126.i, %if.then125.i ], [ %and128.i, %if.else127.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call115.i, i32 %val.4.i)
  %cmp130.not.i = icmp eq i32 %call115.i, %val.4.i
  br i1 %cmp130.not.i, label %if.end129.i.bcm54xx_adjust_rxrefclk.exit_crit_edge, label %if.then132.i

if.end129.i.bcm54xx_adjust_rxrefclk.exit_crit_edge: ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcm54xx_adjust_rxrefclk.exit

if.then132.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv133.i = trunc i32 %val.4.i to i16
  %call134.i = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 10, i16 noundef zeroext %conv133.i) #4
  br label %bcm54xx_adjust_rxrefclk.exit

bcm54xx_adjust_rxrefclk.exit:                     ; preds = %if.then132.i, %if.end129.i.bcm54xx_adjust_rxrefclk.exit_crit_edge, %if.end114.i.bcm54xx_adjust_rxrefclk.exit_crit_edge, %if.end.i.bcm54xx_adjust_rxrefclk.exit_crit_edge, %if.end25.bcm54xx_adjust_rxrefclk.exit_crit_edge
  %43 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %drv, align 8
  %phy_id27 = getelementptr inbounds %struct.phy_driver, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %phy_id27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_id27, align 4
  %phy_id_mask29 = getelementptr inbounds %struct.phy_driver, ptr %44, i32 0, i32 3
  %47 = ptrtoint ptr %phy_id_mask29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phy_id_mask29, align 4
  %and30 = and i32 %48, %46
  %49 = zext i32 %and30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and30, label %bcm54xx_adjust_rxrefclk.exit.sw.epilog_crit_edge [
    i32 21216608, label %bcm54xx_adjust_rxrefclk.exit.sw.bb_crit_edge
    i32 21216624, label %bcm54xx_adjust_rxrefclk.exit.sw.bb_crit_edge140
    i32 1611498656, label %sw.bb32
    i32 56778336, label %sw.bb34
    i32 56778000, label %sw.bb36
    i32 56777984, label %sw.bb38
  ]

bcm54xx_adjust_rxrefclk.exit.sw.bb_crit_edge140:  ; preds = %bcm54xx_adjust_rxrefclk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

bcm54xx_adjust_rxrefclk.exit.sw.bb_crit_edge:     ; preds = %bcm54xx_adjust_rxrefclk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

bcm54xx_adjust_rxrefclk.exit.sw.epilog_crit_edge: ; preds = %bcm54xx_adjust_rxrefclk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %bcm54xx_adjust_rxrefclk.exit.sw.bb_crit_edge, %bcm54xx_adjust_rxrefclk.exit.sw.bb_crit_edge140
  %call31 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %phydev)
  br label %sw.epilog

sw.bb32:                                          ; preds = %bcm54xx_adjust_rxrefclk.exit
  %call.i96 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %phydev) #4
  %dev_flags.i97 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %50 = ptrtoint ptr %dev_flags.i97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dev_flags.i97, align 8
  %and.i98 = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99, label %sw.bb32.if.end45_crit_edge, label %if.then.i

sw.bb32.if.end45_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then.i:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %53, i32 noundef %55, i32 noundef 9) #4
  %56 = trunc i32 %call.i.i to i16
  %conv.i100 = or i16 %56, 6144
  %57 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i, align 8
  %59 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.i, align 8
  %call.i3.i = tail call i32 @mdiobus_write(ptr noundef %58, i32 noundef %60, i32 noundef 9, i16 noundef zeroext %conv.i100) #4
  br label %if.end45

sw.bb34:                                          ; preds = %bcm54xx_adjust_rxrefclk.exit
  %call.i102 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %phydev) #4
  %dev_flags.i103 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %61 = ptrtoint ptr %dev_flags.i103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dev_flags.i103, align 8
  %and.i104 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i105 = icmp eq i32 %and.i104, 0
  br i1 %tobool.not.i105, label %if.then.i107, label %sw.bb34.if.end45_crit_edge

sw.bb34.if.end45_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then.i107:                                     ; preds = %sw.bb34
  %call1.i = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3380) #4
  %63 = trunc i32 %call1.i to i16
  %conv.i106 = or i16 %63, 2
  %call2.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3380, i16 noundef zeroext %conv.i106) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i107.cleanup_crit_edge, label %if.then.i107.if.end45_crit_edge

if.then.i107.if.end45_crit_edge:                  ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then.i107.cleanup_crit_edge:                   ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb36:                                          ; preds = %bcm54xx_adjust_rxrefclk.exit
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %64 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %interface.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %65, label %sw.bb36.if.end45_crit_edge [
    i32 4, label %sw.bb36.if.end.i109_crit_edge
    i32 21, label %sw.bb36.if.end.i109_crit_edge141
  ]

sw.bb36.if.end.i109_crit_edge141:                 ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i109

sw.bb36.if.end.i109_crit_edge:                    ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i109

sw.bb36.if.end45_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.end.i109:                                      ; preds = %sw.bb36.if.end.i109_crit_edge, %sw.bb36.if.end.i109_crit_edge141
  %call.i108 = tail call i32 @bcm54xx_auxctl_read(ptr noundef %phydev, i16 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp3.i = icmp slt i32 %call.i108, 0
  br i1 %cmp3.i, label %if.end.i109.cleanup_crit_edge, label %if.end5.i111

if.end.i109.cleanup_crit_edge:                    ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i111:                                     ; preds = %if.end.i109
  %67 = trunc i32 %call.i108 to i16
  %68 = and i16 %67, 32639
  %conv.i110 = or i16 %68, -32768
  %call6.i = tail call i32 @bcm54xx_auxctl_write(ptr noundef %phydev, i16 noundef zeroext 7, i16 noundef zeroext %conv.i110) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i111.cleanup_crit_edge, label %if.end10.i

if.end5.i111.cleanup_crit_edge:                   ; preds = %if.end5.i111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10.i:                                       ; preds = %if.end5.i111
  %call11.i = tail call i32 @bcm_phy_read_shadow(ptr noundef %phydev, i16 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.cleanup_crit_edge, label %if.end15.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  %or16.i = or i32 %call11.i, 1
  %conv17.i = trunc i32 %or16.i to i16
  %call18.i = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 31, i16 noundef zeroext %conv17.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end15.i.cleanup_crit_edge, label %if.end22.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22.i:                                       ; preds = %if.end15.i
  %call.i.i112 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 2048) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i112)
  %cmp24.i = icmp slt i32 %call.i.i112, 0
  br i1 %cmp24.i, label %if.end22.i.cleanup_crit_edge, label %if.end27.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27.i:                                       ; preds = %if.end22.i
  %and28.i = and i32 %or16.i, 65529
  %69 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %cmp30.i = icmp eq i32 %70, 4
  %cond.i = select i1 %cmp30.i, i32 4, i32 6
  %or32.i = or i32 %cond.i, %and28.i
  %conv33.i = trunc i32 %or32.i to i16
  %call34.i = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 31, i16 noundef zeroext %conv33.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end27.i.cleanup_crit_edge, label %if.end38.i113

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end38.i113:                                    ; preds = %if.end27.i
  %call.i88.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 2048, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %cmp40.i = icmp slt i32 %call.i88.i, 0
  br i1 %cmp40.i, label %if.end38.i113.cleanup_crit_edge, label %if.end43.i

if.end38.i113.cleanup_crit_edge:                  ; preds = %if.end38.i113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43.i:                                       ; preds = %if.end38.i113
  %conv45.i = and i16 %conv33.i, -2
  %call46.i = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 31, i16 noundef zeroext %conv45.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end43.i.cleanup_crit_edge, label %if.end50.i

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i89.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 2048, i16 noundef zeroext 0) #4
  br label %sw.epilog

sw.bb38:                                          ; preds = %bcm54xx_adjust_rxrefclk.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3984) #4
  %71 = trunc i32 %call39 to i16
  %conv41 = and i16 %71, -2
  %call42 = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3984, i16 noundef zeroext %conv41) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %if.end50.i, %sw.bb, %bcm54xx_adjust_rxrefclk.exit.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call.i94, %bcm54xx_adjust_rxrefclk.exit.sw.epilog_crit_edge ], [ %call42, %sw.bb38 ], [ %call31, %sw.bb ], [ %call.i89.i, %if.end50.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool43.not = icmp eq i32 %err.0, 0
  br i1 %tobool43.not, label %sw.epilog.if.end45_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.end45:                                         ; preds = %sw.epilog.if.end45_crit_edge, %sw.bb36.if.end45_crit_edge, %if.then.i107.if.end45_crit_edge, %sw.bb34.if.end45_crit_edge, %if.then.i, %sw.bb32.if.end45_crit_edge
  %call.i114 = tail call i32 @bcm54xx_auxctl_write(ptr noundef %phydev, i16 noundef zeroext 0, i16 noundef zeroext 3072) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %if.end45.bcm54xx_phydsp_config.exit_crit_edge, label %if.end.i120

if.end45.bcm54xx_phydsp_config.exit_crit_edge:    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcm54xx_phydsp_config.exit

if.end.i120:                                      ; preds = %if.end45
  %72 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %drv, align 8
  %phy_id.i117 = getelementptr inbounds %struct.phy_driver, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %phy_id.i117 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %phy_id.i117, align 4
  %phy_id_mask.i118 = getelementptr inbounds %struct.phy_driver, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %phy_id_mask.i118 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %phy_id_mask.i118, align 4
  %and.i119 = and i32 %77, %75
  %78 = zext i32 %and.i119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and.i119, label %if.end.i120.if.end23.i_crit_edge [
    i32 21216608, label %if.end.i120.if.then9.i_crit_edge
    i32 21216624, label %if.end.i120.if.then9.i_crit_edge142
  ]

if.end.i120.if.then9.i_crit_edge142:              ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9.i

if.end.i120.if.then9.i_crit_edge:                 ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9.i

if.end.i120.if.end23.i_crit_edge:                 ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then9.i:                                       ; preds = %if.end.i120.if.then9.i_crit_edge, %if.end.i120.if.then9.i_crit_edge142
  %call10.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3848, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then9.i.error.i_crit_edge, label %if.end13.i

if.then9.i.error.i_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end13.i:                                       ; preds = %if.then9.i
  %79 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %drv, align 8
  %phy_id15.i = getelementptr inbounds %struct.phy_driver, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %phy_id15.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %phy_id15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21216608, i32 %82)
  %cmp16.i = icmp eq i32 %82, 21216608
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.if.end23.i_crit_edge

if.end13.i.if.end23.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then17.i:                                      ; preds = %if.end13.i
  %call.i.i121 = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 31, i16 noundef zeroext 768) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %cmp.i.i = icmp slt i32 %call.i.i121, 0
  br i1 %cmp.i.i, label %if.then17.i.error.i_crit_edge, label %if.end.i.i

if.then17.i.error.i_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end.i.i:                                       ; preds = %if.then17.i
  %call1.i.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 24607, i16 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.error.i_crit_edge, label %if.end4.i.i

if.end.i.i.error.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3957, i16 noundef zeroext 60) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end4.i.i.error.i_crit_edge, label %if.end8.i.i

if.end4.i.i.error.i_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call9.i.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3990, i16 noundef zeroext 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %if.end8.i.i.error.i_crit_edge, label %bcm50610_a0_workaround.exit.i

if.end8.i.i.error.i_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

bcm50610_a0_workaround.exit.i:                    ; preds = %if.end8.i.i
  %call13.i.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3991, i16 noundef zeroext 3084) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp19.i122 = icmp slt i32 %call13.i.i, 0
  br i1 %cmp19.i122, label %bcm50610_a0_workaround.exit.i.error.i_crit_edge, label %bcm50610_a0_workaround.exit.i.if.end23.i_crit_edge

bcm50610_a0_workaround.exit.i.if.end23.i_crit_edge: ; preds = %bcm50610_a0_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

bcm50610_a0_workaround.exit.i.error.i_crit_edge:  ; preds = %bcm50610_a0_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end23.i:                                       ; preds = %bcm50610_a0_workaround.exit.i.if.end23.i_crit_edge, %if.end13.i.if.end23.i_crit_edge, %if.end.i120.if.end23.i_crit_edge
  %83 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %drv, align 8
  %phy_id25.i = getelementptr inbounds %struct.phy_driver, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %phy_id25.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phy_id25.i, align 4
  %phy_id_mask27.i = getelementptr inbounds %struct.phy_driver, ptr %84, i32 0, i32 3
  %87 = ptrtoint ptr %phy_id_mask27.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %phy_id_mask27.i, align 4
  %and28.i123 = and i32 %88, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 56778128, i32 %and28.i123)
  %cmp29.i = icmp eq i32 %and28.i123, 56778128
  br i1 %cmp29.i, label %if.then30.i, label %if.end23.i.error.i_crit_edge

if.end23.i.error.i_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.then30.i:                                      ; preds = %if.end23.i
  %call31.i = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3957) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.then30.i.error.i_crit_edge, label %if.end34.i

if.then30.i.error.i_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end34.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #6
  %89 = trunc i32 %call31.i to i16
  %conv.i124 = or i16 %89, 1
  %call35.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3957, i16 noundef zeroext %conv.i124) #4
  br label %error.i

error.i:                                          ; preds = %if.end34.i, %if.then30.i.error.i_crit_edge, %if.end23.i.error.i_crit_edge, %bcm50610_a0_workaround.exit.i.error.i_crit_edge, %if.end8.i.i.error.i_crit_edge, %if.end4.i.i.error.i_crit_edge, %if.end.i.i.error.i_crit_edge, %if.then17.i.error.i_crit_edge, %if.then9.i.error.i_crit_edge
  %call37.i = tail call i32 @bcm54xx_auxctl_write(ptr noundef %phydev, i16 noundef zeroext 0, i16 noundef zeroext 1024) #4
  br label %bcm54xx_phydsp_config.exit

bcm54xx_phydsp_config.exit:                       ; preds = %error.i, %if.end45.bcm54xx_phydsp_config.exit_crit_edge
  %is_on_sfp_module.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %90 = ptrtoint ptr %is_on_sfp_module.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i = load i16, ptr %is_on_sfp_module.i, align 8
  %91 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.i.not = icmp eq i16 %91, 0
  br i1 %tobool.i.not, label %if.then48, label %bcm54xx_phydsp_config.exit.cleanup_crit_edge

bcm54xx_phydsp_config.exit.cleanup_crit_edge:     ; preds = %bcm54xx_phydsp_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then48:                                        ; preds = %bcm54xx_phydsp_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 13, i16 noundef zeroext 170) #4
  %call52 = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3844, i16 noundef zeroext 256) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %bcm54xx_phydsp_config.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %if.end38.i113.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end5.i111.cleanup_crit_edge, %if.end.i109.cleanup_crit_edge, %if.then.i107.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i91, %if.end.cleanup_crit_edge ], [ %call.i94, %if.end5.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %bcm54xx_phydsp_config.exit.cleanup_crit_edge ], [ %call46.i, %if.end43.i.cleanup_crit_edge ], [ %call.i88.i, %if.end38.i113.cleanup_crit_edge ], [ %call34.i, %if.end27.i.cleanup_crit_edge ], [ %call.i.i112, %if.end22.i.cleanup_crit_edge ], [ %call18.i, %if.end15.i.cleanup_crit_edge ], [ %call11.i, %if.end10.i.cleanup_crit_edge ], [ %call6.i, %if.end5.i111.cleanup_crit_edge ], [ %call.i108, %if.end.i109.cleanup_crit_edge ], [ %call2.i, %if.then.i107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54xx_phy_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 4, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv1, align 8
  %call4 = tail call i32 @bcm_phy_get_sset_count(ptr noundef %phydev) #4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4, i32 8) #4
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !61

if.end.devm_kcalloc.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = extractvalue { i32, i1 } %1, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef %3, i32 noundef 3520) #4
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %if.end.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.end.devm_kcalloc.exit_crit_edge ]
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %retval.0.i.i, ptr %call.i, align 4
  %tobool7.not = icmp eq ptr %retval.0.i.i, null
  %. = select i1 %tobool7.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %devm_kcalloc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %., %devm_kcalloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_config_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_handle_interrupt(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm54xx_link_change_notify(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3848) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp6 = icmp eq i32 %5, 10
  %and9 = and i32 %call, 64767
  %masksel = select i1 %cmp6, i32 768, i32 0
  %ret.0 = or i32 %masksel, %and9
  %conv11 = trunc i32 %ret.0 to i16
  %call12 = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3848, i16 noundef zeroext %conv11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_get_sset_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_strings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm54xx_get_stats(ptr noundef %phydev, ptr noundef %stats, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @bcm_phy_get_stats(ptr noundef %phydev, ptr noundef %3, ptr noundef %stats, ptr noundef %data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54xx_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 0, i16 noundef zeroext 2048) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_flags.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i4 = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3334) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp.i = icmp slt i32 %call.i4, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = trunc i32 %call.i4 to i16
  %conv.i = or i16 %6, 9
  %call7.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3334, i16 noundef zeroext %conv.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i4, %if.end.i.cleanup_crit_edge ], [ %call7.i, %if.end2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54xx_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3334) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %bcm54xx_iddq_set.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

bcm54xx_iddq_set.exit:                            ; preds = %if.end.i
  %2 = trunc i32 %call.i to i16
  %conv.i = and i16 %2, -10
  %call7.i = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3334, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp = icmp slt i32 %call7.i, 0
  br i1 %cmp, label %bcm54xx_iddq_set.exit.cleanup_crit_edge, label %bcm54xx_iddq_set.exit.if.end_crit_edge

bcm54xx_iddq_set.exit.if.end_crit_edge:           ; preds = %bcm54xx_iddq_set.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

bcm54xx_iddq_set.exit.cleanup_crit_edge:          ; preds = %bcm54xx_iddq_set.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %bcm54xx_iddq_set.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @genphy_resume(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 80, i32 noundef 2) #4
  %3 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_flags.i, align 8
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.if.end10_crit_edge, label %if.then5

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %if.end4
  %call6 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %call11 = tail call i32 @bcm54xx_config_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bcm54xx_iddq_set.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call7.i, %bcm54xx_iddq_set.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54616s_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 1, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv1, align 8
  %call2 = tail call i32 @bcm_phy_read_shadow(ptr noundef %phydev, i16 noundef zeroext 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call2, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp5 = icmp eq i32 %and, 2
  br i1 %cmp5, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @bcm_phy_read_shadow(ptr noundef %phydev, i16 noundef zeroext 19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %and11 = and i32 %call7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call.i, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %port = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %port, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ 0, %if.end14 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54616s_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @genphy_c37_config_aneg(ptr noundef %phydev) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call.i, %if.else ]
  %call3 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %phydev)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54616s_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @genphy_c37_read_status(ptr noundef %phydev) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @genphy_read_status(ptr noundef %phydev) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm5481_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #4
  %call1 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %phydev)
  %call.i12 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #4
  %tobool.i.not = icmp eq ptr %call.i12, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3849, i16 noundef zeroext 283) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm54811_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3984) #4
  %0 = trunc i32 %call to i16
  %conv = and i16 %0, -2
  %call1 = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3984, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @bcm54xx_config_init(ptr noundef %phydev)
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %1 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_flags, align 8
  %and4 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @bcm_phy_read_exp(ptr noundef %phydev, i16 noundef zeroext 3380) #4
  %3 = trunc i32 %call6 to i16
  %conv7 = or i16 %3, 2
  %call8 = tail call i32 @bcm_phy_write_exp(ptr noundef %phydev, i16 noundef zeroext 3380, i16 noundef zeroext %conv7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_fet_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 0, i16 noundef zeroext -32768) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i82 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp2 = icmp slt i32 %call.i82, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i85 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 26, i16 noundef zeroext 20224) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp6 = icmp slt i32 %call.i85, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i88 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp11 = icmp slt i32 %call.i88, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %16 = trunc i32 %call.i88 to i16
  %conv15 = or i16 %16, 128
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 8
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 8
  %call.i91 = tail call i32 @mdiobus_write(ptr noundef %18, i32 noundef %20, i32 noundef 31, i16 noundef zeroext %conv15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp17 = icmp slt i32 %call.i91, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i, align 8
  %call.i94 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %24, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp22 = icmp slt i32 %call.i94, 0
  br i1 %cmp22, label %if.end20.done_crit_edge, label %if.end25

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end25:                                         ; preds = %if.end20
  %25 = trunc i32 %call.i94 to i16
  %26 = and i16 %25, -4
  %conv27 = or i16 %26, 1
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 8
  %call.i97 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 26, i16 noundef zeroext %conv27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp29 = icmp slt i32 %call.i97, 0
  br i1 %cmp29, label %if.end25.done_crit_edge, label %if.end32

if.end25.done_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end32:                                         ; preds = %if.end25
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %32, i32 noundef %34, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end32.done_crit_edge, label %brcm_phy_setbits.exit

if.end32.done_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

brcm_phy_setbits.exit:                            ; preds = %if.end32
  %35 = trunc i32 %call.i.i to i16
  %conv.i = or i16 %35, 16384
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 8
  %call.i8.i = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 16, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %cmp34 = icmp slt i32 %call.i8.i, 0
  br i1 %cmp34, label %brcm_phy_setbits.exit.done_crit_edge, label %if.end37

brcm_phy_setbits.exit.done_crit_edge:             ; preds = %brcm_phy_setbits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end37:                                         ; preds = %brcm_phy_setbits.exit
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %40 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev_flags, align 8
  %and38 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool.not = icmp eq i32 %and38, 0
  br i1 %tobool.not, label %if.end37.done_crit_edge, label %if.then39

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call fastcc i32 @brcm_phy_setbits(ptr noundef %phydev, i32 noundef 27, i32 noundef 32)
  br label %done

done:                                             ; preds = %if.then39, %if.end37.done_crit_edge, %brcm_phy_setbits.exit.done_crit_edge, %if.end32.done_crit_edge, %if.end25.done_crit_edge, %if.end20.done_crit_edge
  %err.0 = phi i32 [ %call.i97, %if.end25.done_crit_edge ], [ %call.i8.i, %brcm_phy_setbits.exit.done_crit_edge ], [ %call40, %if.then39 ], [ %call.i8.i, %if.end37.done_crit_edge ], [ %call.i94, %if.end20.done_crit_edge ], [ %call.i.i, %if.end32.done_crit_edge ]
  %42 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i, align 8
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i, align 8
  %call.i100 = tail call i32 @mdiobus_write(ptr noundef %43, i32 noundef %45, i32 noundef 31, i16 noundef zeroext %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool44.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool44.not, i32 %call.i100, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %done ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i82, %if.end.cleanup_crit_edge ], [ %call.i85, %if.end4.cleanup_crit_edge ], [ %call.i88, %if.end9.cleanup_crit_edge ], [ %call.i91, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_fet_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp1.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 26) #4
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %10 = trunc i32 %call.i to i16
  %conv = and i16 %10, -257
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 8
  %call.i31 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 26, i16 noundef zeroext %conv) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %15 = trunc i32 %call.i to i16
  %conv7 = or i16 %15, 256
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i34 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 26, i16 noundef zeroext %conv7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool9.not = icmp eq i32 %call.i34, 0
  br i1 %tobool9.not, label %if.end11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i.i37 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %23, i32 noundef 26) #4
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i.i37, i32 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %if.end5, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %9, %if.then2.cleanup_crit_edge ], [ %call.i34, %if.else.cleanup_crit_edge ], [ %call.i31, %if.end5 ], [ %24, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_fet_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_error(ptr noundef %phydev) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp eq i32 %call.i, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @phy_trigger_machine(ptr noundef %phydev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_shadow(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm54xx_auxctl_read(ptr noundef %phydev, i16 noundef zeroext 7) #4
  %or = or i32 %call, 32768
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 9, label %entry.if.then_crit_edge
    i32 12, label %entry.if.then_crit_edge67
  ]

entry.if.then_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge67
  %and = and i32 %or, -257
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %and, %if.then ], [ %or, %entry.if.end_crit_edge ]
  %3 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %switch = icmp eq i32 %3, 10
  %or9 = or i32 %val.0, 256
  %spec.select = select i1 %switch, i32 %or9, i32 %val.0
  %conv = trunc i32 %spec.select to i16
  %call11 = tail call i32 @bcm54xx_auxctl_write(ptr noundef %phydev, i16 noundef zeroext 7, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @bcm_phy_read_shadow(ptr noundef %phydev, i16 noundef zeroext 3) #4
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %5, label %if.end15.if.end26_crit_edge [
    i32 9, label %if.end15.if.then24_crit_edge
    i32 11, label %if.end15.if.then24_crit_edge68
  ]

if.end15.if.then24_crit_edge68:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end15.if.then24_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then24:                                        ; preds = %if.end15.if.then24_crit_edge, %if.end15.if.then24_crit_edge68
  %and25 = and i32 %call16, -513
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end15.if.end26_crit_edge
  %val.2 = phi i32 [ %and25, %if.then24 ], [ %call16, %if.end15.if.end26_crit_edge ]
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %if.end26.if.end36_crit_edge [
    i32 10, label %if.end26.if.then34_crit_edge
    i32 12, label %if.end26.if.then34_crit_edge69
  ]

if.end26.if.then34_crit_edge69:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

if.end26.if.then34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then34:                                        ; preds = %if.end26.if.then34_crit_edge, %if.end26.if.then34_crit_edge69
  %or35 = or i32 %val.2, 512
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end26.if.end36_crit_edge
  %val.3 = phi i32 [ %or35, %if.then34 ], [ %val.2, %if.end26.if.end36_crit_edge ]
  %conv37 = trunc i32 %val.3 to i16
  %call38 = tail call i32 @bcm_phy_write_shadow(ptr noundef %phydev, i16 noundef zeroext 3, i16 noundef zeroext %conv37) #4
  %8 = tail call i32 @llvm.smin.i32(i32 %call38, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end.cleanup_crit_edge ], [ %8, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_exp(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_exp(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_shadow(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm54xx_auxctl_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm54xx_auxctl_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c37_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c37_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_phy_setbits(ptr nocapture noundef readonly %phydev, i32 noundef %reg, i32 noundef %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %call.i, %set
  %conv = trunc i32 %or to i16
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i8 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef %reg, i16 noundef zeroext %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i8, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__UNIQUE_ID_description281, !1, !"__UNIQUE_ID_description281", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/broadcom.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_author282, !3, !"__UNIQUE_ID_author282", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/broadcom.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file283, !5, !"__UNIQUE_ID_file283", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/broadcom.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license284, !5, !"__UNIQUE_ID_license284", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_broadcom__285_1038_phy_module_init6, !8, !"__initcall__kmod_broadcom__285_1038_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/broadcom.c", i32 1038, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/broadcom.c", i32 788, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/broadcom.c", i32 801, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/broadcom.c", i32 814, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/broadcom.c", i32 829, i32 11}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/broadcom.c", i32 842, i32 11}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/broadcom.c", i32 855, i32 11}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/broadcom.c", i32 868, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/broadcom.c", i32 883, i32 11}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/broadcom.c", i32 897, i32 20}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/broadcom.c", i32 913, i32 20}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/broadcom.c", i32 929, i32 11}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/broadcom.c", i32 942, i32 11}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/broadcom.c", i32 957, i32 11}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/broadcom.c", i32 972, i32 11}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/broadcom.c", i32 985, i32 11}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/broadcom.c", i32 993, i32 11}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/broadcom.c", i32 1001, i32 11}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/broadcom.c", i32 1012, i32 11}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/broadcom.c", i32 1026, i32 20}
!48 = !{ptr @broadcom_drivers, !49, !"broadcom_drivers", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/broadcom.c", i32 784, i32 26}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/broadcom.c", i32 500, i32 32}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i8 0, i8 2}
