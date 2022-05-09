; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mxl-gpy.c_pt.bc'
source_filename = "../drivers/net/phy/mxl-gpy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.121 = type { i32, i32 }
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
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
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

@__initcall__kmod_mxl_gpy__372_725_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@gpy_drivers = internal global { [12 x %struct.phy_driver], [720 x i8] } { [12 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741282304, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741283072, ptr @.str.1, i32 -4, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy115_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741283088, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy115_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741282824, ptr @.str.3, i32 -7, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741282832, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741282825, ptr @.str.5, i32 -7, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741282848, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741283076, ptr @.str.7, i32 -4, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741283104, ptr @.str.8, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741282880, ptr @.str.9, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741282944, ptr @.str.10, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1741283008, ptr @.str.11, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @gpy_config_init, ptr @gpy_probe, ptr @genphy_c45_pma_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr @gpy_config_aneg, ptr @genphy_c45_aneg_done, ptr @gpy_read_status, ptr @gpy_config_intr, ptr @gpy_handle_interrupt, ptr null, ptr null, ptr @gpy_set_wol, ptr @gpy_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpy_loopback, ptr null, ptr null }], [720 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description373 = internal constant [50 x i8] c"mxl_gpy.description=Maxlinear Ethernet GPY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author374 = internal constant [24 x i8] c"mxl_gpy.author=Xu Liang\00", section ".modinfo", align 1
@__UNIQUE_ID_file375 = internal constant [37 x i8] c"mxl_gpy.file=drivers/net/phy/mxl-gpy\00", section ".modinfo", align 1
@__UNIQUE_ID_license376 = internal constant [20 x i8] c"mxl_gpy.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Maxlinear Ethernet GPY2xx\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY115B\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY115C\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY211B\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY211C\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY212B\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY212C\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY215B\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY215C\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY241B\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Maxlinear Ethernet GPY241BM\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Maxlinear Ethernet GPY245B\00", [37 x i8] zeroinitializer }, align 32
@gpy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 113, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware Version: 0x%04X (%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpy_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/phy/mxl-gpy.c\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpy_probe._entry_ptr = internal global ptr @gpy_probe._entry, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"release\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@gpy_config_aneg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.14, i32 247, ptr @.str.21, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpy_config_aneg\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gpy_config_aneg._entry_ptr = internal global ptr @gpy_config_aneg._entry, section ".printk_index", align 4
@ver_need_sgmii_reaneg = internal constant { [3 x %struct.anon.121], [40 x i8] } { [3 x %struct.anon.121] [%struct.anon.121 { i32 7, i32 109 }, %struct.anon.121 { i32 8, i32 109 }, %struct.anon.121 { i32 9, i32 115 }], [40 x i8] zeroinitializer }, align 32
@gpy_2500basex_chk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.14, i32 148, ptr @.str.21, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: MDIO register access failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpy_2500basex_chk\00", [46 x i8] zeroinitializer }, align 32
@gpy_2500basex_chk._entry_ptr = internal global ptr @gpy_2500basex_chk._entry, section ".printk_index", align 4
@gpy_sgmii_aneg_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.14, i32 170, ptr @.str.21, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: MMD register access failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpy_sgmii_aneg_en\00", [46 x i8] zeroinitializer }, align 32
@gpy_sgmii_aneg_en._entry_ptr = internal global ptr @gpy_sgmii_aneg_en._entry, section ".printk_index", align 4
@gpy_update_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.14, i32 278, ptr @.str.21, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: Disable of SGMII ANEG failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpy_update_interface\00", [43 x i8] zeroinitializer }, align 32
@gpy_update_interface._entry_ptr = internal global ptr @gpy_update_interface._entry, section ".printk_index", align 4
@gpy_update_interface._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.14, i32 295, ptr @.str.21, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: Enable of SGMII ANEG failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@gpy_update_interface._entry_ptr.30 = internal global ptr @gpy_update_interface._entry.28, section ".printk_index", align 4
@switch.table.gpy_read_status = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 10, i32 100, i32 1000, i32 10, i32 2500], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 28]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 28]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 2500]
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"gpy_drivers\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 515, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 518, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 536, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 553, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 571, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 588, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 606, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 623, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 641, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 658, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 675, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 692, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 709, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 112, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 246, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"ver_need_sgmii_reaneg\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 77, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 147, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 169, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 276, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [29 x i8] c"../drivers/net/phy/mxl-gpy.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 293, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"switch.table.gpy_read_status\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_description373, ptr @__UNIQUE_ID_file375, ptr @__UNIQUE_ID_license376, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_mxl_gpy__372_725_phy_module_init6, ptr @gpy_2500basex_chk._entry, ptr @gpy_2500basex_chk._entry_ptr, ptr @gpy_config_aneg._entry, ptr @gpy_config_aneg._entry_ptr, ptr @gpy_probe._entry, ptr @gpy_probe._entry_ptr, ptr @gpy_sgmii_aneg_en._entry, ptr @gpy_sgmii_aneg_en._entry_ptr, ptr @gpy_update_interface._entry, ptr @gpy_update_interface._entry.28, ptr @gpy_update_interface._entry_ptr, ptr @gpy_update_interface._entry_ptr.30, ptr @phy_module_exit, ptr @gpy_drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ver_need_sgmii_reaneg, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @switch.table.gpy_read_status], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpy_drivers to i32), i32 2832, i32 3552, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpy_config_aneg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ver_need_sgmii_reaneg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpy_2500basex_chk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpy_sgmii_aneg_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpy_update_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpy_update_interface._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gpy_read_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @gpy_drivers, i32 noundef 12, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_drivers_unregister(ptr noundef nonnull @gpy_drivers, i32 noundef 12) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 25, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i8 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 26) #5
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_c45 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %is_c45 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_c45, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call i32 @phy_get_c45_ids(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.end2.cleanup_crit_edge, label %do.end

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool7.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %phydev, ptr noundef nonnull @.str.12, i32 noundef %call.i, ptr noundef nonnull %cond) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %call.i, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_read_abilities(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.not = icmp eq i32 %3, 1
  br i1 %cmp1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @genphy_setup_forced(ptr noundef %phydev) #5
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @genphy_c45_pma_setup_forced(ptr noundef %phydev) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @genphy_c45_an_config_aneg(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %advertising, align 4
  %6 = shl i32 %5, 4
  %7 = and i32 %6, 256
  %8 = load volatile i32, ptr %advertising, align 4
  %9 = shl i32 %8, 4
  %10 = and i32 %9, 512
  %11 = or i32 %10, %7
  %conv = trunc i32 %11 to i16
  %call11 = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 9, i16 noundef zeroext 768, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7.not = icmp ne i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp16.not = icmp ne i32 %call11, 0
  %spec.select = select i1 %cmp16.not, i1 true, i1 %cmp7.not
  %call20 = tail call i32 @genphy_c45_check_and_restart_aneg(ptr noundef %phydev, i1 noundef zeroext %spec.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end15.cleanup_crit_edge, label %if.end24

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %12 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interface, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end31 [
    i32 28, label %if.end24.cleanup_crit_edge
    i32 1, label %if.end24.cleanup_crit_edge157
  ]

if.end24.cleanup_crit_edge157:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end31.lor.lhs.false33_crit_edge, label %do.end12.i

if.end31.lor.lhs.false33_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false33

do.end12.i:                                       ; preds = %if.end31
  %and.i = lshr i32 %call.i.i, 8
  %shr.i = and i32 %and.i, 15
  %switch.tableidx = add nsw i32 %shr.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 3
  br i1 %19, label %if.end34.i, label %do.end12.i.cleanup_crit_edge

do.end12.i.cleanup_crit_edge:                     ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34.i:                                       ; preds = %do.end12.i
  %and29.i = and i32 %call.i.i, 255
  %minor.i = getelementptr [3 x %struct.anon.121], ptr @ver_need_sgmii_reaneg, i32 0, i32 %switch.tableidx, i32 1
  %20 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %minor.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and29.i, i32 %21)
  %cmp36.i = icmp slt i32 %and29.i, %21
  br i1 %cmp36.i, label %if.end34.i.lor.lhs.false33_crit_edge, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34.i.lor.lhs.false33_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end34.i.lor.lhs.false33_crit_edge, %if.end31.lor.lhs.false33_crit_edge
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i.i142 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp.i143 = icmp slt i32 %call.i.i142, 0
  br i1 %cmp.i143, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.22, i32 noundef %call.i.i142) #8
  br label %lor.lhs.false36

if.end.i:                                         ; preds = %lor.lhs.false33
  %26 = and i32 %call.i.i142, 1031
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %26)
  %27 = icmp eq i32 %26, 1028
  br i1 %27, label %gpy_2500basex_chk.exit, label %if.end.i.lor.lhs.false36_crit_edge

if.end.i.lor.lhs.false36_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false36

gpy_2500basex_chk.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2500, ptr %speed.i, align 8
  %29 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 22, ptr %interface, align 4
  %call20.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 8, i16 noundef zeroext 4096, i16 noundef zeroext 0) #5
  br label %cleanup

lor.lhs.false36:                                  ; preds = %if.end.i.lor.lhs.false36_crit_edge, %do.end.i
  %call37 = tail call fastcc zeroext i1 @gpy_sgmii_aneg_en(ptr noundef %phydev)
  br i1 %call37, label %if.end39, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false36
  %state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp40.not = icmp eq i32 %31, 3
  br i1 %cmp40.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %call44 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call44, 4000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 247) #5
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i155 = tail call i32 @mdiobus_read(ptr noundef %33, i32 noundef %35, i32 noundef 1) #5
  %36 = and i32 %call.i155, -2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %.not156 = icmp eq i32 %36, 0
  br i1 %.not156, label %if.end43.land.lhs.true_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end43.land.lhs.true_crit_edge:                 ; preds = %if.end43
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then72.land.lhs.true_crit_edge, %if.end43.land.lhs.true_crit_edge
  %call64 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call64, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call64, %add.i
  br i1 %cmp3.i, label %if.then68, label %if.then72

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i.i, align 8
  %39 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr.i.i, align 8
  %call.i149 = tail call i32 @mdiobus_read(ptr noundef %38, i32 noundef %40, i32 noundef 1) #5
  br label %for.end

if.then72:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #5
  %41 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i.i, align 8
  %43 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %42, i32 noundef %44, i32 noundef 1) #5
  %45 = and i32 %call.i, -2147483644
  %.not = icmp eq i32 %45, 0
  br i1 %.not, label %if.then72.land.lhs.true_crit_edge, label %if.then72.for.end_crit_edge

if.then72.for.end_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then72.land.lhs.true_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %if.then72.for.end_crit_edge, %if.then68, %if.end43.for.end_crit_edge
  %ret.0 = phi i32 [ %call.i149, %if.then68 ], [ %call.i155, %if.end43.for.end_crit_edge ], [ %call.i, %if.then72.for.end_crit_edge ]
  %and74 = and i32 %ret.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp76 = icmp slt i32 %ret.0, 0
  %phi.sel = select i1 %cmp76, i32 0, i32 -110
  %46 = select i1 %tobool75.not, i32 %phi.sel, i32 0
  %__ret.0 = select i1 %cmp76, i32 %ret.0, i32 %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %cond = icmp eq i32 %__ret.0, 0
  br i1 %cond, label %if.end97, label %do.end87

do.end87:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %__ret.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %__ret.0)
  %cmp90 = icmp eq i32 %__ret.0, -110
  %spec.select153 = select i1 %cmp90, i32 0, i32 %__ret.0
  br label %cleanup

if.end97:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call98 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 8, i16 noundef zeroext 512, i16 noundef zeroext 512) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end87, %if.end39.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %gpy_2500basex_chk.exit, %if.end34.i.cleanup_crit_edge, %do.end12.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end24.cleanup_crit_edge157, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.false, %cond.true
  %retval.0 = phi i32 [ %call98, %if.end97 ], [ %call, %cond.true ], [ %call2, %cond.false ], [ %call3, %if.end.cleanup_crit_edge ], [ %call11, %if.end6.cleanup_crit_edge ], [ %call20, %if.end15.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge157 ], [ 0, %lor.lhs.false36.cleanup_crit_edge ], [ 0, %gpy_2500basex_chk.exit ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %do.end12.i.cleanup_crit_edge ], [ 0, %if.end34.i.cleanup_crit_edge ], [ %spec.select153, %do.end87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_aneg_done(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_update_link(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 255, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %2 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pause, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %3 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %asym_pause, align 8
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %autoneg, align 8
  %5 = and i16 %bf.load, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %.not = icmp eq i16 %5, 10
  br i1 %.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @genphy_c45_read_lpa(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %10 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lp_advertising, align 4
  %and.i.i.i.i = and i32 %11, -49
  %and.i = lshr i32 %call.i, 6
  %storemerge.i.i = and i32 %and.i, 48
  %storemerge.i9.i = or i32 %storemerge.i.i, %and.i.i.i.i
  store i32 %storemerge.i9.i, ptr %lp_advertising, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end
  %12 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not = icmp eq i16 %12, 0
  br i1 %cmp.not, label %if.then21, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %lp_advertising22 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %13 = call ptr @memset(ptr %lp_advertising22, i32 0, i32 12)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else.if.end25_crit_edge, %if.end14
  %bus.i96 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i96, align 8
  %addr.i97 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %16 = ptrtoint ptr %addr.i97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i97, align 8
  %call.i98 = tail call i32 @mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp27 = icmp slt i32 %call.i98, 0
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %18 = trunc i32 %call.i98 to i16
  %19 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load31 = load i16, ptr %autoneg, align 8
  %20 = lshr i16 %18, 8
  %bf.shl = and i16 %20, 4
  %bf.clear32 = and i16 %bf.load31, -5
  %bf.set = or i16 %bf.clear32, %bf.shl
  store i16 %bf.set, ptr %autoneg, align 8
  %and33 = lshr i32 %call.i98, 3
  %and33.lobit = and i32 %and33, 1
  %21 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and33.lobit, ptr %duplex, align 4
  %and49 = and i32 %call.i98, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and49)
  %22 = icmp ult i32 %and49, 5
  br i1 %22, label %switch.hole_check, label %if.end29.sw.epilog_crit_edge

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end29
  %switch.maskindex = trunc i32 %and49 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %23 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.lobit.not = icmp eq i8 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.gpy_read_status, i32 0, i32 %and49
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.load, ptr %speed, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.shl)
  %tobool62.not = icmp eq i16 %bf.shl, 0
  br i1 %tobool62.not, label %sw.epilog.cleanup_crit_edge, label %if.then63

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63:                                        ; preds = %sw.epilog
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %26 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interface.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %27, label %if.end.i [
    i32 28, label %if.then63.cleanup_crit_edge
    i32 1, label %if.then63.cleanup_crit_edge100
  ]

if.then63.cleanup_crit_edge100:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then63
  %29 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %30, label %if.end.i.cleanup_crit_edge [
    i32 2500, label %sw.bb.i
    i32 1000, label %if.end.i.sw.bb7.i_crit_edge
    i32 100, label %if.end.i.sw.bb7.i_crit_edge101
    i32 10, label %if.end.i.sw.bb7.i_crit_edge102
  ]

if.end.i.sw.bb7.i_crit_edge102:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge101:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %32 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 22, ptr %interface.i, align 4
  %call.i99 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 8, i16 noundef zeroext 4096, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp4.i = icmp slt i32 %call.i99, 0
  br i1 %cmp4.i, label %do.end.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.26, i32 noundef %call.i99) #8
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.end.i.sw.bb7.i_crit_edge, %if.end.i.sw.bb7.i_crit_edge101, %if.end.i.sw.bb7.i_crit_edge102
  %33 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %interface.i, align 4
  %call.i.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %gpy_sgmii_aneg_en.exit.thread.i, label %gpy_sgmii_aneg_en.exit.i

gpy_sgmii_aneg_en.exit.thread.i:                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.24, i32 noundef %call.i.i) #8
  br label %cleanup

gpy_sgmii_aneg_en.exit.i:                         ; preds = %sw.bb7.i
  %and.i.i = and i32 %call.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end11.i, label %gpy_sgmii_aneg_en.exit.i.cleanup_crit_edge

gpy_sgmii_aneg_en.exit.i.cleanup_crit_edge:       ; preds = %gpy_sgmii_aneg_en.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11.i:                                       ; preds = %gpy_sgmii_aneg_en.exit.i
  %call12.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 8, i16 noundef zeroext 4608, i16 noundef zeroext 4608) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.29, i32 noundef %call12.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17.i, %if.end11.i.cleanup_crit_edge, %gpy_sgmii_aneg_en.exit.i.cleanup_crit_edge, %gpy_sgmii_aneg_en.exit.thread.i, %do.end.i, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %if.then63.cleanup_crit_edge100, %sw.epilog.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ], [ %call.i98, %if.end25.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then63.cleanup_crit_edge ], [ 0, %if.then63.cleanup_crit_edge100 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %gpy_sgmii_aneg_en.exit.thread.i ], [ 0, %gpy_sgmii_aneg_en.exit.i.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ], [ 0, %do.end17.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %spec.store.select = select i1 %cmp.not, i16 0, i16 1063
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 25, i16 noundef zeroext %spec.store.select) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_error(ptr noundef %phydev) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 1063
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_trigger_machine(ptr noundef %phydev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %2 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attached_dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %9 to i16
  %or = or i16 %shl, %conv3
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3594, i16 noundef zeroext 0, i16 noundef zeroext %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %arrayidx8 = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %13 to i16
  %shl10 = shl nuw i16 %conv9, 8
  %arrayidx12 = getelementptr i8, ptr %11, i32 3
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i16
  %or14 = or i16 %shl10, %conv13
  %call.i112 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3593, i16 noundef zeroext 0, i16 noundef zeroext %or14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp17 = icmp slt i32 %call.i112, 0
  br i1 %cmp17, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %arrayidx22 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %19 to i16
  %shl24 = shl nuw i16 %conv23, 8
  %arrayidx26 = getelementptr i8, ptr %17, i32 5
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i16
  %or28 = or i16 %shl24, %conv27
  %call.i113 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3592, i16 noundef zeroext 0, i16 noundef zeroext %or28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp31 = icmp slt i32 %call.i113, 0
  br i1 %cmp31, label %if.end20.cleanup_crit_edge, label %if.end34

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end20
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 8
  %call.i114 = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 25, i16 noundef zeroext -32768) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp36 = icmp slt i32 %call.i114, 0
  br i1 %cmp36, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %call.i115 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3590, i16 noundef zeroext 0, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp41 = icmp slt i32 %call.i115, 0
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i, align 8
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i, align 8
  %call.i118 = tail call i32 @mdiobus_read(ptr noundef %27, i32 noundef %29, i32 noundef 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp46 = icmp slt i32 %call.i118, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i119 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3590, i16 noundef zeroext 1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp51 = icmp slt i32 %call.i119, 0
  br i1 %cmp51, label %if.else.cleanup_crit_edge, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %if.else.if.end55_crit_edge, %if.end44.if.end55_crit_edge
  %30 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wolopts, align 4
  %and57 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end74, label %if.then59

if.then59:                                        ; preds = %if.end55
  %call.i120 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 25, i16 noundef zeroext 0, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp61 = icmp slt i32 %call.i120, 0
  br i1 %cmp61, label %if.then59.cleanup_crit_edge, label %if.end64

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %if.then59
  %bus.i121 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %32 = ptrtoint ptr %bus.i121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i121, align 8
  %addr.i122 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %34 = ptrtoint ptr %addr.i122 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i122, align 8
  %call.i123 = tail call i32 @mdiobus_read(ptr noundef %33, i32 noundef %35, i32 noundef 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp66 = icmp slt i32 %call.i123, 0
  br i1 %cmp66, label %if.end64.cleanup_crit_edge, label %if.end69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  %and70 = and i32 %call.i123, 1062
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.cleanup_crit_edge, label %if.then72

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_trigger_machine(ptr noundef %phydev) #5
  br label %cleanup

if.end74:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %call.i124 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 25, i16 noundef zeroext 1, i16 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then72, %if.end69.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i124, %if.end74 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i112, %if.end.cleanup_crit_edge ], [ %call.i113, %if.end20.cleanup_crit_edge ], [ %call.i114, %if.end34.cleanup_crit_edge ], [ %call.i115, %if.end39.cleanup_crit_edge ], [ %call.i118, %if.end44.cleanup_crit_edge ], [ %call.i119, %if.else.cleanup_crit_edge ], [ %call.i120, %if.then59.cleanup_crit_edge ], [ %call.i123, %if.end64.cleanup_crit_edge ], [ 0, %if.then72 ], [ 0, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpy_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3590) #5
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %or = or i32 %3, 32
  store i32 %or, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 25) #5
  %and3 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts, align 4
  %or7 = or i32 %9, 1
  store i32 %or7, ptr %wolopts, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy_loopback(ptr noundef %phydev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %enable, i16 16384, i16 0
  %call = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 100) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpy115_loopback(ptr noundef %phydev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 100) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i29 = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp = icmp slt i32 %call.i29, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end16:                                         ; preds = %if.end
  %and = and i32 %call.i29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 118, i32 %and)
  %cmp17 = icmp ugt i32 %and, 118
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.end16
  %call.i30 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool1.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool1.not.i31, label %if.then.i32, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i32:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 100) #5
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then.i32, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ %call.i29, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i30, %if.then18.cleanup_crit_edge ], [ 0, %if.then.i32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_get_c45_ids(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_an_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_check_and_restart_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gpy_sgmii_aneg_en(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 30, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.24, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i1 [ true, %do.end ], [ %tobool, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_mxl_gpy__372_725_phy_module_init6, !1, !"__initcall__kmod_mxl_gpy__372_725_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mxl-gpy.c", i32 725, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description373, !4, !"__UNIQUE_ID_description373", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/mxl-gpy.c", i32 744, i32 1}
!5 = !{ptr @__UNIQUE_ID_author374, !6, !"__UNIQUE_ID_author374", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/mxl-gpy.c", i32 745, i32 1}
!7 = !{ptr @__UNIQUE_ID_file375, !8, !"__UNIQUE_ID_file375", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/mxl-gpy.c", i32 746, i32 1}
!9 = !{ptr @__UNIQUE_ID_license376, !8, !"__UNIQUE_ID_license376", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/mxl-gpy.c", i32 518, i32 12}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/mxl-gpy.c", i32 536, i32 12}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/mxl-gpy.c", i32 553, i32 12}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/mxl-gpy.c", i32 571, i32 12}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/mxl-gpy.c", i32 588, i32 12}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/mxl-gpy.c", i32 606, i32 12}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/mxl-gpy.c", i32 623, i32 12}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/mxl-gpy.c", i32 641, i32 12}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/mxl-gpy.c", i32 658, i32 12}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/mxl-gpy.c", i32 675, i32 12}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/mxl-gpy.c", i32 692, i32 12}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/mxl-gpy.c", i32 709, i32 12}
!34 = !{ptr @gpy_drivers, !35, !"gpy_drivers", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/mxl-gpy.c", i32 515, i32 26}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/mxl-gpy.c", i32 112, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gpy_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @gpy_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/mxl-gpy.c", i32 246, i32 8}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gpy_config_aneg._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @gpy_config_aneg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ver_need_sgmii_reaneg, !53, !"ver_need_sgmii_reaneg", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/mxl-gpy.c", i32 77, i32 3}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/mxl-gpy.c", i32 147, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @gpy_2500basex_chk._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @gpy_2500basex_chk._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/phy/mxl-gpy.c", i32 169, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @gpy_sgmii_aneg_en._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @gpy_sgmii_aneg_en._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/phy/mxl-gpy.c", i32 276, i32 4}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @gpy_update_interface._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @gpy_update_interface._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/phy/mxl-gpy.c", i32 293, i32 4}
!71 = !{ptr @gpy_update_interface._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @gpy_update_interface._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
