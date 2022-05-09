; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mscc/mscc_main.c_pt.bc'
source_filename = "../drivers/net/phy/mscc/mscc_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_val = type { i16, i32 }
%struct.vsc85xx_hw_stat = type { ptr, i8, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.vsc8531_private = type { i32, i16, [4 x i32], i8, ptr, ptr, i32, i8, i32, ptr, %struct.list_head, i32, i32, %struct.mii_timestamper, i8, ptr, ptr, i32, i8, %struct.mutex, %struct.mutex }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.phy_package_shared = type { i32, %struct.refcount_struct, i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }

@phy_base_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MDIO bus lock not held!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_base_write\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/phy/mscc/mscc_main.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phy_base_write._entry_ptr = internal global ptr @phy_base_write._entry, section ".printk_index", align 4
@phy_base_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 706, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_base_read\00", [18 x i8] zeroinitializer }, align 32
@phy_base_read._entry_ptr = internal global ptr @phy_base_read._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__initcall__kmod_mscc__349_2664_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@vsc85xx_driver = internal global { [14 x %struct.phy_driver], [824 x i8] } { [14 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460336, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc85xx_config_init, ptr @vsc85xx_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 459968, ptr @.str.7, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8574_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr @genphy_aneg_done, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460400, ptr @.str.8, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8514_config_init, ptr @vsc8514_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460128, ptr @.str.9, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc85xx_config_init, ptr @vsc85xx_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460144, ptr @.str.10, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc85xx_config_init, ptr @vsc85xx_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460640, ptr @.str.11, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc85xx_config_init, ptr @vsc85xx_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460656, ptr @.str.12, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc85xx_config_init, ptr @vsc85xx_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460000, ptr @.str.13, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8574_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460768, ptr @.str.14, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8584_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr null, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 459984, ptr @.str.15, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8574_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr @genphy_aneg_done, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc8584_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 459936, ptr @.str.16, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8574_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr @genphy_aneg_done, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc85xx_handle_interrupt, ptr null, ptr null, ptr @vsc85xx_wol_set, ptr @vsc85xx_wol_get, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460752, ptr @.str.17, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8584_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr @genphy_aneg_done, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc8584_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460720, ptr @.str.18, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8584_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr @genphy_aneg_done, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc8584_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 460736, ptr @.str.19, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @vsc8584_config_init, ptr @vsc8584_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @vsc85xx_config_aneg, ptr @genphy_aneg_done, ptr @vsc85xx_read_status, ptr @vsc85xx_config_intr, ptr @vsc8584_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_link_change_notify, ptr null, ptr null, ptr @vsc85xx_phy_read_page, ptr @vsc85xx_phy_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc85xx_get_sset_count, ptr @vsc85xx_get_strings, ptr @vsc85xx_get_stats, ptr @vsc85xx_get_tunable, ptr @vsc85xx_set_tunable, ptr null, ptr null, ptr null }], [824 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [46 x i8] c"mscc.description=Microsemi VSC85xx PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [31 x i8] c"mscc.author=Nagaraju Lakkaraju\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [36 x i8] c"mscc.file=drivers/net/phy/mscc/mscc\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [26 x i8] c"mscc.license=Dual MIT/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [59 x i8] c"mscc.firmware=microchip/mscc_vsc8584_revb_int8051_fb48.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [59 x i8] c"mscc.firmware=microchip/mscc_vsc8574_revb_int8051_29e8.bin\00", section ".modinfo", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8502 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8504 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8514 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Microsemi FE VSC8530\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Microsemi VSC8531\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi FE VSC8540 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Microsemi VSC8541 SyncE\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8552 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC856X SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8572 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8574 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8575 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8582 SyncE\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Microsemi GE VSC8584 SyncE\00", [37 x i8] zeroinitializer }, align 32
@vsc85xx_eee_init_seq_set.init_eee = internal constant { [18 x %struct.reg_val], [48 x i8] } { [18 x %struct.reg_val] [%struct.reg_val { i16 3970, i32 1224714 }, %struct.reg_val { i16 5766, i32 4 }, %struct.reg_val { i16 5772, i32 13812847 }, %struct.reg_val { i16 6050, i32 1568 }, %struct.reg_val { i16 5792, i32 15663069 }, %struct.reg_val { i16 5798, i32 463944 }, %struct.reg_val { i16 5796, i32 1250095 }, %struct.reg_val { i16 5800, i32 0 }, %struct.reg_val { i16 4092, i32 12623912 }, %struct.reg_val { i16 4072, i32 9547884 }, %struct.reg_val { i16 4074, i32 267776 }, %struct.reg_val { i16 3968, i32 2804 }, %struct.reg_val { i16 4076, i32 9443337 }, %struct.reg_val { i16 4078, i32 42657 }, %struct.reg_val { i16 4094, i32 11538439 }, %struct.reg_val { i16 5808, i32 15662848 }, %struct.reg_val { i16 5810, i32 28672 }, %struct.reg_val { i16 5812, i32 2068 }], [48 x i8] zeroinitializer }, align 32
@vsc85xx_hw_stats = internal constant { [5 x %struct.vsc85xx_hw_stat], [36 x i8] } { [5 x %struct.vsc85xx_hw_stat] [%struct.vsc85xx_hw_stat { ptr @.str.22, i8 19, i16 0, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.23, i8 20, i16 0, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.24, i8 21, i16 0, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.25, i8 18, i16 1, i16 16383 }, %struct.vsc85xx_hw_stat { ptr @.str.26, i8 23, i16 1, i16 255 }], [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vsc8531,vddmac\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vsc8531,edge-slowdown\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_receive_errors\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_false_carrier\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_cu_media_link_disconnect\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phy_cu_media_crc_good_count\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_cu_media_crc_error_count\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vsc8531,led-%d-mode\00", [44 x i8] zeroinitializer }, align 32
@vsc85xx_dt_led_mode_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DT %s invalid\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc85xx_dt_led_mode_get\00", [40 x i8] zeroinitializer }, align 32
@vsc85xx_dt_led_mode_get._entry_ptr = internal global ptr @vsc85xx_dt_led_mode_get._entry, section ".printk_index", align 4
@vsc85xx_downshift_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Downshift count should be 2,3,4 or 5\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vsc85xx_downshift_set\00", [42 x i8] zeroinitializer }, align 32
@vsc85xx_downshift_set._entry_ptr = internal global ptr @vsc85xx_downshift_set._entry, section ".printk_index", align 4
@vsc8574_config_pre_init.pre_init1 = internal constant { [46 x %struct.reg_val], [80 x i8] } { [46 x %struct.reg_val] [%struct.reg_val { i16 4014, i32 262589 }, %struct.reg_val { i16 4012, i32 983055 }, %struct.reg_val { i16 6048, i32 10547527 }, %struct.reg_val { i16 4068, i32 339796 }, %struct.reg_val { i16 6034, i32 2568253 }, %struct.reg_val { i16 2046, i32 1796 }, %struct.reg_val { i16 4064, i32 393552 }, %struct.reg_val { i16 3970, i32 1224714 }, %struct.reg_val { i16 3968, i32 3444 }, %struct.reg_val { i16 736, i32 18 }, %struct.reg_val { i16 930, i32 328200 }, %struct.reg_val { i16 946, i32 37254 }, %struct.reg_val { i16 4016, i32 931584 }, %struct.reg_val { i16 5768, i32 302977 }, %struct.reg_val { i16 4050, i32 65535 }, %struct.reg_val { i16 5770, i32 237474 }, %struct.reg_val { i16 5776, i32 2122763 }, %struct.reg_val { i16 600, i32 8736 }, %struct.reg_val { i16 602, i32 10784 }, %struct.reg_val { i16 604, i32 12384 }, %struct.reg_val { i16 606, i32 16288 }, %struct.reg_val { i16 934, i32 57584 }, %struct.reg_val { i16 3986, i32 5257 }, %struct.reg_val { i16 5794, i32 28672 }, %struct.reg_val { i16 5798, i32 463944 }, %struct.reg_val { i16 5792, i32 15663069 }, %struct.reg_val { i16 4072, i32 9547884 }, %struct.reg_val { i16 4074, i32 267776 }, %struct.reg_val { i16 5808, i32 15662848 }, %struct.reg_val { i16 5810, i32 28672 }, %struct.reg_val { i16 5812, i32 2068 }, %struct.reg_val { i16 3984, i32 6850944 }, %struct.reg_val { i16 932, i32 55536 }, %struct.reg_val { i16 4032, i32 1024 }, %struct.reg_val { i16 2042, i32 5246991 }, %struct.reg_val { i16 1942, i32 3 }, %struct.reg_val { i16 2040, i32 12844952 }, %struct.reg_val { i16 4004, i32 1583402 }, %struct.reg_val { i16 5772, i32 13812847 }, %struct.reg_val { i16 6050, i32 1568 }, %struct.reg_val { i16 5796, i32 1250095 }, %struct.reg_val { i16 5800, i32 0 }, %struct.reg_val { i16 4092, i32 12623912 }, %struct.reg_val { i16 4076, i32 9444361 }, %struct.reg_val { i16 4078, i32 304801 }, %struct.reg_val { i16 4094, i32 11540487 }], [80 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"microchip/mscc_vsc8574_revb_int8051_29e8.bin\00", [51 x i8] zeroinitializer }, align 32
@vsc8574_config_pre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to load firmware %s, ret: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc8574_config_pre_init\00", [40 x i8] zeroinitializer }, align 32
@vsc8574_config_pre_init._entry_ptr = internal global ptr @vsc8574_config_pre_init._entry, section ".printk_index", align 4
@vsc8574_config_pre_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to assert reset of micro\0A\00", [59 x i8] zeroinitializer }, align 32
@vsc8574_config_pre_init._entry_ptr.37 = internal global ptr @vsc8574_config_pre_init._entry.35, section ".printk_index", align 4
@vsc8574_config_pre_init.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.34, ptr @.str.2, ptr @.str.39, i8 1, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mscc\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FW CRC is not the expected one, patching FW\0A\00", [51 x i8] zeroinitializer }, align 32
@vsc8574_config_pre_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.2, i32 1199, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to patch FW, expect non-optimal device\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vsc8574_config_pre_init._entry_ptr.43 = internal global ptr @vsc8574_config_pre_init._entry.40, section ".printk_index", align 4
@vsc8574_config_pre_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 1224, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"FW CRC after patching is not the expected one, expect non-optimal device\0A\00", [54 x i8] zeroinitializer }, align 32
@vsc8574_config_pre_init._entry_ptr.46 = internal global ptr @vsc8574_config_pre_init._entry.44, section ".printk_index", align 4
@vsc8584_patch_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.47, ptr @.str.2, i32 968, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vsc8584_patch_fw\00", [47 x i8] zeroinitializer }, align 32
@vsc8584_patch_fw._entry_ptr = internal global ptr @vsc8584_patch_fw._entry, section ".printk_index", align 4
@vsc8584_config_pre_init.pre_init1 = internal constant { [22 x %struct.reg_val], [48 x i8] } { [22 x %struct.reg_val] [%struct.reg_val { i16 2042, i32 5246991 }, %struct.reg_val { i16 5768, i32 302977 }, %struct.reg_val { i16 3984, i32 6850944 }, %struct.reg_val { i16 932, i32 55536 }, %struct.reg_val { i16 4032, i32 1024 }, %struct.reg_val { i16 3970, i32 1224706 }, %struct.reg_val { i16 5766, i32 4 }, %struct.reg_val { i16 5772, i32 13812847 }, %struct.reg_val { i16 6050, i32 1568 }, %struct.reg_val { i16 5792, i32 15663069 }, %struct.reg_val { i16 5798, i32 463944 }, %struct.reg_val { i16 5796, i32 1250095 }, %struct.reg_val { i16 5800, i32 0 }, %struct.reg_val { i16 4092, i32 12623912 }, %struct.reg_val { i16 4072, i32 9547884 }, %struct.reg_val { i16 4074, i32 267776 }, %struct.reg_val { i16 3968, i32 16775935 }, %struct.reg_val { i16 4076, i32 9443337 }, %struct.reg_val { i16 4094, i32 11538439 }, %struct.reg_val { i16 5808, i32 15662848 }, %struct.reg_val { i16 5810, i32 28672 }, %struct.reg_val { i16 5812, i32 2068 }], [48 x i8] zeroinitializer }, align 32
@vsc8584_config_pre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed LCPLL reset, ret: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc8584_config_pre_init\00", [40 x i8] zeroinitializer }, align 32
@vsc8584_config_pre_init._entry_ptr = internal global ptr @vsc8584_config_pre_init._entry, section ".printk_index", align 4
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"microchip/mscc_vsc8584_revb_int8051_fb48.bin\00", [51 x i8] zeroinitializer }, align 32
@vsc8584_config_pre_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.49, ptr @.str.2, i32 1440, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@vsc8584_config_pre_init._entry_ptr.52 = internal global ptr @vsc8584_config_pre_init._entry.51, section ".printk_index", align 4
@vsc8584_config_pre_init.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.49, ptr @.str.2, ptr @.str.39, i8 1, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vsc8584_config_pre_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.49, ptr @.str.2, i32 1455, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@vsc8584_config_pre_init._entry_ptr.54 = internal global ptr @vsc8584_config_pre_init._entry.53, section ".printk_index", align 4
@vsc8584_config_pre_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.49, ptr @.str.2, i32 1469, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@vsc8584_config_pre_init._entry_ptr.56 = internal global ptr @vsc8584_config_pre_init._entry.55, section ".printk_index", align 4
@vsc8584_hw_stats = internal constant { [9 x %struct.vsc85xx_hw_stat], [52 x i8] } { [9 x %struct.vsc85xx_hw_stat] [%struct.vsc85xx_hw_stat { ptr @.str.22, i8 19, i16 0, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.23, i8 20, i16 0, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.24, i8 21, i16 0, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.25, i8 18, i16 1, i16 16383 }, %struct.vsc85xx_hw_stat { ptr @.str.26, i8 23, i16 1, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.57, i8 21, i16 3, i16 16383 }, %struct.vsc85xx_hw_stat { ptr @.str.58, i8 22, i16 3, i16 255 }, %struct.vsc85xx_hw_stat { ptr @.str.59, i8 28, i16 3, i16 16383 }, %struct.vsc85xx_hw_stat { ptr @.str.60, i8 29, i16 3, i16 255 }], [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_serdes_tx_good_pkt_count\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phy_serdes_tx_bad_crc_count\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_serdes_rx_good_pkt_count\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phy_serdes_rx_bad_crc_count\00", [36 x i8] zeroinitializer }, align 32
@vsc8514_config_pre_init.pre_init1 = internal constant { [20 x %struct.reg_val], [32 x i8] } { [20 x %struct.reg_val] [%struct.reg_val { i16 3984, i32 6850944 }, %struct.reg_val { i16 1926, i32 3 }, %struct.reg_val { i16 2042, i32 5246991 }, %struct.reg_val { i16 3970, i32 1224706 }, %struct.reg_val { i16 5766, i32 4 }, %struct.reg_val { i16 5772, i32 13812847 }, %struct.reg_val { i16 6050, i32 1568 }, %struct.reg_val { i16 5792, i32 15663069 }, %struct.reg_val { i16 5798, i32 463944 }, %struct.reg_val { i16 5796, i32 1250095 }, %struct.reg_val { i16 5800, i32 0 }, %struct.reg_val { i16 4092, i32 12623912 }, %struct.reg_val { i16 4072, i32 9547884 }, %struct.reg_val { i16 4074, i32 267776 }, %struct.reg_val { i16 3968, i32 16775935 }, %struct.reg_val { i16 4076, i32 9443337 }, %struct.reg_val { i16 4094, i32 11538439 }, %struct.reg_val { i16 5808, i32 15662848 }, %struct.reg_val { i16 5810, i32 28672 }, %struct.reg_val { i16 5812, i32 2068 }], [32 x i8] zeroinitializer }, align 32
@vsc8514_config_pre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.61, ptr @.str.2, i32 1986, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsc8514_config_pre_init\00", [40 x i8] zeroinitializer }, align 32
@vsc8514_config_pre_init._entry_ptr = internal global ptr @vsc8514_config_pre_init._entry, section ".printk_index", align 4
@vsc8514_config_host_serdes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1929, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: QSGMII error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vsc8514_config_host_serdes\00", [37 x i8] zeroinitializer }, align 32
@vsc8514_config_host_serdes._entry_ptr = internal global ptr @vsc8514_config_host_serdes._entry, section ".printk_index", align 4
@__const.vsc8584_probe.default_mode = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 0, i32 8], align 4
@vsc8584_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 2259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Only VSC8584 revB is supported.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vsc8584_probe\00", [18 x i8] zeroinitializer }, align 32
@vsc8584_probe._entry_ptr = internal global ptr @vsc8584_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.68 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 460128, i64 460144, i64 460640, i64 460656]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 1500, i64 1800, i64 2500, i64 3300]
@__sancov_gen_cov_switch_values.71 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 4, i64 7, i64 10, i64 17, i64 29, i64 53]
@__sancov_gen_cov_switch_values.72 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 3, i64 6, i64 10, i64 14, i64 23, i64 37, i64 63]
@__sancov_gen_cov_switch_values.73 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 5, i64 9, i64 16, i64 23, i64 35, i64 52, i64 76]
@__sancov_gen_cov_switch_values.74 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 6, i64 14, i64 21, i64 29, i64 42, i64 58, i64 77]
@__sancov_gen_cov_switch_values.75 = internal global [10 x i64] [i64 8, i64 32, i64 459936, i64 459968, i64 459984, i64 460000, i64 460720, i64 460736, i64 460752, i64 460768]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 695, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 706, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"vsc85xx_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2326, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2329, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2353, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2378, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2401, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2425, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2449, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2473, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2497, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2521, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2543, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2568, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2593, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2616, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2639, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"init_eee\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 653, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"vsc85xx_hw_stats\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 23, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 397, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 400, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 25, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 30, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 35, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 40, i32 13 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 45, i32 13 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 457, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 428, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 261, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1041, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1166, i32 30 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1168, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1186, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1193, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1198, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1223, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 967, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1330, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1367, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1437, i32 30 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1439, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1454, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1468, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"vsc8584_hw_stats\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 52, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 79, i32 13 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 84, i32 13 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 89, i32 13 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 94, i32 13 }
@___asan_gen_.283 = private unnamed_addr constant [10 x i8] c"pre_init1\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1957, i32 30 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1986, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1928, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [36 x i8] c"../drivers/net/phy/mscc/mscc_main.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2259, i32 3 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_license353, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_mscc__349_2664_phy_module_init6, ptr @phy_base_read._entry, ptr @phy_base_read._entry_ptr, ptr @phy_base_write._entry, ptr @phy_base_write._entry_ptr, ptr @phy_module_exit, ptr @vsc8514_config_host_serdes._entry, ptr @vsc8514_config_host_serdes._entry_ptr, ptr @vsc8514_config_pre_init._entry, ptr @vsc8514_config_pre_init._entry_ptr, ptr @vsc8574_config_pre_init._entry, ptr @vsc8574_config_pre_init._entry.35, ptr @vsc8574_config_pre_init._entry.40, ptr @vsc8574_config_pre_init._entry.44, ptr @vsc8574_config_pre_init._entry_ptr, ptr @vsc8574_config_pre_init._entry_ptr.37, ptr @vsc8574_config_pre_init._entry_ptr.43, ptr @vsc8574_config_pre_init._entry_ptr.46, ptr @vsc8584_config_pre_init._entry, ptr @vsc8584_config_pre_init._entry.51, ptr @vsc8584_config_pre_init._entry.53, ptr @vsc8584_config_pre_init._entry.55, ptr @vsc8584_config_pre_init._entry_ptr, ptr @vsc8584_config_pre_init._entry_ptr.52, ptr @vsc8584_config_pre_init._entry_ptr.54, ptr @vsc8584_config_pre_init._entry_ptr.56, ptr @vsc8584_patch_fw._entry, ptr @vsc8584_patch_fw._entry_ptr, ptr @vsc8584_probe._entry, ptr @vsc8584_probe._entry_ptr, ptr @vsc85xx_downshift_set._entry, ptr @vsc85xx_downshift_set._entry_ptr, ptr @vsc85xx_dt_led_mode_get._entry, ptr @vsc85xx_dt_led_mode_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vsc85xx_driver, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @vsc85xx_eee_init_seq_set.init_eee, ptr @vsc85xx_hw_stats, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @vsc8574_config_pre_init.pre_init1, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @vsc8584_config_pre_init.pre_init1, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @vsc8584_hw_stats, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @vsc8514_config_pre_init.pre_init1, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_base_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_base_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_driver to i32), i32 3304, i32 4128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_eee_init_seq_set.init_eee to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_hw_stats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_dt_led_mode_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc85xx_downshift_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8574_config_pre_init.pre_init1 to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8574_config_pre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8574_config_pre_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8574_config_pre_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8574_config_pre_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_patch_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_config_pre_init.pre_init1 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_config_pre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_config_pre_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_config_pre_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_config_pre_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_hw_stats to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8514_config_pre_init.pre_init1 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8514_config_pre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8514_config_host_serdes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc8584_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phy_base_write(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !179

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %shared1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.__phy_package_write.exit_crit_edge, label %if.end.i

if.end.__phy_package_write.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__phy_package_write.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef %regnum, i16 noundef zeroext %val) #10
  br label %__phy_package_write.exit

__phy_package_write.exit:                         ; preds = %if.end.i, %if.end.__phy_package_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -5, %if.end.__phy_package_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phy_base_read(ptr noundef %phydev, i32 noundef %regnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock) #10
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !179

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %shared1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.__phy_package_read.exit_crit_edge, label %if.end.i

if.end.__phy_package_read.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__phy_package_read.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef %regnum) #10
  br label %__phy_package_read.exit

__phy_package_read.exit:                          ; preds = %if.end.i, %if.end.__phy_package_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -5, %if.end.__phy_package_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef %target, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !179

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 4) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %shr = lshr i32 %target, 2
  %conv = trunc i32 %shr to i16
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i39 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  %call.i40 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i39) #10
  br i1 %call.i40, label %phy_base_write.exit.if.end.i44_crit_edge, label %do.end.i41, !prof !179

phy_base_write.exit.if.end.i44_crit_edge:         ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i44

do.end.i41:                                       ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i44

if.end.i44:                                       ; preds = %do.end.i41, %phy_base_write.exit.if.end.i44_crit_edge
  %10 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i43 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i43, label %if.end.i44.phy_base_write.exit48_crit_edge, label %if.end.i.i46

if.end.i44.phy_base_write.exit48_crit_edge:       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit48

if.end.i.i46:                                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %call.i.i45 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 20, i16 noundef zeroext %conv) #10
  br label %phy_base_write.exit48

phy_base_write.exit48:                            ; preds = %if.end.i.i46, %if.end.i44.phy_base_write.exit48_crit_edge
  %16 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %phy_base_write.exit48.if.end_crit_edge [
    i32 1, label %phy_base_write.exit48.if.then_crit_edge
    i32 3, label %phy_base_write.exit48.if.then_crit_edge112
  ]

phy_base_write.exit48.if.then_crit_edge112:       ; preds = %phy_base_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

phy_base_write.exit48.if.then_crit_edge:          ; preds = %phy_base_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

phy_base_write.exit48.if.end_crit_edge:           ; preds = %phy_base_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %phy_base_write.exit48.if.then_crit_edge, %phy_base_write.exit48.if.then_crit_edge112
  %and = shl i32 %target, 12
  %phi.bo = and i32 %and, 12288
  br label %if.end

if.end:                                           ; preds = %if.then, %phy_base_write.exit48.if.end_crit_edge
  %target.addr.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %phy_base_write.exit48.if.end_crit_edge ]
  %or = or i32 %target.addr.0, %reg
  %17 = trunc i32 %or to i16
  %conv8 = or i16 %17, -16384
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i50 = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 8
  %call.i51 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i50) #10
  br i1 %call.i51, label %if.end.if.end.i55_crit_edge, label %do.end.i52, !prof !179

if.end.if.end.i55_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i55

do.end.i52:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i55

if.end.i55:                                       ; preds = %do.end.i52, %if.end.if.end.i55_crit_edge
  %20 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i54 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i54, label %if.end.i55.phy_base_write.exit59_crit_edge, label %if.end.i.i57

if.end.i55.phy_base_write.exit59_crit_edge:       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit59

if.end.i.i57:                                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %call.i.i56 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 19, i16 noundef zeroext %conv8) #10
  br label %phy_base_write.exit59

phy_base_write.exit59:                            ; preds = %if.end.i.i57, %if.end.i55.phy_base_write.exit59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %26
  br label %do.body

do.body:                                          ; preds = %phy_base_read.exit.do.body_crit_edge, %phy_base_write.exit59
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i61 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 8
  %call.i62 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i61) #10
  br i1 %call.i62, label %do.body.if.end.i66_crit_edge, label %do.end.i63, !prof !179

do.body.if.end.i66_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i66

do.end.i63:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i66

if.end.i66:                                       ; preds = %do.end.i63, %do.body.if.end.i66_crit_edge
  %29 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i65 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i65, label %do.end.thread, label %phy_base_read.exit

do.end.thread:                                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  br label %if.end18

phy_base_read.exit:                               ; preds = %if.end.i66
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %30, align 4
  %call.i.i67 = tail call i32 @__mdiobus_read(ptr noundef %33, i32 noundef %35, i32 noundef 19) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp slt i32 %sub, 0
  %and14 = and i32 %call.i.i67, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp12, i1 %tobool.not, i1 false
  br i1 %or.cond, label %phy_base_read.exit.do.body_crit_edge, label %do.end

phy_base_read.exit.do.body_crit_edge:             ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %phy_base_read.exit
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %do.end.if.end18_crit_edge, %do.end.thread
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i71 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 8
  %call.i72 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i71) #10
  br i1 %call.i72, label %if.end18.if.end.i76_crit_edge, label %do.end.i73, !prof !179

if.end18.if.end.i76_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i76

do.end.i73:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i76

if.end.i76:                                       ; preds = %do.end.i73, %if.end18.if.end.i76_crit_edge
  %39 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i75 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i75, label %if.end.i76.phy_base_read.exit80_crit_edge, label %if.end.i.i78

if.end.i76.phy_base_read.exit80_crit_edge:        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit80

if.end.i.i78:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i, align 8
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %call.i.i77 = tail call i32 @__mdiobus_read(ptr noundef %42, i32 noundef %44, i32 noundef 17) #10
  br label %phy_base_read.exit80

phy_base_read.exit80:                             ; preds = %if.end.i.i78, %if.end.i76.phy_base_read.exit80_crit_edge
  %retval.0.i.i79 = phi i32 [ %call.i.i77, %if.end.i.i78 ], [ -5, %if.end.i76.phy_base_read.exit80_crit_edge ]
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i82 = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 8
  %call.i83 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i82) #10
  br i1 %call.i83, label %phy_base_read.exit80.if.end.i87_crit_edge, label %do.end.i84, !prof !179

phy_base_read.exit80.if.end.i87_crit_edge:        ; preds = %phy_base_read.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i87

do.end.i84:                                       ; preds = %phy_base_read.exit80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i87

if.end.i87:                                       ; preds = %do.end.i84, %phy_base_read.exit80.if.end.i87_crit_edge
  %47 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i86 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i86, label %if.end.i87.phy_base_read.exit91_crit_edge, label %if.end.i.i89

if.end.i87.phy_base_read.exit91_crit_edge:        ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit91

if.end.i.i89:                                     ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i, align 8
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 4
  %call.i.i88 = tail call i32 @__mdiobus_read(ptr noundef %50, i32 noundef %52, i32 noundef 18) #10
  %phi.bo111 = shl i32 %call.i.i88, 16
  br label %phy_base_read.exit91

phy_base_read.exit91:                             ; preds = %if.end.i.i89, %if.end.i87.phy_base_read.exit91_crit_edge
  %retval.0.i.i90 = phi i32 [ %phi.bo111, %if.end.i.i89 ], [ -327680, %if.end.i87.phy_base_read.exit91_crit_edge ]
  %53 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i93 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 8
  %call.i94 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i93) #10
  br i1 %call.i94, label %phy_base_read.exit91.if.end.i98_crit_edge, label %do.end.i95, !prof !179

phy_base_read.exit91.if.end.i98_crit_edge:        ; preds = %phy_base_read.exit91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i98

do.end.i95:                                       ; preds = %phy_base_read.exit91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i98

if.end.i98:                                       ; preds = %do.end.i95, %phy_base_read.exit91.if.end.i98_crit_edge
  %55 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i97 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i97, label %if.end.i98.phy_base_write.exit102_crit_edge, label %if.end.i.i100

if.end.i98.phy_base_write.exit102_crit_edge:      ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit102

if.end.i.i100:                                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i, align 8
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 4
  %call.i.i99 = tail call i32 @__mdiobus_write(ptr noundef %58, i32 noundef %60, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit102

phy_base_write.exit102:                           ; preds = %if.end.i.i100, %if.end.i98.phy_base_write.exit102_crit_edge
  %or23 = or i32 %retval.0.i.i90, %retval.0.i.i79
  br label %cleanup

cleanup:                                          ; preds = %phy_base_write.exit102, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %or23, %phy_base_write.exit102 ], [ -1, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef %target, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !179

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 4) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %shr = lshr i32 %target, 2
  %conv = trunc i32 %shr to i16
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i39 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  %call.i40 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i39) #10
  br i1 %call.i40, label %phy_base_write.exit.if.end.i44_crit_edge, label %do.end.i41, !prof !179

phy_base_write.exit.if.end.i44_crit_edge:         ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i44

do.end.i41:                                       ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i44

if.end.i44:                                       ; preds = %do.end.i41, %phy_base_write.exit.if.end.i44_crit_edge
  %10 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i43 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i43, label %if.end.i44.phy_base_write.exit48_crit_edge, label %if.end.i.i46

if.end.i44.phy_base_write.exit48_crit_edge:       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit48

if.end.i.i46:                                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %call.i.i45 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 20, i16 noundef zeroext %conv) #10
  br label %phy_base_write.exit48

phy_base_write.exit48:                            ; preds = %if.end.i.i46, %if.end.i44.phy_base_write.exit48_crit_edge
  %conv2 = trunc i32 %val to i16
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i50 = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 8
  %call.i51 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i50) #10
  br i1 %call.i51, label %phy_base_write.exit48.if.end.i55_crit_edge, label %do.end.i52, !prof !179

phy_base_write.exit48.if.end.i55_crit_edge:       ; preds = %phy_base_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i55

do.end.i52:                                       ; preds = %phy_base_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i55

if.end.i55:                                       ; preds = %do.end.i52, %phy_base_write.exit48.if.end.i55_crit_edge
  %18 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i54 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i54, label %if.end.i55.phy_base_write.exit59_crit_edge, label %if.end.i.i57

if.end.i55.phy_base_write.exit59_crit_edge:       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit59

if.end.i.i57:                                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %call.i.i56 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 17, i16 noundef zeroext %conv2) #10
  br label %phy_base_write.exit59

phy_base_write.exit59:                            ; preds = %if.end.i.i57, %if.end.i55.phy_base_write.exit59_crit_edge
  %shr4 = lshr i32 %val, 16
  %conv5 = trunc i32 %shr4 to i16
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i61 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 8
  %call.i62 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i61) #10
  br i1 %call.i62, label %phy_base_write.exit59.if.end.i66_crit_edge, label %do.end.i63, !prof !179

phy_base_write.exit59.if.end.i66_crit_edge:       ; preds = %phy_base_write.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i66

do.end.i63:                                       ; preds = %phy_base_write.exit59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i66

if.end.i66:                                       ; preds = %do.end.i63, %phy_base_write.exit59.if.end.i66_crit_edge
  %26 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i65 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i65, label %if.end.i66.phy_base_write.exit70_crit_edge, label %if.end.i.i68

if.end.i66.phy_base_write.exit70_crit_edge:       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit70

if.end.i.i68:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %call.i.i67 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 18, i16 noundef zeroext %conv5) #10
  br label %phy_base_write.exit70

phy_base_write.exit70:                            ; preds = %if.end.i.i68, %if.end.i66.phy_base_write.exit70_crit_edge
  %32 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %shr, label %phy_base_write.exit70.if.end_crit_edge [
    i32 1, label %phy_base_write.exit70.if.then_crit_edge
    i32 3, label %phy_base_write.exit70.if.then_crit_edge111
  ]

phy_base_write.exit70.if.then_crit_edge111:       ; preds = %phy_base_write.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

phy_base_write.exit70.if.then_crit_edge:          ; preds = %phy_base_write.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

phy_base_write.exit70.if.end_crit_edge:           ; preds = %phy_base_write.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %phy_base_write.exit70.if.then_crit_edge, %phy_base_write.exit70.if.then_crit_edge111
  %and = shl i32 %target, 12
  %phi.bo = and i32 %and, 12288
  br label %if.end

if.end:                                           ; preds = %if.then, %phy_base_write.exit70.if.end_crit_edge
  %target.addr.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %phy_base_write.exit70.if.end_crit_edge ]
  %or = or i32 %target.addr.0, %reg
  %33 = trunc i32 %or to i16
  %conv13 = or i16 %33, -32768
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i72 = getelementptr inbounds %struct.mii_bus, ptr %35, i32 0, i32 8
  %call.i73 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i72) #10
  br i1 %call.i73, label %if.end.if.end.i77_crit_edge, label %do.end.i74, !prof !179

if.end.if.end.i77_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i77

do.end.i74:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i77

if.end.i77:                                       ; preds = %do.end.i74, %if.end.if.end.i77_crit_edge
  %36 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i76 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i76, label %if.end.i77.phy_base_write.exit81_crit_edge, label %if.end.i.i79

if.end.i77.phy_base_write.exit81_crit_edge:       ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit81

if.end.i.i79:                                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i, align 8
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %call.i.i78 = tail call i32 @__mdiobus_write(ptr noundef %39, i32 noundef %41, i32 noundef 19, i16 noundef zeroext %conv13) #10
  br label %phy_base_write.exit81

phy_base_write.exit81:                            ; preds = %if.end.i.i79, %if.end.i77.phy_base_write.exit81_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %42
  br label %do.body

do.body:                                          ; preds = %phy_base_read.exit.do.body_crit_edge, %phy_base_write.exit81
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i83 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 8
  %call.i84 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i83) #10
  br i1 %call.i84, label %do.body.if.end.i88_crit_edge, label %do.end.i85, !prof !179

do.body.if.end.i88_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i88

do.end.i85:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i88

if.end.i88:                                       ; preds = %do.end.i85, %do.body.if.end.i88_crit_edge
  %45 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i87 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i87, label %do.end.thread, label %phy_base_read.exit

do.end.thread:                                    ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  br label %if.end23

phy_base_read.exit:                               ; preds = %if.end.i88
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %46, align 4
  %call.i.i89 = tail call i32 @__mdiobus_read(ptr noundef %49, i32 noundef %51, i32 noundef 19) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17 = icmp slt i32 %sub, 0
  %and19 = and i32 %call.i.i89, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  %or.cond = select i1 %cmp17, i1 %tobool.not, i1 false
  br i1 %or.cond, label %phy_base_read.exit.do.body_crit_edge, label %do.end

phy_base_read.exit.do.body_crit_edge:             ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %phy_base_read.exit
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end.if.end23_crit_edge

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %do.end.if.end23_crit_edge, %do.end.thread
  %53 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i93 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 8
  %call.i94 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i93) #10
  br i1 %call.i94, label %if.end23.if.end.i98_crit_edge, label %do.end.i95, !prof !179

if.end23.if.end.i98_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i98

do.end.i95:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i98

if.end.i98:                                       ; preds = %do.end.i95, %if.end23.if.end.i98_crit_edge
  %55 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i97 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i97, label %if.end.i98.cleanup_crit_edge, label %if.end.i.i100

if.end.i98.cleanup_crit_edge:                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i100:                                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i, align 8
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 4
  %call.i.i99 = tail call i32 @__mdiobus_write(ptr noundef %58, i32 noundef %60, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i100, %if.end.i98.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end.cleanup_crit_edge ], [ 0, %if.end.i98.cleanup_crit_edge ], [ 0, %if.end.i.i100 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !179

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %8 = or i16 %val, -32768
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i30 = getelementptr inbounds %struct.mii_bus, ptr %10, i32 0, i32 8
  %call.i31 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i30) #10
  br i1 %call.i31, label %phy_base_write.exit.if.end.i35_crit_edge, label %do.end.i32, !prof !179

phy_base_write.exit.if.end.i35_crit_edge:         ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i35

do.end.i32:                                       ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i35

if.end.i35:                                       ; preds = %do.end.i32, %phy_base_write.exit.if.end.i35_crit_edge
  %11 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i34 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i34, label %if.end.i35.phy_base_write.exit39_crit_edge, label %if.end.i.i37

if.end.i35.phy_base_write.exit39_crit_edge:       ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit39

if.end.i.i37:                                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %call.i.i36 = tail call i32 @__mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 18, i16 noundef zeroext %8) #10
  br label %phy_base_write.exit39

phy_base_write.exit39:                            ; preds = %if.end.i.i37, %if.end.i35.phy_base_write.exit39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %17
  br label %do.body

do.body:                                          ; preds = %phy_base_read.exit.do.body_crit_edge, %phy_base_write.exit39
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i41 = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 8
  %call.i42 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i41) #10
  br i1 %call.i42, label %do.body.if.end.i46_crit_edge, label %do.end.i43, !prof !179

do.body.if.end.i46_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i46

do.end.i43:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i46

if.end.i46:                                       ; preds = %do.end.i43, %do.body.if.end.i46_crit_edge
  %20 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i45 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i45, label %if.end.i46.phy_base_read.exit_crit_edge, label %if.end.i.i48

if.end.i46.phy_base_read.exit_crit_edge:          ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit

if.end.i.i48:                                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %call.i.i47 = tail call i32 @__mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 18) #10
  br label %phy_base_read.exit

phy_base_read.exit:                               ; preds = %if.end.i.i48, %if.end.i46.phy_base_read.exit_crit_edge
  %retval.0.i.i49 = phi i32 [ %call.i.i47, %if.end.i.i48 ], [ -5, %if.end.i46.phy_base_read.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %and = and i32 %retval.0.i.i49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  %or.cond.not = xor i1 %or.cond, true
  %and9 = and i32 %retval.0.i.i49, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond28 = select i1 %or.cond.not, i1 %tobool10.not, i1 false
  br i1 %or.cond28, label %phy_base_read.exit.do.body_crit_edge, label %do.end

phy_base_read.exit.do.body_crit_edge:             ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %phy_base_read.exit
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i51 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 8
  %call.i52 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i51) #10
  br i1 %call.i52, label %do.end.if.end.i56_crit_edge, label %do.end.i53, !prof !179

do.end.if.end.i56_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i56

do.end.i53:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i56

if.end.i56:                                       ; preds = %do.end.i53, %do.end.if.end.i56_crit_edge
  %29 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i55 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i55, label %if.end.i56.phy_base_write.exit60_crit_edge, label %if.end.i.i58

if.end.i56.phy_base_write.exit60_crit_edge:       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit60

if.end.i.i58:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %call.i.i57 = tail call i32 @__mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit60

phy_base_write.exit60:                            ; preds = %if.end.i.i58, %if.end.i56.phy_base_write.exit60_crit_edge
  %. = select i1 %tobool.not, i32 0, i32 -110
  %retval.0 = select i1 %tobool10.not, i32 %., i32 -5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phy_update_mcb_s6g(ptr noundef %phydev, i32 noundef %reg, i8 noundef zeroext %mcb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %mcb to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %shl.i, 1073741824
  %call.i = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef %reg, i32 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__phy_write_mcb_s6g.exit_crit_edge

entry.__phy_write_mcb_s6g.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__phy_write_mcb_s6g.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -50, %0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %call2.i = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, -1
  br i1 %cmp.i, label %do.body.i.__phy_write_mcb_s6g.exit_crit_edge, label %do.cond.i

do.body.i.__phy_write_mcb_s6g.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__phy_write_mcb_s6g.exit

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp6.i = icmp sgt i32 %sub.i, -1
  %and.i = and i32 %call2.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %..i = select i1 %tobool8.not.i, i32 0, i32 -110
  br label %__phy_write_mcb_s6g.exit

__phy_write_mcb_s6g.exit:                         ; preds = %do.end.i, %do.body.i.__phy_write_mcb_s6g.exit_crit_edge, %entry.__phy_write_mcb_s6g.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__phy_write_mcb_s6g.exit_crit_edge ], [ %..i, %do.end.i ], [ -5, %do.body.i.__phy_write_mcb_s6g.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phy_commit_mcb_s6g(ptr noundef %phydev, i32 noundef %reg, i8 noundef zeroext %mcb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %mcb to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %shl.i, -2147483648
  %call.i = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef %reg, i32 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__phy_write_mcb_s6g.exit_crit_edge

entry.__phy_write_mcb_s6g.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__phy_write_mcb_s6g.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -50, %0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %call2.i = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, -1
  br i1 %cmp.i, label %do.body.i.__phy_write_mcb_s6g.exit_crit_edge, label %do.cond.i

do.body.i.__phy_write_mcb_s6g.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__phy_write_mcb_s6g.exit

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp6.i = icmp sgt i32 %sub.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %tobool8.not.i = icmp sgt i32 %call2.i, -1
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %..i = select i1 %tobool8.not.i, i32 0, i32 -110
  br label %__phy_write_mcb_s6g.exit

__phy_write_mcb_s6g.exit:                         ; preds = %do.end.i, %do.body.i.__phy_write_mcb_s6g.exit_crit_edge, %entry.__phy_write_mcb_s6g.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__phy_write_mcb_s6g.exit_crit_edge ], [ %..i, %do.end.i ], [ -5, %do.body.i.__phy_write_mcb_s6g.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @vsc85xx_driver, i32 noundef 14, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_drivers_unregister(ptr noundef nonnull @vsc85xx_driver, i32 noundef 14) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_config_init(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mdix_ctrl.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %2 = ptrtoint ptr %mdix_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %mdix_ctrl.i, align 1
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %3 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface.i, align 4
  %5 = add i32 %4, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %lock.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #10
  %7 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface.i, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %switch.i.i = icmp eq i32 %9, 10
  %reg_val.0.i.i = select i1 %switch.i.i, i16 64, i16 0
  %10 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %8, label %if.then.i.vsc85xx_rgmii_set_skews.exit.i_crit_edge [
    i32 12, label %if.then.i.if.then21.i.i_crit_edge
    i32 10, label %if.then.i.if.then21.i.i_crit_edge102
  ]

if.then.i.if.then21.i.i_crit_edge102:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i.i

if.then.i.if.then21.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i.i

if.then.i.vsc85xx_rgmii_set_skews.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_rgmii_set_skews.exit.i

if.then21.i.i:                                    ; preds = %if.then.i.if.then21.i.i_crit_edge, %if.then.i.if.then21.i.i_crit_edge102
  %or25.i.i = or i16 %reg_val.0.i.i, 4
  br label %vsc85xx_rgmii_set_skews.exit.i

vsc85xx_rgmii_set_skews.exit.i:                   ; preds = %if.then21.i.i, %if.then.i.vsc85xx_rgmii_set_skews.exit.i_crit_edge
  %reg_val.1.i.i = phi i16 [ %or25.i.i, %if.then21.i.i ], [ %reg_val.0.i.i, %if.then.i.vsc85xx_rgmii_set_skews.exit.i_crit_edge ]
  %call.i.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 20, i16 noundef zeroext 119, i16 noundef zeroext %reg_val.1.i.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.endthread-pre-split, label %vsc85xx_rgmii_set_skews.exit.i.cleanup_crit_edge

vsc85xx_rgmii_set_skews.exit.i.cleanup_crit_edge: ; preds = %vsc85xx_rgmii_set_skews.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.endthread-pre-split:                           ; preds = %vsc85xx_rgmii_set_skews.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %interface.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %12 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %4, %entry.if.end_crit_edge ]
  %lock.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %13 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %15 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i.i, align 8
  %call.i.i70 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 23) #10
  %17 = trunc i32 %call.i.i70 to i16
  %conv2.i = and i16 %17, -6145
  %18 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %12, label %if.end.vsc85xx_mac_if_set.exit.thread_crit_edge [
    i32 12, label %if.end.sw.bb.i_crit_edge
    i32 11, label %if.end.sw.bb.i_crit_edge103
    i32 10, label %if.end.sw.bb.i_crit_edge104
    i32 9, label %if.end.sw.bb.i_crit_edge105
    i32 7, label %sw.bb5.i
    i32 2, label %if.end.sw.epilog.i_crit_edge
    i32 3, label %if.end.sw.epilog.i_crit_edge106
  ]

if.end.sw.epilog.i_crit_edge106:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.sw.bb.i_crit_edge105:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge104:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge103:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.vsc85xx_mac_if_set.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_mac_if_set.exit.thread

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge103, %if.end.sw.bb.i_crit_edge104, %if.end.sw.bb.i_crit_edge105
  %19 = or i16 %conv2.i, 4096
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = or i16 %conv2.i, 2048
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb.i, %if.end.sw.epilog.i_crit_edge, %if.end.sw.epilog.i_crit_edge106
  %reg_val.0.i = phi i16 [ %20, %sw.bb5.i ], [ %19, %sw.bb.i ], [ %conv2.i, %if.end.sw.epilog.i_crit_edge ], [ %conv2.i, %if.end.sw.epilog.i_crit_edge106 ]
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 8
  %23 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i, align 8
  %call.i27.i = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 23, i16 noundef zeroext %reg_val.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool.not.i71 = icmp eq i32 %call.i27.i, 0
  br i1 %tobool.not.i71, label %vsc85xx_mac_if_set.exit, label %sw.epilog.i.vsc85xx_mac_if_set.exit.thread_crit_edge

sw.epilog.i.vsc85xx_mac_if_set.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_mac_if_set.exit.thread

vsc85xx_mac_if_set.exit.thread:                   ; preds = %sw.epilog.i.vsc85xx_mac_if_set.exit.thread_crit_edge, %if.end.vsc85xx_mac_if_set.exit.thread_crit_edge
  %rc.0.i.ph = phi i32 [ -22, %if.end.vsc85xx_mac_if_set.exit.thread_crit_edge ], [ %call.i27.i, %sw.epilog.i.vsc85xx_mac_if_set.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  br label %cleanup

vsc85xx_mac_if_set.exit:                          ; preds = %sw.epilog.i
  %call14.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool2.not = icmp eq i32 %call14.i, 0
  br i1 %tobool2.not, label %if.end4, label %vsc85xx_mac_if_set.exit.cleanup_crit_edge

vsc85xx_mac_if_set.exit.cleanup_crit_edge:        ; preds = %vsc85xx_mac_if_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %vsc85xx_mac_if_set.exit
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %27 = trunc i32 %26 to i16
  %conv.i = shl i16 %27, 5
  %shl.i = and i16 %conv.i, 8160
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 27, i16 noundef zeroext 224, i16 noundef zeroext %shl.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %28 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drv, align 8
  %phy_id9 = getelementptr inbounds %struct.phy_driver, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %phy_id9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phy_id9, align 4
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phy_id_mask, align 4
  %and = and i32 %33, %31
  %34 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and, label %if.end8.if.end25_crit_edge [
    i32 460144, label %if.end8.if.then20_crit_edge
    i32 460656, label %if.end8.if.then20_crit_edge107
    i32 460128, label %if.end8.if.then20_crit_edge108
    i32 460640, label %if.end8.if.then20_crit_edge109
  ]

if.end8.if.then20_crit_edge109:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end8.if.then20_crit_edge108:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end8.if.then20_crit_edge107:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end8.if.then20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %if.end8.if.then20_crit_edge, %if.end8.if.then20_crit_edge107, %if.end8.if.then20_crit_edge108, %if.end8.if.then20_crit_edge109
  %call.i73 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 0, i32 noundef 22, i16 noundef zeroext 1, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i = icmp slt i32 %call.i73, 0
  br i1 %cmp.i, label %if.then20.cleanup_crit_edge, label %if.end.i74

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i74:                                       ; preds = %if.then20
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 10800, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 1024) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i74.cleanup_crit_edge, label %if.end4.i

if.end.i74.cleanup_crit_edge:                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i74
  %call5.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 10800, i32 noundef 5, i16 noundef zeroext 2560, i16 noundef zeroext 3584) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.cleanup_crit_edge, label %if.end8.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 10800, i32 noundef 8, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.cleanup_crit_edge, label %if.end12.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %call13.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 21173) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.vsc8531_pre_init_seq_set.exit_crit_edge, label %for.cond.preheader.i

if.end12.i.vsc8531_pre_init_seq_set.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc8531_pre_init_seq_set.exit

for.cond.preheader.i:                             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i.i, align 8
  %37 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.i.i, align 8
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %36, i32 noundef %38, i32 noundef 18, i16 noundef zeroext 104) #10
  %39 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i, align 8
  %41 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i.i, align 8
  %call.i12.i.i = tail call i32 @__mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 17, i16 noundef zeroext -30336) #10
  %43 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i, align 8
  %45 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.i, align 8
  %call.i15.i.i = tail call i32 @__mdiobus_write(ptr noundef %44, i32 noundef %46, i32 noundef 16, i16 noundef zeroext -28784) #10
  %47 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i.i, align 8
  %49 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr.i.i, align 8
  %call.i.i.1.i = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %50, i32 noundef 18, i16 noundef zeroext 0) #10
  %51 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i.i, align 8
  %53 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr.i.i, align 8
  %call.i12.i.1.i = tail call i32 @__mdiobus_write(ptr noundef %52, i32 noundef %54, i32 noundef 17, i16 noundef zeroext 3) #10
  %55 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i.i, align 8
  %57 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i.i, align 8
  %call.i15.i.1.i = tail call i32 @__mdiobus_write(ptr noundef %56, i32 noundef %58, i32 noundef 16, i16 noundef zeroext -31082) #10
  %59 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i.i, align 8
  %61 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i.i, align 8
  %call.i.i.2.i = tail call i32 @__mdiobus_write(ptr noundef %60, i32 noundef %62, i32 noundef 18, i16 noundef zeroext 80) #10
  %63 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i.i, align 8
  %65 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr.i.i, align 8
  %call.i12.i.2.i = tail call i32 @__mdiobus_write(ptr noundef %64, i32 noundef %66, i32 noundef 17, i16 noundef zeroext 4111) #10
  %67 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i.i, align 8
  %69 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %addr.i.i, align 8
  %call.i15.i.2.i = tail call i32 @__mdiobus_write(ptr noundef %68, i32 noundef %70, i32 noundef 16, i16 noundef zeroext -30726) #10
  %71 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i.i, align 8
  %73 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr.i.i, align 8
  %call.i.i.3.i = tail call i32 @__mdiobus_write(ptr noundef %72, i32 noundef %74, i32 noundef 18, i16 noundef zeroext 0) #10
  %75 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i.i, align 8
  %77 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr.i.i, align 8
  %call.i12.i.3.i = tail call i32 @__mdiobus_write(ptr noundef %76, i32 noundef %78, i32 noundef 17, i16 noundef zeroext 4) #10
  %79 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i.i, align 8
  %81 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr.i.i, align 8
  %call.i15.i.3.i = tail call i32 @__mdiobus_write(ptr noundef %80, i32 noundef %82, i32 noundef 16, i16 noundef zeroext -27002) #10
  br label %vsc8531_pre_init_seq_set.exit

vsc8531_pre_init_seq_set.exit:                    ; preds = %for.cond.preheader.i, %if.end12.i.vsc8531_pre_init_seq_set.exit_crit_edge
  %call19.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call13.i, i32 noundef %call13.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool22.not = icmp eq i32 %call19.i, 0
  br i1 %tobool22.not, label %vsc8531_pre_init_seq_set.exit.if.end25_crit_edge, label %vsc8531_pre_init_seq_set.exit.cleanup_crit_edge

vsc8531_pre_init_seq_set.exit.cleanup_crit_edge:  ; preds = %vsc8531_pre_init_seq_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

vsc8531_pre_init_seq_set.exit.if.end25_crit_edge: ; preds = %vsc8531_pre_init_seq_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %vsc8531_pre_init_seq_set.exit.if.end25_crit_edge, %if.end8.if.end25_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %call.i78 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 21173) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  br i1 %cmp.i79, label %if.end25.vsc85xx_eee_init_seq_set.exit_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.vsc85xx_eee_init_seq_set.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_eee_init_seq_set.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end25.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [18 x %struct.reg_val], ptr @vsc85xx_eee_init_seq_set.init_eee, i32 0, i32 %i.015.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx.i, align 4
  %val.i = getelementptr [18 x %struct.reg_val], ptr @vsc85xx_eee_init_seq_set.init_eee, i32 0, i32 %i.015.i, i32 1
  %85 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i, align 4
  %shr.i.i = lshr i32 %86, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  %87 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i.i, align 8
  %89 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr.i.i, align 8
  %call.i.i.i83 = tail call i32 @__mdiobus_write(ptr noundef %88, i32 noundef %90, i32 noundef 18, i16 noundef zeroext %conv.i.i) #10
  %conv1.i.i = trunc i32 %86 to i16
  %91 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus.i.i, align 8
  %93 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr.i.i, align 8
  %call.i12.i.i84 = tail call i32 @__mdiobus_write(ptr noundef %92, i32 noundef %94, i32 noundef 17, i16 noundef zeroext %conv1.i.i) #10
  %95 = or i16 %84, -32768
  %96 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i.i, align 8
  %98 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i.i, align 8
  %call.i15.i.i85 = tail call i32 @__mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 16, i16 noundef zeroext %95) #10
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %for.body.i.vsc85xx_eee_init_seq_set.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.vsc85xx_eee_init_seq_set.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_eee_init_seq_set.exit

vsc85xx_eee_init_seq_set.exit:                    ; preds = %for.body.i.vsc85xx_eee_init_seq_set.exit_crit_edge, %if.end25.vsc85xx_eee_init_seq_set.exit_crit_edge
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i78, i32 noundef %call.i78) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool27.not = icmp eq i32 %call3.i, 0
  br i1 %tobool27.not, label %for.cond.preheader, label %vsc85xx_eee_init_seq_set.exit.cleanup_crit_edge

vsc85xx_eee_init_seq_set.exit.cleanup_crit_edge:  ; preds = %vsc85xx_eee_init_seq_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %vsc85xx_eee_init_seq_set.exit
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 3
  %100 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %nleds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp3199.not = icmp eq i8 %101, 0
  br i1 %cmp3199.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0100, 1
  %102 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nleds, align 4
  %conv30 = zext i8 %103 to i32
  %cmp31 = icmp ult i32 %inc, %conv30
  br i1 %cmp31, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0100 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsc8531_private, ptr %1, i32 0, i32 2, i32 %i.0100
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %106 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus.i.i, align 8
  %108 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %addr.i.i, align 8
  %call.i.i90 = tail call i32 @mdiobus_read(ptr noundef %107, i32 noundef %109, i32 noundef 29) #10
  %conv1.i = shl i32 %i.0100, 2
  %shl.i91 = shl i32 15, %conv1.i
  %neg.i = xor i32 %shl.i91, -1
  %and.i = and i32 %call.i.i90, %neg.i
  %conv5.i = and i32 %105, 255
  %shl8.i = shl i32 %conv5.i, %conv1.i
  %and12.i = and i32 %shl8.i, %shl.i91
  %or.i = or i32 %and.i, %and12.i
  %conv14.i = trunc i32 %or.i to i16
  %110 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i.i, align 8
  %112 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %addr.i.i, align 8
  %call.i26.i = tail call i32 @mdiobus_write(ptr noundef %111, i32 noundef %113, i32 noundef 29, i16 noundef zeroext %conv14.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool36.not = icmp eq i32 %call.i26.i, 0
  br i1 %tobool36.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %vsc85xx_eee_init_seq_set.exit.cleanup_crit_edge, %vsc8531_pre_init_seq_set.exit.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i74.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %vsc85xx_mac_if_set.exit.cleanup_crit_edge, %vsc85xx_mac_if_set.exit.thread, %vsc85xx_rgmii_set_skews.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14.i, %vsc85xx_mac_if_set.exit.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %call19.i, %vsc8531_pre_init_seq_set.exit.cleanup_crit_edge ], [ %call3.i, %vsc85xx_eee_init_seq_set.exit.cleanup_crit_edge ], [ %call.i.i, %vsc85xx_rgmii_set_skews.exit.i.cleanup_crit_edge ], [ %rc.0.i.ph, %vsc85xx_mac_if_set.exit.thread ], [ %call9.i, %if.end8.i.cleanup_crit_edge ], [ %call5.i, %if.end4.i.cleanup_crit_edge ], [ %call1.i, %if.end.i74.cleanup_crit_edge ], [ %call.i73, %if.then20.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call.i26.i, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_probe(ptr noundef %phydev) #0 align 64 {
entry:
  %vdd.i = alloca i32, align 4
  %sd.i = alloca i32, align 4
  %default_mode = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %default_mode) #10
  %0 = ptrtoint ptr %default_mode to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4294967298, ptr %default_mode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vdd.i) #10
  %1 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vdd.i, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sd.i) #10
  %2 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sd.i, align 4, !annotation !180
  %of_node2.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node2.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.vsc85xx_edge_rate_magic_get.exit_crit_edge, label %if.end.i

entry.vsc85xx_edge_rate_magic_get.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_edge_rate_magic_get.exit

if.end.i:                                         ; preds = %entry
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, ptr noundef nonnull %vdd.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3300, ptr %vdd.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %call.i.i43.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.21, ptr noundef nonnull %sd.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i43.i)
  %tobool7.not.i = icmp sgt i32 %call.i.i43.i, -1
  br i1 %tobool7.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then8.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sd.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end5.i.if.end9.i_crit_edge
  %7 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vdd.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %8, label %if.end9.i.vsc85xx_edge_rate_magic_get.exit_crit_edge [
    i32 3300, label %for.cond12.preheader.i
    i32 2500, label %for.cond12.preheader.1.i
    i32 1800, label %for.cond12.preheader.2.i
    i32 1500, label %for.cond12.preheader.3.i
  ]

if.end9.i.vsc85xx_edge_rate_magic_get.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_edge_rate_magic_get.exit

for.cond12.preheader.i:                           ; preds = %if.end9.i
  %10 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %11, label %for.cond12.preheader.i.vsc85xx_edge_rate_magic_get.exit_crit_edge [
    i32 0, label %for.cond12.preheader.i.if.end_crit_edge
    i32 2, label %cleanup.fold.split.i
    i32 4, label %cleanup.fold.split61.i
    i32 7, label %cleanup.fold.split62.i
    i32 10, label %cleanup.fold.split63.i
    i32 17, label %cleanup.fold.split64.i
    i32 29, label %cleanup.fold.split65.i
    i32 53, label %cleanup.fold.split66.i
  ]

for.cond12.preheader.i.if.end_crit_edge:          ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond12.preheader.i.vsc85xx_edge_rate_magic_get.exit_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_edge_rate_magic_get.exit

for.cond12.preheader.1.i:                         ; preds = %if.end9.i
  %13 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %14, label %for.cond12.preheader.1.i.vsc85xx_edge_rate_magic_get.exit_crit_edge [
    i32 0, label %for.cond12.preheader.1.i.if.end_crit_edge
    i32 3, label %cleanup.fold.split67.i
    i32 6, label %cleanup.fold.split68.i
    i32 10, label %cleanup.fold.split69.i
    i32 14, label %cleanup.fold.split70.i
    i32 23, label %cleanup.fold.split71.i
    i32 37, label %cleanup.fold.split72.i
    i32 63, label %cleanup.fold.split73.i
  ]

for.cond12.preheader.1.i.if.end_crit_edge:        ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond12.preheader.1.i.vsc85xx_edge_rate_magic_get.exit_crit_edge: ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_edge_rate_magic_get.exit

for.cond12.preheader.2.i:                         ; preds = %if.end9.i
  %16 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %17, label %for.cond12.preheader.2.i.vsc85xx_edge_rate_magic_get.exit_crit_edge [
    i32 0, label %for.cond12.preheader.2.i.if.end_crit_edge
    i32 5, label %cleanup.fold.split74.i
    i32 9, label %cleanup.fold.split75.i
    i32 16, label %cleanup.fold.split76.i
    i32 23, label %cleanup.fold.split77.i
    i32 35, label %cleanup.fold.split78.i
    i32 52, label %cleanup.fold.split79.i
    i32 76, label %cleanup.fold.split80.i
  ]

for.cond12.preheader.2.i.if.end_crit_edge:        ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond12.preheader.2.i.vsc85xx_edge_rate_magic_get.exit_crit_edge: ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_edge_rate_magic_get.exit

for.cond12.preheader.3.i:                         ; preds = %if.end9.i
  %19 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sd.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %20, label %for.cond12.preheader.3.i.vsc85xx_edge_rate_magic_get.exit_crit_edge [
    i32 0, label %for.cond12.preheader.3.i.if.end_crit_edge
    i32 6, label %cleanup.fold.split81.i
    i32 14, label %cleanup.fold.split82.i
    i32 21, label %cleanup.fold.split83.i
    i32 29, label %cleanup.fold.split84.i
    i32 42, label %cleanup.fold.split85.i
    i32 58, label %cleanup.fold.split86.i
    i32 77, label %cleanup.fold.split87.i
  ]

for.cond12.preheader.3.i.if.end_crit_edge:        ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond12.preheader.3.i.vsc85xx_edge_rate_magic_get.exit_crit_edge: ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_edge_rate_magic_get.exit

cleanup.fold.split.i:                             ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split61.i:                           ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split62.i:                           ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split63.i:                           ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split64.i:                           ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split65.i:                           ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split66.i:                           ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split67.i:                           ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split68.i:                           ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split69.i:                           ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split70.i:                           ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split71.i:                           ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split72.i:                           ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split73.i:                           ; preds = %for.cond12.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split74.i:                           ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split75.i:                           ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split76.i:                           ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split77.i:                           ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split78.i:                           ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split79.i:                           ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split80.i:                           ; preds = %for.cond12.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split81.i:                           ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split82.i:                           ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split83.i:                           ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split84.i:                           ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split85.i:                           ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split86.i:                           ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.fold.split87.i:                           ; preds = %for.cond12.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

vsc85xx_edge_rate_magic_get.exit:                 ; preds = %for.cond12.preheader.3.i.vsc85xx_edge_rate_magic_get.exit_crit_edge, %for.cond12.preheader.2.i.vsc85xx_edge_rate_magic_get.exit_crit_edge, %for.cond12.preheader.1.i.vsc85xx_edge_rate_magic_get.exit_crit_edge, %for.cond12.preheader.i.vsc85xx_edge_rate_magic_get.exit_crit_edge, %if.end9.i.vsc85xx_edge_rate_magic_get.exit_crit_edge, %entry.vsc85xx_edge_rate_magic_get.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.vsc85xx_edge_rate_magic_get.exit_crit_edge ], [ -22, %for.cond12.preheader.3.i.vsc85xx_edge_rate_magic_get.exit_crit_edge ], [ -22, %for.cond12.preheader.2.i.vsc85xx_edge_rate_magic_get.exit_crit_edge ], [ -22, %for.cond12.preheader.1.i.vsc85xx_edge_rate_magic_get.exit_crit_edge ], [ -22, %for.cond12.preheader.i.vsc85xx_edge_rate_magic_get.exit_crit_edge ], [ -22, %if.end9.i.vsc85xx_edge_rate_magic_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vdd.i) #10
  br label %cleanup

if.end:                                           ; preds = %cleanup.fold.split87.i, %cleanup.fold.split86.i, %cleanup.fold.split85.i, %cleanup.fold.split84.i, %cleanup.fold.split83.i, %cleanup.fold.split82.i, %cleanup.fold.split81.i, %cleanup.fold.split80.i, %cleanup.fold.split79.i, %cleanup.fold.split78.i, %cleanup.fold.split77.i, %cleanup.fold.split76.i, %cleanup.fold.split75.i, %cleanup.fold.split74.i, %cleanup.fold.split73.i, %cleanup.fold.split72.i, %cleanup.fold.split71.i, %cleanup.fold.split70.i, %cleanup.fold.split69.i, %cleanup.fold.split68.i, %cleanup.fold.split67.i, %cleanup.fold.split66.i, %cleanup.fold.split65.i, %cleanup.fold.split64.i, %cleanup.fold.split63.i, %cleanup.fold.split62.i, %cleanup.fold.split61.i, %cleanup.fold.split.i, %for.cond12.preheader.3.i.if.end_crit_edge, %for.cond12.preheader.2.i.if.end_crit_edge, %for.cond12.preheader.1.i.if.end_crit_edge, %for.cond12.preheader.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %cleanup.fold.split87.i ], [ 1, %cleanup.fold.split86.i ], [ 2, %cleanup.fold.split85.i ], [ 3, %cleanup.fold.split84.i ], [ 4, %cleanup.fold.split83.i ], [ 5, %cleanup.fold.split82.i ], [ 6, %cleanup.fold.split81.i ], [ 0, %cleanup.fold.split80.i ], [ 1, %cleanup.fold.split79.i ], [ 2, %cleanup.fold.split78.i ], [ 3, %cleanup.fold.split77.i ], [ 4, %cleanup.fold.split76.i ], [ 5, %cleanup.fold.split75.i ], [ 6, %cleanup.fold.split74.i ], [ 0, %cleanup.fold.split73.i ], [ 1, %cleanup.fold.split72.i ], [ 2, %cleanup.fold.split71.i ], [ 3, %cleanup.fold.split70.i ], [ 4, %cleanup.fold.split69.i ], [ 5, %cleanup.fold.split68.i ], [ 6, %cleanup.fold.split67.i ], [ 0, %cleanup.fold.split66.i ], [ 1, %cleanup.fold.split65.i ], [ 2, %cleanup.fold.split64.i ], [ 3, %cleanup.fold.split63.i ], [ 4, %cleanup.fold.split62.i ], [ 5, %cleanup.fold.split61.i ], [ 6, %cleanup.fold.split.i ], [ 7, %for.cond12.preheader.3.i.if.end_crit_edge ], [ 7, %for.cond12.preheader.2.i.if.end_crit_edge ], [ 7, %for.cond12.preheader.1.i.if.end_crit_edge ], [ 7, %for.cond12.preheader.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vdd.i) #10
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 296, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %priv, align 8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.ph, ptr %call.i, align 4
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %nleds to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %nleds, align 4
  %supp_led_modes = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %supp_led_modes to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -2177, ptr %supp_led_modes, align 4
  %hw_stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vsc85xx_hw_stats, ptr %hw_stats, align 4
  %nstats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %nstats to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %nstats, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 40, i32 noundef 3520) #10
  %stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i, ptr %stats, align 4
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %if.end3.cleanup_crit_edge, label %if.end12

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call fastcc i32 @vsc85xx_dt_led_modes_get(ptr noundef %phydev, ptr noundef nonnull %default_mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %vsc85xx_edge_rate_magic_get.exit
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %retval.0.i, %vsc85xx_edge_rate_magic_get.exit ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %default_mode) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_config_aneg(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl, align 1
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 18) #10
  %6 = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %7 = icmp ult i8 %6, 2
  %8 = trunc i32 %call.i.i to i16
  %conv9.i = and i16 %8, -177
  %masksel.i = select i1 %7, i16 176, i16 0
  %reg_val.0.i = or i16 %conv9.i, %masksel.i
  %9 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i, align 8
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i, align 8
  %call.i45.i = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 18, i16 noundef zeroext %reg_val.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool.not.i = icmp eq i32 %call.i45.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %entry.vsc85xx_mdix_set.exit_crit_edge

entry.vsc85xx_mdix_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_mdix_set.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp4.i = icmp eq i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  %spec.select.i = select i1 %cmp4.i, i16 12, i16 0
  %reg_val.1.i = select i1 %cmp.i, i16 8, i16 %spec.select.i
  %call24.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 19, i16 noundef zeroext 12, i16 noundef zeroext %reg_val.1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end12.i.cleanup_crit_edge, label %if.end28.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call29.i = tail call i32 @genphy_restart_aneg(ptr noundef %phydev) #10
  br label %vsc85xx_mdix_set.exit

vsc85xx_mdix_set.exit:                            ; preds = %if.end28.i, %entry.vsc85xx_mdix_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call29.i, %if.end28.i ], [ %call.i45.i, %entry.vsc85xx_mdix_set.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %vsc85xx_mdix_set.exit.cleanup_crit_edge, label %if.end

vsc85xx_mdix_set.exit.cleanup_crit_edge:          ; preds = %vsc85xx_mdix_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %vsc85xx_mdix_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vsc85xx_mdix_set.exit.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %retval.0.i, %vsc85xx_mdix_set.exit.cleanup_crit_edge ], [ %call24.i, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_read_status(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 28) #10
  %and.i = and i32 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 1, i8 2
  %4 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %..i, ptr %mdix, align 1
  %call1 = tail call i32 @genphy_read_status(ptr noundef %phydev) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_config_intr(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i26 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i26, align 8
  %addr.i27 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i27, align 8
  br i1 %cmp.not, label %if.else, label %vsc85xx_ack_interrupt.exit

vsc85xx_ack_interrupt.exit:                       ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 26) #10
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %vsc85xx_ack_interrupt.exit.cleanup_crit_edge

vsc85xx_ack_interrupt.exit.cleanup_crit_edge:     ; preds = %vsc85xx_ack_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %vsc85xx_ack_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vsc8584_config_macsec_intr(ptr noundef %phydev) #10
  tail call void @vsc8584_config_ts_intr(ptr noundef %phydev) #10
  %6 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i26, align 8
  %8 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i27, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 25, i16 noundef zeroext -24544) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i28 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 25, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp4 = icmp slt i32 %call.i28, 0
  br i1 %cmp4, label %if.else.cleanup_crit_edge, label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.else
  %10 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i26, align 8
  %12 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i27, align 8
  %call.i31 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp8 = icmp slt i32 %call.i31, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i33 = load i16, ptr %interrupts, align 8
  %bf.clear.i34 = and i16 %bf.load.i33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear.i34)
  %cmp.not.i35 = icmp eq i16 %bf.clear.i34, 0
  br i1 %cmp.not.i35, label %if.end10.cleanup_crit_edge, label %if.end.i39

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i39:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %bus.i26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i26, align 8
  %17 = ptrtoint ptr %addr.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i27, align 8
  %call.i.i38 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 26) #10
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i38, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i39, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end, %vsc85xx_ack_interrupt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %vsc85xx_ack_interrupt.exit.cleanup_crit_edge ], [ %call.i28, %if.else.cleanup_crit_edge ], [ %call.i31, %if.end6.cleanup_crit_edge ], [ %call.i, %if.end ], [ 0, %if.end10.cleanup_crit_edge ], [ %19, %if.end.i39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_handle_interrupt(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_error(ptr noundef %phydev) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 40992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_trigger_machine(ptr noundef %phydev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_wol_set(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %0 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attached_dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %lock = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %call) #10
  br label %out_unlock

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %7 to i16
  %shl = shl nuw i16 %conv6, 8
  %arrayidx10 = getelementptr i8, ptr %3, i32 5
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i16
  %or = or i16 %shl, %conv11
  %arrayidx.1 = getelementptr i8, ptr %3, i32 2
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %conv6.1 = zext i8 %11 to i16
  %shl.1 = shl nuw i16 %conv6.1, 8
  %arrayidx10.1 = getelementptr i8, ptr %3, i32 3
  %12 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10.1, align 1
  %conv11.1 = zext i8 %13 to i16
  %or.1 = or i16 %shl.1, %conv11.1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  %conv6.2 = zext i8 %15 to i16
  %shl.2 = shl nuw i16 %conv6.2, 8
  %arrayidx10.2 = getelementptr i8, ptr %3, i32 1
  %16 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10.2, align 1
  %conv11.2 = zext i8 %17 to i16
  %or.2 = or i16 %shl.2, %conv11.2
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 21, i16 noundef zeroext %or) #10
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bus.i173 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %22 = ptrtoint ptr %bus.i173 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i173, align 8
  %addr.i174 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %24 = ptrtoint ptr %addr.i174 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i174, align 8
  %call.i175 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 21, i16 noundef zeroext 0) #10
  br label %if.end23

if.end23:                                         ; preds = %if.else, %for.body.preheader
  %bus.i173.sink233 = phi ptr [ %bus.i173, %if.else ], [ %bus.i, %for.body.preheader ]
  %addr.i174.sink232 = phi ptr [ %addr.i174, %if.else ], [ %addr.i, %for.body.preheader ]
  %.sink231 = phi i16 [ 0, %if.else ], [ %or.1, %for.body.preheader ]
  %.sink229 = phi i16 [ 0, %if.else ], [ %or.2, %for.body.preheader ]
  %26 = ptrtoint ptr %bus.i173.sink233 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i173.sink233, align 8
  %28 = ptrtoint ptr %addr.i174.sink232 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i174.sink232, align 8
  %call.i178 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 22, i16 noundef zeroext %.sink231) #10
  %30 = ptrtoint ptr %bus.i173.sink233 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i173.sink233, align 8
  %32 = ptrtoint ptr %addr.i174.sink232 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i174.sink232, align 8
  %call.i181 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 23, i16 noundef zeroext %.sink229) #10
  %34 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wolopts, align 4
  %and25 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else59, label %for.body32.preheader

for.body32.preheader:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %37 to i16
  %shl39 = shl nuw i16 %conv38, 8
  %arrayidx44 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %39 to i16
  %or46 = or i16 %shl39, %conv45
  %arrayidx37.1 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx37.1, align 1
  %conv38.1 = zext i8 %41 to i16
  %shl39.1 = shl nuw i16 %conv38.1, 8
  %arrayidx44.1 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx44.1, align 1
  %conv45.1 = zext i8 %43 to i16
  %or46.1 = or i16 %shl39.1, %conv45.1
  %arrayidx37.2 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 0
  %44 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx37.2, align 1
  %conv38.2 = zext i8 %45 to i16
  %shl39.2 = shl nuw i16 %conv38.2, 8
  %arrayidx44.2 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx44.2, align 1
  %conv45.2 = zext i8 %47 to i16
  %or46.2 = or i16 %shl39.2, %conv45.2
  %bus.i182 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %48 = ptrtoint ptr %bus.i182 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i182, align 8
  %addr.i183 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %50 = ptrtoint ptr %addr.i183 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i183, align 8
  %call.i184 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 24, i16 noundef zeroext %or46) #10
  br label %if.end63

if.else59:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %bus.i191 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %52 = ptrtoint ptr %bus.i191 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i191, align 8
  %addr.i192 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %54 = ptrtoint ptr %addr.i192 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i192, align 8
  %call.i193 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 24, i16 noundef zeroext 0) #10
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %for.body32.preheader
  %bus.i191.sink239 = phi ptr [ %bus.i191, %if.else59 ], [ %bus.i182, %for.body32.preheader ]
  %addr.i192.sink238 = phi ptr [ %addr.i192, %if.else59 ], [ %addr.i183, %for.body32.preheader ]
  %.sink237 = phi i16 [ 0, %if.else59 ], [ %or46.1, %for.body32.preheader ]
  %.sink235 = phi i16 [ 0, %if.else59 ], [ %or46.2, %for.body32.preheader ]
  %56 = ptrtoint ptr %bus.i191.sink239 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i191.sink239, align 8
  %58 = ptrtoint ptr %addr.i192.sink238 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i192.sink238, align 8
  %call.i196 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 25, i16 noundef zeroext %.sink237) #10
  %60 = ptrtoint ptr %bus.i191.sink239 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i191.sink239, align 8
  %62 = ptrtoint ptr %addr.i192.sink238 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i192.sink238, align 8
  %call.i199 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 26, i16 noundef zeroext %.sink235) #10
  %bus.i200 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %64 = ptrtoint ptr %bus.i200 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i200, align 8
  %addr.i201 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %66 = ptrtoint ptr %addr.i201 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i201, align 8
  %call.i202 = tail call i32 @__mdiobus_read(ptr noundef %65, i32 noundef %67, i32 noundef 27) #10
  %68 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wolopts, align 4
  %70 = trunc i32 %call.i202 to i16
  %conv76 = and i16 %70, 32767
  %71 = trunc i32 %69 to i16
  %72 = shl i16 %71, 9
  %73 = and i16 %72, -32768
  %reg_val.0 = or i16 %73, %conv76
  %74 = ptrtoint ptr %bus.i200 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i200, align 8
  %76 = ptrtoint ptr %addr.i201 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addr.i201, align 8
  %call.i205 = tail call i32 @__mdiobus_write(ptr noundef %75, i32 noundef %77, i32 noundef 27, i16 noundef zeroext %reg_val.0) #10
  %call81 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end63.out_unlock_crit_edge, label %if.end85

if.end63.out_unlock_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end85:                                         ; preds = %if.end63
  %78 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wolopts, align 4
  %and87 = and i32 %79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %80 = ptrtoint ptr %bus.i200 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i200, align 8
  %82 = ptrtoint ptr %addr.i201 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i201, align 8
  %call.i214 = tail call i32 @mdiobus_read(ptr noundef %81, i32 noundef %83, i32 noundef 25) #10
  %84 = trunc i32 %call.i214 to i16
  br i1 %tobool88.not, label %if.else99, label %if.then89

if.then89:                                        ; preds = %if.end85
  %conv94 = or i16 %84, 64
  %85 = ptrtoint ptr %bus.i200 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus.i200, align 8
  %87 = ptrtoint ptr %addr.i201 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr.i201, align 8
  %call.i211 = tail call i32 @mdiobus_write(ptr noundef %86, i32 noundef %88, i32 noundef 25, i16 noundef zeroext %conv94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool96.not = icmp eq i32 %call.i211, 0
  br i1 %tobool96.not, label %if.then89.if.end109_crit_edge, label %if.then89.out_unlock_crit_edge

if.then89.out_unlock_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then89.if.end109_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.else99:                                        ; preds = %if.end85
  %conv104 = and i16 %84, -65
  %89 = ptrtoint ptr %bus.i200 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus.i200, align 8
  %91 = ptrtoint ptr %addr.i201 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %addr.i201, align 8
  %call.i217 = tail call i32 @mdiobus_write(ptr noundef %90, i32 noundef %92, i32 noundef 25, i16 noundef zeroext %conv104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool106.not = icmp eq i32 %call.i217, 0
  br i1 %tobool106.not, label %if.else99.if.end109_crit_edge, label %if.else99.out_unlock_crit_edge

if.else99.out_unlock_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.else99.if.end109_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.end109:                                        ; preds = %if.else99.if.end109_crit_edge, %if.then89.if.end109_crit_edge
  %93 = ptrtoint ptr %bus.i200 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bus.i200, align 8
  %95 = ptrtoint ptr %addr.i201 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %addr.i201, align 8
  %call.i220 = tail call i32 @mdiobus_read(ptr noundef %94, i32 noundef %96, i32 noundef 26) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.end109, %if.else99.out_unlock_crit_edge, %if.then89.out_unlock_crit_edge, %if.end63.out_unlock_crit_edge, %if.then
  %rc.1 = phi i32 [ %call1, %if.then ], [ %call81, %if.end63.out_unlock_crit_edge ], [ %call.i211, %if.then89.out_unlock_crit_edge ], [ 0, %if.end109 ], [ %call.i217, %if.else99.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc85xx_wol_get(ptr noundef %phydev, ptr nocapture noundef %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 27) #10
  %and = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %or = or i32 %5, 64
  store i32 %or, ptr %wolopts, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %wolopts5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts5, align 4
  %and6 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.out_unlock_crit_edge, label %if.then8

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i61 = tail call i32 @__mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 24) #10
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i64 = tail call i32 @__mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 25) #10
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i67 = tail call i32 @__mdiobus_read(ptr noundef %17, i32 noundef %19, i32 noundef 26) #10
  %conv23 = trunc i32 %call.i61 to i8
  %arrayidx25 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv23, ptr %arrayidx25, align 1
  %21 = lshr i32 %call.i61, 8
  %conv30 = trunc i32 %21 to i8
  %arrayidx35 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %arrayidx35, align 1
  %conv23.1 = trunc i32 %call.i64 to i8
  %arrayidx25.1 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv23.1, ptr %arrayidx25.1, align 1
  %24 = lshr i32 %call.i64, 8
  %conv30.1 = trunc i32 %24 to i8
  %arrayidx35.1 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv30.1, ptr %arrayidx35.1, align 1
  %conv23.2 = trunc i32 %call.i67 to i8
  %arrayidx25.2 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv23.2, ptr %arrayidx25.2, align 1
  %27 = lshr i32 %call.i67, 8
  %conv30.2 = trunc i32 %27 to i8
  %arrayidx35.2 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 0
  %28 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv30.2, ptr %arrayidx35.2, align 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.then8, %if.end4.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %29 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  %call39 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %29) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_phy_read_page(ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 31) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_phy_write_page(ptr nocapture noundef readonly %phydev, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %page to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext %conv) #10
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc85xx_get_sset_count(ptr nocapture noundef readonly %phydev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nstats = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nstats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nstats, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc85xx_get_strings(ptr nocapture noundef readonly %phydev, ptr noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nstats = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nstats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nstats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hw_stats = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.09, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %4 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_stats, align 4
  %arrayidx = getelementptr %struct.vsc85xx_hw_stat, ptr %5, i32 %i.09
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strlcpy(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 32) #10
  %inc = add nuw nsw i32 %i.09, 1
  %8 = ptrtoint ptr %nstats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nstats, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc85xx_get_stats(ptr noundef %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nstats = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nstats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nstats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %vsc85xx_get_stat.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %vsc85xx_get_stat.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %hw_stats.i = getelementptr inbounds %struct.vsc8531_private, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_stats.i, align 4
  %page.i = getelementptr %struct.vsc85xx_hw_stat, ptr %7, i32 %i.09, i32 2
  %8 = ptrtoint ptr %page.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %page.i, align 2
  %conv.i = zext i16 %9 to i32
  %reg.i = getelementptr %struct.vsc85xx_hw_stat, ptr %7, i32 %i.09, i32 1
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg.i, align 4
  %conv4.i = zext i8 %11 to i32
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef %conv.i, i32 noundef %conv4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.vsc85xx_get_stat.exit_crit_edge, label %if.end.i

for.body.vsc85xx_get_stat.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_get_stat.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_stats.i, align 4
  %mask.i = getelementptr %struct.vsc85xx_hw_stat, ptr %13, i32 %i.09, i32 3
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mask.i, align 4
  %conv8.i = zext i16 %15 to i32
  %and.i = and i32 %call.i, %conv8.i
  %16 = zext i32 %and.i to i64
  %stats.i = getelementptr inbounds %struct.vsc8531_private, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats.i, align 4
  %arrayidx10.i = getelementptr i64, ptr %18, i32 %i.09
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx10.i, align 8
  %add.i = add i64 %20, %16
  store i64 %add.i, ptr %arrayidx10.i, align 8
  %21 = load ptr, ptr %stats.i, align 4
  %arrayidx12.i = getelementptr i64, ptr %21, i32 %i.09
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx12.i, align 8
  br label %vsc85xx_get_stat.exit

vsc85xx_get_stat.exit:                            ; preds = %if.end.i, %for.body.vsc85xx_get_stat.exit_crit_edge
  %retval.0.i = phi i64 [ %23, %if.end.i ], [ -1, %for.body.vsc85xx_get_stat.exit_crit_edge ]
  %arrayidx = getelementptr i64, ptr %data, i32 %i.09
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %retval.0.i, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.09, 1
  %25 = ptrtoint ptr %nstats to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nstats, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %vsc85xx_get_stat.exit.for.body_crit_edge, label %vsc85xx_get_stat.exit.cleanup_crit_edge

vsc85xx_get_stat.exit.cleanup_crit_edge:          ; preds = %vsc85xx_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

vsc85xx_get_stat.exit.for.body_crit_edge:         ; preds = %vsc85xx_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %vsc85xx_get_stat.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_get_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %2 = trunc i32 %call.i to i8
  %3 = lshr i8 %2, 2
  %4 = and i8 %3, 3
  %conv.i = add nuw nsw i8 %4, 2
  %storemerge.i = select i1 %tobool.not.i, i8 0, i8 %conv.i
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge.i, ptr %data, align 1
  br label %return

return:                                           ; preds = %if.end.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.i ], [ %call.i, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc85xx_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i = icmp eq i8 %3, -1
  br i1 %cmp.i, label %sw.bb.if.end14.i_crit_edge, label %if.else.i

sw.bb.if.end14.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp3.i = icmp ugt i8 %3, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp6.i = icmp eq i8 %3, 1
  %or.cond.i = or i1 %cmp3.i, %cmp6.i
  br i1 %or.cond.i, label %do.end.i, label %if.else9.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.30) #13
  br label %return

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else9.i.if.end14.i_crit_edge, label %if.then10.i

if.else9.i.if.end14.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = shl nuw nsw i8 %3, 2
  %shl.i = add nsw i8 %sub.i, -8
  %or.i = or i8 %shl.i, 16
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.else9.i.if.end14.i_crit_edge, %sw.bb.if.end14.i_crit_edge
  %count.addr.0.i = phi i8 [ %or.i, %if.then10.i ], [ 0, %if.else9.i.if.end14.i_crit_edge ], [ 20, %sw.bb.if.end14.i_crit_edge ]
  %conv15.i = zext i8 %count.addr.0.i to i16
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 20, i16 noundef zeroext 28, i16 noundef zeroext %conv15.i) #10
  br label %return

return:                                           ; preds = %if.end14.i, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call.i, %if.end14.i ], [ -34, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_config_init(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %2 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %mdix_ctrl, align 1
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #10
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %5 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %entry.if.end44_crit_edge, label %phy_package_init_once.exit

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

phy_package_init_once.exit:                       ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.phy_package_shared, ptr %6, i32 0, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then, label %phy_package_init_once.exit.if.end44_crit_edge

phy_package_init_once.exit.if.end44_crit_edge:    ; preds = %phy_package_init_once.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then:                                          ; preds = %phy_package_init_once.exit
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %7 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv, align 8
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_id_mask, align 4
  %and = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end, !prof !179

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1716, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %11 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_id, align 4
  %13 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv, align 8
  %phy_id_mask22 = getelementptr inbounds %struct.phy_driver, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %phy_id_mask22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_id_mask22, align 4
  %and23 = and i32 %16, %12
  %17 = zext i32 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %and23, label %if.end.err_crit_edge [
    i32 459968, label %if.end.sw.bb_crit_edge
    i32 460000, label %if.end.sw.bb_crit_edge180
    i32 459984, label %if.end.sw.bb_crit_edge181
    i32 459936, label %if.end.sw.bb_crit_edge182
    i32 460768, label %if.end.sw.bb32_crit_edge
    i32 460752, label %if.end.sw.bb32_crit_edge183
    i32 460720, label %if.end.sw.bb32_crit_edge184
    i32 460736, label %if.end.sw.bb32_crit_edge185
  ]

if.end.sw.bb32_crit_edge185:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

if.end.sw.bb32_crit_edge184:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

if.end.sw.bb32_crit_edge183:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

if.end.sw.bb32_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32

if.end.sw.bb_crit_edge182:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge181:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge180:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge180, %if.end.sw.bb_crit_edge181, %if.end.sw.bb_crit_edge182
  %call24 = tail call fastcc i32 @vsc8574_config_pre_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %sw.bb.err_crit_edge

sw.bb.err_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end27:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  %call.i.i130 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i.i) #10
  br i1 %call.i.i130, label %if.end27.if.end.i.i131_crit_edge, label %do.end.i.i, !prof !179

if.end27.if.end.i.i131_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i131

do.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i.i131

if.end.i.i131:                                    ; preds = %do.end.i.i, %if.end27.if.end.i.i131_crit_edge
  %22 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i131.err_crit_edge, label %phy_base_write.exit.i

if.end.i.i131.err_crit_edge:                      ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit.i:                            ; preds = %if.end.i.i131
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 31, i16 noundef zeroext 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %phy_base_write.exit.i.err_crit_edge

phy_base_write.exit.i.err_crit_edge:              ; preds = %phy_base_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i:                                         ; preds = %phy_base_write.exit.i
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i107.i = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 8
  %call.i108.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i107.i) #10
  br i1 %call.i108.i, label %if.end.i.if.end.i112.i_crit_edge, label %do.end.i109.i, !prof !179

if.end.i.if.end.i112.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i112.i

do.end.i109.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i112.i

if.end.i112.i:                                    ; preds = %do.end.i109.i, %if.end.i.if.end.i112.i_crit_edge
  %30 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i111.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i111.i, label %if.end.i112.i.phy_base_read.exit.i_crit_edge, label %if.end.i.i114.i

if.end.i112.i.phy_base_read.exit.i_crit_edge:     ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit.i

if.end.i.i114.i:                                  ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %call.i.i113.i = tail call i32 @__mdiobus_read(ptr noundef %33, i32 noundef %35, i32 noundef 19) #10
  %phi.cast.i = trunc i32 %call.i.i113.i to i16
  %phi.bo.i = and i16 %phi.cast.i, 16383
  br label %phy_base_read.exit.i

phy_base_read.exit.i:                             ; preds = %if.end.i.i114.i, %if.end.i112.i.phy_base_read.exit.i_crit_edge
  %retval.0.i.i115.i = phi i16 [ %phi.bo.i, %if.end.i.i114.i ], [ 16379, %if.end.i112.i.phy_base_read.exit.i_crit_edge ]
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %36 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %interface.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %37, label %if.else15.i [
    i32 18, label %if.then5.i
    i32 4, label %phy_base_read.exit.i.if.end24.i_crit_edge
  ]

phy_base_read.exit.i.if.end24.i_crit_edge:        ; preds = %phy_base_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then5.i:                                       ; preds = %phy_base_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = or i16 %retval.0.i.i115.i, 16384
  br label %if.end24.i

if.else15.i:                                      ; preds = %phy_base_read.exit.i
  %40 = add i32 %37, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %if.then17.i, label %if.else15.i.err_crit_edge

if.else15.i.err_crit_edge:                        ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then17.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = or i16 %retval.0.i.i115.i, -32768
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then17.i, %if.then5.i, %phy_base_read.exit.i.if.end24.i_crit_edge
  %val.0.i = phi i16 [ %39, %if.then5.i ], [ %42, %if.then17.i ], [ %retval.0.i.i115.i, %phy_base_read.exit.i.if.end24.i_crit_edge ]
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i117.i = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 8
  %call.i118.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i117.i) #10
  br i1 %call.i118.i, label %if.end24.i.if.end.i122.i_crit_edge, label %do.end.i119.i, !prof !179

if.end24.i.if.end.i122.i_crit_edge:               ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i122.i

do.end.i119.i:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i122.i

if.end.i122.i:                                    ; preds = %do.end.i119.i, %if.end24.i.if.end.i122.i_crit_edge
  %45 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i121.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i121.i, label %if.end.i122.i.err_crit_edge, label %phy_base_write.exit126.i

if.end.i122.i.err_crit_edge:                      ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit126.i:                         ; preds = %if.end.i122.i
  %47 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i, align 8
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 4
  %call.i.i123.i = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %50, i32 noundef 19, i16 noundef zeroext %val.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123.i)
  %tobool26.not.i = icmp eq i32 %call.i.i123.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %phy_base_write.exit126.i.err_crit_edge

phy_base_write.exit126.i.err_crit_edge:           ; preds = %phy_base_write.exit126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end28.i:                                       ; preds = %phy_base_write.exit126.i
  %51 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i128.i = getelementptr inbounds %struct.mii_bus, ptr %52, i32 0, i32 8
  %call.i129.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i128.i) #10
  br i1 %call.i129.i, label %if.end28.i.if.end.i133.i_crit_edge, label %do.end.i130.i, !prof !179

if.end28.i.if.end.i133.i_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i133.i

do.end.i130.i:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i133.i

if.end.i133.i:                                    ; preds = %do.end.i130.i, %if.end28.i.if.end.i133.i_crit_edge
  %53 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i132.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i132.i, label %if.end.i133.i.err_crit_edge, label %phy_base_write.exit137.i

if.end.i133.i.err_crit_edge:                      ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit137.i:                         ; preds = %if.end.i133.i
  %55 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i, align 8
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 4
  %call.i.i134.i = tail call i32 @__mdiobus_write(ptr noundef %56, i32 noundef %58, i32 noundef 31, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134.i)
  %tobool30.not.i = icmp eq i32 %call.i.i134.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %phy_base_write.exit137.i.err_crit_edge

phy_base_write.exit137.i.err_crit_edge:           ; preds = %phy_base_write.exit137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end32.i:                                       ; preds = %phy_base_write.exit137.i
  %59 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %interface.i, align 4
  %61 = add i32 %60, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %62 = icmp ult i32 %61, 4
  br i1 %62, label %if.end32.i.if.end51.i_crit_edge, label %if.then34.i

if.end32.i.if.end51.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %60)
  %cmp36.i = icmp eq i32 %60, 18
  %..i = select i1 %cmp36.i, i16 224, i16 240
  %call47.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext %..i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.then34.i.err_crit_edge

if.then34.i.err_crit_edge:                        ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end50.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end50.i, %if.end32.i.if.end51.i_crit_edge
  %addr.i = getelementptr inbounds %struct.vsc8531_private, ptr %19, i32 0, i32 7
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %addr.i, align 4
  %65 = and i8 %64, 3
  %rem.i = zext i8 %65 to i16
  %shl.i = shl nuw nsw i16 256, %rem.i
  %or57.i = or i16 %shl.i, 241
  %call59.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext %or57.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %vsc8574_config_host_serdes.exit, label %if.end51.i.err_crit_edge

if.end51.i.err_crit_edge:                         ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

vsc8574_config_host_serdes.exit:                  ; preds = %if.end51.i
  %66 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %addr.i, align 4
  %68 = and i8 %67, 3
  %rem65.i = zext i8 %68 to i16
  %shl66.i = shl nuw nsw i16 256, %rem65.i
  %or70.i = or i16 %shl66.i, 225
  %call73.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext %or70.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool29.not = icmp eq i32 %call73.i, 0
  br i1 %tobool29.not, label %vsc8574_config_host_serdes.exit.if.end44_crit_edge, label %vsc8574_config_host_serdes.exit.err_crit_edge

vsc8574_config_host_serdes.exit.err_crit_edge:    ; preds = %vsc8574_config_host_serdes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

vsc8574_config_host_serdes.exit.if.end44_crit_edge: ; preds = %vsc8574_config_host_serdes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

sw.bb32:                                          ; preds = %if.end.sw.bb32_crit_edge, %if.end.sw.bb32_crit_edge183, %if.end.sw.bb32_crit_edge184, %if.end.sw.bb32_crit_edge185
  %call33 = tail call fastcc i32 @vsc8584_config_pre_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %sw.bb32.err_crit_edge

sw.bb32.err_crit_edge:                            ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end36:                                         ; preds = %sw.bb32
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %71 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i134 = getelementptr inbounds %struct.mii_bus, ptr %72, i32 0, i32 8
  %call.i.i135 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i.i134) #10
  br i1 %call.i.i135, label %if.end36.if.end.i.i139_crit_edge, label %do.end.i.i136, !prof !179

if.end36.if.end.i.i139_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i139

do.end.i.i136:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i.i139

if.end.i.i139:                                    ; preds = %do.end.i.i136, %if.end36.if.end.i.i139_crit_edge
  %73 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i.i138 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i138, label %if.end.i.i139.err_crit_edge, label %phy_base_write.exit.i142

if.end.i.i139.err_crit_edge:                      ; preds = %if.end.i.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit.i142:                         ; preds = %if.end.i.i139
  %75 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i, align 8
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %74, align 4
  %call.i.i.i140 = tail call i32 @__mdiobus_write(ptr noundef %76, i32 noundef %78, i32 noundef 31, i16 noundef zeroext 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i140)
  %tobool.not.i141 = icmp eq i32 %call.i.i.i140, 0
  br i1 %tobool.not.i141, label %if.end.i143, label %phy_base_write.exit.i142.err_crit_edge

phy_base_write.exit.i142.err_crit_edge:           ; preds = %phy_base_write.exit.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i143:                                      ; preds = %phy_base_write.exit.i142
  %79 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i101.i = getelementptr inbounds %struct.mii_bus, ptr %80, i32 0, i32 8
  %call.i102.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i101.i) #10
  br i1 %call.i102.i, label %if.end.i143.if.end.i106.i_crit_edge, label %do.end.i103.i, !prof !179

if.end.i143.if.end.i106.i_crit_edge:              ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i106.i

do.end.i103.i:                                    ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i106.i

if.end.i106.i:                                    ; preds = %do.end.i103.i, %if.end.i143.if.end.i106.i_crit_edge
  %81 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i105.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.i105.i, label %if.end.i106.i.phy_base_read.exit.i147_crit_edge, label %if.end.i.i108.i

if.end.i106.i.phy_base_read.exit.i147_crit_edge:  ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit.i147

if.end.i.i108.i:                                  ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus.i, align 8
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %82, align 4
  %call.i.i107.i = tail call i32 @__mdiobus_read(ptr noundef %84, i32 noundef %86, i32 noundef 19) #10
  %phi.cast.i144 = trunc i32 %call.i.i107.i to i16
  %phi.bo.i145 = and i16 %phi.cast.i144, 16383
  br label %phy_base_read.exit.i147

phy_base_read.exit.i147:                          ; preds = %if.end.i.i108.i, %if.end.i106.i.phy_base_read.exit.i147_crit_edge
  %retval.0.i.i109.i = phi i16 [ %phi.bo.i145, %if.end.i.i108.i ], [ 16379, %if.end.i106.i.phy_base_read.exit.i147_crit_edge ]
  %interface.i146 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %87 = ptrtoint ptr %interface.i146 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %interface.i146, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %88, label %phy_base_read.exit.i147.err_crit_edge [
    i32 18, label %if.then5.i148
    i32 4, label %phy_base_read.exit.i147.if.end17.i_crit_edge
  ]

phy_base_read.exit.i147.if.end17.i_crit_edge:     ; preds = %phy_base_read.exit.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

phy_base_read.exit.i147.err_crit_edge:            ; preds = %phy_base_read.exit.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.then5.i148:                                    ; preds = %phy_base_read.exit.i147
  call void @__sanitizer_cov_trace_pc() #12
  %90 = or i16 %retval.0.i.i109.i, 16384
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then5.i148, %phy_base_read.exit.i147.if.end17.i_crit_edge
  %val.0.i149 = phi i16 [ %90, %if.then5.i148 ], [ %retval.0.i.i109.i, %phy_base_read.exit.i147.if.end17.i_crit_edge ]
  %91 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i111.i = getelementptr inbounds %struct.mii_bus, ptr %92, i32 0, i32 8
  %call.i112.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i111.i) #10
  br i1 %call.i112.i, label %if.end17.i.if.end.i116.i_crit_edge, label %do.end.i113.i, !prof !179

if.end17.i.if.end.i116.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i116.i

do.end.i113.i:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i116.i

if.end.i116.i:                                    ; preds = %do.end.i113.i, %if.end17.i.if.end.i116.i_crit_edge
  %93 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i115.i = icmp eq ptr %94, null
  br i1 %tobool.not.i.i115.i, label %if.end.i116.i.err_crit_edge, label %phy_base_write.exit120.i

if.end.i116.i.err_crit_edge:                      ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit120.i:                         ; preds = %if.end.i116.i
  %95 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus.i, align 8
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %94, align 4
  %call.i.i117.i = tail call i32 @__mdiobus_write(ptr noundef %96, i32 noundef %98, i32 noundef 19, i16 noundef zeroext %val.0.i149) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117.i)
  %tobool19.not.i = icmp eq i32 %call.i.i117.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %phy_base_write.exit120.i.err_crit_edge

phy_base_write.exit120.i.err_crit_edge:           ; preds = %phy_base_write.exit120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end21.i:                                       ; preds = %phy_base_write.exit120.i
  %99 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i122.i = getelementptr inbounds %struct.mii_bus, ptr %100, i32 0, i32 8
  %call.i123.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i122.i) #10
  br i1 %call.i123.i, label %if.end21.i.if.end.i127.i_crit_edge, label %do.end.i124.i, !prof !179

if.end21.i.if.end.i127.i_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i127.i

do.end.i124.i:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i127.i

if.end.i127.i:                                    ; preds = %do.end.i124.i, %if.end21.i.if.end.i127.i_crit_edge
  %101 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i126.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i126.i, label %if.end.i127.i.err_crit_edge, label %phy_base_write.exit131.i

if.end.i127.i.err_crit_edge:                      ; preds = %if.end.i127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit131.i:                         ; preds = %if.end.i127.i
  %103 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus.i, align 8
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %102, align 4
  %call.i.i128.i = tail call i32 @__mdiobus_write(ptr noundef %104, i32 noundef %106, i32 noundef 31, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128.i)
  %tobool23.not.i = icmp eq i32 %call.i.i128.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %phy_base_write.exit131.i.err_crit_edge

phy_base_write.exit131.i.err_crit_edge:           ; preds = %phy_base_write.exit131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end25.i:                                       ; preds = %phy_base_write.exit131.i
  %107 = ptrtoint ptr %interface.i146 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %interface.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %108)
  %cmp27.i = icmp eq i32 %108, 18
  %..i150 = select i1 %cmp27.i, i16 224, i16 240
  %call38.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext %..i150) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end25.i.err_crit_edge

if.end25.i.err_crit_edge:                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end41.i:                                       ; preds = %if.end25.i
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %addr.i151 = getelementptr inbounds %struct.vsc8531_private, ptr %70, i32 0, i32 7
  %109 = ptrtoint ptr %addr.i151 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %addr.i151, align 4
  %111 = and i8 %110, 3
  %rem.i152 = zext i8 %111 to i16
  %shl.i153 = shl nuw nsw i16 256, %rem.i152
  %or47.i = or i16 %shl.i153, 241
  %call49.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext %or47.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end41.i.err_crit_edge

if.end41.i.err_crit_edge:                         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end52.i:                                       ; preds = %if.end41.i
  %112 = ptrtoint ptr %addr.i151 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %addr.i151, align 4
  %114 = and i8 %113, 3
  %rem55.i = zext i8 %114 to i16
  %shl56.i = shl nuw nsw i16 256, %rem55.i
  %or60.i = or i16 %shl56.i, 225
  %call63.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext %or60.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %vsc8584_config_host_serdes.exit, label %if.end52.i.err_crit_edge

if.end52.i.err_crit_edge:                         ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

vsc8584_config_host_serdes.exit:                  ; preds = %if.end52.i
  %call67.i = tail call i32 @vsc85xx_sd6g_config_v2(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool38.not = icmp eq i32 %call67.i, 0
  br i1 %tobool38.not, label %if.end40, label %vsc8584_config_host_serdes.exit.err_crit_edge

vsc8584_config_host_serdes.exit.err_crit_edge:    ; preds = %vsc8584_config_host_serdes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end40:                                         ; preds = %vsc8584_config_host_serdes.exit
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %117 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i155 = tail call i32 @__mdiobus_write(ptr noundef %116, i32 noundef %118, i32 noundef 31, i16 noundef zeroext 16) #10
  %call1.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 14, i16 noundef zeroext 12288, i16 noundef zeroext 0) #10
  %119 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus.i, align 8
  %121 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i7.i = tail call i32 @__mdiobus_write(ptr noundef %120, i32 noundef %122, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %vsc8574_config_host_serdes.exit.if.end44_crit_edge, %phy_package_init_once.exit.if.end44_crit_edge, %entry.if.end44_crit_edge
  %123 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i157 = getelementptr inbounds %struct.mii_bus, ptr %124, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i157) #10
  %call45 = tail call i32 @vsc8584_macsec_init(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @vsc8584_ptp_init(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %125 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bus.i, align 8
  %addr.i159 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %127 = ptrtoint ptr %addr.i159 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %addr.i159, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %126, i32 noundef %128, i32 noundef 23) #10
  %129 = trunc i32 %call.i to i16
  %conv56 = and i16 %129, -5889
  %130 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bus.i, align 8
  %132 = ptrtoint ptr %addr.i159 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addr.i159, align 8
  %call.i162 = tail call i32 @mdiobus_write(ptr noundef %131, i32 noundef %133, i32 noundef 23, i16 noundef zeroext %conv56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool60.not = icmp eq i32 %call.i162, 0
  br i1 %tobool60.not, label %if.end62, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  %interface.i163 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %134 = ptrtoint ptr %interface.i163 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %interface.i163, align 4
  %136 = add i32 %135, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %136)
  %137 = icmp ult i32 %136, 4
  br i1 %137, label %if.then64, label %if.end62.if.end69_crit_edge

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then64:                                        ; preds = %if.end62
  %call65 = tail call fastcc i32 @vsc85xx_rgmii_set_skews(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 14, i16 noundef zeroext 112)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  %call70 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %for.cond.preheader, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end69
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 3
  %138 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nleds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp177.not = icmp eq i8 %139, 0
  br i1 %cmp177.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lock.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0178, 1
  %140 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %nleds, align 4
  %conv74 = zext i8 %141 to i32
  %cmp = icmp ult i32 %inc, %conv74
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsc8531_private, ptr %1, i32 0, i32 2, i32 %i.0178
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %144 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bus.i, align 8
  %146 = ptrtoint ptr %addr.i159 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %addr.i159, align 8
  %call.i.i165 = tail call i32 @mdiobus_read(ptr noundef %145, i32 noundef %147, i32 noundef 29) #10
  %conv1.i = shl i32 %i.0178, 2
  %shl.i166 = shl i32 15, %conv1.i
  %neg.i = xor i32 %shl.i166, -1
  %and.i = and i32 %call.i.i165, %neg.i
  %conv5.i = and i32 %143, 255
  %shl8.i = shl i32 %conv5.i, %conv1.i
  %and12.i = and i32 %shl8.i, %shl.i166
  %or.i = or i32 %and.i, %and12.i
  %conv14.i = trunc i32 %or.i to i16
  %148 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bus.i, align 8
  %150 = ptrtoint ptr %addr.i159 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %addr.i159, align 8
  %call.i26.i = tail call i32 @mdiobus_write(ptr noundef %149, i32 noundef %151, i32 noundef 29, i16 noundef zeroext %conv14.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool79.not = icmp eq i32 %call.i26.i, 0
  br i1 %tobool79.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %vsc8584_config_host_serdes.exit.err_crit_edge, %if.end52.i.err_crit_edge, %if.end41.i.err_crit_edge, %if.end25.i.err_crit_edge, %phy_base_write.exit131.i.err_crit_edge, %if.end.i127.i.err_crit_edge, %phy_base_write.exit120.i.err_crit_edge, %if.end.i116.i.err_crit_edge, %phy_base_read.exit.i147.err_crit_edge, %phy_base_write.exit.i142.err_crit_edge, %if.end.i.i139.err_crit_edge, %sw.bb32.err_crit_edge, %vsc8574_config_host_serdes.exit.err_crit_edge, %if.end51.i.err_crit_edge, %if.then34.i.err_crit_edge, %phy_base_write.exit137.i.err_crit_edge, %if.end.i133.i.err_crit_edge, %phy_base_write.exit126.i.err_crit_edge, %if.end.i122.i.err_crit_edge, %if.else15.i.err_crit_edge, %phy_base_write.exit.i.err_crit_edge, %if.end.i.i131.err_crit_edge, %sw.bb.err_crit_edge, %if.end.err_crit_edge
  %ret.1 = phi i32 [ %call33, %sw.bb32.err_crit_edge ], [ %call67.i, %vsc8584_config_host_serdes.exit.err_crit_edge ], [ %call24, %sw.bb.err_crit_edge ], [ %call73.i, %vsc8574_config_host_serdes.exit.err_crit_edge ], [ -22, %if.end.err_crit_edge ], [ -5, %if.end.i133.i.err_crit_edge ], [ -5, %if.end.i122.i.err_crit_edge ], [ -5, %if.end.i.i131.err_crit_edge ], [ %call59.i, %if.end51.i.err_crit_edge ], [ %call47.i, %if.then34.i.err_crit_edge ], [ %call.i.i134.i, %phy_base_write.exit137.i.err_crit_edge ], [ %call.i.i123.i, %phy_base_write.exit126.i.err_crit_edge ], [ -22, %if.else15.i.err_crit_edge ], [ %call.i.i.i, %phy_base_write.exit.i.err_crit_edge ], [ -5, %if.end.i127.i.err_crit_edge ], [ -5, %if.end.i116.i.err_crit_edge ], [ -5, %if.end.i.i139.err_crit_edge ], [ %call63.i, %if.end52.i.err_crit_edge ], [ %call49.i, %if.end41.i.err_crit_edge ], [ %call38.i, %if.end25.i.err_crit_edge ], [ %call.i.i128.i, %phy_base_write.exit131.i.err_crit_edge ], [ %call.i.i117.i, %phy_base_write.exit120.i.err_crit_edge ], [ -22, %phy_base_read.exit.i147.err_crit_edge ], [ %call.i.i.i140, %phy_base_write.exit.i142.err_crit_edge ]
  %152 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i168 = getelementptr inbounds %struct.mii_bus, ptr %153, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i168) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ %call45, %if.end44.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call.i162, %if.end52.cleanup_crit_edge ], [ %call65, %if.then64.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call.i26.i, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8574_probe(ptr noundef %phydev) #0 align 64 {
entry:
  %default_mode = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %default_mode) #10
  %0 = call ptr @memcpy(ptr %default_mode, ptr @__const.vsc8584_probe.default_mode, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 296, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %priv, align 8
  tail call fastcc void @vsc8584_get_base_addr(ptr noundef %phydev)
  %base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 4
  %call3 = tail call i32 @devm_phy_package_join(ptr noundef %phydev, ptr noundef %phydev, i32 noundef %3, i32 noundef 0) #10
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %nleds to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %nleds, align 4
  %supp_led_modes = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %supp_led_modes to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %supp_led_modes, align 4
  %hw_stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vsc8584_hw_stats, ptr %hw_stats, align 4
  %nstats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %nstats to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %nstats, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 72, i32 noundef 3520) #10
  %stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %stats, align 4
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = call fastcc i32 @vsc85xx_dt_led_modes_get(ptr noundef %phydev, ptr noundef nonnull %default_mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %default_mode) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_aneg_done(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8514_config_init(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %2 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %mdix_ctrl, align 1
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #10
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %5 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %entry.if.end7_crit_edge, label %phy_package_init_once.exit

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

phy_package_init_once.exit:                       ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.phy_package_shared, ptr %6, i32 0, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then, label %phy_package_init_once.exit.if.end7_crit_edge

phy_package_init_once.exit.if.end7_crit_edge:     ; preds = %phy_package_init_once.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %phy_package_init_once.exit
  %call.i = tail call fastcc i32 @vsc8584_pll5g_reset(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.48, i32 noundef %call.i) #13
  br label %err

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 8
  %call.i.i49 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i.i) #10
  br i1 %call.i.i49, label %if.end.i.if.end.i.i50_crit_edge, label %do.end.i.i, !prof !179

if.end.i.if.end.i.i50_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i50

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i.i50

if.end.i.i50:                                     ; preds = %do.end.i.i, %if.end.i.if.end.i.i50_crit_edge
  %9 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i50.phy_base_write.exit.i_crit_edge, label %if.end.i.i.i

if.end.i.i50.phy_base_write.exit.i_crit_edge:     ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit.i

phy_base_write.exit.i:                            ; preds = %if.end.i.i.i, %if.end.i.i50.phy_base_write.exit.i_crit_edge
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i102.i = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 8
  %call.i103.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i102.i) #10
  br i1 %call.i103.i, label %phy_base_write.exit.i.if.end.i107.i_crit_edge, label %do.end.i104.i, !prof !179

phy_base_write.exit.i.if.end.i107.i_crit_edge:    ; preds = %phy_base_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i107.i

do.end.i104.i:                                    ; preds = %phy_base_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i107.i

if.end.i107.i:                                    ; preds = %do.end.i104.i, %phy_base_write.exit.i.if.end.i107.i_crit_edge
  %17 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i106.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i106.i, label %if.end.i107.i.phy_base_read.exit.i_crit_edge, label %if.end.i.i109.i

if.end.i107.i.phy_base_read.exit.i_crit_edge:     ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit.i

if.end.i.i109.i:                                  ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %call.i.i108.i = tail call i32 @__mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 22) #10
  br label %phy_base_read.exit.i

phy_base_read.exit.i:                             ; preds = %if.end.i.i109.i, %if.end.i107.i.phy_base_read.exit.i_crit_edge
  %retval.0.i.i110.i = phi i32 [ %call.i.i108.i, %if.end.i.i109.i ], [ -5, %if.end.i107.i.phy_base_read.exit.i_crit_edge ]
  %23 = trunc i32 %retval.0.i.i110.i to i16
  %conv5.i = or i16 %23, 1
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i112.i = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 8
  %call.i113.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i112.i) #10
  br i1 %call.i113.i, label %phy_base_read.exit.i.if.end.i117.i_crit_edge, label %do.end.i114.i, !prof !179

phy_base_read.exit.i.if.end.i117.i_crit_edge:     ; preds = %phy_base_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i117.i

do.end.i114.i:                                    ; preds = %phy_base_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i117.i

if.end.i117.i:                                    ; preds = %do.end.i114.i, %phy_base_read.exit.i.if.end.i117.i_crit_edge
  %26 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i116.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i116.i, label %if.end.i117.i.phy_base_write.exit121.i_crit_edge, label %if.end.i.i119.i

if.end.i117.i.phy_base_write.exit121.i_crit_edge: ; preds = %if.end.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit121.i

if.end.i.i119.i:                                  ; preds = %if.end.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %call.i.i118.i = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 22, i16 noundef zeroext %conv5.i) #10
  br label %phy_base_write.exit121.i

phy_base_write.exit121.i:                         ; preds = %if.end.i.i119.i, %if.end.i117.i.phy_base_write.exit121.i_crit_edge
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i123.i = getelementptr inbounds %struct.mii_bus, ptr %33, i32 0, i32 8
  %call.i124.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i123.i) #10
  br i1 %call.i124.i, label %phy_base_write.exit121.i.if.end.i128.i_crit_edge, label %do.end.i125.i, !prof !179

phy_base_write.exit121.i.if.end.i128.i_crit_edge: ; preds = %phy_base_write.exit121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i128.i

do.end.i125.i:                                    ; preds = %phy_base_write.exit121.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i128.i

if.end.i128.i:                                    ; preds = %do.end.i125.i, %phy_base_write.exit121.i.if.end.i128.i_crit_edge
  %34 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i127.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i127.i, label %if.end.i128.i.phy_base_write.exit132.i_crit_edge, label %if.end.i.i130.i

if.end.i128.i.phy_base_write.exit132.i_crit_edge: ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit132.i

if.end.i.i130.i:                                  ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  %call.i.i129.i = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 31, i16 noundef zeroext 10800) #10
  br label %phy_base_write.exit132.i

phy_base_write.exit132.i:                         ; preds = %if.end.i.i130.i, %if.end.i128.i.phy_base_write.exit132.i_crit_edge
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i134.i = getelementptr inbounds %struct.mii_bus, ptr %41, i32 0, i32 8
  %call.i135.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i134.i) #10
  br i1 %call.i135.i, label %phy_base_write.exit132.i.if.end.i139.i_crit_edge, label %do.end.i136.i, !prof !179

phy_base_write.exit132.i.if.end.i139.i_crit_edge: ; preds = %phy_base_write.exit132.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i139.i

do.end.i136.i:                                    ; preds = %phy_base_write.exit132.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i139.i

if.end.i139.i:                                    ; preds = %do.end.i136.i, %phy_base_write.exit132.i.if.end.i139.i_crit_edge
  %42 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i138.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i138.i, label %if.end.i139.i.phy_base_read.exit143.i_crit_edge, label %if.end.i.i141.i

if.end.i139.i.phy_base_read.exit143.i_crit_edge:  ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit143.i

if.end.i.i141.i:                                  ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 8
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  %call.i.i140.i = tail call i32 @__mdiobus_read(ptr noundef %45, i32 noundef %47, i32 noundef 8) #10
  br label %phy_base_read.exit143.i

phy_base_read.exit143.i:                          ; preds = %if.end.i.i141.i, %if.end.i139.i.phy_base_read.exit143.i_crit_edge
  %retval.0.i.i142.i = phi i32 [ %call.i.i140.i, %if.end.i.i141.i ], [ -5, %if.end.i139.i.phy_base_read.exit143.i_crit_edge ]
  %48 = trunc i32 %retval.0.i.i142.i to i16
  %conv12.i = or i16 %48, -32768
  %49 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i145.i = getelementptr inbounds %struct.mii_bus, ptr %50, i32 0, i32 8
  %call.i146.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i145.i) #10
  br i1 %call.i146.i, label %phy_base_read.exit143.i.if.end.i150.i_crit_edge, label %do.end.i147.i, !prof !179

phy_base_read.exit143.i.if.end.i150.i_crit_edge:  ; preds = %phy_base_read.exit143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i150.i

do.end.i147.i:                                    ; preds = %phy_base_read.exit143.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i150.i

if.end.i150.i:                                    ; preds = %do.end.i147.i, %phy_base_read.exit143.i.if.end.i150.i_crit_edge
  %51 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i149.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i149.i, label %if.end.i150.i.phy_base_write.exit154.i_crit_edge, label %if.end.i.i152.i

if.end.i150.i.phy_base_write.exit154.i_crit_edge: ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit154.i

if.end.i.i152.i:                                  ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i, align 8
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 4
  %call.i.i151.i = tail call i32 @__mdiobus_write(ptr noundef %54, i32 noundef %56, i32 noundef 8, i16 noundef zeroext %conv12.i) #10
  br label %phy_base_write.exit154.i

phy_base_write.exit154.i:                         ; preds = %if.end.i.i152.i, %if.end.i150.i.phy_base_write.exit154.i_crit_edge
  %57 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i156.i = getelementptr inbounds %struct.mii_bus, ptr %58, i32 0, i32 8
  %call.i157.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i156.i) #10
  br i1 %call.i157.i, label %phy_base_write.exit154.i.if.end.i161.i_crit_edge, label %do.end.i158.i, !prof !179

phy_base_write.exit154.i.if.end.i161.i_crit_edge: ; preds = %phy_base_write.exit154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i161.i

do.end.i158.i:                                    ; preds = %phy_base_write.exit154.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i161.i

if.end.i161.i:                                    ; preds = %do.end.i158.i, %phy_base_write.exit154.i.if.end.i161.i_crit_edge
  %59 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i160.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i160.i, label %if.end.i161.i.for.body.i.preheader_crit_edge, label %if.end.i.i163.i

if.end.i161.i.for.body.i.preheader_crit_edge:     ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.end.i.i163.i:                                  ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i, align 8
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 4
  %call.i.i162.i = tail call i32 @__mdiobus_write(ptr noundef %62, i32 noundef %64, i32 noundef 31, i16 noundef zeroext 21173) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end.i.i163.i, %if.end.i161.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0295.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [20 x %struct.reg_val], ptr @vsc8514_config_pre_init.pre_init1, i32 0, i32 %i.0295.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i, align 4
  %val.i = getelementptr [20 x %struct.reg_val], ptr @vsc8514_config_pre_init.pre_init1, i32 0, i32 %i.0295.i, i32 1
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i, align 4
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext %66, i32 noundef %68) #10
  %inc.i = add nuw nsw i32 %i.0295.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %69 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i167.i = getelementptr inbounds %struct.mii_bus, ptr %70, i32 0, i32 8
  %call.i168.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i167.i) #10
  br i1 %call.i168.i, label %for.end.i.if.end.i172.i_crit_edge, label %do.end.i169.i, !prof !179

for.end.i.if.end.i172.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i172.i

do.end.i169.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i172.i

if.end.i172.i:                                    ; preds = %do.end.i169.i, %for.end.i.if.end.i172.i_crit_edge
  %71 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i171.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i171.i, label %if.end.i172.i.phy_base_write.exit176.i_crit_edge, label %if.end.i.i174.i

if.end.i172.i.phy_base_write.exit176.i_crit_edge: ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit176.i

if.end.i.i174.i:                                  ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus.i, align 8
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %72, align 4
  %call.i.i173.i = tail call i32 @__mdiobus_write(ptr noundef %74, i32 noundef %76, i32 noundef 31, i16 noundef zeroext 10800) #10
  br label %phy_base_write.exit176.i

phy_base_write.exit176.i:                         ; preds = %if.end.i.i174.i, %if.end.i172.i.phy_base_write.exit176.i_crit_edge
  %77 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i178.i = getelementptr inbounds %struct.mii_bus, ptr %78, i32 0, i32 8
  %call.i179.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i178.i) #10
  br i1 %call.i179.i, label %phy_base_write.exit176.i.if.end.i183.i_crit_edge, label %do.end.i180.i, !prof !179

phy_base_write.exit176.i.if.end.i183.i_crit_edge: ; preds = %phy_base_write.exit176.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i183.i

do.end.i180.i:                                    ; preds = %phy_base_write.exit176.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i183.i

if.end.i183.i:                                    ; preds = %do.end.i180.i, %phy_base_write.exit176.i.if.end.i183.i_crit_edge
  %79 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i182.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i182.i, label %if.end.i183.i.phy_base_read.exit187.i_crit_edge, label %if.end.i.i185.i

if.end.i183.i.phy_base_read.exit187.i_crit_edge:  ; preds = %if.end.i183.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit187.i

if.end.i.i185.i:                                  ; preds = %if.end.i183.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus.i, align 8
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %80, align 4
  %call.i.i184.i = tail call i32 @__mdiobus_read(ptr noundef %82, i32 noundef %84, i32 noundef 8) #10
  br label %phy_base_read.exit187.i

phy_base_read.exit187.i:                          ; preds = %if.end.i.i185.i, %if.end.i183.i.phy_base_read.exit187.i_crit_edge
  %retval.0.i.i186.i = phi i32 [ %call.i.i184.i, %if.end.i.i185.i ], [ -5, %if.end.i183.i.phy_base_read.exit187.i_crit_edge ]
  %85 = trunc i32 %retval.0.i.i186.i to i16
  %conv23.i = and i16 %85, 32767
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i189.i = getelementptr inbounds %struct.mii_bus, ptr %87, i32 0, i32 8
  %call.i190.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i189.i) #10
  br i1 %call.i190.i, label %phy_base_read.exit187.i.if.end.i194.i_crit_edge, label %do.end.i191.i, !prof !179

phy_base_read.exit187.i.if.end.i194.i_crit_edge:  ; preds = %phy_base_read.exit187.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i194.i

do.end.i191.i:                                    ; preds = %phy_base_read.exit187.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i194.i

if.end.i194.i:                                    ; preds = %do.end.i191.i, %phy_base_read.exit187.i.if.end.i194.i_crit_edge
  %88 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i193.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i193.i, label %if.end.i194.i.phy_base_write.exit198.i_crit_edge, label %if.end.i.i196.i

if.end.i194.i.phy_base_write.exit198.i_crit_edge: ; preds = %if.end.i194.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit198.i

if.end.i.i196.i:                                  ; preds = %if.end.i194.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i, align 8
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %89, align 4
  %call.i.i195.i = tail call i32 @__mdiobus_write(ptr noundef %91, i32 noundef %93, i32 noundef 8, i16 noundef zeroext %conv23.i) #10
  br label %phy_base_write.exit198.i

phy_base_write.exit198.i:                         ; preds = %if.end.i.i196.i, %if.end.i194.i.phy_base_write.exit198.i_crit_edge
  %94 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i200.i = getelementptr inbounds %struct.mii_bus, ptr %95, i32 0, i32 8
  %call.i201.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i200.i) #10
  br i1 %call.i201.i, label %phy_base_write.exit198.i.if.end.i205.i_crit_edge, label %do.end.i202.i, !prof !179

phy_base_write.exit198.i.if.end.i205.i_crit_edge: ; preds = %phy_base_write.exit198.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i205.i

do.end.i202.i:                                    ; preds = %phy_base_write.exit198.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i205.i

if.end.i205.i:                                    ; preds = %do.end.i202.i, %phy_base_write.exit198.i.if.end.i205.i_crit_edge
  %96 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i204.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i204.i, label %if.end.i205.i.phy_base_write.exit209.i_crit_edge, label %if.end.i.i207.i

if.end.i205.i.phy_base_write.exit209.i_crit_edge: ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit209.i

if.end.i.i207.i:                                  ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i, align 8
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %97, align 4
  %call.i.i206.i = tail call i32 @__mdiobus_write(ptr noundef %99, i32 noundef %101, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit209.i

phy_base_write.exit209.i:                         ; preds = %if.end.i.i207.i, %if.end.i205.i.phy_base_write.exit209.i_crit_edge
  %102 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i211.i = getelementptr inbounds %struct.mii_bus, ptr %103, i32 0, i32 8
  %call.i212.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i211.i) #10
  br i1 %call.i212.i, label %phy_base_write.exit209.i.if.end.i216.i_crit_edge, label %do.end.i213.i, !prof !179

phy_base_write.exit209.i.if.end.i216.i_crit_edge: ; preds = %phy_base_write.exit209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i216.i

do.end.i213.i:                                    ; preds = %phy_base_write.exit209.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i216.i

if.end.i216.i:                                    ; preds = %do.end.i213.i, %phy_base_write.exit209.i.if.end.i216.i_crit_edge
  %104 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i215.i = icmp eq ptr %105, null
  br i1 %tobool.not.i.i215.i, label %if.end.i216.i.phy_base_read.exit220.i_crit_edge, label %if.end.i.i218.i

if.end.i216.i.phy_base_read.exit220.i_crit_edge:  ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit220.i

if.end.i.i218.i:                                  ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus.i, align 8
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %105, align 4
  %call.i.i217.i = tail call i32 @__mdiobus_read(ptr noundef %107, i32 noundef %109, i32 noundef 22) #10
  %phi.cast.i = trunc i32 %call.i.i217.i to i16
  %phi.bo.i = and i16 %phi.cast.i, -2
  br label %phy_base_read.exit220.i

phy_base_read.exit220.i:                          ; preds = %if.end.i.i218.i, %if.end.i216.i.phy_base_read.exit220.i_crit_edge
  %retval.0.i.i219.i = phi i16 [ %phi.bo.i, %if.end.i.i218.i ], [ -6, %if.end.i216.i.phy_base_read.exit220.i_crit_edge ]
  %110 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i222.i = getelementptr inbounds %struct.mii_bus, ptr %111, i32 0, i32 8
  %call.i223.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i222.i) #10
  br i1 %call.i223.i, label %phy_base_read.exit220.i.if.end.i227.i_crit_edge, label %do.end.i224.i, !prof !179

phy_base_read.exit220.i.if.end.i227.i_crit_edge:  ; preds = %phy_base_read.exit220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i227.i

do.end.i224.i:                                    ; preds = %phy_base_read.exit220.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i227.i

if.end.i227.i:                                    ; preds = %do.end.i224.i, %phy_base_read.exit220.i.if.end.i227.i_crit_edge
  %112 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i226.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i226.i, label %if.end.i227.i.phy_base_write.exit231.i_crit_edge, label %if.end.i.i229.i

if.end.i227.i.phy_base_write.exit231.i_crit_edge: ; preds = %if.end.i227.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit231.i

if.end.i.i229.i:                                  ; preds = %if.end.i227.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bus.i, align 8
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %113, align 4
  %call.i.i228.i = tail call i32 @__mdiobus_write(ptr noundef %115, i32 noundef %117, i32 noundef 22, i16 noundef zeroext %retval.0.i.i219.i) #10
  br label %phy_base_write.exit231.i

phy_base_write.exit231.i:                         ; preds = %if.end.i.i229.i, %if.end.i227.i.phy_base_write.exit231.i_crit_edge
  tail call fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext false) #10
  %call33.i = tail call fastcc i32 @vsc8584_micro_assert_reset(ptr noundef %phydev) #10
  %118 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i233.i = getelementptr inbounds %struct.mii_bus, ptr %119, i32 0, i32 8
  %call.i234.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i233.i) #10
  br i1 %call.i234.i, label %phy_base_write.exit231.i.if.end.i238.i_crit_edge, label %do.end.i235.i, !prof !179

phy_base_write.exit231.i.if.end.i238.i_crit_edge: ; preds = %phy_base_write.exit231.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i238.i

do.end.i235.i:                                    ; preds = %phy_base_write.exit231.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i238.i

if.end.i238.i:                                    ; preds = %do.end.i235.i, %phy_base_write.exit231.i.if.end.i238.i_crit_edge
  %120 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i237.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i237.i, label %if.end.i238.i.phy_base_write.exit242.i_crit_edge, label %if.end.i.i240.i

if.end.i238.i.phy_base_write.exit242.i_crit_edge: ; preds = %if.end.i238.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit242.i

if.end.i.i240.i:                                  ; preds = %if.end.i238.i
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus.i, align 8
  %124 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %121, align 4
  %call.i.i239.i = tail call i32 @__mdiobus_write(ptr noundef %123, i32 noundef %125, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit242.i

phy_base_write.exit242.i:                         ; preds = %if.end.i.i240.i, %if.end.i238.i.phy_base_write.exit242.i_crit_edge
  %126 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i244.i = getelementptr inbounds %struct.mii_bus, ptr %127, i32 0, i32 8
  %call.i245.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i244.i) #10
  br i1 %call.i245.i, label %phy_base_write.exit242.i.if.end.i249.i_crit_edge, label %do.end.i246.i, !prof !179

phy_base_write.exit242.i.if.end.i249.i_crit_edge: ; preds = %phy_base_write.exit242.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i249.i

do.end.i246.i:                                    ; preds = %phy_base_write.exit242.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i249.i

if.end.i249.i:                                    ; preds = %do.end.i246.i, %phy_base_write.exit242.i.if.end.i249.i_crit_edge
  %128 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i248.i = icmp eq ptr %129, null
  br i1 %tobool.not.i.i248.i, label %if.end.i249.i.err.i_crit_edge, label %phy_base_write.exit253.i

if.end.i249.i.err.i_crit_edge:                    ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

phy_base_write.exit253.i:                         ; preds = %if.end.i249.i
  %130 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bus.i, align 8
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %129, align 4
  %call.i.i250.i = tail call i32 @__mdiobus_write(ptr noundef %131, i32 noundef %133, i32 noundef 3, i16 noundef zeroext 7752) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250.i)
  %tobool.not.i = icmp eq i32 %call.i.i250.i, 0
  br i1 %tobool.not.i, label %if.end37.i, label %phy_base_write.exit253.i.err.i_crit_edge

phy_base_write.exit253.i.err.i_crit_edge:         ; preds = %phy_base_write.exit253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end37.i:                                       ; preds = %phy_base_write.exit253.i
  %134 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i255.i = getelementptr inbounds %struct.mii_bus, ptr %135, i32 0, i32 8
  %call.i256.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i255.i) #10
  br i1 %call.i256.i, label %if.end37.i.if.end.i260.i_crit_edge, label %do.end.i257.i, !prof !179

if.end37.i.if.end.i260.i_crit_edge:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i260.i

do.end.i257.i:                                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i260.i

if.end.i260.i:                                    ; preds = %do.end.i257.i, %if.end37.i.if.end.i260.i_crit_edge
  %136 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i259.i = icmp eq ptr %137, null
  br i1 %tobool.not.i.i259.i, label %if.end.i260.i.err.i_crit_edge, label %phy_base_write.exit264.i

if.end.i260.i.err.i_crit_edge:                    ; preds = %if.end.i260.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

phy_base_write.exit264.i:                         ; preds = %if.end.i260.i
  %138 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bus.i, align 8
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %137, align 4
  %call.i.i261.i = tail call i32 @__mdiobus_write(ptr noundef %139, i32 noundef %141, i32 noundef 4, i16 noundef zeroext 7759) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i261.i)
  %tobool39.not.i = icmp eq i32 %call.i.i261.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %phy_base_write.exit264.i.err.i_crit_edge

phy_base_write.exit264.i.err.i_crit_edge:         ; preds = %phy_base_write.exit264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end41.i:                                       ; preds = %phy_base_write.exit264.i
  %142 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i266.i = getelementptr inbounds %struct.mii_bus, ptr %143, i32 0, i32 8
  %call.i267.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i266.i) #10
  br i1 %call.i267.i, label %if.end41.i.if.end.i271.i_crit_edge, label %do.end.i268.i, !prof !179

if.end41.i.if.end.i271.i_crit_edge:               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i271.i

do.end.i268.i:                                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i271.i

if.end.i271.i:                                    ; preds = %do.end.i268.i, %if.end41.i.if.end.i271.i_crit_edge
  %144 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i270.i = icmp eq ptr %145, null
  br i1 %tobool.not.i.i270.i, label %if.end.i271.i.phy_base_read.exit275.i_crit_edge, label %if.end.i.i273.i

if.end.i271.i.phy_base_read.exit275.i_crit_edge:  ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit275.i

if.end.i.i273.i:                                  ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bus.i, align 8
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %145, align 4
  %call.i.i272.i = tail call i32 @__mdiobus_read(ptr noundef %147, i32 noundef %149, i32 noundef 12) #10
  %phi.cast293.i = trunc i32 %call.i.i272.i to i16
  %phi.bo294.i = or i16 %phi.cast293.i, 256
  br label %phy_base_read.exit275.i

phy_base_read.exit275.i:                          ; preds = %if.end.i.i273.i, %if.end.i271.i.phy_base_read.exit275.i_crit_edge
  %retval.0.i.i274.i = phi i16 [ %phi.bo294.i, %if.end.i.i273.i ], [ -5, %if.end.i271.i.phy_base_read.exit275.i_crit_edge ]
  %150 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i277.i = getelementptr inbounds %struct.mii_bus, ptr %151, i32 0, i32 8
  %call.i278.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i277.i) #10
  br i1 %call.i278.i, label %phy_base_read.exit275.i.if.end.i282.i_crit_edge, label %do.end.i279.i, !prof !179

phy_base_read.exit275.i.if.end.i282.i_crit_edge:  ; preds = %phy_base_read.exit275.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i282.i

do.end.i279.i:                                    ; preds = %phy_base_read.exit275.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i282.i

if.end.i282.i:                                    ; preds = %do.end.i279.i, %phy_base_read.exit275.i.if.end.i282.i_crit_edge
  %152 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i281.i = icmp eq ptr %153, null
  br i1 %tobool.not.i.i281.i, label %if.end.i282.i.err.i_crit_edge, label %phy_base_write.exit286.i

if.end.i282.i.err.i_crit_edge:                    ; preds = %if.end.i282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

phy_base_write.exit286.i:                         ; preds = %if.end.i282.i
  %154 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bus.i, align 8
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %153, align 4
  %call.i.i283.i = tail call i32 @__mdiobus_write(ptr noundef %155, i32 noundef %157, i32 noundef 12, i16 noundef zeroext %retval.0.i.i274.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i283.i)
  %tobool48.not.i = icmp eq i32 %call.i.i283.i, 0
  br i1 %tobool48.not.i, label %if.end, label %phy_base_write.exit286.i.err.i_crit_edge

phy_base_write.exit286.i.err.i_crit_edge:         ; preds = %phy_base_write.exit286.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

err.i:                                            ; preds = %phy_base_write.exit286.i.err.i_crit_edge, %if.end.i282.i.err.i_crit_edge, %phy_base_write.exit264.i.err.i_crit_edge, %if.end.i260.i.err.i_crit_edge, %phy_base_write.exit253.i.err.i_crit_edge, %if.end.i249.i.err.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i250.i, %phy_base_write.exit253.i.err.i_crit_edge ], [ %call.i.i261.i, %phy_base_write.exit264.i.err.i_crit_edge ], [ %call.i.i283.i, %phy_base_write.exit286.i.err.i_crit_edge ], [ -5, %if.end.i249.i.err.i_crit_edge ], [ -5, %if.end.i260.i.err.i_crit_edge ], [ -5, %if.end.i282.i.err.i_crit_edge ]
  tail call fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext false) #10
  br label %err

if.end:                                           ; preds = %phy_base_write.exit286.i
  tail call fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext false) #10
  %158 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i52 = getelementptr inbounds %struct.mii_bus, ptr %159, i32 0, i32 8
  %call.i.i53 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i.i52) #10
  br i1 %call.i.i53, label %if.end.if.end.i.i57_crit_edge, label %do.end.i.i54, !prof !179

if.end.if.end.i.i57_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i57

do.end.i.i54:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i.i57

if.end.i.i57:                                     ; preds = %do.end.i.i54, %if.end.if.end.i.i57_crit_edge
  %160 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i.i56 = icmp eq ptr %161, null
  br i1 %tobool.not.i.i.i56, label %if.end.i.i57.err_crit_edge, label %phy_base_write.exit.i60

if.end.i.i57.err_crit_edge:                       ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit.i60:                          ; preds = %if.end.i.i57
  %162 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bus.i, align 8
  %164 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %161, align 4
  %call.i.i.i58 = tail call i32 @__mdiobus_write(ptr noundef %163, i32 noundef %165, i32 noundef 31, i16 noundef zeroext 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i58)
  %tobool.not.i59 = icmp eq i32 %call.i.i.i58, 0
  br i1 %tobool.not.i59, label %if.end.i61, label %phy_base_write.exit.i60.err_crit_edge

phy_base_write.exit.i60.err_crit_edge:            ; preds = %phy_base_write.exit.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i61:                                       ; preds = %phy_base_write.exit.i60
  %166 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i58.i = getelementptr inbounds %struct.mii_bus, ptr %167, i32 0, i32 8
  %call.i59.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i58.i) #10
  br i1 %call.i59.i, label %if.end.i61.if.end.i63.i_crit_edge, label %do.end.i60.i, !prof !179

if.end.i61.if.end.i63.i_crit_edge:                ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i63.i

do.end.i60.i:                                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i63.i

if.end.i63.i:                                     ; preds = %do.end.i60.i, %if.end.i61.if.end.i63.i_crit_edge
  %168 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i62.i = icmp eq ptr %169, null
  br i1 %tobool.not.i.i62.i, label %if.end.i63.i.phy_base_read.exit.i64_crit_edge, label %if.end.i.i65.i

if.end.i63.i.phy_base_read.exit.i64_crit_edge:    ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit.i64

if.end.i.i65.i:                                   ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bus.i, align 8
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %169, align 4
  %call.i.i64.i = tail call i32 @__mdiobus_read(ptr noundef %171, i32 noundef %173, i32 noundef 19) #10
  %phi.cast.i62 = trunc i32 %call.i.i64.i to i16
  %phi.bo.i63 = and i16 %phi.cast.i62, 16383
  %phi.bo95.i = or i16 %phi.bo.i63, 16384
  br label %phy_base_read.exit.i64

phy_base_read.exit.i64:                           ; preds = %if.end.i.i65.i, %if.end.i63.i.phy_base_read.exit.i64_crit_edge
  %retval.0.i.i66.i = phi i16 [ %phi.bo95.i, %if.end.i.i65.i ], [ 32763, %if.end.i63.i.phy_base_read.exit.i64_crit_edge ]
  %174 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i68.i = getelementptr inbounds %struct.mii_bus, ptr %175, i32 0, i32 8
  %call.i69.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i68.i) #10
  br i1 %call.i69.i, label %phy_base_read.exit.i64.if.end.i73.i_crit_edge, label %do.end.i70.i, !prof !179

phy_base_read.exit.i64.if.end.i73.i_crit_edge:    ; preds = %phy_base_read.exit.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73.i

do.end.i70.i:                                     ; preds = %phy_base_read.exit.i64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i73.i

if.end.i73.i:                                     ; preds = %do.end.i70.i, %phy_base_read.exit.i64.if.end.i73.i_crit_edge
  %176 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i72.i = icmp eq ptr %177, null
  br i1 %tobool.not.i.i72.i, label %if.end.i73.i.err_crit_edge, label %phy_base_write.exit77.i

if.end.i73.i.err_crit_edge:                       ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit77.i:                          ; preds = %if.end.i73.i
  %178 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus.i, align 8
  %180 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %177, align 4
  %call.i.i74.i = tail call i32 @__mdiobus_write(ptr noundef %179, i32 noundef %181, i32 noundef 19, i16 noundef zeroext %retval.0.i.i66.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74.i)
  %tobool7.not.i = icmp eq i32 %call.i.i74.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %phy_base_write.exit77.i.err_crit_edge

phy_base_write.exit77.i.err_crit_edge:            ; preds = %phy_base_write.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end9.i:                                        ; preds = %phy_base_write.exit77.i
  %182 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i79.i = getelementptr inbounds %struct.mii_bus, ptr %183, i32 0, i32 8
  %call.i80.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i79.i) #10
  br i1 %call.i80.i, label %if.end9.i.if.end.i84.i_crit_edge, label %do.end.i81.i, !prof !179

if.end9.i.if.end.i84.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i84.i

do.end.i81.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i84.i

if.end.i84.i:                                     ; preds = %do.end.i81.i, %if.end9.i.if.end.i84.i_crit_edge
  %184 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i83.i = icmp eq ptr %185, null
  br i1 %tobool.not.i.i83.i, label %if.end.i84.i.err_crit_edge, label %phy_base_write.exit88.i

if.end.i84.i.err_crit_edge:                       ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

phy_base_write.exit88.i:                          ; preds = %if.end.i84.i
  %186 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bus.i, align 8
  %188 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %185, align 4
  %call.i.i85.i = tail call i32 @__mdiobus_write(ptr noundef %187, i32 noundef %189, i32 noundef 31, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %tobool11.not.i = icmp eq i32 %call.i.i85.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %phy_base_write.exit88.i.err_crit_edge

phy_base_write.exit88.i.err_crit_edge:            ; preds = %phy_base_write.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end13.i:                                       ; preds = %phy_base_write.exit88.i
  %call14.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.err_crit_edge

if.end13.i.err_crit_edge:                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end17.i:                                       ; preds = %if.end13.i
  %call18.i = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext 224) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %vsc8514_config_host_serdes.exit, label %do.end.i65

do.end.i65:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef %call18.i) #13
  br label %err

vsc8514_config_host_serdes.exit:                  ; preds = %if.end17.i
  %call22.i = tail call fastcc i32 @vsc8584_micro_assert_reset(ptr noundef %phydev) #10
  %call23.i = tail call i32 @phy_base_read(ptr noundef %phydev, i32 noundef 12) #10
  %190 = trunc i32 %call23.i to i16
  %conv27.i = and i16 %190, -257
  %call28.i = tail call i32 @phy_base_write(ptr noundef %phydev, i32 noundef 12, i16 noundef zeroext %conv27.i) #10
  tail call fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext false) #10
  %call30.i = tail call i32 @vsc85xx_sd6g_config_v2(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool4.not = icmp eq i32 %call30.i, 0
  br i1 %tobool4.not, label %if.end6, label %vsc8514_config_host_serdes.exit.err_crit_edge

vsc8514_config_host_serdes.exit.err_crit_edge:    ; preds = %vsc8514_config_host_serdes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end6:                                          ; preds = %vsc8514_config_host_serdes.exit
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bus.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %193 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i67 = tail call i32 @__mdiobus_write(ptr noundef %192, i32 noundef %194, i32 noundef 31, i16 noundef zeroext 16) #10
  %call1.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 14, i16 noundef zeroext 12288, i16 noundef zeroext 0) #10
  %195 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bus.i, align 8
  %197 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i7.i = tail call i32 @__mdiobus_write(ptr noundef %196, i32 noundef %198, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %phy_package_init_once.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %199 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i69 = getelementptr inbounds %struct.mii_bus, ptr %200, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i69) #10
  %call8 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 1792, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end11
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 3
  %201 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %nleds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %cmp81.not = icmp eq i8 %202, 0
  br i1 %cmp81.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lock.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 32
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.082, 1
  %203 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %nleds, align 4
  %conv = zext i8 %204 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsc8531_private, ptr %1, i32 0, i32 2, i32 %i.082
  %205 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %207 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bus.i, align 8
  %209 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %addr.i.i, align 8
  %call.i.i71 = tail call i32 @mdiobus_read(ptr noundef %208, i32 noundef %210, i32 noundef 29) #10
  %conv1.i = shl i32 %i.082, 2
  %shl.i = shl i32 15, %conv1.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call.i.i71, %neg.i
  %conv5.i72 = and i32 %206, 255
  %shl8.i = shl i32 %conv5.i72, %conv1.i
  %and12.i = and i32 %shl8.i, %shl.i
  %or.i = or i32 %and.i, %and12.i
  %conv14.i = trunc i32 %or.i to i16
  %211 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bus.i, align 8
  %213 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %addr.i.i, align 8
  %call.i26.i = tail call i32 @mdiobus_write(ptr noundef %212, i32 noundef %214, i32 noundef 29, i16 noundef zeroext %conv14.i) #10
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool20.not = icmp eq i32 %call.i26.i, 0
  br i1 %tobool20.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %vsc8514_config_host_serdes.exit.err_crit_edge, %do.end.i65, %if.end13.i.err_crit_edge, %phy_base_write.exit88.i.err_crit_edge, %if.end.i84.i.err_crit_edge, %phy_base_write.exit77.i.err_crit_edge, %if.end.i73.i.err_crit_edge, %phy_base_write.exit.i60.err_crit_edge, %if.end.i.i57.err_crit_edge, %err.i, %do.end.i
  %ret.1 = phi i32 [ %call30.i, %vsc8514_config_host_serdes.exit.err_crit_edge ], [ %ret.0.i, %err.i ], [ %call.i, %do.end.i ], [ -5, %if.end.i84.i.err_crit_edge ], [ -5, %if.end.i73.i.err_crit_edge ], [ -5, %if.end.i.i57.err_crit_edge ], [ %call14.i, %if.end13.i.err_crit_edge ], [ %call.i.i85.i, %phy_base_write.exit88.i.err_crit_edge ], [ %call.i.i74.i, %phy_base_write.exit77.i.err_crit_edge ], [ %call.i.i.i58, %phy_base_write.exit.i60.err_crit_edge ], [ %call18.i, %do.end.i65 ]
  %215 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i74 = getelementptr inbounds %struct.mii_bus, ptr %216, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i74) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call.i26.i, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8514_probe(ptr noundef %phydev) #0 align 64 {
entry:
  %default_mode = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %default_mode) #10
  %0 = call ptr @memcpy(ptr %default_mode, ptr @__const.vsc8584_probe.default_mode, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 296, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %priv, align 8
  tail call fastcc void @vsc8584_get_base_addr(ptr noundef %phydev)
  %base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 4
  %call3 = tail call i32 @devm_phy_package_join(ptr noundef %phydev, ptr noundef %phydev, i32 noundef %3, i32 noundef 0) #10
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %nleds to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %nleds, align 4
  %supp_led_modes = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %supp_led_modes to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -2177, ptr %supp_led_modes, align 4
  %hw_stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vsc85xx_hw_stats, ptr %hw_stats, align 4
  %nstats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %nstats to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %nstats, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 40, i32 noundef 3520) #10
  %stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %stats, align 4
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = call fastcc i32 @vsc85xx_dt_led_modes_get(ptr noundef %phydev, ptr noundef nonnull %default_mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %default_mode) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_probe(ptr noundef %phydev) #0 align 64 {
entry:
  %default_mode = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %default_mode) #10
  %0 = call ptr @memcpy(ptr %default_mode, ptr @__const.vsc8584_probe.default_mode, i32 16)
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %1 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phy_id, align 4
  %and = and i32 %2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.64) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 296, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %priv, align 8
  tail call fastcc void @vsc8584_get_base_addr(ptr noundef %phydev)
  %base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 4
  %call7 = tail call i32 @devm_phy_package_join(ptr noundef %phydev, ptr noundef %phydev, i32 noundef %5, i32 noundef 92) #10
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %nleds to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %nleds, align 4
  %supp_led_modes = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %supp_led_modes to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %supp_led_modes, align 4
  %hw_stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vsc8584_hw_stats, ptr %hw_stats, align 4
  %nstats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %nstats to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %nstats, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 72, i32 noundef 3520) #10
  %stats = getelementptr inbounds %struct.vsc8531_private, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %stats, align 4
  %tobool13.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool13.not, label %if.end4.cleanup_crit_edge, label %if.end15

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %11 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end15.if.end22_crit_edge, label %phy_package_probe_once.exit

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

phy_package_probe_once.exit:                      ; preds = %if.end15
  %flags.i.i = getelementptr inbounds %struct.phy_package_shared, ptr %12, i32 0, i32 2
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then17, label %phy_package_probe_once.exit.if.end22_crit_edge

phy_package_probe_once.exit.if.end22_crit_edge:   ; preds = %phy_package_probe_once.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %phy_package_probe_once.exit
  %call18 = tail call i32 @vsc8584_ptp_probe_once(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %phy_package_probe_once.exit.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %call23 = tail call i32 @vsc8584_ptp_probe(ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = call fastcc i32 @vsc85xx_dt_led_modes_get(ptr noundef %phydev, ptr noundef nonnull %default_mode)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %call27, %if.end26 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %default_mode) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc8584_handle_interrupt(ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vsc8584_handle_ts_interrupt(ptr noundef %phydev) #10
  %and = and i32 %call.i, 40992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vsc8584_handle_macsec_interrupt(ptr noundef %phydev) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %and8 = and i32 %call.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_trigger_machine(ptr noundef %phydev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 1, %if.then10 ], [ 1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsc85xx_link_change_notify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_rgmii_set_skews(ptr noundef %phydev, i32 noundef %rgmii_cntl, i16 noundef zeroext %rgmii_rx_delay_mask, i16 noundef zeroext %rgmii_tx_delay_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.cttz.i16(i16 %rgmii_rx_delay_mask, i1 true), !range !181
  %lock = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %1 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %interface, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %switch = icmp eq i32 %3, 10
  %shl = shl i16 4, %0
  %reg_val.0 = select i1 %switch, i16 %shl, i16 0
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %2, label %entry.if.end27_crit_edge [
    i32 12, label %entry.if.then21_crit_edge
    i32 10, label %entry.if.then21_crit_edge45
  ]

entry.if.then21_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then21:                                        ; preds = %entry.if.then21_crit_edge, %entry.if.then21_crit_edge45
  %5 = tail call i16 @llvm.cttz.i16(i16 %rgmii_tx_delay_mask, i1 true), !range !181
  %shl23 = shl i16 4, %5
  %or25 = or i16 %reg_val.0, %shl23
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %entry.if.end27_crit_edge
  %reg_val.1 = phi i16 [ %or25, %if.then21 ], [ %reg_val.0, %entry.if.end27_crit_edge ]
  %or3044 = or i16 %rgmii_tx_delay_mask, %rgmii_rx_delay_mask
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef %rgmii_cntl, i16 noundef zeroext %or3044, i16 noundef zeroext %reg_val.1) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc85xx_dt_led_modes_get(ptr noundef %phydev, ptr nocapture noundef readonly %default_mode) unnamed_addr #0 align 64 {
entry:
  %led_mode.i = alloca i32, align 4
  %led_dt_prop = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %led_dt_prop) #10
  %nleds = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 3
  %2 = call ptr @memset(ptr %led_dt_prop, i32 255, i32 28)
  %3 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nleds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp28.not = icmp eq i8 %4, 0
  br i1 %cmp28.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %of_node3.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %led_dt_prop, ptr noundef nonnull @.str.27, i32 noundef %i.029)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %default_mode, i32 %i.029
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv1, align 8
  %9 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node3.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_mode.i) #10
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.vsc85xx_dt_led_mode_get.exit.thread_crit_edge, label %if.end.i

if.end.vsc85xx_dt_led_mode_get.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_dt_led_mode_get.exit.thread

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %led_mode.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull %led_dt_prop, ptr noundef nonnull %led_mode.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end.i.vsc85xx_dt_led_mode_get.exit_crit_edge

if.end.i.vsc85xx_dt_led_mode_get.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_dt_led_mode_get.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %12 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %led_mode.i, align 4
  %shl.i = shl nuw i32 1, %13
  %supp_led_modes.i = getelementptr inbounds %struct.vsc8531_private, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %supp_led_modes.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %supp_led_modes.i, align 4
  %conv.i = zext i16 %15 to i32
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.end.i, label %land.lhs.true.i.vsc85xx_dt_led_mode_get.exit_crit_edge

land.lhs.true.i.vsc85xx_dt_led_mode_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc85xx_dt_led_mode_get.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.28, ptr noundef nonnull %led_dt_prop) #13
  br label %vsc85xx_dt_led_mode_get.exit.thread

vsc85xx_dt_led_mode_get.exit.thread:              ; preds = %do.end.i, %if.end.vsc85xx_dt_led_mode_get.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -19, %if.end.vsc85xx_dt_led_mode_get.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_mode.i) #10
  br label %cleanup

vsc85xx_dt_led_mode_get.exit:                     ; preds = %land.lhs.true.i.vsc85xx_dt_led_mode_get.exit_crit_edge, %if.end.i.vsc85xx_dt_led_mode_get.exit_crit_edge
  %16 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %led_mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_mode.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %vsc85xx_dt_led_mode_get.exit.cleanup_crit_edge, label %if.end10

vsc85xx_dt_led_mode_get.exit.cleanup_crit_edge:   ; preds = %vsc85xx_dt_led_mode_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %vsc85xx_dt_led_mode_get.exit
  %arrayidx11 = getelementptr %struct.vsc8531_private, ptr %1, i32 0, i32 2, i32 %i.029
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx11, align 4
  %inc = add nuw nsw i32 %i.029, 1
  %19 = ptrtoint ptr %nleds to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nleds, align 4
  %conv = zext i8 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %vsc85xx_dt_led_mode_get.exit.cleanup_crit_edge, %vsc85xx_dt_led_mode_get.exit.thread, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %vsc85xx_dt_led_mode_get.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ], [ %17, %vsc85xx_dt_led_mode_get.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %led_dt_prop) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsc8584_config_macsec_intr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsc8584_config_ts_intr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8574_config_pre_init(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %crc = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crc) #10
  %1 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %crc, align 2, !annotation !180
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !179

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %4 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i187 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  %call.i188 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i187) #10
  br i1 %call.i188, label %phy_base_write.exit.if.end.i192_crit_edge, label %do.end.i189, !prof !179

phy_base_write.exit.if.end.i192_crit_edge:        ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i192

do.end.i189:                                      ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i192

if.end.i192:                                      ; preds = %do.end.i189, %phy_base_write.exit.if.end.i192_crit_edge
  %12 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i191 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i191, label %if.end.i192.phy_base_read.exit_crit_edge, label %if.end.i.i194

if.end.i192.phy_base_read.exit_crit_edge:         ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit

if.end.i.i194:                                    ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %call.i.i193 = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 22) #10
  br label %phy_base_read.exit

phy_base_read.exit:                               ; preds = %if.end.i.i194, %if.end.i192.phy_base_read.exit_crit_edge
  %retval.0.i.i195 = phi i32 [ %call.i.i193, %if.end.i.i194 ], [ -5, %if.end.i192.phy_base_read.exit_crit_edge ]
  %18 = trunc i32 %retval.0.i.i195 to i16
  %conv4 = or i16 %18, 1
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i197 = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 8
  %call.i198 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i197) #10
  br i1 %call.i198, label %phy_base_read.exit.if.end.i202_crit_edge, label %do.end.i199, !prof !179

phy_base_read.exit.if.end.i202_crit_edge:         ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i202

do.end.i199:                                      ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i202

if.end.i202:                                      ; preds = %do.end.i199, %phy_base_read.exit.if.end.i202_crit_edge
  %21 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i201 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i201, label %if.end.i202.phy_base_write.exit206_crit_edge, label %if.end.i.i204

if.end.i202.phy_base_write.exit206_crit_edge:     ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit206

if.end.i.i204:                                    ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %call.i.i203 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 22, i16 noundef zeroext %conv4) #10
  br label %phy_base_write.exit206

phy_base_write.exit206:                           ; preds = %if.end.i.i204, %if.end.i202.phy_base_write.exit206_crit_edge
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i208 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 8
  %call.i209 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i208) #10
  br i1 %call.i209, label %phy_base_write.exit206.if.end.i213_crit_edge, label %do.end.i210, !prof !179

phy_base_write.exit206.if.end.i213_crit_edge:     ; preds = %phy_base_write.exit206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i213

do.end.i210:                                      ; preds = %phy_base_write.exit206
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i213

if.end.i213:                                      ; preds = %do.end.i210, %phy_base_write.exit206.if.end.i213_crit_edge
  %29 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i212 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i212, label %if.end.i213.phy_base_write.exit217_crit_edge, label %if.end.i.i215

if.end.i213.phy_base_write.exit217_crit_edge:     ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit217

if.end.i.i215:                                    ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %call.i.i214 = tail call i32 @__mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 25, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit217

phy_base_write.exit217:                           ; preds = %if.end.i.i215, %if.end.i213.phy_base_write.exit217_crit_edge
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i219 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 8
  %call.i220 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i219) #10
  br i1 %call.i220, label %phy_base_write.exit217.if.end.i224_crit_edge, label %do.end.i221, !prof !179

phy_base_write.exit217.if.end.i224_crit_edge:     ; preds = %phy_base_write.exit217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i224

do.end.i221:                                      ; preds = %phy_base_write.exit217
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i224

if.end.i224:                                      ; preds = %do.end.i221, %phy_base_write.exit217.if.end.i224_crit_edge
  %37 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i223 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i223, label %if.end.i224.phy_base_write.exit228_crit_edge, label %if.end.i.i226

if.end.i224.phy_base_write.exit228_crit_edge:     ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit228

if.end.i.i226:                                    ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %38, align 4
  %call.i.i225 = tail call i32 @__mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 24, i16 noundef zeroext 64) #10
  br label %phy_base_write.exit228

phy_base_write.exit228:                           ; preds = %if.end.i.i226, %if.end.i224.phy_base_write.exit228_crit_edge
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i230 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 8
  %call.i231 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i230) #10
  br i1 %call.i231, label %phy_base_write.exit228.if.end.i235_crit_edge, label %do.end.i232, !prof !179

phy_base_write.exit228.if.end.i235_crit_edge:     ; preds = %phy_base_write.exit228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i235

do.end.i232:                                      ; preds = %phy_base_write.exit228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i235

if.end.i235:                                      ; preds = %do.end.i232, %phy_base_write.exit228.if.end.i235_crit_edge
  %45 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i234 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i234, label %if.end.i235.phy_base_write.exit239_crit_edge, label %if.end.i.i237

if.end.i235.phy_base_write.exit239_crit_edge:     ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit239

if.end.i.i237:                                    ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i, align 8
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %46, align 4
  %call.i.i236 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %50, i32 noundef 31, i16 noundef zeroext 10800) #10
  br label %phy_base_write.exit239

phy_base_write.exit239:                           ; preds = %if.end.i.i237, %if.end.i235.phy_base_write.exit239_crit_edge
  %51 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i241 = getelementptr inbounds %struct.mii_bus, ptr %52, i32 0, i32 8
  %call.i242 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i241) #10
  br i1 %call.i242, label %phy_base_write.exit239.if.end.i246_crit_edge, label %do.end.i243, !prof !179

phy_base_write.exit239.if.end.i246_crit_edge:     ; preds = %phy_base_write.exit239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i246

do.end.i243:                                      ; preds = %phy_base_write.exit239
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i246

if.end.i246:                                      ; preds = %do.end.i243, %phy_base_write.exit239.if.end.i246_crit_edge
  %53 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i245 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i245, label %if.end.i246.phy_base_write.exit250_crit_edge, label %if.end.i.i248

if.end.i246.phy_base_write.exit250_crit_edge:     ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit250

if.end.i.i248:                                    ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i, align 8
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 4
  %call.i.i247 = tail call i32 @__mdiobus_write(ptr noundef %56, i32 noundef %58, i32 noundef 20, i16 noundef zeroext 17184) #10
  br label %phy_base_write.exit250

phy_base_write.exit250:                           ; preds = %if.end.i.i248, %if.end.i246.phy_base_write.exit250_crit_edge
  %59 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i252 = getelementptr inbounds %struct.mii_bus, ptr %60, i32 0, i32 8
  %call.i253 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i252) #10
  br i1 %call.i253, label %phy_base_write.exit250.if.end.i257_crit_edge, label %do.end.i254, !prof !179

phy_base_write.exit250.if.end.i257_crit_edge:     ; preds = %phy_base_write.exit250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i257

do.end.i254:                                      ; preds = %phy_base_write.exit250
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i257

if.end.i257:                                      ; preds = %do.end.i254, %phy_base_write.exit250.if.end.i257_crit_edge
  %61 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i256 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i256, label %if.end.i257.phy_base_write.exit261_crit_edge, label %if.end.i.i259

if.end.i257.phy_base_write.exit261_crit_edge:     ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit261

if.end.i.i259:                                    ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i, align 8
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %62, align 4
  %call.i.i258 = tail call i32 @__mdiobus_write(ptr noundef %64, i32 noundef %66, i32 noundef 24, i16 noundef zeroext 3072) #10
  br label %phy_base_write.exit261

phy_base_write.exit261:                           ; preds = %if.end.i.i259, %if.end.i257.phy_base_write.exit261_crit_edge
  %67 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i263 = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 8
  %call.i264 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i263) #10
  br i1 %call.i264, label %phy_base_write.exit261.if.end.i268_crit_edge, label %do.end.i265, !prof !179

phy_base_write.exit261.if.end.i268_crit_edge:     ; preds = %phy_base_write.exit261
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i268

do.end.i265:                                      ; preds = %phy_base_write.exit261
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i268

if.end.i268:                                      ; preds = %do.end.i265, %phy_base_write.exit261.if.end.i268_crit_edge
  %69 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i267 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i267, label %if.end.i268.phy_base_write.exit272_crit_edge, label %if.end.i.i270

if.end.i268.phy_base_write.exit272_crit_edge:     ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit272

if.end.i.i270:                                    ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i, align 8
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 4
  %call.i.i269 = tail call i32 @__mdiobus_write(ptr noundef %72, i32 noundef %74, i32 noundef 9, i16 noundef zeroext 6346) #10
  br label %phy_base_write.exit272

phy_base_write.exit272:                           ; preds = %if.end.i.i270, %if.end.i268.phy_base_write.exit272_crit_edge
  %75 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i274 = getelementptr inbounds %struct.mii_bus, ptr %76, i32 0, i32 8
  %call.i275 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i274) #10
  br i1 %call.i275, label %phy_base_write.exit272.if.end.i279_crit_edge, label %do.end.i276, !prof !179

phy_base_write.exit272.if.end.i279_crit_edge:     ; preds = %phy_base_write.exit272
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i279

do.end.i276:                                      ; preds = %phy_base_write.exit272
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i279

if.end.i279:                                      ; preds = %do.end.i276, %phy_base_write.exit272.if.end.i279_crit_edge
  %77 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i278 = icmp eq ptr %78, null
  br i1 %tobool.not.i.i278, label %if.end.i279.phy_base_write.exit283_crit_edge, label %if.end.i.i281

if.end.i279.phy_base_write.exit283_crit_edge:     ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit283

if.end.i.i281:                                    ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i, align 8
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 4
  %call.i.i280 = tail call i32 @__mdiobus_write(ptr noundef %80, i32 noundef %82, i32 noundef 5, i16 noundef zeroext 6944) #10
  br label %phy_base_write.exit283

phy_base_write.exit283:                           ; preds = %if.end.i.i281, %if.end.i279.phy_base_write.exit283_crit_edge
  %83 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i285 = getelementptr inbounds %struct.mii_bus, ptr %84, i32 0, i32 8
  %call.i286 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i285) #10
  br i1 %call.i286, label %phy_base_write.exit283.if.end.i290_crit_edge, label %do.end.i287, !prof !179

phy_base_write.exit283.if.end.i290_crit_edge:     ; preds = %phy_base_write.exit283
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i290

do.end.i287:                                      ; preds = %phy_base_write.exit283
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i290

if.end.i290:                                      ; preds = %do.end.i287, %phy_base_write.exit283.if.end.i290_crit_edge
  %85 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i289 = icmp eq ptr %86, null
  br i1 %tobool.not.i.i289, label %if.end.i290.phy_base_read.exit294_crit_edge, label %if.end.i.i292

if.end.i290.phy_base_read.exit294_crit_edge:      ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit294

if.end.i.i292:                                    ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i, align 8
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %86, align 4
  %call.i.i291 = tail call i32 @__mdiobus_read(ptr noundef %88, i32 noundef %90, i32 noundef 8) #10
  br label %phy_base_read.exit294

phy_base_read.exit294:                            ; preds = %if.end.i.i292, %if.end.i290.phy_base_read.exit294_crit_edge
  %retval.0.i.i293 = phi i32 [ %call.i.i291, %if.end.i.i292 ], [ -5, %if.end.i290.phy_base_read.exit294_crit_edge ]
  %91 = trunc i32 %retval.0.i.i293 to i16
  %conv17 = or i16 %91, -32768
  %92 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i296 = getelementptr inbounds %struct.mii_bus, ptr %93, i32 0, i32 8
  %call.i297 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i296) #10
  br i1 %call.i297, label %phy_base_read.exit294.if.end.i301_crit_edge, label %do.end.i298, !prof !179

phy_base_read.exit294.if.end.i301_crit_edge:      ; preds = %phy_base_read.exit294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i301

do.end.i298:                                      ; preds = %phy_base_read.exit294
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i301

if.end.i301:                                      ; preds = %do.end.i298, %phy_base_read.exit294.if.end.i301_crit_edge
  %94 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i300 = icmp eq ptr %95, null
  br i1 %tobool.not.i.i300, label %if.end.i301.phy_base_write.exit305_crit_edge, label %if.end.i.i303

if.end.i301.phy_base_write.exit305_crit_edge:     ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit305

if.end.i.i303:                                    ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i, align 8
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %95, align 4
  %call.i.i302 = tail call i32 @__mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 8, i16 noundef zeroext %conv17) #10
  br label %phy_base_write.exit305

phy_base_write.exit305:                           ; preds = %if.end.i.i303, %if.end.i301.phy_base_write.exit305_crit_edge
  %100 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i307 = getelementptr inbounds %struct.mii_bus, ptr %101, i32 0, i32 8
  %call.i308 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i307) #10
  br i1 %call.i308, label %phy_base_write.exit305.if.end.i312_crit_edge, label %do.end.i309, !prof !179

phy_base_write.exit305.if.end.i312_crit_edge:     ; preds = %phy_base_write.exit305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i312

do.end.i309:                                      ; preds = %phy_base_write.exit305
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i312

if.end.i312:                                      ; preds = %do.end.i309, %phy_base_write.exit305.if.end.i312_crit_edge
  %102 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i311 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i311, label %if.end.i312.for.body.preheader_crit_edge, label %if.end.i.i314

if.end.i312.for.body.preheader_crit_edge:         ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end.i.i314:                                    ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i, align 8
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %103, align 4
  %call.i.i313 = tail call i32 @__mdiobus_write(ptr noundef %105, i32 noundef %107, i32 noundef 31, i16 noundef zeroext 21173) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.i.i314, %if.end.i312.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0486 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [46 x %struct.reg_val], ptr @vsc8574_config_pre_init.pre_init1, i32 0, i32 %i.0486
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx, align 4
  %val = getelementptr [46 x %struct.reg_val], ptr @vsc8574_config_pre_init.pre_init1, i32 0, i32 %i.0486, i32 1
  %110 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val, align 4
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext %109, i32 noundef %111)
  %inc = add nuw nsw i32 %i.0486, 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %112 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i318 = getelementptr inbounds %struct.mii_bus, ptr %113, i32 0, i32 8
  %call.i319 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i318) #10
  br i1 %call.i319, label %for.end.if.end.i323_crit_edge, label %do.end.i320, !prof !179

for.end.if.end.i323_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i323

do.end.i320:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i323

if.end.i323:                                      ; preds = %do.end.i320, %for.end.if.end.i323_crit_edge
  %114 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i322 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i322, label %if.end.i323.phy_base_write.exit327_crit_edge, label %if.end.i.i325

if.end.i323.phy_base_write.exit327_crit_edge:     ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit327

if.end.i.i325:                                    ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus.i, align 8
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %115, align 4
  %call.i.i324 = tail call i32 @__mdiobus_write(ptr noundef %117, i32 noundef %119, i32 noundef 31, i16 noundef zeroext 2) #10
  br label %phy_base_write.exit327

phy_base_write.exit327:                           ; preds = %if.end.i.i325, %if.end.i323.phy_base_write.exit327_crit_edge
  %120 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i329 = getelementptr inbounds %struct.mii_bus, ptr %121, i32 0, i32 8
  %call.i330 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i329) #10
  br i1 %call.i330, label %phy_base_write.exit327.if.end.i334_crit_edge, label %do.end.i331, !prof !179

phy_base_write.exit327.if.end.i334_crit_edge:     ; preds = %phy_base_write.exit327
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i334

do.end.i331:                                      ; preds = %phy_base_write.exit327
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i334

if.end.i334:                                      ; preds = %do.end.i331, %phy_base_write.exit327.if.end.i334_crit_edge
  %122 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i333 = icmp eq ptr %123, null
  br i1 %tobool.not.i.i333, label %if.end.i334.phy_base_write.exit338_crit_edge, label %if.end.i.i336

if.end.i334.phy_base_write.exit338_crit_edge:     ; preds = %if.end.i334
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit338

if.end.i.i336:                                    ; preds = %if.end.i334
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus.i, align 8
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %123, align 4
  %call.i.i335 = tail call i32 @__mdiobus_write(ptr noundef %125, i32 noundef %127, i32 noundef 16, i16 noundef zeroext 654) #10
  br label %phy_base_write.exit338

phy_base_write.exit338:                           ; preds = %if.end.i.i336, %if.end.i334.phy_base_write.exit338_crit_edge
  %128 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i340 = getelementptr inbounds %struct.mii_bus, ptr %129, i32 0, i32 8
  %call.i341 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i340) #10
  br i1 %call.i341, label %phy_base_write.exit338.if.end.i345_crit_edge, label %do.end.i342, !prof !179

phy_base_write.exit338.if.end.i345_crit_edge:     ; preds = %phy_base_write.exit338
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i345

do.end.i342:                                      ; preds = %phy_base_write.exit338
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i345

if.end.i345:                                      ; preds = %do.end.i342, %phy_base_write.exit338.if.end.i345_crit_edge
  %130 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i344 = icmp eq ptr %131, null
  br i1 %tobool.not.i.i344, label %if.end.i345.phy_base_write.exit349_crit_edge, label %if.end.i.i347

if.end.i345.phy_base_write.exit349_crit_edge:     ; preds = %if.end.i345
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit349

if.end.i.i347:                                    ; preds = %if.end.i345
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bus.i, align 8
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %131, align 4
  %call.i.i346 = tail call i32 @__mdiobus_write(ptr noundef %133, i32 noundef %135, i32 noundef 31, i16 noundef zeroext 21173) #10
  br label %phy_base_write.exit349

phy_base_write.exit349:                           ; preds = %if.end.i.i347, %if.end.i345.phy_base_write.exit349_crit_edge
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1158, i32 noundef 566552)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1160, i32 noundef 7194262)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1162, i32 noundef 2322)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1166, i32 noundef 3510)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1180, i32 noundef 5858710)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1182, i32 noundef 1300)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1186, i32 noundef 4260480)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1188, i32 noundef 0)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1190, i32 noundef 0)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1192, i32 noundef 0)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1194, i32 noundef 0)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1198, i32 noundef 8255453)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1200, i32 noundef 7181780)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1202, i32 noundef 4793360)
  %136 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i351 = getelementptr inbounds %struct.mii_bus, ptr %137, i32 0, i32 8
  %call.i352 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i351) #10
  br i1 %call.i352, label %phy_base_write.exit349.if.end.i356_crit_edge, label %do.end.i353, !prof !179

phy_base_write.exit349.if.end.i356_crit_edge:     ; preds = %phy_base_write.exit349
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i356

do.end.i353:                                      ; preds = %phy_base_write.exit349
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i356

if.end.i356:                                      ; preds = %do.end.i353, %phy_base_write.exit349.if.end.i356_crit_edge
  %138 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i355 = icmp eq ptr %139, null
  br i1 %tobool.not.i.i355, label %if.end.i356.phy_base_write.exit360_crit_edge, label %if.end.i.i358

if.end.i356.phy_base_write.exit360_crit_edge:     ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit360

if.end.i.i358:                                    ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bus.i, align 8
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %139, align 4
  %call.i.i357 = tail call i32 @__mdiobus_write(ptr noundef %141, i32 noundef %143, i32 noundef 31, i16 noundef zeroext 10800) #10
  br label %phy_base_write.exit360

phy_base_write.exit360:                           ; preds = %if.end.i.i358, %if.end.i356.phy_base_write.exit360_crit_edge
  %144 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i362 = getelementptr inbounds %struct.mii_bus, ptr %145, i32 0, i32 8
  %call.i363 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i362) #10
  br i1 %call.i363, label %phy_base_write.exit360.if.end.i367_crit_edge, label %do.end.i364, !prof !179

phy_base_write.exit360.if.end.i367_crit_edge:     ; preds = %phy_base_write.exit360
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i367

do.end.i364:                                      ; preds = %phy_base_write.exit360
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i367

if.end.i367:                                      ; preds = %do.end.i364, %phy_base_write.exit360.if.end.i367_crit_edge
  %146 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i366 = icmp eq ptr %147, null
  br i1 %tobool.not.i.i366, label %if.end.i367.phy_base_read.exit371_crit_edge, label %if.end.i.i369

if.end.i367.phy_base_read.exit371_crit_edge:      ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit371

if.end.i.i369:                                    ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bus.i, align 8
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %147, align 4
  %call.i.i368 = tail call i32 @__mdiobus_read(ptr noundef %149, i32 noundef %151, i32 noundef 8) #10
  br label %phy_base_read.exit371

phy_base_read.exit371:                            ; preds = %if.end.i.i369, %if.end.i367.phy_base_read.exit371_crit_edge
  %retval.0.i.i370 = phi i32 [ %call.i.i368, %if.end.i.i369 ], [ -5, %if.end.i367.phy_base_read.exit371_crit_edge ]
  %152 = trunc i32 %retval.0.i.i370 to i16
  %conv41 = and i16 %152, 32767
  %153 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i373 = getelementptr inbounds %struct.mii_bus, ptr %154, i32 0, i32 8
  %call.i374 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i373) #10
  br i1 %call.i374, label %phy_base_read.exit371.if.end.i378_crit_edge, label %do.end.i375, !prof !179

phy_base_read.exit371.if.end.i378_crit_edge:      ; preds = %phy_base_read.exit371
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i378

do.end.i375:                                      ; preds = %phy_base_read.exit371
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i378

if.end.i378:                                      ; preds = %do.end.i375, %phy_base_read.exit371.if.end.i378_crit_edge
  %155 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i377 = icmp eq ptr %156, null
  br i1 %tobool.not.i.i377, label %if.end.i378.phy_base_write.exit382_crit_edge, label %if.end.i.i380

if.end.i378.phy_base_write.exit382_crit_edge:     ; preds = %if.end.i378
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit382

if.end.i.i380:                                    ; preds = %if.end.i378
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bus.i, align 8
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %156, align 4
  %call.i.i379 = tail call i32 @__mdiobus_write(ptr noundef %158, i32 noundef %160, i32 noundef 8, i16 noundef zeroext %conv41) #10
  br label %phy_base_write.exit382

phy_base_write.exit382:                           ; preds = %if.end.i.i380, %if.end.i378.phy_base_write.exit382_crit_edge
  %161 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i384 = getelementptr inbounds %struct.mii_bus, ptr %162, i32 0, i32 8
  %call.i385 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i384) #10
  br i1 %call.i385, label %phy_base_write.exit382.if.end.i389_crit_edge, label %do.end.i386, !prof !179

phy_base_write.exit382.if.end.i389_crit_edge:     ; preds = %phy_base_write.exit382
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i389

do.end.i386:                                      ; preds = %phy_base_write.exit382
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i389

if.end.i389:                                      ; preds = %do.end.i386, %phy_base_write.exit382.if.end.i389_crit_edge
  %163 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i388 = icmp eq ptr %164, null
  br i1 %tobool.not.i.i388, label %if.end.i389.phy_base_write.exit393_crit_edge, label %if.end.i.i391

if.end.i389.phy_base_write.exit393_crit_edge:     ; preds = %if.end.i389
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit393

if.end.i.i391:                                    ; preds = %if.end.i389
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bus.i, align 8
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %164, align 4
  %call.i.i390 = tail call i32 @__mdiobus_write(ptr noundef %166, i32 noundef %168, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit393

phy_base_write.exit393:                           ; preds = %if.end.i.i391, %if.end.i389.phy_base_write.exit393_crit_edge
  %169 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i395 = getelementptr inbounds %struct.mii_bus, ptr %170, i32 0, i32 8
  %call.i396 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i395) #10
  br i1 %call.i396, label %phy_base_write.exit393.if.end.i400_crit_edge, label %do.end.i397, !prof !179

phy_base_write.exit393.if.end.i400_crit_edge:     ; preds = %phy_base_write.exit393
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i400

do.end.i397:                                      ; preds = %phy_base_write.exit393
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i400

if.end.i400:                                      ; preds = %do.end.i397, %phy_base_write.exit393.if.end.i400_crit_edge
  %171 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i399 = icmp eq ptr %172, null
  br i1 %tobool.not.i.i399, label %if.end.i400.phy_base_read.exit404_crit_edge, label %if.end.i.i402

if.end.i400.phy_base_read.exit404_crit_edge:      ; preds = %if.end.i400
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit404

if.end.i.i402:                                    ; preds = %if.end.i400
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bus.i, align 8
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %172, align 4
  %call.i.i401 = tail call i32 @__mdiobus_read(ptr noundef %174, i32 noundef %176, i32 noundef 22) #10
  br label %phy_base_read.exit404

phy_base_read.exit404:                            ; preds = %if.end.i.i402, %if.end.i400.phy_base_read.exit404_crit_edge
  %retval.0.i.i403 = phi i32 [ %call.i.i401, %if.end.i.i402 ], [ -5, %if.end.i400.phy_base_read.exit404_crit_edge ]
  %177 = trunc i32 %retval.0.i.i403 to i16
  %conv48 = and i16 %177, -2
  %178 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i406 = getelementptr inbounds %struct.mii_bus, ptr %179, i32 0, i32 8
  %call.i407 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i406) #10
  br i1 %call.i407, label %phy_base_read.exit404.if.end.i411_crit_edge, label %do.end.i408, !prof !179

phy_base_read.exit404.if.end.i411_crit_edge:      ; preds = %phy_base_read.exit404
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i411

do.end.i408:                                      ; preds = %phy_base_read.exit404
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i411

if.end.i411:                                      ; preds = %do.end.i408, %phy_base_read.exit404.if.end.i411_crit_edge
  %180 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i410 = icmp eq ptr %181, null
  br i1 %tobool.not.i.i410, label %if.end.i411.phy_base_write.exit415_crit_edge, label %if.end.i.i413

if.end.i411.phy_base_write.exit415_crit_edge:     ; preds = %if.end.i411
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit415

if.end.i.i413:                                    ; preds = %if.end.i411
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bus.i, align 8
  %184 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %181, align 4
  %call.i.i412 = tail call i32 @__mdiobus_write(ptr noundef %183, i32 noundef %185, i32 noundef 22, i16 noundef zeroext %conv48) #10
  br label %phy_base_write.exit415

phy_base_write.exit415:                           ; preds = %if.end.i.i413, %if.end.i411.phy_base_write.exit415_crit_edge
  %call50 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.32, ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool.not = icmp eq i32 %call50, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %phy_base_write.exit415
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %call50) #13
  br label %cleanup

if.end:                                           ; preds = %phy_base_write.exit415
  %186 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %fw, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %190 = trunc i32 %189 to i16
  %conv51 = add i16 %190, 1
  %call52 = call fastcc i32 @vsc8584_get_fw_crc(ptr noundef %phydev, i16 noundef zeroext 16384, i16 noundef zeroext %conv51, ptr noundef nonnull %crc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end55:                                         ; preds = %if.end
  %191 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %crc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10728, i16 %192)
  %cmp57 = icmp eq i16 %192, 10728
  br i1 %cmp57, label %if.then59, label %do.body71

if.then59:                                        ; preds = %if.end55
  %193 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %194, i32 0, i32 8
  %call.i.i416 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i.i) #10
  br i1 %call.i.i416, label %if.then59.if.end.i.i417_crit_edge, label %do.end.i.i, !prof !179

if.then59.if.end.i.i417_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i417

do.end.i.i:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i.i417

if.end.i.i417:                                    ; preds = %do.end.i.i, %if.then59.if.end.i.i417_crit_edge
  %195 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %196, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i417.phy_base_write.exit.i_crit_edge, label %if.end.i.i.i

if.end.i.i417.phy_base_write.exit.i_crit_edge:    ; preds = %if.end.i.i417
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i417
  call void @__sanitizer_cov_trace_pc() #12
  %197 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %bus.i, align 8
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %196, align 4
  %call.i.i.i = call i32 @__mdiobus_write(ptr noundef %198, i32 noundef %200, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit.i

phy_base_write.exit.i:                            ; preds = %if.end.i.i.i, %if.end.i.i417.phy_base_write.exit.i_crit_edge
  %201 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i35.i = getelementptr inbounds %struct.mii_bus, ptr %202, i32 0, i32 8
  %call.i36.i = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i35.i) #10
  br i1 %call.i36.i, label %phy_base_write.exit.i.if.end.i40.i_crit_edge, label %do.end.i37.i, !prof !179

phy_base_write.exit.i.if.end.i40.i_crit_edge:     ; preds = %phy_base_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i40.i

do.end.i37.i:                                     ; preds = %phy_base_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i40.i

if.end.i40.i:                                     ; preds = %do.end.i37.i, %phy_base_write.exit.i.if.end.i40.i_crit_edge
  %203 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i39.i = icmp eq ptr %204, null
  br i1 %tobool.not.i.i39.i, label %if.end.i40.i.out.i_crit_edge, label %phy_base_read.exit.i

if.end.i40.i.out.i_crit_edge:                     ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

phy_base_read.exit.i:                             ; preds = %if.end.i40.i
  %205 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %bus.i, align 8
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %204, align 4
  %call.i.i41.i = call i32 @__mdiobus_read(ptr noundef %206, i32 noundef %208, i32 noundef 3) #10
  %conv2.i = and i32 %call.i.i41.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16055, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %conv2.i, 16055
  br i1 %cmp.not.i, label %if.end.i418, label %phy_base_read.exit.i.out.i_crit_edge

phy_base_read.exit.i.out.i_crit_edge:             ; preds = %phy_base_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i418:                                      ; preds = %phy_base_read.exit.i
  %209 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i45.i = getelementptr inbounds %struct.mii_bus, ptr %210, i32 0, i32 8
  %call.i46.i = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i45.i) #10
  br i1 %call.i46.i, label %if.end.i418.if.end.i50.i_crit_edge, label %do.end.i47.i, !prof !179

if.end.i418.if.end.i50.i_crit_edge:               ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i50.i

do.end.i47.i:                                     ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i50.i

if.end.i50.i:                                     ; preds = %do.end.i47.i, %if.end.i418.if.end.i50.i_crit_edge
  %211 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i49.i = icmp eq ptr %212, null
  br i1 %tobool.not.i.i49.i, label %if.end.i50.i.out.i_crit_edge, label %phy_base_read.exit54.i

if.end.i50.i.out.i_crit_edge:                     ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

phy_base_read.exit54.i:                           ; preds = %if.end.i50.i
  %213 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bus.i, align 8
  %215 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %212, align 4
  %call.i.i51.i = call i32 @__mdiobus_read(ptr noundef %214, i32 noundef %216, i32 noundef 4) #10
  %conv6.i = and i32 %call.i.i51.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16402, i32 %conv6.i)
  %cmp7.not.i = icmp eq i32 %conv6.i, 16402
  br i1 %cmp7.not.i, label %if.end10.i, label %phy_base_read.exit54.i.out.i_crit_edge

phy_base_read.exit54.i.out.i_crit_edge:           ; preds = %phy_base_read.exit54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end10.i:                                       ; preds = %phy_base_read.exit54.i
  %217 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i56.i = getelementptr inbounds %struct.mii_bus, ptr %218, i32 0, i32 8
  %call.i57.i = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i56.i) #10
  br i1 %call.i57.i, label %if.end10.i.if.end.i61.i_crit_edge, label %do.end.i58.i, !prof !179

if.end10.i.if.end.i61.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i61.i

do.end.i58.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i61.i

if.end.i61.i:                                     ; preds = %do.end.i58.i, %if.end10.i.if.end.i61.i_crit_edge
  %219 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i60.i = icmp eq ptr %220, null
  br i1 %tobool.not.i.i60.i, label %if.end.i61.i.out.i_crit_edge, label %phy_base_read.exit65.i

if.end.i61.i.out.i_crit_edge:                     ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

phy_base_read.exit65.i:                           ; preds = %if.end.i61.i
  %221 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %bus.i, align 8
  %223 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %220, align 4
  %call.i.i62.i = call i32 @__mdiobus_read(ptr noundef %222, i32 noundef %224, i32 noundef 12) #10
  %conv13.i = and i32 %call.i.i62.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %conv13.i)
  %cmp14.not.i = icmp eq i32 %conv13.i, 256
  br i1 %cmp14.not.i, label %if.end17.i, label %phy_base_read.exit65.i.out.i_crit_edge

phy_base_read.exit65.i.out.i_crit_edge:           ; preds = %phy_base_read.exit65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end17.i:                                       ; preds = %phy_base_read.exit65.i
  %225 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i67.i = getelementptr inbounds %struct.mii_bus, ptr %226, i32 0, i32 8
  %call.i68.i = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i67.i) #10
  br i1 %call.i68.i, label %if.end17.i.if.end.i72.i_crit_edge, label %do.end.i69.i, !prof !179

if.end17.i.if.end.i72.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i72.i

do.end.i69.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i72.i

if.end.i72.i:                                     ; preds = %do.end.i69.i, %if.end17.i.if.end.i72.i_crit_edge
  %227 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i71.i = icmp eq ptr %228, null
  br i1 %tobool.not.i.i71.i, label %if.end.i72.i.out.i_crit_edge, label %if.end.i.i74.i

if.end.i72.i.out.i_crit_edge:                     ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i.i74.i:                                   ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %bus.i, align 8
  %231 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %228, align 4
  %call.i.i73.i = call i32 @__mdiobus_read(ptr noundef %230, i32 noundef %232, i32 noundef 0) #10
  %phi.bo.i = and i32 %call.i.i73.i, 61951
  call void @__sanitizer_cov_trace_const_cmp4(i32 49176, i32 %phi.bo.i)
  %phi.cmp.i = icmp eq i32 %phi.bo.i, 49176
  br label %out.i

out.i:                                            ; preds = %if.end.i.i74.i, %if.end.i72.i.out.i_crit_edge, %phy_base_read.exit65.i.out.i_crit_edge, %if.end.i61.i.out.i_crit_edge, %phy_base_read.exit54.i.out.i_crit_edge, %if.end.i50.i.out.i_crit_edge, %phy_base_read.exit.i.out.i_crit_edge, %if.end.i40.i.out.i_crit_edge
  %ret.0.off0.i = phi i1 [ false, %phy_base_read.exit.i.out.i_crit_edge ], [ false, %phy_base_read.exit54.i.out.i_crit_edge ], [ false, %phy_base_read.exit65.i.out.i_crit_edge ], [ false, %if.end.i40.i.out.i_crit_edge ], [ false, %if.end.i50.i.out.i_crit_edge ], [ false, %if.end.i61.i.out.i_crit_edge ], [ %phi.cmp.i, %if.end.i.i74.i ], [ false, %if.end.i72.i.out.i_crit_edge ]
  %233 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i78.i = getelementptr inbounds %struct.mii_bus, ptr %234, i32 0, i32 8
  %call.i79.i = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i78.i) #10
  br i1 %call.i79.i, label %out.i.if.end.i83.i_crit_edge, label %do.end.i80.i, !prof !179

out.i.if.end.i83.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i83.i

do.end.i80.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i83.i

if.end.i83.i:                                     ; preds = %do.end.i80.i, %out.i.if.end.i83.i_crit_edge
  %235 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i82.i = icmp eq ptr %236, null
  br i1 %tobool.not.i.i82.i, label %if.end.i83.i.vsc8574_is_serdes_init.exit_crit_edge, label %if.end.i.i85.i

if.end.i83.i.vsc8574_is_serdes_init.exit_crit_edge: ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsc8574_is_serdes_init.exit

if.end.i.i85.i:                                   ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  %237 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bus.i, align 8
  %239 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %236, align 4
  %call.i.i84.i = call i32 @__mdiobus_write(ptr noundef %238, i32 noundef %240, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %vsc8574_is_serdes_init.exit

vsc8574_is_serdes_init.exit:                      ; preds = %if.end.i.i85.i, %if.end.i83.i.vsc8574_is_serdes_init.exit_crit_edge
  br i1 %ret.0.off0.i, label %vsc8574_is_serdes_init.exit.if.end111_crit_edge, label %if.then62

vsc8574_is_serdes_init.exit.if.end111_crit_edge:  ; preds = %vsc8574_is_serdes_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then62:                                        ; preds = %vsc8574_is_serdes_init.exit
  %call63 = call fastcc i32 @vsc8584_micro_assert_reset(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then62.if.then90_crit_edge, label %do.end68

if.then62.if.then90_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then90

do.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #13
  br label %out

do.body71:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc8574_config_pre_init.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc8574_config_pre_init, %if.then77)) #10
          to label %do.end80 [label %if.then77], !srcloc !182

if.then77:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc8574_config_pre_init.__UNIQUE_ID_ddebug347, ptr noundef %phydev, ptr noundef nonnull @.str.39) #10
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body71
  %241 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %fw, align 4
  %call81 = call fastcc i32 @vsc8584_patch_fw(ptr noundef %phydev, ptr noundef %242)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end80.if.then90_crit_edge, label %do.end86

do.end80.if.then90_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then90

do.end86:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.41) #13
  br label %if.then90

if.then90:                                        ; preds = %do.end86, %do.end80.if.then90_crit_edge, %if.then62.if.then90_crit_edge
  %243 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i420 = getelementptr inbounds %struct.mii_bus, ptr %244, i32 0, i32 8
  %call.i421 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i420) #10
  br i1 %call.i421, label %if.then90.if.end.i425_crit_edge, label %do.end.i422, !prof !179

if.then90.if.end.i425_crit_edge:                  ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i425

do.end.i422:                                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i425

if.end.i425:                                      ; preds = %do.end.i422, %if.then90.if.end.i425_crit_edge
  %245 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i424 = icmp eq ptr %246, null
  br i1 %tobool.not.i.i424, label %if.end.i425.phy_base_write.exit429_crit_edge, label %if.end.i.i427

if.end.i425.phy_base_write.exit429_crit_edge:     ; preds = %if.end.i425
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit429

if.end.i.i427:                                    ; preds = %if.end.i425
  call void @__sanitizer_cov_trace_pc() #12
  %247 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %bus.i, align 8
  %249 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %246, align 4
  %call.i.i426 = call i32 @__mdiobus_write(ptr noundef %248, i32 noundef %250, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit429

phy_base_write.exit429:                           ; preds = %if.end.i.i427, %if.end.i425.phy_base_write.exit429_crit_edge
  %251 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i431 = getelementptr inbounds %struct.mii_bus, ptr %252, i32 0, i32 8
  %call.i432 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i431) #10
  br i1 %call.i432, label %phy_base_write.exit429.if.end.i436_crit_edge, label %do.end.i433, !prof !179

phy_base_write.exit429.if.end.i436_crit_edge:     ; preds = %phy_base_write.exit429
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i436

do.end.i433:                                      ; preds = %phy_base_write.exit429
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i436

if.end.i436:                                      ; preds = %do.end.i433, %phy_base_write.exit429.if.end.i436_crit_edge
  %253 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i435 = icmp eq ptr %254, null
  br i1 %tobool.not.i.i435, label %if.end.i436.phy_base_write.exit440_crit_edge, label %if.end.i.i438

if.end.i436.phy_base_write.exit440_crit_edge:     ; preds = %if.end.i436
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit440

if.end.i.i438:                                    ; preds = %if.end.i436
  call void @__sanitizer_cov_trace_pc() #12
  %255 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %bus.i, align 8
  %257 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %254, align 4
  %call.i.i437 = call i32 @__mdiobus_write(ptr noundef %256, i32 noundef %258, i32 noundef 3, i16 noundef zeroext 16055) #10
  br label %phy_base_write.exit440

phy_base_write.exit440:                           ; preds = %if.end.i.i438, %if.end.i436.phy_base_write.exit440_crit_edge
  %259 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i442 = getelementptr inbounds %struct.mii_bus, ptr %260, i32 0, i32 8
  %call.i443 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i442) #10
  br i1 %call.i443, label %phy_base_write.exit440.if.end.i447_crit_edge, label %do.end.i444, !prof !179

phy_base_write.exit440.if.end.i447_crit_edge:     ; preds = %phy_base_write.exit440
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i447

do.end.i444:                                      ; preds = %phy_base_write.exit440
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i447

if.end.i447:                                      ; preds = %do.end.i444, %phy_base_write.exit440.if.end.i447_crit_edge
  %261 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i446 = icmp eq ptr %262, null
  br i1 %tobool.not.i.i446, label %if.end.i447.phy_base_write.exit451_crit_edge, label %if.end.i.i449

if.end.i447.phy_base_write.exit451_crit_edge:     ; preds = %if.end.i447
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit451

if.end.i.i449:                                    ; preds = %if.end.i447
  call void @__sanitizer_cov_trace_pc() #12
  %263 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %bus.i, align 8
  %265 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %262, align 4
  %call.i.i448 = call i32 @__mdiobus_write(ptr noundef %264, i32 noundef %266, i32 noundef 4, i16 noundef zeroext 16402) #10
  br label %phy_base_write.exit451

phy_base_write.exit451:                           ; preds = %if.end.i.i449, %if.end.i447.phy_base_write.exit451_crit_edge
  %267 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i453 = getelementptr inbounds %struct.mii_bus, ptr %268, i32 0, i32 8
  %call.i454 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i453) #10
  br i1 %call.i454, label %phy_base_write.exit451.if.end.i458_crit_edge, label %do.end.i455, !prof !179

phy_base_write.exit451.if.end.i458_crit_edge:     ; preds = %phy_base_write.exit451
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i458

do.end.i455:                                      ; preds = %phy_base_write.exit451
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i458

if.end.i458:                                      ; preds = %do.end.i455, %phy_base_write.exit451.if.end.i458_crit_edge
  %269 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i457 = icmp eq ptr %270, null
  br i1 %tobool.not.i.i457, label %if.end.i458.phy_base_write.exit462_crit_edge, label %if.end.i.i460

if.end.i458.phy_base_write.exit462_crit_edge:     ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit462

if.end.i.i460:                                    ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #12
  %271 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %bus.i, align 8
  %273 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %270, align 4
  %call.i.i459 = call i32 @__mdiobus_write(ptr noundef %272, i32 noundef %274, i32 noundef 12, i16 noundef zeroext 256) #10
  br label %phy_base_write.exit462

phy_base_write.exit462:                           ; preds = %if.end.i.i460, %if.end.i458.phy_base_write.exit462_crit_edge
  call fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext false)
  %275 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %fw, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %276, align 4
  %279 = trunc i32 %278 to i16
  %conv98 = add i16 %279, 1
  %call99 = call fastcc i32 @vsc8584_get_fw_crc(ptr noundef %phydev, i16 noundef zeroext 16384, i16 noundef zeroext %conv98, ptr noundef nonnull %crc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %phy_base_write.exit462.out_crit_edge

phy_base_write.exit462.out_crit_edge:             ; preds = %phy_base_write.exit462
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end102:                                        ; preds = %phy_base_write.exit462
  %280 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %crc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10728, i16 %281)
  %cmp104.not = icmp eq i16 %281, 10728
  br i1 %cmp104.not, label %if.end102.if.end111_crit_edge, label %do.end109

if.end102.if.end111_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.45) #13
  br label %if.end111

if.end111:                                        ; preds = %do.end109, %if.end102.if.end111_crit_edge, %vsc8574_is_serdes_init.exit.if.end111_crit_edge
  %282 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i464 = getelementptr inbounds %struct.mii_bus, ptr %283, i32 0, i32 8
  %call.i465 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i464) #10
  br i1 %call.i465, label %if.end111.if.end.i469_crit_edge, label %do.end.i466, !prof !179

if.end111.if.end.i469_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i469

do.end.i466:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i469

if.end.i469:                                      ; preds = %do.end.i466, %if.end111.if.end.i469_crit_edge
  %284 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i468 = icmp eq ptr %285, null
  br i1 %tobool.not.i.i468, label %if.end.i469.phy_base_write.exit473_crit_edge, label %if.end.i.i471

if.end.i469.phy_base_write.exit473_crit_edge:     ; preds = %if.end.i469
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit473

if.end.i.i471:                                    ; preds = %if.end.i469
  call void @__sanitizer_cov_trace_pc() #12
  %286 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %bus.i, align 8
  %288 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %285, align 4
  %call.i.i470 = call i32 @__mdiobus_write(ptr noundef %287, i32 noundef %289, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit473

phy_base_write.exit473:                           ; preds = %if.end.i.i471, %if.end.i469.phy_base_write.exit473_crit_edge
  %call113 = call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext 26)
  br label %out

out:                                              ; preds = %phy_base_write.exit473, %phy_base_write.exit462.out_crit_edge, %do.end68, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call52, %if.end.out_crit_edge ], [ %call113, %phy_base_write.exit473 ], [ %call99, %phy_base_write.exit462.out_crit_edge ], [ %call63, %do.end68 ]
  %290 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i475 = getelementptr inbounds %struct.mii_bus, ptr %291, i32 0, i32 8
  %call.i476 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i475) #10
  br i1 %call.i476, label %out.if.end.i480_crit_edge, label %do.end.i477, !prof !179

out.if.end.i480_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i480

do.end.i477:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i480

if.end.i480:                                      ; preds = %do.end.i477, %out.if.end.i480_crit_edge
  %292 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i479 = icmp eq ptr %293, null
  br i1 %tobool.not.i.i479, label %if.end.i480.phy_base_write.exit484_crit_edge, label %if.end.i.i482

if.end.i480.phy_base_write.exit484_crit_edge:     ; preds = %if.end.i480
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit484

if.end.i.i482:                                    ; preds = %if.end.i480
  call void @__sanitizer_cov_trace_pc() #12
  %294 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %bus.i, align 8
  %296 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %293, align 4
  %call.i.i481 = call i32 @__mdiobus_write(ptr noundef %295, i32 noundef %297, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit484

phy_base_write.exit484:                           ; preds = %if.end.i.i482, %if.end.i480.phy_base_write.exit484_crit_edge
  %298 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %299) #10
  br label %cleanup

cleanup:                                          ; preds = %phy_base_write.exit484, %do.end
  %retval.0 = phi i32 [ %call50, %do.end ], [ %ret.0, %phy_base_write.exit484 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_config_pre_init(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %crc = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crc) #10
  %1 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %crc, align 2, !annotation !180
  %call = tail call fastcc i32 @vsc8584_pll5g_reset(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.48, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !179

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %4 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i226 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  %call.i227 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i226) #10
  br i1 %call.i227, label %phy_base_write.exit.if.end.i231_crit_edge, label %do.end.i228, !prof !179

phy_base_write.exit.if.end.i231_crit_edge:        ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i231

do.end.i228:                                      ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i231

if.end.i231:                                      ; preds = %do.end.i228, %phy_base_write.exit.if.end.i231_crit_edge
  %12 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i230 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i230, label %if.end.i231.phy_base_read.exit_crit_edge, label %if.end.i.i233

if.end.i231.phy_base_read.exit_crit_edge:         ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit

if.end.i.i233:                                    ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %call.i.i232 = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 22) #10
  br label %phy_base_read.exit

phy_base_read.exit:                               ; preds = %if.end.i.i233, %if.end.i231.phy_base_read.exit_crit_edge
  %retval.0.i.i234 = phi i32 [ %call.i.i232, %if.end.i.i233 ], [ -5, %if.end.i231.phy_base_read.exit_crit_edge ]
  %18 = trunc i32 %retval.0.i.i234 to i16
  %conv5 = or i16 %18, 1
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i236 = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 8
  %call.i237 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i236) #10
  br i1 %call.i237, label %phy_base_read.exit.if.end.i241_crit_edge, label %do.end.i238, !prof !179

phy_base_read.exit.if.end.i241_crit_edge:         ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i241

do.end.i238:                                      ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i241

if.end.i241:                                      ; preds = %do.end.i238, %phy_base_read.exit.if.end.i241_crit_edge
  %21 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i240 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i240, label %if.end.i241.phy_base_write.exit245_crit_edge, label %if.end.i.i243

if.end.i241.phy_base_write.exit245_crit_edge:     ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit245

if.end.i.i243:                                    ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %call.i.i242 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 22, i16 noundef zeroext %conv5) #10
  br label %phy_base_write.exit245

phy_base_write.exit245:                           ; preds = %if.end.i.i243, %if.end.i241.phy_base_write.exit245_crit_edge
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i247 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 8
  %call.i248 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i247) #10
  br i1 %call.i248, label %phy_base_write.exit245.if.end.i252_crit_edge, label %do.end.i249, !prof !179

phy_base_write.exit245.if.end.i252_crit_edge:     ; preds = %phy_base_write.exit245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i252

do.end.i249:                                      ; preds = %phy_base_write.exit245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i252

if.end.i252:                                      ; preds = %do.end.i249, %phy_base_write.exit245.if.end.i252_crit_edge
  %29 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i251 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i251, label %if.end.i252.phy_base_write.exit256_crit_edge, label %if.end.i.i254

if.end.i252.phy_base_write.exit256_crit_edge:     ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit256

if.end.i.i254:                                    ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %call.i.i253 = tail call i32 @__mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 25, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit256

phy_base_write.exit256:                           ; preds = %if.end.i.i254, %if.end.i252.phy_base_write.exit256_crit_edge
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i258 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 8
  %call.i259 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i258) #10
  br i1 %call.i259, label %phy_base_write.exit256.if.end.i263_crit_edge, label %do.end.i260, !prof !179

phy_base_write.exit256.if.end.i263_crit_edge:     ; preds = %phy_base_write.exit256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i263

do.end.i260:                                      ; preds = %phy_base_write.exit256
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i263

if.end.i263:                                      ; preds = %do.end.i260, %phy_base_write.exit256.if.end.i263_crit_edge
  %37 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i262 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i262, label %if.end.i263.phy_base_read.exit267_crit_edge, label %if.end.i.i265

if.end.i263.phy_base_read.exit267_crit_edge:      ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit267

if.end.i.i265:                                    ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %38, align 4
  %call.i.i264 = tail call i32 @__mdiobus_read(ptr noundef %40, i32 noundef %42, i32 noundef 18) #10
  br label %phy_base_read.exit267

phy_base_read.exit267:                            ; preds = %if.end.i.i265, %if.end.i263.phy_base_read.exit267_crit_edge
  %retval.0.i.i266 = phi i32 [ %call.i.i264, %if.end.i.i265 ], [ -5, %if.end.i263.phy_base_read.exit267_crit_edge ]
  %43 = trunc i32 %retval.0.i.i266 to i16
  %conv12 = or i16 %43, 8
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i269 = getelementptr inbounds %struct.mii_bus, ptr %45, i32 0, i32 8
  %call.i270 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i269) #10
  br i1 %call.i270, label %phy_base_read.exit267.if.end.i274_crit_edge, label %do.end.i271, !prof !179

phy_base_read.exit267.if.end.i274_crit_edge:      ; preds = %phy_base_read.exit267
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i274

do.end.i271:                                      ; preds = %phy_base_read.exit267
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i274

if.end.i274:                                      ; preds = %do.end.i271, %phy_base_read.exit267.if.end.i274_crit_edge
  %46 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i273 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i273, label %if.end.i274.phy_base_write.exit278_crit_edge, label %if.end.i.i276

if.end.i274.phy_base_write.exit278_crit_edge:     ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit278

if.end.i.i276:                                    ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  %call.i.i275 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 18, i16 noundef zeroext %conv12) #10
  br label %phy_base_write.exit278

phy_base_write.exit278:                           ; preds = %if.end.i.i276, %if.end.i274.phy_base_write.exit278_crit_edge
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i280 = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 8
  %call.i281 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i280) #10
  br i1 %call.i281, label %phy_base_write.exit278.if.end.i285_crit_edge, label %do.end.i282, !prof !179

phy_base_write.exit278.if.end.i285_crit_edge:     ; preds = %phy_base_write.exit278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i285

do.end.i282:                                      ; preds = %phy_base_write.exit278
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i285

if.end.i285:                                      ; preds = %do.end.i282, %phy_base_write.exit278.if.end.i285_crit_edge
  %54 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i284 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i284, label %if.end.i285.phy_base_write.exit289_crit_edge, label %if.end.i.i287

if.end.i285.phy_base_write.exit289_crit_edge:     ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit289

if.end.i.i287:                                    ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 8
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %55, align 4
  %call.i.i286 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 31, i16 noundef zeroext 3) #10
  br label %phy_base_write.exit289

phy_base_write.exit289:                           ; preds = %if.end.i.i287, %if.end.i285.phy_base_write.exit289_crit_edge
  %60 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i291 = getelementptr inbounds %struct.mii_bus, ptr %61, i32 0, i32 8
  %call.i292 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i291) #10
  br i1 %call.i292, label %phy_base_write.exit289.if.end.i296_crit_edge, label %do.end.i293, !prof !179

phy_base_write.exit289.if.end.i296_crit_edge:     ; preds = %phy_base_write.exit289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i296

do.end.i293:                                      ; preds = %phy_base_write.exit289
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i296

if.end.i296:                                      ; preds = %do.end.i293, %phy_base_write.exit289.if.end.i296_crit_edge
  %62 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i295 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i295, label %if.end.i296.phy_base_write.exit300_crit_edge, label %if.end.i.i298

if.end.i296.phy_base_write.exit300_crit_edge:     ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit300

if.end.i.i298:                                    ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i, align 8
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %63, align 4
  %call.i.i297 = tail call i32 @__mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 22, i16 noundef zeroext 8192) #10
  br label %phy_base_write.exit300

phy_base_write.exit300:                           ; preds = %if.end.i.i298, %if.end.i296.phy_base_write.exit300_crit_edge
  %68 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i302 = getelementptr inbounds %struct.mii_bus, ptr %69, i32 0, i32 8
  %call.i303 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i302) #10
  br i1 %call.i303, label %phy_base_write.exit300.if.end.i307_crit_edge, label %do.end.i304, !prof !179

phy_base_write.exit300.if.end.i307_crit_edge:     ; preds = %phy_base_write.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i307

do.end.i304:                                      ; preds = %phy_base_write.exit300
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i307

if.end.i307:                                      ; preds = %do.end.i304, %phy_base_write.exit300.if.end.i307_crit_edge
  %70 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i306 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i306, label %if.end.i307.phy_base_write.exit311_crit_edge, label %if.end.i.i309

if.end.i307.phy_base_write.exit311_crit_edge:     ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit311

if.end.i.i309:                                    ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i, align 8
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  %call.i.i308 = tail call i32 @__mdiobus_write(ptr noundef %73, i32 noundef %75, i32 noundef 31, i16 noundef zeroext 10800) #10
  br label %phy_base_write.exit311

phy_base_write.exit311:                           ; preds = %if.end.i.i309, %if.end.i307.phy_base_write.exit311_crit_edge
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i313 = getelementptr inbounds %struct.mii_bus, ptr %77, i32 0, i32 8
  %call.i314 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i313) #10
  br i1 %call.i314, label %phy_base_write.exit311.if.end.i318_crit_edge, label %do.end.i315, !prof !179

phy_base_write.exit311.if.end.i318_crit_edge:     ; preds = %phy_base_write.exit311
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i318

do.end.i315:                                      ; preds = %phy_base_write.exit311
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i318

if.end.i318:                                      ; preds = %do.end.i315, %phy_base_write.exit311.if.end.i318_crit_edge
  %78 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i317 = icmp eq ptr %79, null
  br i1 %tobool.not.i.i317, label %if.end.i318.phy_base_write.exit322_crit_edge, label %if.end.i.i320

if.end.i318.phy_base_write.exit322_crit_edge:     ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit322

if.end.i.i320:                                    ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i, align 8
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %79, align 4
  %call.i.i319 = tail call i32 @__mdiobus_write(ptr noundef %81, i32 noundef %83, i32 noundef 5, i16 noundef zeroext 7968) #10
  br label %phy_base_write.exit322

phy_base_write.exit322:                           ; preds = %if.end.i.i320, %if.end.i318.phy_base_write.exit322_crit_edge
  %84 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i324 = getelementptr inbounds %struct.mii_bus, ptr %85, i32 0, i32 8
  %call.i325 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i324) #10
  br i1 %call.i325, label %phy_base_write.exit322.if.end.i329_crit_edge, label %do.end.i326, !prof !179

phy_base_write.exit322.if.end.i329_crit_edge:     ; preds = %phy_base_write.exit322
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i329

do.end.i326:                                      ; preds = %phy_base_write.exit322
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i329

if.end.i329:                                      ; preds = %do.end.i326, %phy_base_write.exit322.if.end.i329_crit_edge
  %86 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i328 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i328, label %if.end.i329.phy_base_read.exit333_crit_edge, label %if.end.i.i331

if.end.i329.phy_base_read.exit333_crit_edge:      ; preds = %if.end.i329
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit333

if.end.i.i331:                                    ; preds = %if.end.i329
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i, align 8
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %87, align 4
  %call.i.i330 = tail call i32 @__mdiobus_read(ptr noundef %89, i32 noundef %91, i32 noundef 8) #10
  br label %phy_base_read.exit333

phy_base_read.exit333:                            ; preds = %if.end.i.i331, %if.end.i329.phy_base_read.exit333_crit_edge
  %retval.0.i.i332 = phi i32 [ %call.i.i330, %if.end.i.i331 ], [ -5, %if.end.i329.phy_base_read.exit333_crit_edge ]
  %92 = trunc i32 %retval.0.i.i332 to i16
  %conv22 = or i16 %92, -32768
  %93 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i335 = getelementptr inbounds %struct.mii_bus, ptr %94, i32 0, i32 8
  %call.i336 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i335) #10
  br i1 %call.i336, label %phy_base_read.exit333.if.end.i340_crit_edge, label %do.end.i337, !prof !179

phy_base_read.exit333.if.end.i340_crit_edge:      ; preds = %phy_base_read.exit333
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i340

do.end.i337:                                      ; preds = %phy_base_read.exit333
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i340

if.end.i340:                                      ; preds = %do.end.i337, %phy_base_read.exit333.if.end.i340_crit_edge
  %95 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i339 = icmp eq ptr %96, null
  br i1 %tobool.not.i.i339, label %if.end.i340.phy_base_write.exit344_crit_edge, label %if.end.i.i342

if.end.i340.phy_base_write.exit344_crit_edge:     ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit344

if.end.i.i342:                                    ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus.i, align 8
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %96, align 4
  %call.i.i341 = tail call i32 @__mdiobus_write(ptr noundef %98, i32 noundef %100, i32 noundef 8, i16 noundef zeroext %conv22) #10
  br label %phy_base_write.exit344

phy_base_write.exit344:                           ; preds = %if.end.i.i342, %if.end.i340.phy_base_write.exit344_crit_edge
  %101 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i346 = getelementptr inbounds %struct.mii_bus, ptr %102, i32 0, i32 8
  %call.i347 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i346) #10
  br i1 %call.i347, label %phy_base_write.exit344.if.end.i351_crit_edge, label %do.end.i348, !prof !179

phy_base_write.exit344.if.end.i351_crit_edge:     ; preds = %phy_base_write.exit344
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i351

do.end.i348:                                      ; preds = %phy_base_write.exit344
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i351

if.end.i351:                                      ; preds = %do.end.i348, %phy_base_write.exit344.if.end.i351_crit_edge
  %103 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i350 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i350, label %if.end.i351.phy_base_write.exit355_crit_edge, label %if.end.i.i353

if.end.i351.phy_base_write.exit355_crit_edge:     ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit355

if.end.i.i353:                                    ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bus.i, align 8
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %104, align 4
  %call.i.i352 = tail call i32 @__mdiobus_write(ptr noundef %106, i32 noundef %108, i32 noundef 31, i16 noundef zeroext 21173) #10
  br label %phy_base_write.exit355

phy_base_write.exit355:                           ; preds = %if.end.i.i353, %if.end.i351.phy_base_write.exit355_crit_edge
  %109 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i357 = getelementptr inbounds %struct.mii_bus, ptr %110, i32 0, i32 8
  %call.i358 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i357) #10
  br i1 %call.i358, label %phy_base_write.exit355.if.end.i362_crit_edge, label %do.end.i359, !prof !179

phy_base_write.exit355.if.end.i362_crit_edge:     ; preds = %phy_base_write.exit355
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i362

do.end.i359:                                      ; preds = %phy_base_write.exit355
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i362

if.end.i362:                                      ; preds = %do.end.i359, %phy_base_write.exit355.if.end.i362_crit_edge
  %111 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i361 = icmp eq ptr %112, null
  br i1 %tobool.not.i.i361, label %if.end.i362.phy_base_write.exit366_crit_edge, label %if.end.i.i364

if.end.i362.phy_base_write.exit366_crit_edge:     ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit366

if.end.i.i364:                                    ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus.i, align 8
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %112, align 4
  %call.i.i363 = tail call i32 @__mdiobus_write(ptr noundef %114, i32 noundef %116, i32 noundef 16, i16 noundef zeroext -20572) #10
  br label %phy_base_write.exit366

phy_base_write.exit366:                           ; preds = %if.end.i.i364, %if.end.i362.phy_base_write.exit366_crit_edge
  %117 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i368 = getelementptr inbounds %struct.mii_bus, ptr %118, i32 0, i32 8
  %call.i369 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i368) #10
  br i1 %call.i369, label %phy_base_write.exit366.if.end.i373_crit_edge, label %do.end.i370, !prof !179

phy_base_write.exit366.if.end.i373_crit_edge:     ; preds = %phy_base_write.exit366
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i373

do.end.i370:                                      ; preds = %phy_base_write.exit366
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i373

if.end.i373:                                      ; preds = %do.end.i370, %phy_base_write.exit366.if.end.i373_crit_edge
  %119 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i372 = icmp eq ptr %120, null
  br i1 %tobool.not.i.i372, label %if.end.i373.phy_base_read.exit377_crit_edge, label %if.end.i.i375

if.end.i373.phy_base_read.exit377_crit_edge:      ; preds = %if.end.i373
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit377

if.end.i.i375:                                    ; preds = %if.end.i373
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bus.i, align 8
  %123 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %120, align 4
  %call.i.i374 = tail call i32 @__mdiobus_read(ptr noundef %122, i32 noundef %124, i32 noundef 18) #10
  br label %phy_base_read.exit377

phy_base_read.exit377:                            ; preds = %if.end.i.i375, %if.end.i373.phy_base_read.exit377_crit_edge
  %retval.0.i.i376 = phi i32 [ %call.i.i374, %if.end.i.i375 ], [ -5, %if.end.i373.phy_base_read.exit377_crit_edge ]
  %125 = trunc i32 %retval.0.i.i376 to i16
  %126 = and i16 %125, -128
  %conv32 = or i16 %126, 25
  %127 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i379 = getelementptr inbounds %struct.mii_bus, ptr %128, i32 0, i32 8
  %call.i380 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i379) #10
  br i1 %call.i380, label %phy_base_read.exit377.if.end.i384_crit_edge, label %do.end.i381, !prof !179

phy_base_read.exit377.if.end.i384_crit_edge:      ; preds = %phy_base_read.exit377
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i384

do.end.i381:                                      ; preds = %phy_base_read.exit377
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i384

if.end.i384:                                      ; preds = %do.end.i381, %phy_base_read.exit377.if.end.i384_crit_edge
  %129 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i383 = icmp eq ptr %130, null
  br i1 %tobool.not.i.i383, label %if.end.i384.phy_base_write.exit388_crit_edge, label %if.end.i.i386

if.end.i384.phy_base_write.exit388_crit_edge:     ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit388

if.end.i.i386:                                    ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bus.i, align 8
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %130, align 4
  %call.i.i385 = tail call i32 @__mdiobus_write(ptr noundef %132, i32 noundef %134, i32 noundef 18, i16 noundef zeroext %conv32) #10
  br label %phy_base_write.exit388

phy_base_write.exit388:                           ; preds = %if.end.i.i386, %if.end.i384.phy_base_write.exit388_crit_edge
  %135 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i390 = getelementptr inbounds %struct.mii_bus, ptr %136, i32 0, i32 8
  %call.i391 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i390) #10
  br i1 %call.i391, label %phy_base_write.exit388.if.end.i395_crit_edge, label %do.end.i392, !prof !179

phy_base_write.exit388.if.end.i395_crit_edge:     ; preds = %phy_base_write.exit388
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i395

do.end.i392:                                      ; preds = %phy_base_write.exit388
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i395

if.end.i395:                                      ; preds = %do.end.i392, %phy_base_write.exit388.if.end.i395_crit_edge
  %137 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i394 = icmp eq ptr %138, null
  br i1 %tobool.not.i.i394, label %if.end.i395.for.body.preheader_crit_edge, label %if.end.i.i397

if.end.i395.for.body.preheader_crit_edge:         ; preds = %if.end.i395
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end.i.i397:                                    ; preds = %if.end.i395
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bus.i, align 8
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %138, align 4
  %call.i.i396 = tail call i32 @__mdiobus_write(ptr noundef %140, i32 noundef %142, i32 noundef 16, i16 noundef zeroext -28764) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.i.i397, %if.end.i395.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0535 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [22 x %struct.reg_val], ptr @vsc8584_config_pre_init.pre_init1, i32 0, i32 %i.0535
  %143 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx, align 4
  %val = getelementptr [22 x %struct.reg_val], ptr @vsc8584_config_pre_init.pre_init1, i32 0, i32 %i.0535, i32 1
  %145 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %val, align 4
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext %144, i32 noundef %146)
  %inc = add nuw nsw i32 %i.0535, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %147 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i401 = getelementptr inbounds %struct.mii_bus, ptr %148, i32 0, i32 8
  %call.i402 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i401) #10
  br i1 %call.i402, label %for.end.if.end.i406_crit_edge, label %do.end.i403, !prof !179

for.end.if.end.i406_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i406

do.end.i403:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i406

if.end.i406:                                      ; preds = %do.end.i403, %for.end.if.end.i406_crit_edge
  %149 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i405 = icmp eq ptr %150, null
  br i1 %tobool.not.i.i405, label %if.end.i406.phy_base_write.exit410_crit_edge, label %if.end.i.i408

if.end.i406.phy_base_write.exit410_crit_edge:     ; preds = %if.end.i406
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit410

if.end.i.i408:                                    ; preds = %if.end.i406
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bus.i, align 8
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %150, align 4
  %call.i.i407 = tail call i32 @__mdiobus_write(ptr noundef %152, i32 noundef %154, i32 noundef 31, i16 noundef zeroext 2) #10
  br label %phy_base_write.exit410

phy_base_write.exit410:                           ; preds = %if.end.i.i408, %if.end.i406.phy_base_write.exit410_crit_edge
  %155 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i412 = getelementptr inbounds %struct.mii_bus, ptr %156, i32 0, i32 8
  %call.i413 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i412) #10
  br i1 %call.i413, label %phy_base_write.exit410.if.end.i417_crit_edge, label %do.end.i414, !prof !179

phy_base_write.exit410.if.end.i417_crit_edge:     ; preds = %phy_base_write.exit410
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i417

do.end.i414:                                      ; preds = %phy_base_write.exit410
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i417

if.end.i417:                                      ; preds = %do.end.i414, %phy_base_write.exit410.if.end.i417_crit_edge
  %157 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i416 = icmp eq ptr %158, null
  br i1 %tobool.not.i.i416, label %if.end.i417.phy_base_write.exit421_crit_edge, label %if.end.i.i419

if.end.i417.phy_base_write.exit421_crit_edge:     ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit421

if.end.i.i419:                                    ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bus.i, align 8
  %161 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %158, align 4
  %call.i.i418 = tail call i32 @__mdiobus_write(ptr noundef %160, i32 noundef %162, i32 noundef 16, i16 noundef zeroext 654) #10
  br label %phy_base_write.exit421

phy_base_write.exit421:                           ; preds = %if.end.i.i419, %if.end.i417.phy_base_write.exit421_crit_edge
  %163 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i423 = getelementptr inbounds %struct.mii_bus, ptr %164, i32 0, i32 8
  %call.i424 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i423) #10
  br i1 %call.i424, label %phy_base_write.exit421.if.end.i428_crit_edge, label %do.end.i425, !prof !179

phy_base_write.exit421.if.end.i428_crit_edge:     ; preds = %phy_base_write.exit421
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i428

do.end.i425:                                      ; preds = %phy_base_write.exit421
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i428

if.end.i428:                                      ; preds = %do.end.i425, %phy_base_write.exit421.if.end.i428_crit_edge
  %165 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i427 = icmp eq ptr %166, null
  br i1 %tobool.not.i.i427, label %if.end.i428.phy_base_write.exit432_crit_edge, label %if.end.i.i430

if.end.i428.phy_base_write.exit432_crit_edge:     ; preds = %if.end.i428
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit432

if.end.i.i430:                                    ; preds = %if.end.i428
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bus.i, align 8
  %169 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %166, align 4
  %call.i.i429 = tail call i32 @__mdiobus_write(ptr noundef %168, i32 noundef %170, i32 noundef 31, i16 noundef zeroext 21173) #10
  br label %phy_base_write.exit432

phy_base_write.exit432:                           ; preds = %if.end.i.i430, %if.end.i428.phy_base_write.exit432_crit_edge
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1158, i32 noundef 566552)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1160, i32 noundef 7194262)
  tail call fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext 1162, i32 noundef 2322)
  %171 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i434 = getelementptr inbounds %struct.mii_bus, ptr %172, i32 0, i32 8
  %call.i435 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i434) #10
  br i1 %call.i435, label %phy_base_write.exit432.if.end.i439_crit_edge, label %do.end.i436, !prof !179

phy_base_write.exit432.if.end.i439_crit_edge:     ; preds = %phy_base_write.exit432
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i439

do.end.i436:                                      ; preds = %phy_base_write.exit432
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i439

if.end.i439:                                      ; preds = %do.end.i436, %phy_base_write.exit432.if.end.i439_crit_edge
  %173 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i438 = icmp eq ptr %174, null
  br i1 %tobool.not.i.i438, label %if.end.i439.phy_base_write.exit443_crit_edge, label %if.end.i.i441

if.end.i439.phy_base_write.exit443_crit_edge:     ; preds = %if.end.i439
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit443

if.end.i.i441:                                    ; preds = %if.end.i439
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus.i, align 8
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %174, align 4
  %call.i.i440 = tail call i32 @__mdiobus_write(ptr noundef %176, i32 noundef %178, i32 noundef 31, i16 noundef zeroext 10800) #10
  br label %phy_base_write.exit443

phy_base_write.exit443:                           ; preds = %if.end.i.i441, %if.end.i439.phy_base_write.exit443_crit_edge
  %179 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i445 = getelementptr inbounds %struct.mii_bus, ptr %180, i32 0, i32 8
  %call.i446 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i445) #10
  br i1 %call.i446, label %phy_base_write.exit443.if.end.i450_crit_edge, label %do.end.i447, !prof !179

phy_base_write.exit443.if.end.i450_crit_edge:     ; preds = %phy_base_write.exit443
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i450

do.end.i447:                                      ; preds = %phy_base_write.exit443
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i450

if.end.i450:                                      ; preds = %do.end.i447, %phy_base_write.exit443.if.end.i450_crit_edge
  %181 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i449 = icmp eq ptr %182, null
  br i1 %tobool.not.i.i449, label %if.end.i450.phy_base_read.exit454_crit_edge, label %if.end.i.i452

if.end.i450.phy_base_read.exit454_crit_edge:      ; preds = %if.end.i450
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit454

if.end.i.i452:                                    ; preds = %if.end.i450
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bus.i, align 8
  %185 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %182, align 4
  %call.i.i451 = tail call i32 @__mdiobus_read(ptr noundef %184, i32 noundef %186, i32 noundef 8) #10
  br label %phy_base_read.exit454

phy_base_read.exit454:                            ; preds = %if.end.i.i452, %if.end.i450.phy_base_read.exit454_crit_edge
  %retval.0.i.i453 = phi i32 [ %call.i.i451, %if.end.i.i452 ], [ -5, %if.end.i450.phy_base_read.exit454_crit_edge ]
  %187 = trunc i32 %retval.0.i.i453 to i16
  %conv58 = and i16 %187, 32767
  %188 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i456 = getelementptr inbounds %struct.mii_bus, ptr %189, i32 0, i32 8
  %call.i457 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i456) #10
  br i1 %call.i457, label %phy_base_read.exit454.if.end.i461_crit_edge, label %do.end.i458, !prof !179

phy_base_read.exit454.if.end.i461_crit_edge:      ; preds = %phy_base_read.exit454
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i461

do.end.i458:                                      ; preds = %phy_base_read.exit454
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i461

if.end.i461:                                      ; preds = %do.end.i458, %phy_base_read.exit454.if.end.i461_crit_edge
  %190 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i460 = icmp eq ptr %191, null
  br i1 %tobool.not.i.i460, label %if.end.i461.phy_base_write.exit465_crit_edge, label %if.end.i.i463

if.end.i461.phy_base_write.exit465_crit_edge:     ; preds = %if.end.i461
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit465

if.end.i.i463:                                    ; preds = %if.end.i461
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bus.i, align 8
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %191, align 4
  %call.i.i462 = tail call i32 @__mdiobus_write(ptr noundef %193, i32 noundef %195, i32 noundef 8, i16 noundef zeroext %conv58) #10
  br label %phy_base_write.exit465

phy_base_write.exit465:                           ; preds = %if.end.i.i463, %if.end.i461.phy_base_write.exit465_crit_edge
  %196 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i467 = getelementptr inbounds %struct.mii_bus, ptr %197, i32 0, i32 8
  %call.i468 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i467) #10
  br i1 %call.i468, label %phy_base_write.exit465.if.end.i472_crit_edge, label %do.end.i469, !prof !179

phy_base_write.exit465.if.end.i472_crit_edge:     ; preds = %phy_base_write.exit465
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i472

do.end.i469:                                      ; preds = %phy_base_write.exit465
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i472

if.end.i472:                                      ; preds = %do.end.i469, %phy_base_write.exit465.if.end.i472_crit_edge
  %198 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i471 = icmp eq ptr %199, null
  br i1 %tobool.not.i.i471, label %if.end.i472.phy_base_write.exit476_crit_edge, label %if.end.i.i474

if.end.i472.phy_base_write.exit476_crit_edge:     ; preds = %if.end.i472
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit476

if.end.i.i474:                                    ; preds = %if.end.i472
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bus.i, align 8
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %199, align 4
  %call.i.i473 = tail call i32 @__mdiobus_write(ptr noundef %201, i32 noundef %203, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit476

phy_base_write.exit476:                           ; preds = %if.end.i.i474, %if.end.i472.phy_base_write.exit476_crit_edge
  %204 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i478 = getelementptr inbounds %struct.mii_bus, ptr %205, i32 0, i32 8
  %call.i479 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i478) #10
  br i1 %call.i479, label %phy_base_write.exit476.if.end.i483_crit_edge, label %do.end.i480, !prof !179

phy_base_write.exit476.if.end.i483_crit_edge:     ; preds = %phy_base_write.exit476
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i483

do.end.i480:                                      ; preds = %phy_base_write.exit476
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i483

if.end.i483:                                      ; preds = %do.end.i480, %phy_base_write.exit476.if.end.i483_crit_edge
  %206 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i482 = icmp eq ptr %207, null
  br i1 %tobool.not.i.i482, label %if.end.i483.phy_base_read.exit487_crit_edge, label %if.end.i.i485

if.end.i483.phy_base_read.exit487_crit_edge:      ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit487

if.end.i.i485:                                    ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bus.i, align 8
  %210 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %207, align 4
  %call.i.i484 = tail call i32 @__mdiobus_read(ptr noundef %209, i32 noundef %211, i32 noundef 22) #10
  br label %phy_base_read.exit487

phy_base_read.exit487:                            ; preds = %if.end.i.i485, %if.end.i483.phy_base_read.exit487_crit_edge
  %retval.0.i.i486 = phi i32 [ %call.i.i484, %if.end.i.i485 ], [ -5, %if.end.i483.phy_base_read.exit487_crit_edge ]
  %212 = trunc i32 %retval.0.i.i486 to i16
  %conv65 = and i16 %212, -2
  %213 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i489 = getelementptr inbounds %struct.mii_bus, ptr %214, i32 0, i32 8
  %call.i490 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i489) #10
  br i1 %call.i490, label %phy_base_read.exit487.if.end.i494_crit_edge, label %do.end.i491, !prof !179

phy_base_read.exit487.if.end.i494_crit_edge:      ; preds = %phy_base_read.exit487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i494

do.end.i491:                                      ; preds = %phy_base_read.exit487
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i494

if.end.i494:                                      ; preds = %do.end.i491, %phy_base_read.exit487.if.end.i494_crit_edge
  %215 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i493 = icmp eq ptr %216, null
  br i1 %tobool.not.i.i493, label %if.end.i494.phy_base_write.exit498_crit_edge, label %if.end.i.i496

if.end.i494.phy_base_write.exit498_crit_edge:     ; preds = %if.end.i494
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit498

if.end.i.i496:                                    ; preds = %if.end.i494
  call void @__sanitizer_cov_trace_pc() #12
  %217 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bus.i, align 8
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %216, align 4
  %call.i.i495 = tail call i32 @__mdiobus_write(ptr noundef %218, i32 noundef %220, i32 noundef 22, i16 noundef zeroext %conv65) #10
  br label %phy_base_write.exit498

phy_base_write.exit498:                           ; preds = %if.end.i.i496, %if.end.i494.phy_base_write.exit498_crit_edge
  %call67 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.50, ptr noundef %phydev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool.not = icmp eq i32 %call67, 0
  br i1 %tobool.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %phy_base_write.exit498
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.50, i32 noundef %call67) #13
  br label %cleanup

if.end72:                                         ; preds = %phy_base_write.exit498
  %221 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %fw, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 4
  %225 = trunc i32 %224 to i16
  %conv73 = add i16 %225, 1
  %call74 = call fastcc i32 @vsc8584_get_fw_crc(ptr noundef %phydev, i16 noundef zeroext -6144, i16 noundef zeroext %conv73, ptr noundef nonnull %crc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.out_crit_edge

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end77:                                         ; preds = %if.end72
  %226 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %crc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1208, i16 %227)
  %cmp79.not = icmp eq i16 %227, -1208
  br i1 %cmp79.not, label %if.end77.if.end98_crit_edge, label %do.body82

if.end77.if.end98_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.body82:                                        ; preds = %if.end77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc8584_config_pre_init.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc8584_config_pre_init, %if.then87)) #10
          to label %do.end90 [label %if.then87], !srcloc !182

if.then87:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc8584_config_pre_init.__UNIQUE_ID_ddebug348, ptr noundef %phydev, ptr noundef nonnull @.str.39) #10
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.body82
  %228 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %fw, align 4
  %call91 = call fastcc i32 @vsc8584_patch_fw(ptr noundef %phydev, ptr noundef %229)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.end90.if.end98_crit_edge, label %do.end96

do.end90.if.end98_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.end96:                                         ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.41) #13
  br label %if.end98

if.end98:                                         ; preds = %do.end96, %do.end90.if.end98_crit_edge, %if.end77.if.end98_crit_edge
  call fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext false)
  %230 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %fw, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 4
  %234 = trunc i32 %233 to i16
  %conv102 = add i16 %234, 1
  %call103 = call fastcc i32 @vsc8584_get_fw_crc(ptr noundef %phydev, i16 noundef zeroext -6144, i16 noundef zeroext %conv102, ptr noundef nonnull %crc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end98.out_crit_edge

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end106:                                        ; preds = %if.end98
  %235 = ptrtoint ptr %crc to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %crc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1208, i16 %236)
  %cmp108.not = icmp eq i16 %236, -1208
  br i1 %cmp108.not, label %if.end106.if.end114_crit_edge, label %do.end113

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.45) #13
  br label %if.end114

if.end114:                                        ; preds = %do.end113, %if.end106.if.end114_crit_edge
  %call115 = call fastcc i32 @vsc8584_micro_assert_reset(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end114.out_crit_edge

if.end114.out_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end118:                                        ; preds = %if.end114
  %237 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i500 = getelementptr inbounds %struct.mii_bus, ptr %238, i32 0, i32 8
  %call.i501 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i500) #10
  br i1 %call.i501, label %if.end118.if.end.i505_crit_edge, label %do.end.i502, !prof !179

if.end118.if.end.i505_crit_edge:                  ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i505

do.end.i502:                                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i505

if.end.i505:                                      ; preds = %do.end.i502, %if.end118.if.end.i505_crit_edge
  %239 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i504 = icmp eq ptr %240, null
  br i1 %tobool.not.i.i504, label %if.end.i505.phy_base_write.exit509_crit_edge, label %if.end.i.i507

if.end.i505.phy_base_write.exit509_crit_edge:     ; preds = %if.end.i505
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit509

if.end.i.i507:                                    ; preds = %if.end.i505
  call void @__sanitizer_cov_trace_pc() #12
  %241 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %bus.i, align 8
  %243 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %240, align 4
  %call.i.i506 = call i32 @__mdiobus_write(ptr noundef %242, i32 noundef %244, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit509

phy_base_write.exit509:                           ; preds = %if.end.i.i507, %if.end.i505.phy_base_write.exit509_crit_edge
  %245 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i511 = getelementptr inbounds %struct.mii_bus, ptr %246, i32 0, i32 8
  %call.i512 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i511) #10
  br i1 %call.i512, label %phy_base_write.exit509.if.end.i516_crit_edge, label %do.end.i513, !prof !179

phy_base_write.exit509.if.end.i516_crit_edge:     ; preds = %phy_base_write.exit509
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i516

do.end.i513:                                      ; preds = %phy_base_write.exit509
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i516

if.end.i516:                                      ; preds = %do.end.i513, %phy_base_write.exit509.if.end.i516_crit_edge
  %247 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i515 = icmp eq ptr %248, null
  br i1 %tobool.not.i.i515, label %if.end.i516.out_crit_edge, label %phy_base_write.exit520

if.end.i516.out_crit_edge:                        ; preds = %if.end.i516
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

phy_base_write.exit520:                           ; preds = %if.end.i516
  %249 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %bus.i, align 8
  %251 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %248, align 4
  %call.i.i517 = call i32 @__mdiobus_write(ptr noundef %250, i32 noundef %252, i32 noundef 3, i16 noundef zeroext 7752) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i517)
  %tobool121.not = icmp eq i32 %call.i.i517, 0
  br i1 %tobool121.not, label %if.end123, label %phy_base_write.exit520.out_crit_edge

phy_base_write.exit520.out_crit_edge:             ; preds = %phy_base_write.exit520
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end123:                                        ; preds = %phy_base_write.exit520
  %call124 = call i32 @phy_base_write(ptr noundef %phydev, i32 noundef 4, i16 noundef zeroext 7759)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.out_crit_edge

if.end123.out_crit_edge:                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end127:                                        ; preds = %if.end123
  %call128 = call i32 @phy_base_read(ptr noundef %phydev, i32 noundef 12)
  %253 = trunc i32 %call128 to i16
  %conv132 = or i16 %253, 256
  %call133 = call i32 @phy_base_write(ptr noundef %phydev, i32 noundef 12, i16 noundef zeroext %conv132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end127.out_crit_edge

if.end127.out_crit_edge:                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end136:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.end136, %if.end127.out_crit_edge, %if.end123.out_crit_edge, %phy_base_write.exit520.out_crit_edge, %if.end.i516.out_crit_edge, %if.end114.out_crit_edge, %if.end98.out_crit_edge, %if.end72.out_crit_edge
  %ret.0 = phi i32 [ %call74, %if.end72.out_crit_edge ], [ %call103, %if.end98.out_crit_edge ], [ %call115, %if.end114.out_crit_edge ], [ %call.i.i517, %phy_base_write.exit520.out_crit_edge ], [ %call124, %if.end123.out_crit_edge ], [ %call133, %if.end127.out_crit_edge ], [ 0, %if.end136 ], [ -5, %if.end.i516.out_crit_edge ]
  %254 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i522 = getelementptr inbounds %struct.mii_bus, ptr %255, i32 0, i32 8
  %call.i523 = call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i522) #10
  br i1 %call.i523, label %out.if.end.i527_crit_edge, label %do.end.i524, !prof !179

out.if.end.i527_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i527

do.end.i524:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  call void @dump_stack() #13
  br label %if.end.i527

if.end.i527:                                      ; preds = %do.end.i524, %out.if.end.i527_crit_edge
  %256 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i526 = icmp eq ptr %257, null
  br i1 %tobool.not.i.i526, label %if.end.i527.phy_base_write.exit531_crit_edge, label %if.end.i.i529

if.end.i527.phy_base_write.exit531_crit_edge:     ; preds = %if.end.i527
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit531

if.end.i.i529:                                    ; preds = %if.end.i527
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %bus.i, align 8
  %260 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %257, align 4
  %call.i.i528 = call i32 @__mdiobus_write(ptr noundef %259, i32 noundef %261, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit531

phy_base_write.exit531:                           ; preds = %if.end.i.i529, %if.end.i527.phy_base_write.exit531_crit_edge
  %262 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %263) #10
  br label %cleanup

cleanup:                                          ; preds = %phy_base_write.exit531, %do.end71, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call67, %do.end71 ], [ %ret.0, %phy_base_write.exit531 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc8584_macsec_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc8584_ptp_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_csr_write(ptr noundef %phydev, i16 noundef zeroext %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %val, 16
  %conv = trunc i32 %shr to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !179

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 18, i16 noundef zeroext %conv) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %conv1 = trunc i32 %val to i16
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i11 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  %call.i12 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i11) #10
  br i1 %call.i12, label %phy_base_write.exit.if.end.i16_crit_edge, label %do.end.i13, !prof !179

phy_base_write.exit.if.end.i16_crit_edge:         ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i16

do.end.i13:                                       ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i16

if.end.i16:                                       ; preds = %do.end.i13, %phy_base_write.exit.if.end.i16_crit_edge
  %10 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i15 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i15, label %if.end.i16.phy_base_write.exit20_crit_edge, label %if.end.i.i18

if.end.i16.phy_base_write.exit20_crit_edge:       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit20

if.end.i.i18:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %call.i.i17 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 17, i16 noundef zeroext %conv1) #10
  br label %phy_base_write.exit20

phy_base_write.exit20:                            ; preds = %if.end.i.i18, %if.end.i16.phy_base_write.exit20_crit_edge
  %16 = or i16 %addr, -32768
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i22 = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 8
  %call.i23 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i22) #10
  br i1 %call.i23, label %phy_base_write.exit20.if.end.i27_crit_edge, label %do.end.i24, !prof !179

phy_base_write.exit20.if.end.i27_crit_edge:       ; preds = %phy_base_write.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i27

do.end.i24:                                       ; preds = %phy_base_write.exit20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i27

if.end.i27:                                       ; preds = %do.end.i24, %phy_base_write.exit20.if.end.i27_crit_edge
  %19 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i26 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i26, label %if.end.i27.phy_base_write.exit31_crit_edge, label %if.end.i.i29

if.end.i27.phy_base_write.exit31_crit_edge:       ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit31

if.end.i.i29:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %call.i.i28 = tail call i32 @__mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 16, i16 noundef zeroext %16) #10
  br label %phy_base_write.exit31

phy_base_write.exit31:                            ; preds = %if.end.i.i29, %if.end.i27.phy_base_write.exit31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_get_fw_crc(ptr noundef %phydev, i16 noundef zeroext %start, i16 noundef zeroext %size, ptr nocapture noundef writeonly %crc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !179

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 1) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i15 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  %call.i16 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i15) #10
  br i1 %call.i16, label %phy_base_write.exit.if.end.i20_crit_edge, label %do.end.i17, !prof !179

phy_base_write.exit.if.end.i20_crit_edge:         ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i20

do.end.i17:                                       ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i20

if.end.i20:                                       ; preds = %do.end.i17, %phy_base_write.exit.if.end.i20_crit_edge
  %10 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i19 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i19, label %if.end.i20.phy_base_write.exit24_crit_edge, label %if.end.i.i22

if.end.i20.phy_base_write.exit24_crit_edge:       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit24

if.end.i.i22:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %call.i.i21 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 25, i16 noundef zeroext %start) #10
  br label %phy_base_write.exit24

phy_base_write.exit24:                            ; preds = %if.end.i.i22, %if.end.i20.phy_base_write.exit24_crit_edge
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i26 = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 8
  %call.i27 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i26) #10
  br i1 %call.i27, label %phy_base_write.exit24.if.end.i31_crit_edge, label %do.end.i28, !prof !179

phy_base_write.exit24.if.end.i31_crit_edge:       ; preds = %phy_base_write.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i31

do.end.i28:                                       ; preds = %phy_base_write.exit24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i31

if.end.i31:                                       ; preds = %do.end.i28, %phy_base_write.exit24.if.end.i31_crit_edge
  %18 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i30 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i30, label %if.end.i31.phy_base_write.exit35_crit_edge, label %if.end.i.i33

if.end.i31.phy_base_write.exit35_crit_edge:       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit35

if.end.i.i33:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %call.i.i32 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 26, i16 noundef zeroext %size) #10
  br label %phy_base_write.exit35

phy_base_write.exit35:                            ; preds = %if.end.i.i33, %if.end.i31.phy_base_write.exit35_crit_edge
  %call3 = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %phy_base_write.exit35.out_crit_edge

phy_base_write.exit35.out_crit_edge:              ; preds = %phy_base_write.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %phy_base_write.exit35
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i37 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 8
  %call.i38 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i37) #10
  br i1 %call.i38, label %if.end.if.end.i42_crit_edge, label %do.end.i39, !prof !179

if.end.if.end.i42_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i42

do.end.i39:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i42

if.end.i42:                                       ; preds = %do.end.i39, %if.end.if.end.i42_crit_edge
  %26 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i41 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i41, label %if.end.i42.phy_base_write.exit46_crit_edge, label %if.end.i.i44

if.end.i42.phy_base_write.exit46_crit_edge:       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit46

if.end.i.i44:                                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %call.i.i43 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 31, i16 noundef zeroext 1) #10
  br label %phy_base_write.exit46

phy_base_write.exit46:                            ; preds = %if.end.i.i44, %if.end.i42.phy_base_write.exit46_crit_edge
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i48 = getelementptr inbounds %struct.mii_bus, ptr %33, i32 0, i32 8
  %call.i49 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i48) #10
  br i1 %call.i49, label %phy_base_write.exit46.if.end.i53_crit_edge, label %do.end.i50, !prof !179

phy_base_write.exit46.if.end.i53_crit_edge:       ; preds = %phy_base_write.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i53

do.end.i50:                                       ; preds = %phy_base_write.exit46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i53

if.end.i53:                                       ; preds = %do.end.i50, %phy_base_write.exit46.if.end.i53_crit_edge
  %34 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i52 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i52, label %if.end.i53.phy_base_read.exit_crit_edge, label %if.end.i.i55

if.end.i53.phy_base_read.exit_crit_edge:          ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit

if.end.i.i55:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  %call.i.i54 = tail call i32 @__mdiobus_read(ptr noundef %37, i32 noundef %39, i32 noundef 25) #10
  %phi.cast = trunc i32 %call.i.i54 to i16
  br label %phy_base_read.exit

phy_base_read.exit:                               ; preds = %if.end.i.i55, %if.end.i53.phy_base_read.exit_crit_edge
  %retval.0.i.i56 = phi i16 [ %phi.cast, %if.end.i.i55 ], [ -5, %if.end.i53.phy_base_read.exit_crit_edge ]
  %40 = ptrtoint ptr %crc to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %retval.0.i.i56, ptr %crc, align 2
  br label %out

out:                                              ; preds = %phy_base_read.exit, %phy_base_write.exit35.out_crit_edge
  %41 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i58 = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 8
  %call.i59 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i58) #10
  br i1 %call.i59, label %out.if.end.i63_crit_edge, label %do.end.i60, !prof !179

out.if.end.i63_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i63

do.end.i60:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i63

if.end.i63:                                       ; preds = %do.end.i60, %out.if.end.i63_crit_edge
  %43 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i62 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i62, label %if.end.i63.phy_base_write.exit67_crit_edge, label %if.end.i.i65

if.end.i63.phy_base_write.exit67_crit_edge:       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit67

if.end.i.i65:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 8
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 4
  %call.i.i64 = tail call i32 @__mdiobus_write(ptr noundef %46, i32 noundef %48, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit67

phy_base_write.exit67:                            ; preds = %if.end.i.i65, %if.end.i63.phy_base_write.exit67_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_micro_assert_reset(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc8584_cmd(ptr noundef %phydev, i16 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !179

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i52 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  %call.i53 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i52) #10
  br i1 %call.i53, label %phy_base_write.exit.if.end.i57_crit_edge, label %do.end.i54, !prof !179

phy_base_write.exit.if.end.i57_crit_edge:         ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i57

do.end.i54:                                       ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i57

if.end.i57:                                       ; preds = %do.end.i54, %phy_base_write.exit.if.end.i57_crit_edge
  %10 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i56 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i56, label %if.end.i57.phy_base_read.exit_crit_edge, label %if.end.i.i59

if.end.i57.phy_base_read.exit_crit_edge:          ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit

if.end.i.i59:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %call.i.i58 = tail call i32 @__mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 12) #10
  br label %phy_base_read.exit

phy_base_read.exit:                               ; preds = %if.end.i.i59, %if.end.i57.phy_base_read.exit_crit_edge
  %retval.0.i.i60 = phi i32 [ %call.i.i58, %if.end.i.i59 ], [ -5, %if.end.i57.phy_base_read.exit_crit_edge ]
  %16 = trunc i32 %retval.0.i.i60 to i16
  %conv4 = and i16 %16, -2049
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i62 = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 8
  %call.i63 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i62) #10
  br i1 %call.i63, label %phy_base_read.exit.if.end.i67_crit_edge, label %do.end.i64, !prof !179

phy_base_read.exit.if.end.i67_crit_edge:          ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i67

do.end.i64:                                       ; preds = %phy_base_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i67

if.end.i67:                                       ; preds = %do.end.i64, %phy_base_read.exit.if.end.i67_crit_edge
  %19 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i66 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i66, label %if.end.i67.phy_base_write.exit71_crit_edge, label %if.end.i.i69

if.end.i67.phy_base_write.exit71_crit_edge:       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit71

if.end.i.i69:                                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %call.i.i68 = tail call i32 @__mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 12, i16 noundef zeroext %conv4) #10
  br label %phy_base_write.exit71

phy_base_write.exit71:                            ; preds = %if.end.i.i69, %if.end.i67.phy_base_write.exit71_crit_edge
  %25 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i73 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 8
  %call.i74 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i73) #10
  br i1 %call.i74, label %phy_base_write.exit71.if.end.i78_crit_edge, label %do.end.i75, !prof !179

phy_base_write.exit71.if.end.i78_crit_edge:       ; preds = %phy_base_write.exit71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i78

do.end.i75:                                       ; preds = %phy_base_write.exit71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i78

if.end.i78:                                       ; preds = %do.end.i75, %phy_base_write.exit71.if.end.i78_crit_edge
  %27 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i77 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i77, label %if.end.i78.phy_base_write.exit82_crit_edge, label %if.end.i.i80

if.end.i78.phy_base_write.exit82_crit_edge:       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit82

if.end.i.i80:                                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  %call.i.i79 = tail call i32 @__mdiobus_write(ptr noundef %30, i32 noundef %32, i32 noundef 9, i16 noundef zeroext 91) #10
  br label %phy_base_write.exit82

phy_base_write.exit82:                            ; preds = %if.end.i.i80, %if.end.i78.phy_base_write.exit82_crit_edge
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i84 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  %call.i85 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i84) #10
  br i1 %call.i85, label %phy_base_write.exit82.if.end.i89_crit_edge, label %do.end.i86, !prof !179

phy_base_write.exit82.if.end.i89_crit_edge:       ; preds = %phy_base_write.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i89

do.end.i86:                                       ; preds = %phy_base_write.exit82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i89

if.end.i89:                                       ; preds = %do.end.i86, %phy_base_write.exit82.if.end.i89_crit_edge
  %35 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i88 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i88, label %if.end.i89.phy_base_write.exit93_crit_edge, label %if.end.i.i91

if.end.i89.phy_base_write.exit93_crit_edge:       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit93

if.end.i.i91:                                     ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 8
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 4
  %call.i.i90 = tail call i32 @__mdiobus_write(ptr noundef %38, i32 noundef %40, i32 noundef 10, i16 noundef zeroext 91) #10
  br label %phy_base_write.exit93

phy_base_write.exit93:                            ; preds = %if.end.i.i91, %if.end.i89.phy_base_write.exit93_crit_edge
  %41 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i95 = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 8
  %call.i96 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i95) #10
  br i1 %call.i96, label %phy_base_write.exit93.if.end.i100_crit_edge, label %do.end.i97, !prof !179

phy_base_write.exit93.if.end.i100_crit_edge:      ; preds = %phy_base_write.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i100

do.end.i97:                                       ; preds = %phy_base_write.exit93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i100

if.end.i100:                                      ; preds = %do.end.i97, %phy_base_write.exit93.if.end.i100_crit_edge
  %43 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i99 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i99, label %if.end.i100.phy_base_read.exit104_crit_edge, label %if.end.i.i102

if.end.i100.phy_base_read.exit104_crit_edge:      ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit104

if.end.i.i102:                                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i, align 8
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 4
  %call.i.i101 = tail call i32 @__mdiobus_read(ptr noundef %46, i32 noundef %48, i32 noundef 12) #10
  br label %phy_base_read.exit104

phy_base_read.exit104:                            ; preds = %if.end.i.i102, %if.end.i100.phy_base_read.exit104_crit_edge
  %retval.0.i.i103 = phi i32 [ %call.i.i101, %if.end.i.i102 ], [ -5, %if.end.i100.phy_base_read.exit104_crit_edge ]
  %49 = trunc i32 %retval.0.i.i103 to i16
  %conv11 = or i16 %49, 2048
  %50 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i106 = getelementptr inbounds %struct.mii_bus, ptr %51, i32 0, i32 8
  %call.i107 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i106) #10
  br i1 %call.i107, label %phy_base_read.exit104.if.end.i111_crit_edge, label %do.end.i108, !prof !179

phy_base_read.exit104.if.end.i111_crit_edge:      ; preds = %phy_base_read.exit104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i111

do.end.i108:                                      ; preds = %phy_base_read.exit104
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i111

if.end.i111:                                      ; preds = %do.end.i108, %phy_base_read.exit104.if.end.i111_crit_edge
  %52 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i110 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i110, label %if.end.i111.phy_base_write.exit115_crit_edge, label %if.end.i.i113

if.end.i111.phy_base_write.exit115_crit_edge:     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit115

if.end.i.i113:                                    ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i, align 8
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 4
  %call.i.i112 = tail call i32 @__mdiobus_write(ptr noundef %55, i32 noundef %57, i32 noundef 12, i16 noundef zeroext %conv11) #10
  br label %phy_base_write.exit115

phy_base_write.exit115:                           ; preds = %if.end.i.i113, %if.end.i111.phy_base_write.exit115_crit_edge
  %58 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i117 = getelementptr inbounds %struct.mii_bus, ptr %59, i32 0, i32 8
  %call.i118 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i117) #10
  br i1 %call.i118, label %phy_base_write.exit115.if.end.i122_crit_edge, label %do.end.i119, !prof !179

phy_base_write.exit115.if.end.i122_crit_edge:     ; preds = %phy_base_write.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i122

do.end.i119:                                      ; preds = %phy_base_write.exit115
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i122

if.end.i122:                                      ; preds = %do.end.i119, %phy_base_write.exit115.if.end.i122_crit_edge
  %60 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i121 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i121, label %if.end.i122.phy_base_write.exit126_crit_edge, label %if.end.i.i124

if.end.i122.phy_base_write.exit126_crit_edge:     ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit126

if.end.i.i124:                                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i, align 8
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  %call.i.i123 = tail call i32 @__mdiobus_write(ptr noundef %63, i32 noundef %65, i32 noundef 18, i16 noundef zeroext 15) #10
  br label %phy_base_write.exit126

phy_base_write.exit126:                           ; preds = %if.end.i.i124, %if.end.i122.phy_base_write.exit126_crit_edge
  %66 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i128 = getelementptr inbounds %struct.mii_bus, ptr %67, i32 0, i32 8
  %call.i129 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i128) #10
  br i1 %call.i129, label %phy_base_write.exit126.if.end.i133_crit_edge, label %do.end.i130, !prof !179

phy_base_write.exit126.if.end.i133_crit_edge:     ; preds = %phy_base_write.exit126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i133

do.end.i130:                                      ; preds = %phy_base_write.exit126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i133

if.end.i133:                                      ; preds = %do.end.i130, %phy_base_write.exit126.if.end.i133_crit_edge
  %68 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i132 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i132, label %if.end.i133.phy_base_read.exit137_crit_edge, label %if.end.i.i135

if.end.i133.phy_base_read.exit137_crit_edge:      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit137

if.end.i.i135:                                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i, align 8
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %69, align 4
  %call.i.i134 = tail call i32 @__mdiobus_read(ptr noundef %71, i32 noundef %73, i32 noundef 0) #10
  %phi.cast = trunc i32 %call.i.i134 to i16
  %phi.bo = and i16 %phi.cast, 32767
  br label %phy_base_read.exit137

phy_base_read.exit137:                            ; preds = %if.end.i.i135, %if.end.i133.phy_base_read.exit137_crit_edge
  %retval.0.i.i136 = phi i16 [ %phi.bo, %if.end.i.i135 ], [ 32763, %if.end.i133.phy_base_read.exit137_crit_edge ]
  %74 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i139 = getelementptr inbounds %struct.mii_bus, ptr %75, i32 0, i32 8
  %call.i140 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i139) #10
  br i1 %call.i140, label %phy_base_read.exit137.if.end.i144_crit_edge, label %do.end.i141, !prof !179

phy_base_read.exit137.if.end.i144_crit_edge:      ; preds = %phy_base_read.exit137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i144

do.end.i141:                                      ; preds = %phy_base_read.exit137
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i144

if.end.i144:                                      ; preds = %do.end.i141, %phy_base_read.exit137.if.end.i144_crit_edge
  %76 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i143 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i143, label %if.end.i144.phy_base_write.exit148_crit_edge, label %if.end.i.i146

if.end.i144.phy_base_write.exit148_crit_edge:     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit148

if.end.i.i146:                                    ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i, align 8
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %77, align 4
  %call.i.i145 = tail call i32 @__mdiobus_write(ptr noundef %79, i32 noundef %81, i32 noundef 0, i16 noundef zeroext %retval.0.i.i136) #10
  br label %phy_base_write.exit148

phy_base_write.exit148:                           ; preds = %if.end.i.i146, %if.end.i144.phy_base_write.exit148_crit_edge
  %82 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i150 = getelementptr inbounds %struct.mii_bus, ptr %83, i32 0, i32 8
  %call.i151 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i150) #10
  br i1 %call.i151, label %phy_base_write.exit148.if.end.i155_crit_edge, label %do.end.i152, !prof !179

phy_base_write.exit148.if.end.i155_crit_edge:     ; preds = %phy_base_write.exit148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i155

do.end.i152:                                      ; preds = %phy_base_write.exit148
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i155

if.end.i155:                                      ; preds = %do.end.i152, %phy_base_write.exit148.if.end.i155_crit_edge
  %84 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i154 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i154, label %if.end.i155.phy_base_write.exit159_crit_edge, label %if.end.i.i157

if.end.i155.phy_base_write.exit159_crit_edge:     ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit159

if.end.i.i157:                                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 8
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %85, align 4
  %call.i.i156 = tail call i32 @__mdiobus_write(ptr noundef %87, i32 noundef %89, i32 noundef 18, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit159

phy_base_write.exit159:                           ; preds = %if.end.i.i157, %if.end.i155.phy_base_write.exit159_crit_edge
  %90 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i161 = getelementptr inbounds %struct.mii_bus, ptr %91, i32 0, i32 8
  %call.i162 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i161) #10
  br i1 %call.i162, label %phy_base_write.exit159.if.end.i166_crit_edge, label %do.end.i163, !prof !179

phy_base_write.exit159.if.end.i166_crit_edge:     ; preds = %phy_base_write.exit159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i166

do.end.i163:                                      ; preds = %phy_base_write.exit159
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i166

if.end.i166:                                      ; preds = %do.end.i163, %phy_base_write.exit159.if.end.i166_crit_edge
  %92 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i165 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i165, label %if.end.i166.phy_base_read.exit170_crit_edge, label %if.end.i.i168

if.end.i166.phy_base_read.exit170_crit_edge:      ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_read.exit170

if.end.i.i168:                                    ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i, align 8
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %93, align 4
  %call.i.i167 = tail call i32 @__mdiobus_read(ptr noundef %95, i32 noundef %97, i32 noundef 12) #10
  %phi.cast193 = trunc i32 %call.i.i167 to i16
  %phi.bo194 = and i16 %phi.cast193, -2049
  br label %phy_base_read.exit170

phy_base_read.exit170:                            ; preds = %if.end.i.i168, %if.end.i166.phy_base_read.exit170_crit_edge
  %retval.0.i.i169 = phi i16 [ %phi.bo194, %if.end.i.i168 ], [ -2053, %if.end.i166.phy_base_read.exit170_crit_edge ]
  %98 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i172 = getelementptr inbounds %struct.mii_bus, ptr %99, i32 0, i32 8
  %call.i173 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i172) #10
  br i1 %call.i173, label %phy_base_read.exit170.if.end.i177_crit_edge, label %do.end.i174, !prof !179

phy_base_read.exit170.if.end.i177_crit_edge:      ; preds = %phy_base_read.exit170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i177

do.end.i174:                                      ; preds = %phy_base_read.exit170
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i177

if.end.i177:                                      ; preds = %do.end.i174, %phy_base_read.exit170.if.end.i177_crit_edge
  %100 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i176 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i176, label %if.end.i177.phy_base_write.exit181_crit_edge, label %if.end.i.i179

if.end.i177.phy_base_write.exit181_crit_edge:     ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit181

if.end.i.i179:                                    ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus.i, align 8
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %101, align 4
  %call.i.i178 = tail call i32 @__mdiobus_write(ptr noundef %103, i32 noundef %105, i32 noundef 12, i16 noundef zeroext %retval.0.i.i169) #10
  br label %phy_base_write.exit181

phy_base_write.exit181:                           ; preds = %if.end.i.i179, %if.end.i177.phy_base_write.exit181_crit_edge
  %106 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i183 = getelementptr inbounds %struct.mii_bus, ptr %107, i32 0, i32 8
  %call.i184 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i183) #10
  br i1 %call.i184, label %phy_base_write.exit181.if.end.i188_crit_edge, label %do.end.i185, !prof !179

phy_base_write.exit181.if.end.i188_crit_edge:     ; preds = %phy_base_write.exit181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i188

do.end.i185:                                      ; preds = %phy_base_write.exit181
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i188

if.end.i188:                                      ; preds = %do.end.i185, %phy_base_write.exit181.if.end.i188_crit_edge
  %108 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i187 = icmp eq ptr %109, null
  br i1 %tobool.not.i.i187, label %if.end.i188.cleanup_crit_edge, label %if.end.i.i190

if.end.i188.cleanup_crit_edge:                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i190:                                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i, align 8
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %109, align 4
  %call.i.i189 = tail call i32 @__mdiobus_write(ptr noundef %111, i32 noundef %113, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i190, %if.end.i188.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_patch_fw(ptr noundef %phydev, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vsc8584_micro_assert_reset(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !179

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i23 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  %call.i24 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i23) #10
  br i1 %call.i24, label %phy_base_write.exit.if.end.i28_crit_edge, label %do.end.i25, !prof !179

phy_base_write.exit.if.end.i28_crit_edge:         ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i28

do.end.i25:                                       ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i28

if.end.i28:                                       ; preds = %do.end.i25, %phy_base_write.exit.if.end.i28_crit_edge
  %10 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i27 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i27, label %if.end.i28.phy_base_write.exit32_crit_edge, label %if.end.i.i30

if.end.i28.phy_base_write.exit32_crit_edge:       ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit32

if.end.i.i30:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %call.i.i29 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 0, i16 noundef zeroext 28681) #10
  br label %phy_base_write.exit32

phy_base_write.exit32:                            ; preds = %if.end.i.i30, %if.end.i28.phy_base_write.exit32_crit_edge
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i34 = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 8
  %call.i35 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i34) #10
  br i1 %call.i35, label %phy_base_write.exit32.if.end.i39_crit_edge, label %do.end.i36, !prof !179

phy_base_write.exit32.if.end.i39_crit_edge:       ; preds = %phy_base_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i39

do.end.i36:                                       ; preds = %phy_base_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i39

if.end.i39:                                       ; preds = %do.end.i36, %phy_base_write.exit32.if.end.i39_crit_edge
  %18 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i38 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i38, label %if.end.i39.phy_base_write.exit43_crit_edge, label %if.end.i.i41

if.end.i39.phy_base_write.exit43_crit_edge:       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit43

if.end.i.i41:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %call.i.i40 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 12, i16 noundef zeroext 20482) #10
  br label %phy_base_write.exit43

phy_base_write.exit43:                            ; preds = %if.end.i.i41, %if.end.i39.phy_base_write.exit43_crit_edge
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i45 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 8
  %call.i46 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i45) #10
  br i1 %call.i46, label %phy_base_write.exit43.if.end.i50_crit_edge, label %do.end.i47, !prof !179

phy_base_write.exit43.if.end.i50_crit_edge:       ; preds = %phy_base_write.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i50

do.end.i47:                                       ; preds = %phy_base_write.exit43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i50

if.end.i50:                                       ; preds = %do.end.i47, %phy_base_write.exit43.if.end.i50_crit_edge
  %26 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i49 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i49, label %if.end.i50.phy_base_write.exit54_crit_edge, label %if.end.i.i52

if.end.i50.phy_base_write.exit54_crit_edge:       ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit54

if.end.i.i52:                                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %call.i.i51 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 11, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit54

phy_base_write.exit54:                            ; preds = %if.end.i.i52, %if.end.i50.phy_base_write.exit54_crit_edge
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp88.not = icmp eq i32 %33, 0
  br i1 %cmp88.not, label %phy_base_write.exit54.for.end_crit_edge, label %for.body.lr.ph

phy_base_write.exit54.for.end_crit_edge:          ; preds = %phy_base_write.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %phy_base_write.exit54
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %phy_base_write.exit65.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %phy_base_write.exit65.for.body_crit_edge ]
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %35, i32 %i.089
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %37 to i16
  %or = or i16 %conv, 20480
  %38 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i56 = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 8
  %call.i57 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i56) #10
  br i1 %call.i57, label %for.body.if.end.i61_crit_edge, label %do.end.i58, !prof !179

for.body.if.end.i61_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i61

do.end.i58:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i61

if.end.i61:                                       ; preds = %do.end.i58, %for.body.if.end.i61_crit_edge
  %40 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i60 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i60, label %if.end.i61.phy_base_write.exit65_crit_edge, label %if.end.i.i63

if.end.i61.phy_base_write.exit65_crit_edge:       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit65

if.end.i.i63:                                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i, align 8
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 4
  %call.i.i62 = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %45, i32 noundef 12, i16 noundef zeroext %or) #10
  br label %phy_base_write.exit65

phy_base_write.exit65:                            ; preds = %if.end.i.i63, %if.end.i61.phy_base_write.exit65_crit_edge
  %inc = add nuw i32 %i.089, 1
  %46 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %phy_base_write.exit65.for.body_crit_edge, label %phy_base_write.exit65.for.end_crit_edge

phy_base_write.exit65.for.end_crit_edge:          ; preds = %phy_base_write.exit65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

phy_base_write.exit65.for.body_crit_edge:         ; preds = %phy_base_write.exit65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %phy_base_write.exit65.for.end_crit_edge, %phy_base_write.exit54.for.end_crit_edge
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i67 = getelementptr inbounds %struct.mii_bus, ptr %49, i32 0, i32 8
  %call.i68 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i67) #10
  br i1 %call.i68, label %for.end.if.end.i72_crit_edge, label %do.end.i69, !prof !179

for.end.if.end.i72_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i72

do.end.i69:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i72

if.end.i72:                                       ; preds = %do.end.i69, %for.end.if.end.i72_crit_edge
  %50 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i71 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i71, label %if.end.i72.phy_base_write.exit76_crit_edge, label %if.end.i.i74

if.end.i72.phy_base_write.exit76_crit_edge:       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit76

if.end.i.i74:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %51, align 4
  %call.i.i73 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 12, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit76

phy_base_write.exit76:                            ; preds = %if.end.i.i74, %if.end.i72.phy_base_write.exit76_crit_edge
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i78 = getelementptr inbounds %struct.mii_bus, ptr %57, i32 0, i32 8
  %call.i79 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i78) #10
  br i1 %call.i79, label %phy_base_write.exit76.if.end.i83_crit_edge, label %do.end.i80, !prof !179

phy_base_write.exit76.if.end.i83_crit_edge:       ; preds = %phy_base_write.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i83

do.end.i80:                                       ; preds = %phy_base_write.exit76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i83

if.end.i83:                                       ; preds = %do.end.i80, %phy_base_write.exit76.if.end.i83_crit_edge
  %58 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i82 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i82, label %if.end.i83.cleanup_crit_edge, label %if.end.i.i85

if.end.i83.cleanup_crit_edge:                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i85:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i, align 8
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 4
  %call.i.i84 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i85, %if.end.i83.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end.i83.cleanup_crit_edge ], [ 0, %if.end.i.i85 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_micro_deassert_reset(ptr noundef %phydev, i1 noundef zeroext %patch_en) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i) #10
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !179

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shared1.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.phy_base_write.exit_crit_edge, label %if.end.i.i

if.end.i.phy_base_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 16) #10
  br label %phy_base_write.exit

phy_base_write.exit:                              ; preds = %if.end.i.i, %if.end.i.phy_base_write.exit_crit_edge
  br i1 %patch_en, label %if.then, label %phy_base_write.exit.if.end_crit_edge

phy_base_write.exit.if.end_crit_edge:             ; preds = %phy_base_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %phy_base_write.exit
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i2 = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 8
  %call.i3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i2) #10
  br i1 %call.i3, label %if.then.if.end.i7_crit_edge, label %do.end.i4, !prof !179

if.then.if.end.i7_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i7

do.end.i4:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i7

if.end.i7:                                        ; preds = %do.end.i4, %if.then.if.end.i7_crit_edge
  %10 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i6 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i6, label %if.end.i7.if.end_crit_edge, label %if.end.i.i9

if.end.i7.if.end_crit_edge:                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i9:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %call.i.i8 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 12, i16 noundef zeroext 0) #10
  br label %if.end

if.end:                                           ; preds = %if.end.i.i9, %if.end.i7.if.end_crit_edge, %phy_base_write.exit.if.end_crit_edge
  %enable.0 = phi i16 [ 16408, %phy_base_write.exit.if.end_crit_edge ], [ 16536, %if.end.i7.if.end_crit_edge ], [ 16536, %if.end.i.i9 ]
  %release.0 = phi i16 [ -16360, %phy_base_write.exit.if.end_crit_edge ], [ -16232, %if.end.i7.if.end_crit_edge ], [ -16232, %if.end.i.i9 ]
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i13 = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 8
  %call.i14 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i13) #10
  br i1 %call.i14, label %if.end.if.end.i18_crit_edge, label %do.end.i15, !prof !179

if.end.if.end.i18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i18

do.end.i15:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i18

if.end.i18:                                       ; preds = %do.end.i15, %if.end.if.end.i18_crit_edge
  %18 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i17 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i17, label %if.end.i18.phy_base_write.exit22_crit_edge, label %if.end.i.i20

if.end.i18.phy_base_write.exit22_crit_edge:       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit22

if.end.i.i20:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %call.i.i19 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 0, i16 noundef zeroext %enable.0) #10
  br label %phy_base_write.exit22

phy_base_write.exit22:                            ; preds = %if.end.i.i20, %if.end.i18.phy_base_write.exit22_crit_edge
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i24 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 8
  %call.i25 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i24) #10
  br i1 %call.i25, label %phy_base_write.exit22.if.end.i29_crit_edge, label %do.end.i26, !prof !179

phy_base_write.exit22.if.end.i29_crit_edge:       ; preds = %phy_base_write.exit22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i29

do.end.i26:                                       ; preds = %phy_base_write.exit22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i29

if.end.i29:                                       ; preds = %do.end.i26, %phy_base_write.exit22.if.end.i29_crit_edge
  %26 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i28 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i28, label %if.end.i29.phy_base_write.exit33_crit_edge, label %if.end.i.i31

if.end.i29.phy_base_write.exit33_crit_edge:       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit33

if.end.i.i31:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %call.i.i30 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 0, i16 noundef zeroext %release.0) #10
  br label %phy_base_write.exit33

phy_base_write.exit33:                            ; preds = %if.end.i.i31, %if.end.i29.phy_base_write.exit33_crit_edge
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i35 = getelementptr inbounds %struct.mii_bus, ptr %33, i32 0, i32 8
  %call.i36 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mdio_lock.i35) #10
  br i1 %call.i36, label %phy_base_write.exit33.if.end.i40_crit_edge, label %do.end.i37, !prof !179

phy_base_write.exit33.if.end.i40_crit_edge:       ; preds = %phy_base_write.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i40

do.end.i37:                                       ; preds = %phy_base_write.exit33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str) #13
  tail call void @dump_stack() #13
  br label %if.end.i40

if.end.i40:                                       ; preds = %do.end.i37, %phy_base_write.exit33.if.end.i40_crit_edge
  %34 = ptrtoint ptr %shared1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shared1.i.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i39, label %if.end.i40.phy_base_write.exit44_crit_edge, label %if.end.i.i42

if.end.i40.phy_base_write.exit44_crit_edge:       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_base_write.exit44

if.end.i.i42:                                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  %call.i.i41 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 31, i16 noundef zeroext 0) #10
  br label %phy_base_write.exit44

phy_base_write.exit44:                            ; preds = %if.end.i.i42, %if.end.i40.phy_base_write.exit44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_pll5g_reset(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vsc8584_mcb_rd_trig(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 8) #10
  %or.i = or i32 %call.i, 2
  %call1.i = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 8, i32 noundef %or.i) #10
  %call1 = tail call fastcc i32 @vsc8584_mcb_wr_trig(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.done_crit_edge, label %if.end4

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end4:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %call5 = tail call fastcc i32 @vsc8584_mcb_rd_trig(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.done_crit_edge, label %if.end8

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end8:                                          ; preds = %if.end4
  %call.i24 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 8) #10
  %and.i25 = and i32 %call.i24, -3
  %call1.i26 = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 8, i32 noundef %and.i25) #10
  %call10 = tail call fastcc i32 @vsc8584_mcb_wr_trig(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.done_crit_edge, label %if.end13

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 110000, i32 noundef 200000, i32 noundef 2) #10
  br label %done

done:                                             ; preds = %if.end13, %if.end8.done_crit_edge, %if.end4.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ %call, %entry.done_crit_edge ], [ %call1, %if.end.done_crit_edge ], [ %call5, %if.end4.done_crit_edge ], [ %call10, %if.end8.done_crit_edge ], [ 0, %if.end13 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_mcb_rd_trig(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 17, i32 noundef 1073741825)
  %call1 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call1, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1266) #10
  %call102 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 17)
  %and3 = and i32 %call102, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not4 = icmp eq i32 %and3, 0
  br i1 %tobool.not4, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then22.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1001, i32 noundef 4000, i32 noundef 2) #10
  %call10 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 17)
  %and = and i32 %call10, 1073741824
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then22.for.end.thread_crit_edge, label %if.then22.land.lhs.true_crit_edge

if.then22.land.lhs.true_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then22.for.end.thread_crit_edge:               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %call19 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 17)
  %.pre = and i32 %call19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool25.not = icmp eq i32 %.pre, 0
  br i1 %tobool25.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %0

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then22.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %0

0:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %1 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc8584_mcb_wr_trig(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsc85xx_csr_write(ptr noundef %phydev, i32 noundef 7, i32 noundef 17, i32 noundef -2147483647)
  %call1 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call1, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1283) #10
  %call102 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call102)
  %tobool.not3 = icmp sgt i32 %call102, -1
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true:                                    ; preds = %if.then22.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then18, label %if.then22

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 17)
  br label %for.end

if.then22:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1001, i32 noundef 4000, i32 noundef 2) #10
  %call10 = tail call i32 @vsc85xx_csr_read(ptr noundef %phydev, i32 noundef 7, i32 noundef 17)
  %tobool.not = icmp sgt i32 %call10, -1
  br i1 %tobool.not, label %if.then22.for.end_crit_edge, label %if.then22.land.lhs.true_crit_edge

if.then22.land.lhs.true_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.then22.for.end_crit_edge, %if.then18, %entry.for.end_crit_edge
  %rd_dat.0 = phi i32 [ %call19, %if.then18 ], [ %call102, %entry.for.end_crit_edge ], [ %call10, %if.then22.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rd_dat.0)
  %tobool25.not.inv = icmp slt i32 %rd_dat.0, 0
  %cond = select i1 %tobool25.not.inv, i32 -110, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc85xx_sd6g_config_v2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc8584_get_base_addr(ptr nocapture noundef readonly %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #10
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 1) #10
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i66 = tail call i32 @__mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 23) #10
  %12 = trunc i32 %call.i66 to i16
  %13 = lshr i16 %12, 11
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i69 = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 20) #10
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 8
  %call.i72 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 31, i16 noundef zeroext 0) #10
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i74 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i74) #10
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 8
  %ts_base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %ts_base_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ts_base_addr, align 4
  %conv8 = trunc i16 %13 to i8
  %ts_base_phy = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %ts_base_phy to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv8, ptr %ts_base_phy, align 4
  %and = and i32 %call.i69, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i, align 8
  %conv24 = zext i16 %13 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add = add i32 %29, %conv24
  %base_addr = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %base_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %12)
  %cmp = icmp ugt i16 %12, 4095
  br i1 %cmp, label %if.then.if.end37.sink.split_crit_edge, label %if.then.if.end37_crit_edge

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then.if.end37.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split

if.else:                                          ; preds = %entry
  %sub = sub i32 %29, %conv24
  %base_addr25 = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %base_addr25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %base_addr25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %12)
  %cmp27 = icmp ugt i16 %12, 4095
  br i1 %cmp27, label %if.else.if.end37.sink.split_crit_edge, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.else.if.end37.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.else.if.end37.sink.split_crit_edge, %if.then.if.end37.sink.split_crit_edge
  %.sink75 = phi i32 [ 2, %if.then.if.end37.sink.split_crit_edge ], [ -2, %if.else.if.end37.sink.split_crit_edge ]
  %.sink = phi i8 [ 2, %if.then.if.end37.sink.split_crit_edge ], [ -2, %if.else.if.end37.sink.split_crit_edge ]
  %sub31 = add i32 %25, %.sink75
  %32 = ptrtoint ptr %ts_base_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub31, ptr %ts_base_addr, align 4
  %sub34 = add nsw i8 %.sink, %conv8
  %33 = ptrtoint ptr %ts_base_phy to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %sub34, ptr %ts_base_phy, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else.if.end37_crit_edge, %if.then.if.end37_crit_edge
  %addr39 = getelementptr inbounds %struct.vsc8531_private, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %addr39 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv8, ptr %addr39, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_phy_package_join(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc8584_ptp_probe_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc8584_ptp_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsc8584_handle_ts_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsc8584_handle_macsec_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !129, !130, !131, !133, !135, !136, !138, !140, !141, !143, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 695, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @phy_base_write._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @phy_base_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 706, i32 3}
!10 = !{ptr @phy_base_read._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @phy_base_read._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_mscc__349_2664_phy_module_init6, !13, !"__initcall__kmod_mscc__349_2664_phy_module_init6", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2664, i32 1}
!14 = !{ptr @__exitcall_phy_module_exit, !13, !"__exitcall_phy_module_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description350, !16, !"__UNIQUE_ID_description350", i1 false, i1 false}
!16 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2685, i32 1}
!17 = !{ptr @__UNIQUE_ID_author351, !18, !"__UNIQUE_ID_author351", i1 false, i1 false}
!18 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2686, i32 1}
!19 = !{ptr @__UNIQUE_ID_file352, !20, !"__UNIQUE_ID_file352", i1 false, i1 false}
!20 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2687, i32 1}
!21 = !{ptr @__UNIQUE_ID_license353, !20, !"__UNIQUE_ID_license353", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2689, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2690, i32 1}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2329, i32 11}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2353, i32 11}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2378, i32 11}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2401, i32 11}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2425, i32 11}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2449, i32 11}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2473, i32 11}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2497, i32 11}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2521, i32 11}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2543, i32 11}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2568, i32 11}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2593, i32 11}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2616, i32 11}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2639, i32 11}
!54 = !{ptr @vsc85xx_driver, !55, !"vsc85xx_driver", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2326, i32 26}
!56 = distinct !{null, !57, !"init_seq", i1 false, i1 false}
!57 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 609, i32 30}
!58 = !{ptr @vsc85xx_eee_init_seq_set.init_eee, !59, !"init_eee", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 653, i32 30}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 397, i32 36}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 400, i32 36}
!64 = distinct !{null, !65, !"edge_table", i1 false, i1 false}
!65 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 102, i32 45}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 25, i32 13}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 30, i32 13}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 35, i32 13}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 40, i32 13}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 45, i32 13}
!76 = !{ptr @vsc85xx_hw_stats, !77, !"vsc85xx_hw_stats", i1 false, i1 false}
!77 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 23, i32 37}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 457, i32 30}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 428, i32 3}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @vsc85xx_dt_led_mode_get._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @vsc85xx_dt_led_mode_get._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 261, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vsc85xx_downshift_set._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @vsc85xx_downshift_set._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @vsc8574_config_pre_init.pre_init1, !91, !"pre_init1", i1 false, i1 false}
!91 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1041, i32 30}
!92 = distinct !{null, !93, !"pre_init2", i1 false, i1 false}
!93 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1089, i32 30}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1166, i32 30}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1168, i32 3}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vsc8574_config_pre_init._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @vsc8574_config_pre_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1186, i32 5}
!103 = !{ptr @vsc8574_config_pre_init._entry.35, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @vsc8574_config_pre_init._entry_ptr.37, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1193, i32 3}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @vsc8574_config_pre_init.__UNIQUE_ID_ddebug347, !106, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1198, i32 4}
!111 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @vsc8574_config_pre_init._entry.40, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @vsc8574_config_pre_init._entry_ptr.43, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1223, i32 4}
!116 = !{ptr @vsc8574_config_pre_init._entry.44, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @vsc8574_config_pre_init._entry_ptr.46, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 967, i32 3}
!120 = !{ptr @vsc8584_patch_fw._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @vsc8584_patch_fw._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @vsc8584_config_pre_init.pre_init1, !123, !"pre_init1", i1 false, i1 false}
!123 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1330, i32 30}
!124 = distinct !{null, !125, !"pre_init2", i1 false, i1 false}
!125 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1354, i32 30}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1367, i32 3}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @vsc8584_config_pre_init._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @vsc8584_config_pre_init._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1437, i32 30}
!133 = !{ptr @vsc8584_config_pre_init._entry.51, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1439, i32 3}
!135 = !{ptr @vsc8584_config_pre_init._entry_ptr.52, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @vsc8584_config_pre_init.__UNIQUE_ID_ddebug348, !137, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!137 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1452, i32 3}
!138 = !{ptr @vsc8584_config_pre_init._entry.53, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1454, i32 4}
!140 = !{ptr @vsc8584_config_pre_init._entry_ptr.54, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @vsc8584_config_pre_init._entry.55, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1468, i32 3}
!143 = !{ptr @vsc8584_config_pre_init._entry_ptr.56, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 79, i32 13}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 84, i32 13}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 89, i32 13}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 94, i32 13}
!152 = !{ptr @vsc8584_hw_stats, !153, !"vsc8584_hw_stats", i1 false, i1 false}
!153 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 52, i32 37}
!154 = !{ptr @vsc8514_config_pre_init.pre_init1, !155, !"pre_init1", i1 false, i1 false}
!155 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1957, i32 30}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1986, i32 3}
!158 = !{ptr @vsc8514_config_pre_init._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @vsc8514_config_pre_init._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 1928, i32 3}
!162 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @vsc8514_config_host_serdes._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @vsc8514_config_host_serdes._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/phy/mscc/mscc_main.c", i32 2259, i32 3}
!167 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @vsc8584_probe._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @vsc8584_probe._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{!"auto-init"}
!181 = !{i16 0, i16 17}
!182 = !{i64 2148252553, i64 2148252558, i64 2148252571, i64 2148252615, i64 2148252649, i64 2148252670}
