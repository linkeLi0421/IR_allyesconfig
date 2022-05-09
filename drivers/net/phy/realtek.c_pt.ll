; ModuleID = '/llk/IR_all_yes/drivers/net/phy/realtek.c_pt.bc'
source_filename = "../drivers/net/phy/realtek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.rtl821x_priv = type { i16, i16 }

@__UNIQUE_ID_description281 = internal constant [39 x i8] c"realtek.description=Realtek PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [29 x i8] c"realtek.author=Johnson Leung\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [37 x i8] c"realtek.file=drivers/net/phy/realtek\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [20 x i8] c"realtek.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_realtek__289_1037_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@realtek_drvs = internal global { [19 x %struct.phy_driver], [1148 x i8] } { [19 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 33281, ptr @.str, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886230, ptr @.str.1, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8201_config_intr, ptr @rtl8201_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886336, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886480, ptr @.str.3, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8211_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886482, ptr @.str.4, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8211b_suspend, ptr @rtl8211b_resume, ptr null, ptr null, ptr null, ptr @rtl8211b_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886483, ptr @.str.5, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211c_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886484, ptr @.str.6, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8211e_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886485, ptr @.str.7, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211e_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8211e_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886486, ptr @.str.8, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211f_config_init, ptr @rtl821x_probe, ptr null, ptr @genphy_suspend, ptr @rtl821x_resume, ptr null, ptr null, ptr @rtlgen_read_status, ptr @rtl8211f_config_intr, ptr @rtl8211f_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.9, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr null, ptr null, ptr @rtlgen_read_status, ptr null, ptr null, ptr null, ptr @rtlgen_match_phy_device, ptr null, ptr null, ptr null, ptr @rtlgen_read_mmd, ptr @rtlgen_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.10, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr @rtl8226_match_phy_device, ptr null, ptr null, ptr null, ptr @rtl822x_read_mmd, ptr @rtl822x_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886272, ptr @.str.11, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_read_mmd, ptr @rtl822x_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886264, ptr @.str.12, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886280, ptr @.str.13, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886281, ptr @.str.14, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886282, ptr @.str.15, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886561, ptr @.str.16, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8366rb_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @genphy_no_config_intr, ptr @genphy_handle_interrupt_no_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886976, ptr @.str.17, i32 -1, ptr @phy_basic_t1_features, i32 0, ptr null, ptr null, ptr @rtl9000a_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @rtl9000a_config_aneg, ptr null, ptr @rtl9000a_read_status, ptr @rtl9000a_config_intr, ptr @rtl9000a_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886530, ptr @.str.18, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @genphy_no_config_intr, ptr @genphy_handle_interrupt_no_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [1148 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RTL8201CP Ethernet\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RTL8201F Fast Ethernet\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RTL8208 Fast Ethernet\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RTL8211 Gigabit Ethernet\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RTL8211B Gigabit Ethernet\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RTL8211C Gigabit Ethernet\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RTL8211DN Gigabit Ethernet\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RTL8211E Gigabit Ethernet\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RTL8211F Gigabit Ethernet\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Generic FE-GE Realtek PHY\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RTL8226 2.5Gbps PHY\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RTL8226B_RTL8221B 2.5Gbps PHY\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RTL8226-CG 2.5Gbps PHY\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RTL8226B-CG_RTL8221B-CG 2.5Gbps PHY\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RTL8221B-VB-CG 2.5Gbps PHY\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RTL8221B-VM-CG 2.5Gbps PHY\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RTL8366RB Gigabit Ethernet\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RTL9000AA_RTL9000AN Ethernet\00", [35 x i8] zeroinitializer }, align 32
@phy_basic_t1_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RTL8365MB-VC Gigabit Ethernet\00", [34 x i8] zeroinitializer }, align 32
@rtl8211f_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 344, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"aldps mode  configuration failed: %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8211f_config_init\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/phy/realtek.c\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8211f_config_init._entry_ptr = internal global ptr @rtl8211f_config_init._entry, section ".printk_index", align 4
@rtl8211f_config_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.21, i32 376, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to update the TX delay register\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl8211f_config_init._entry_ptr.26 = internal global ptr @rtl8211f_config_init._entry.24, section ".printk_index", align 4
@rtl8211f_config_init.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.21, ptr @.str.28, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"realtek\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s 2ns TX delay (and changing the value from pin-strapping RXD1 or the bootloader)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Disabling\00", [22 x i8] zeroinitializer }, align 32
@rtl8211f_config_init.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.21, ptr @.str.31, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"2ns TX delay was already %s (by pin-strapping RXD1 or bootloader configuration)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@rtl8211f_config_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.20, ptr @.str.21, i32 391, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to update the RX delay register\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl8211f_config_init._entry_ptr.36 = internal global ptr @rtl8211f_config_init._entry.34, section ".printk_index", align 4
@rtl8211f_config_init.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.21, ptr @.str.37, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s 2ns RX delay (and changing the value from pin-strapping RXD0 or the bootloader)\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8211f_config_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.21, ptr @.str.38, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"2ns RX delay was already %s (by pin-strapping RXD0 or bootloader configuration)\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl8211f_config_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.20, ptr @.str.21, i32 407, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clkout configuration failed: %pe\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl8211f_config_init._entry_ptr.41 = internal global ptr @rtl8211f_config_init._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"realtek,aldps-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"realtek,clkout-disable\00", [41 x i8] zeroinitializer }, align 32
@rtl8366rb_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.21, i32 497, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error enabling power management\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8366rb_config_init\00", [42 x i8] zeroinitializer }, align 32
@rtl8366rb_config_init._entry_ptr = internal global ptr @rtl8366rb_config_init._entry, section ".printk_index", align 4
@rtl9000a_config_aneg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.21, i32 752, ptr @.str.48, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported Master/Slave mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl9000a_config_aneg\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtl9000a_config_aneg._entry_ptr = internal global ptr @rtl9000a_config_aneg._entry, section ".printk_index", align 4
@switch.table.rtl8211e_config_init = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 8192, i16 14336, i16 10240, i16 12288], [24 x i8] zeroinitializer }, align 32
@switch.table.rtl8211f_config_init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.32, ptr @.str.32, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@switch.table.rtl8211f_config_init.49 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.29, ptr @.str.29, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@switch.table.rtl8211f_config_init.50 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 8, i16 8, i16 0], [24 x i8] zeroinitializer }, align 32
@switch.table.rtl8211f_config_init.51 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.32, ptr @.str.33, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@switch.table.rtl8211f_config_init.52 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.29, ptr @.str.30, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@switch.table.rtl8211f_config_init.53 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 256, i16 0, i16 256], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 16, i64 32, i64 512, i64 528, i64 544]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 16, i64 32, i64 512, i64 528, i64 544]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 5]
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"realtek_drvs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 844, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 847, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 852, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 861, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 870, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 878, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 889, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 897, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 906, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 916, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 927, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 937, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 950, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 962, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 972, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 982, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 992, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1002, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1015, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1028, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 343, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 376, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 379, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 383, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 391, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 394, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 398, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 406, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 108, i32 42 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 116, i32 42 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 496, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [29 x i8] c"../drivers/net/phy/realtek.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 752, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [34 x i8] c"switch.table.rtl8211e_config_init\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [34 x i8] c"switch.table.rtl8211f_config_init\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [37 x i8] c"switch.table.rtl8211f_config_init.49\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [37 x i8] c"switch.table.rtl8211f_config_init.50\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [37 x i8] c"switch.table.rtl8211f_config_init.51\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [37 x i8] c"switch.table.rtl8211f_config_init.52\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [37 x i8] c"switch.table.rtl8211f_config_init.53\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_realtek__289_1037_phy_module_init6, ptr @phy_module_exit, ptr @rtl8211f_config_init._entry, ptr @rtl8211f_config_init._entry.24, ptr @rtl8211f_config_init._entry.34, ptr @rtl8211f_config_init._entry.39, ptr @rtl8211f_config_init._entry_ptr, ptr @rtl8211f_config_init._entry_ptr.26, ptr @rtl8211f_config_init._entry_ptr.36, ptr @rtl8211f_config_init._entry_ptr.41, ptr @rtl8366rb_config_init._entry, ptr @rtl8366rb_config_init._entry_ptr, ptr @rtl9000a_config_aneg._entry, ptr @rtl9000a_config_aneg._entry_ptr, ptr @realtek_drvs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.rtl8211e_config_init, ptr @switch.table.rtl8211f_config_init, ptr @switch.table.rtl8211f_config_init.49, ptr @switch.table.rtl8211f_config_init.50, ptr @switch.table.rtl8211f_config_init.51, ptr @switch.table.rtl8211f_config_init.52, ptr @switch.table.rtl8211f_config_init.53], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_drvs to i32), i32 4484, i32 5632, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8211f_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8211f_config_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8211f_config_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8211f_config_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8366rb_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl9000a_config_aneg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8211e_config_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8211f_config_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8211f_config_init.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8211f_config_init.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8211f_config_init.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8211f_config_init.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8211f_config_init.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @realtek_drvs, i32 noundef 19, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_drivers_unregister(ptr noundef nonnull @realtek_drvs, i32 noundef 19) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl821x_read_page(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 31) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl821x_write_page(ptr nocapture noundef readonly %phydev, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext %conv) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8201_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 30) #7
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 19, i16 noundef zeroext 14336) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 19, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i19 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i19, align 8
  %addr.i.i20 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i20, align 8
  %call.i.i21 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 30) #7
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i.i21, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call3, %if.else.cleanup_crit_edge ], [ %call2, %if.end ], [ %10, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8201_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 43008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_write_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %cmp1 = icmp eq i32 %1, 100
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %autoneg, align 8
  %3 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp2 = icmp eq i16 %3, 0
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i16 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 23, i16 noundef zeroext 8504) #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %bus.i20 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i20, align 8
  %addr.i21 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i21, align 8
  %call.i22 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 23, i16 noundef zeroext 8456) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then3
  %bus.i.sink = phi ptr [ %bus.i, %if.then3 ], [ %bus.i20, %if.else ]
  %addr.i.sink = phi ptr [ %addr.i, %if.then3 ], [ %addr.i21, %if.else ]
  %.sink27 = phi i16 [ 608, %if.then3 ], [ 0, %if.else ]
  %12 = ptrtoint ptr %bus.i.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.sink, align 8
  %14 = ptrtoint ptr %addr.i.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.sink, align 8
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 14, i16 noundef zeroext %.sink27) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211b_suspend(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 14, i16 noundef zeroext 512) #7
  %call1 = tail call i32 @genphy_suspend(ptr noundef %phydev) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211b_resume(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 14, i16 noundef zeroext 0) #7
  %call1 = tail call i32 @genphy_resume(ptr noundef %phydev) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211b_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i17 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i17, align 8
  %addr.i18 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i18, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 19) #7
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i17, align 8
  %8 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i18, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 18, i16 noundef zeroext 25600) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 18, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool4.not = icmp eq i32 %call.i19, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i17, align 8
  %12 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i18, align 8
  %call.i.i22 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 19) #7
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i22, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i19, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl821x_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i16 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp2 = icmp slt i32 %call.i16, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call.i16, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211c_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 9, i16 noundef zeroext 0, i16 noundef zeroext 6144) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211e_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i17 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i17, align 8
  %addr.i18 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i18, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 19) #7
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i17, align 8
  %8 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i18, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 18, i16 noundef zeroext 1024) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 18, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool4.not = icmp eq i32 %call.i19, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i17, align 8
  %12 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i18, align 8
  %call.i.i22 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 19) #7
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i22, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i19, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211e_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %switch.tableidx = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8211e_config_init, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %switch.lookup.err_restore_page_crit_edge, label %if.end

switch.lookup.err_restore_page_crit_edge:         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_restore_page

if.end:                                           ; preds = %switch.lookup
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 30, i16 noundef zeroext 164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_restore_page_crit_edge

if.end.err_restore_page_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_restore_page

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 28, i16 noundef zeroext 14336, i16 noundef zeroext %switch.load) #7
  br label %err_restore_page

err_restore_page:                                 ; preds = %if.end6, %if.end.err_restore_page_crit_edge, %switch.lookup.err_restore_page_crit_edge
  %ret.0 = phi i32 [ 0, %switch.lookup.err_restore_page_crit_edge ], [ %call.i, %if.end.err_restore_page_crit_edge ], [ %call7, %if.end6 ]
  %call8 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %err_restore_page, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %err_restore_page ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211f_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %call = tail call i32 @phy_modify_paged_changed(ptr noundef %phydev, i32 noundef 2627, i32 noundef 24, i16 noundef zeroext 4102, i16 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = inttoptr i32 %call to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.19, ptr noundef nonnull %4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  %switch.tableidx = add i32 %6, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rtl8211f_config_init, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep154 = getelementptr inbounds [4 x ptr], ptr @switch.table.rtl8211f_config_init.49, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep154 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load155 = load ptr, ptr %switch.gep154, align 4
  %switch.gep156 = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8211f_config_init.50, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep156 to i32
  call void @__asan_load2_noabort(i32 %10)
  %switch.load157 = load i16, ptr %switch.gep156, align 2
  %switch.gep158 = getelementptr inbounds [4 x ptr], ptr @switch.table.rtl8211f_config_init.51, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep158 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load159 = load ptr, ptr %switch.gep158, align 4
  %switch.gep160 = getelementptr inbounds [4 x ptr], ptr @switch.table.rtl8211f_config_init.52, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep160 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load161 = load ptr, ptr %switch.gep160, align 4
  %switch.gep162 = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8211f_config_init.53, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep162 to i32
  call void @__asan_load2_noabort(i32 %13)
  %switch.load163 = load i16, ptr %switch.gep162, align 2
  %call7 = tail call i32 @phy_modify_paged_changed(ptr noundef %phydev, i32 noundef 3336, i32 noundef 17, i16 noundef zeroext 256, i16 noundef zeroext %switch.load163) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.else

do.end12:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.body25, label %do.body14

do.body14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8211f_config_init, %if.then19)) #7
          to label %if.end45 [label %if.then19], !srcloc !111

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8211f_config_init.__UNIQUE_ID_ddebug285, ptr noundef %phydev, ptr noundef nonnull @.str.28, ptr noundef nonnull %switch.load161) #7
  br label %if.end45

do.body25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8211f_config_init, %if.then37)) #7
          to label %if.end45 [label %if.then37], !srcloc !111

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8211f_config_init.__UNIQUE_ID_ddebug286, ptr noundef %phydev, ptr noundef nonnull @.str.31, ptr noundef nonnull %switch.load159) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %do.body25, %if.then19, %do.body14
  %call46 = tail call i32 @phy_modify_paged_changed(ptr noundef %phydev, i32 noundef 3336, i32 noundef 21, i16 noundef zeroext 8, i16 noundef zeroext %switch.load157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %if.else53

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.else53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool54.not = icmp eq i32 %call46, 0
  br i1 %tobool54.not, label %do.body76, label %do.body56

do.body56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8211f_config_init, %if.then68)) #7
          to label %if.end96 [label %if.then68], !srcloc !111

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8211f_config_init.__UNIQUE_ID_ddebug287, ptr noundef %phydev, ptr noundef nonnull @.str.37, ptr noundef nonnull %switch.load155) #7
  br label %if.end96

do.body76:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8211f_config_init, %if.then88)) #7
          to label %if.end96 [label %if.then88], !srcloc !111

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8211f_config_init.__UNIQUE_ID_ddebug288, ptr noundef %phydev, ptr noundef nonnull @.str.38, ptr noundef nonnull %switch.load) #7
  br label %if.end96

if.end96:                                         ; preds = %if.then88, %do.body76, %if.then68, %do.body56
  %phycr2 = getelementptr inbounds %struct.rtl821x_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %phycr2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phycr2, align 2
  %call97 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 25, i16 noundef zeroext 1, i16 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end103, label %if.end105

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %16 = inttoptr i32 %call97 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.40, ptr noundef nonnull %16) #10
  br label %cleanup

if.end105:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %call106 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end103, %do.end52, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call7, %do.end12 ], [ %call46, %do.end52 ], [ %call97, %do.end103 ], [ %call106, %if.end105 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl821x_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 4, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = trunc i32 %call2 to i16
  %conv = and i16 %0, 4102
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %call.i, align 2
  %of_node = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i44 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i44, null
  br i1 %tobool.i.not, label %if.end4.if.end10_crit_edge, label %if.then6

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %call.i, align 2
  %6 = or i16 %5, 4102
  store i16 %6, ptr %call.i, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end4.if.end10_crit_edge
  %call11 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %7 = trunc i32 %call11 to i16
  %conv17 = and i16 %7, 1
  %phycr2 = getelementptr inbounds %struct.rtl821x_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %phycr2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv17, ptr %phycr2, align 2
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i45 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.43, ptr noundef null) #7
  %tobool.i46.not = icmp eq ptr %call.i45, null
  br i1 %tobool.i46.not, label %if.end15.if.end25_crit_edge, label %if.then20

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %phycr2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phycr2, align 2
  %13 = and i16 %12, -2
  store i16 %13, ptr %phycr2, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end15.if.end25_crit_edge
  %priv26 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %14 = ptrtoint ptr %priv26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv26, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl821x_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_resume(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtlgen_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_read_status(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %link.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %link.i, align 8
  %1 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call.i, 1584
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end2.i.cleanup_crit_edge [
    i32 0, label %if.end2.i.cleanup.sink.split.i_crit_edge
    i32 16, label %sw.bb3.i
    i32 32, label %sw.bb5.i
    i32 512, label %sw.bb7.i
    i32 528, label %sw.bb9.i
    i32 544, label %sw.bb11.i
  ]

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb7.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb9.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb11.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 100, %sw.bb3.i ], [ 1000, %sw.bb5.i ], [ 10000, %sw.bb7.i ], [ 2500, %sw.bb9.i ], [ 5000, %sw.bb11.i ], [ 10, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %3 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %speed.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ 0, %if.end2.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211f_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 29) #7
  %1 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 18, i16 noundef zeroext 16) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 18, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i19 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 29) #7
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i19, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then.cleanup_crit_edge ], [ %call3, %if.else.cleanup_crit_edge ], [ %call2, %if.end ], [ %2, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8211f_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtlgen_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_resume(ptr noundef %phydev) #7
  tail call void @msleep(i32 noundef 20) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtlgen_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1886208, i32 %1)
  %cmp = icmp eq i32 %1, 1886208
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 31, i16 noundef zeroext 2657) #7
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i8.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 19) #7
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i11.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 31, i16 noundef zeroext 0) #7
  %14 = and i32 %call.i8.i, -2147475456
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %14)
  %15 = icmp ne i32 %14, 8192
  %phi.cast = zext i1 %15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %16 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtlgen_read_mmd(ptr nocapture noundef readonly %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %devnum)
  %cmp = icmp eq i32 %devnum, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %regnum)
  %cmp1 = icmp eq i16 %regnum, 20
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 2652) #7
  br label %if.end28.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %devnum)
  %cmp5 = icmp eq i32 %devnum, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %regnum)
  %cmp9 = icmp eq i16 %regnum, 60
  %or.cond41 = and i1 %cmp5, %cmp9
  br i1 %or.cond41, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i46 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i46 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i46, align 8
  %addr.i.i47 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i47, align 8
  %call.i.i48 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 2653) #7
  br label %if.end28.sink.split

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %regnum)
  %cmp20 = icmp eq i16 %regnum, 61
  %or.cond42 = and i1 %cmp5, %cmp20
  br i1 %or.cond42, label %if.then22, label %if.else15.if.end28_crit_edge

if.else15.if.end28_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i55 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i55, align 8
  %addr.i.i56 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i56, align 8
  %call.i.i57 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 2653) #7
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.then22, %if.then11, %if.then
  %bus.i.i46.sink68 = phi ptr [ %bus.i.i46, %if.then11 ], [ %bus.i.i55, %if.then22 ], [ %bus.i.i, %if.then ]
  %addr.i.i47.sink67 = phi ptr [ %addr.i.i47, %if.then11 ], [ %addr.i.i56, %if.then22 ], [ %addr.i.i, %if.then ]
  %.sink66 = phi i32 [ 16, %if.then11 ], [ 17, %if.then22 ], [ 18, %if.then ]
  %12 = ptrtoint ptr %bus.i.i46.sink68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i46.sink68, align 8
  %14 = ptrtoint ptr %addr.i.i47.sink67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i47.sink67, align 8
  %call.i51 = tail call i32 @__mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef %.sink66) #7
  %16 = ptrtoint ptr %bus.i.i46.sink68 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i46.sink68, align 8
  %18 = ptrtoint ptr %addr.i.i47.sink67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i47.sink67, align 8
  %call.i.i54 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else15.if.end28_crit_edge
  %ret.0 = phi i32 [ -95, %if.else15.if.end28_crit_edge ], [ %call.i51, %if.end28.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtlgen_write_mmd(ptr nocapture noundef readonly %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %devnum)
  %cmp = icmp eq i32 %devnum, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %regnum)
  %cmp1 = icmp eq i16 %regnum, 60
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 2653) #7
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 16, i16 noundef zeroext %val) #7
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i9 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ -95, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl822x_get_features(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2657, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %add.ptr.i.i6.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %add.ptr.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i6.i, align 4
  %and.i.i.i = and i32 %1, -98305
  %and = shl i32 %call, 2
  %2 = and i32 %and, 32768
  %and.i.i.sink.i = or i32 %and.i.i.i, %2
  %and3 = shl i32 %call, 2
  %3 = and i32 %and3, 65536
  %and.i.i.sink.i22 = or i32 %and.i.i.sink.i, %3
  store i32 %and.i.i.sink.i22, ptr %add.ptr.i.i6.i, align 4
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %supported, align 4
  %and.i.i.i27 = and i32 %5, -4097
  %and6 = shl i32 %call, 12
  %6 = and i32 %and6, 4096
  %and.i.i.sink.i29 = or i32 %and.i.i.i27, %6
  store i32 %and.i.i.sink.i29, ptr %supported, align 4
  %call7 = tail call i32 @genphy_read_abilities(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl822x_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %4 = trunc i32 %3 to i16
  %5 = lshr i16 %4, 8
  %6 = and i16 %5, 128
  %call2 = tail call i32 @phy_modify_paged_changed(ptr noundef %phydev, i32 noundef 2653, i32 noundef 18, i16 noundef zeroext 128, i16 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.cleanup9_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.cleanup9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool7 = icmp ne i32 %ret.0, 0
  %call8 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext %tobool7) #7
  br label %cleanup9

cleanup9:                                         ; preds = %if.end6, %if.then.cleanup9_crit_edge
  %retval.1 = phi i32 [ %call8, %if.end6 ], [ %call2, %if.then.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl822x_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2653, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup15_crit_edge, label %if.end

if.then.cleanup15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %2 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lp_advertising, align 4
  %and.i.i.i = and i32 %3, -4097
  %and = shl i32 %call, 1
  %4 = and i32 %and, 4096
  %and.i.i.sink.i = or i32 %and.i.i.i, %4
  store i32 %and.i.i.sink.i, ptr %lp_advertising, align 4
  %add.ptr.i.i6.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %add.ptr.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i6.i, align 4
  %and.i.i.i30 = and i32 %6, -98305
  %and5 = shl i32 %call, 10
  %7 = and i32 %and5, 65536
  %and.i.i.sink.i32 = or i32 %and.i.i.i30, %7
  %and8 = shl i32 %call, 10
  %8 = and i32 %and8, 32768
  %and.i.i.sink.i40 = or i32 %and.i.i.sink.i32, %8
  store i32 %and.i.i.sink.i40, ptr %add.ptr.i.i6.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %call10 = tail call i32 @genphy_read_status(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup15_crit_edge, label %if.end13

if.end9.cleanup15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

if.end13:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %autoneg, align 8
  %10 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i42 = icmp eq i16 %10, 0
  br i1 %tobool.not.i42, label %if.end13.cleanup15_crit_edge, label %if.end.i

if.end13.cleanup15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

if.end.i:                                         ; preds = %if.end13
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup15_crit_edge, label %if.end2.i

if.end.i.cleanup15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

if.end2.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call.i, 1584
  %11 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and.i, label %if.end2.i.cleanup15_crit_edge [
    i32 0, label %if.end2.i.cleanup.sink.split.i_crit_edge
    i32 16, label %sw.bb3.i
    i32 32, label %sw.bb5.i
    i32 512, label %sw.bb7.i
    i32 528, label %sw.bb9.i
    i32 544, label %sw.bb11.i
  ]

if.end2.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end2.i.cleanup15_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

sw.bb3.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb7.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb9.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb11.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.end2.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 100, %sw.bb3.i ], [ 1000, %sw.bb5.i ], [ 10000, %sw.bb7.i ], [ 2500, %sw.bb9.i ], [ 5000, %sw.bb11.i ], [ 10, %if.end2.i.cleanup.sink.split.i_crit_edge ]
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %speed.i, align 8
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup.sink.split.i, %if.end2.i.cleanup15_crit_edge, %if.end.i.cleanup15_crit_edge, %if.end13.cleanup15_crit_edge, %if.end9.cleanup15_crit_edge, %if.then.cleanup15_crit_edge
  %retval.1 = phi i32 [ %call10, %if.end9.cleanup15_crit_edge ], [ %call, %if.then.cleanup15_crit_edge ], [ 0, %if.end13.cleanup15_crit_edge ], [ %call.i, %if.end.i.cleanup15_crit_edge ], [ 0, %if.end2.i.cleanup15_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8226_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1886208, i32 %1)
  %cmp = icmp eq i32 %1, 1886208
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 31, i16 noundef zeroext 2657) #7
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i8.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 19) #7
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i11.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 31, i16 noundef zeroext 0) #7
  %14 = and i32 %call.i8.i, -2147475456
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %14)
  %15 = icmp eq i32 %14, 8192
  %phi.cast = zext i1 %15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %16 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl822x_read_mmd(ptr nocapture noundef readonly %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtlgen_read_mmd(ptr noundef %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp.not = icmp eq i32 %call, -95
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %devnum)
  %cmp1 = icmp eq i32 %devnum, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %regnum)
  %cmp2 = icmp eq i16 %regnum, 21
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 2670) #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %devnum)
  %cmp8 = icmp eq i32 %devnum, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %regnum)
  %cmp12 = icmp eq i16 %regnum, 62
  %or.cond49 = and i1 %cmp8, %cmp12
  br i1 %or.cond49, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i54 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i54 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i54, align 8
  %addr.i.i55 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i55, align 8
  %call.i.i56 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 2669) #7
  br label %cleanup.sink.split

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %regnum)
  %cmp23 = icmp eq i16 %regnum, 63
  %or.cond50 = and i1 %cmp8, %cmp23
  br i1 %or.cond50, label %if.then25, label %if.else18.cleanup_crit_edge

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i63 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i63 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i63, align 8
  %addr.i.i64 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i64, align 8
  %call.i.i65 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 2669) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then25, %if.then14, %if.then4
  %bus.i.i.sink76 = phi ptr [ %bus.i.i, %if.then4 ], [ %bus.i.i63, %if.then25 ], [ %bus.i.i54, %if.then14 ]
  %addr.i.i.sink75 = phi ptr [ %addr.i.i, %if.then4 ], [ %addr.i.i64, %if.then25 ], [ %addr.i.i55, %if.then14 ]
  %.sink74 = phi i32 [ 22, %if.then4 ], [ 16, %if.then25 ], [ 18, %if.then14 ]
  %12 = ptrtoint ptr %bus.i.i.sink76 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i.sink76, align 8
  %14 = ptrtoint ptr %addr.i.i.sink75 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i.sink75, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef %.sink74) #7
  %16 = ptrtoint ptr %bus.i.i.sink76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i.sink76, align 8
  %18 = ptrtoint ptr %addr.i.i.sink75 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i.sink75, align 8
  %call.i.i53 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -95, %if.else18.cleanup_crit_edge ], [ %call.i, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl822x_write_mmd(ptr nocapture noundef readonly %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %devnum)
  %cmp.i = icmp eq i32 %devnum, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %regnum)
  %cmp1.i = icmp eq i16 %regnum, 60
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %rtlgen_write_mmd.exit, label %if.end

rtlgen_write_mmd.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 2653) #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %regnum)
  %cmp2 = icmp eq i16 %regnum, 62
  %or.cond = and i1 %cmp.i, %cmp2
  br i1 %or.cond, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i17 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 2669) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %rtlgen_write_mmd.exit
  %bus.i.i.i.sink29 = phi ptr [ %bus.i.i.i, %rtlgen_write_mmd.exit ], [ %bus.i.i, %if.then4 ]
  %addr.i.i.i.sink28 = phi ptr [ %addr.i.i.i, %rtlgen_write_mmd.exit ], [ %addr.i.i, %if.then4 ]
  %.sink27 = phi i32 [ 16, %rtlgen_write_mmd.exit ], [ 18, %if.then4 ]
  %8 = ptrtoint ptr %bus.i.i.i.sink29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i.i.sink29, align 8
  %10 = ptrtoint ptr %addr.i.i.i.sink28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i.i.sink28, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef %.sink27, i16 noundef zeroext %val) #7
  %12 = ptrtoint ptr %bus.i.i.i.sink29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i.i.sink29, align 8
  %14 = ptrtoint ptr %addr.i.i.i.sink28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i.i.sink28, align 8
  %call.i.i9.i = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.end.cleanup_crit_edge ], [ %call.i.i, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8366rb_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.44) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @genphy_no_config_intr(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_handle_interrupt_no_ack(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl9000a_config_init(ptr nocapture noundef %phydev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %autoneg, align 8
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %duplex, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl9000a_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_slave_set = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 14
  %0 = ptrtoint ptr %master_slave_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master_slave_set, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %1, label %do.end [
    i8 4, label %sw.bb
    i8 5, label %entry.sw.epilog_crit_edge
    i8 1, label %entry.cleanup_crit_edge
    i8 0, label %entry.cleanup_crit_edge12
  ]

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.46) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ctl.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ 2048, %sw.bb ]
  %call = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 9, i16 noundef zeroext 2048, i16 noundef zeroext %ctl.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge12
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge12 ], [ %call5, %if.then ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl9000a_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_slave_get = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 13
  %0 = ptrtoint ptr %master_slave_get to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %master_slave_get, align 4
  %master_slave_state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 15
  %1 = ptrtoint ptr %master_slave_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %master_slave_state, align 2
  %call = tail call i32 @genphy_update_link(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = and i32 %call.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %. = select i1 %tobool4.not, i8 5, i8 4
  %6 = ptrtoint ptr %master_slave_get to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %master_slave_get, align 4
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %call.i39 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp10 = icmp slt i32 %call.i39, 0
  br i1 %cmp10, label %if.end3.cleanup_crit_edge, label %if.end12

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %and13 = and i32 %call.i39, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %.36 = select i1 %tobool14.not, i8 3, i8 2
  %11 = ptrtoint ptr %master_slave_state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.36, ptr %master_slave_state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i39, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl9000a_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 29) #7
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext -17) #7
  br label %if.end8

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i21 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i21, align 8
  %addr.i.i22 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i22, align 8
  %call.i.i23 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 29) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end
  %val.0 = phi i16 [ -17, %if.end ], [ -1, %if.end6 ]
  %call9 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext %val.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %5, %if.then.cleanup_crit_edge ], [ %call3, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl9000a_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__UNIQUE_ID_description281, !1, !"__UNIQUE_ID_description281", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/realtek.c", i32 74, i32 1}
!2 = !{ptr @__UNIQUE_ID_author282, !3, !"__UNIQUE_ID_author282", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/realtek.c", i32 75, i32 1}
!4 = !{ptr @__UNIQUE_ID_file283, !5, !"__UNIQUE_ID_file283", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/realtek.c", i32 76, i32 1}
!6 = !{ptr @__UNIQUE_ID_license284, !5, !"__UNIQUE_ID_license284", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_realtek__289_1037_phy_module_init6, !8, !"__initcall__kmod_realtek__289_1037_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/realtek.c", i32 1037, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/realtek.c", i32 847, i32 21}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/realtek.c", i32 852, i32 12}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/realtek.c", i32 861, i32 12}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/realtek.c", i32 870, i32 12}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/realtek.c", i32 878, i32 12}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/realtek.c", i32 889, i32 12}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/realtek.c", i32 897, i32 12}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/realtek.c", i32 906, i32 12}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/realtek.c", i32 916, i32 12}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/realtek.c", i32 927, i32 12}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/realtek.c", i32 937, i32 12}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/realtek.c", i32 950, i32 12}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/realtek.c", i32 962, i32 21}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/realtek.c", i32 972, i32 21}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/realtek.c", i32 982, i32 21}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/realtek.c", i32 992, i32 21}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/realtek.c", i32 1002, i32 12}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/realtek.c", i32 1015, i32 12}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/realtek.c", i32 1028, i32 12}
!48 = !{ptr @realtek_drvs, !49, !"realtek_drvs", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/realtek.c", i32 844, i32 26}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/realtek.c", i32 343, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rtl8211f_config_init._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @rtl8211f_config_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/realtek.c", i32 376, i32 3}
!60 = !{ptr @rtl8211f_config_init._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rtl8211f_config_init._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/realtek.c", i32 379, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug285, !63, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!66 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/phy/realtek.c", i32 383, i32 3}
!70 = !{ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug286, !69, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/phy/realtek.c", i32 391, i32 3}
!75 = !{ptr @rtl8211f_config_init._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rtl8211f_config_init._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/phy/realtek.c", i32 394, i32 3}
!79 = !{ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug287, !78, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/phy/realtek.c", i32 398, i32 3}
!82 = !{ptr @rtl8211f_config_init.__UNIQUE_ID_ddebug288, !81, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/phy/realtek.c", i32 406, i32 3}
!85 = !{ptr @rtl8211f_config_init._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rtl8211f_config_init._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/phy/realtek.c", i32 108, i32 42}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/phy/realtek.c", i32 116, i32 42}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/phy/realtek.c", i32 496, i32 3}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rtl8366rb_config_init._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rtl8366rb_config_init._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/phy/realtek.c", i32 752, i32 3}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rtl9000a_config_aneg._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @rtl9000a_config_aneg._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148881873, i64 2148881878, i64 2148881891, i64 2148881935, i64 2148881969, i64 2148881990}
