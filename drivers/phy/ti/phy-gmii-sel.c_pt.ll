; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-gmii-sel.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-gmii-sel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_gmii_sel_soc_data = type { i32, i32, ptr, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.phy_gmii_sel_priv = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.phy_gmii_sel_phy_priv = type { ptr, i32, ptr, i32, i32, [3 x ptr] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_gmii_sel__332_399_phy_gmii_sel_driver_init6 = internal global ptr @phy_gmii_sel_driver_init, section ".initcall6.init", align 4
@phy_gmii_sel_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @phy_gmii_sel_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_gmii_sel_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_phy_gmii_sel_driver_exit = internal global ptr @phy_gmii_sel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file333 = internal constant [46 x i8] c"phy_gmii_sel.file=drivers/phy/ti/phy-gmii-sel\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [28 x i8] c"phy_gmii_sel.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author335 = internal constant [65 x i8] c"phy_gmii_sel.author=Grygorii Strashko <grygorii.strashko@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [76 x i8] c"phy_gmii_sel.description=TI CPSW Port's PHY Interface Mode selection Driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy-gmii-sel\00", [19 x i8] zeroinitializer }, align 32
@phy_gmii_sel_id_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_am33xx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7xx-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_dra7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am43xx-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_am33xx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_dm814 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_am654 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@phy_gmii_sel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get syscon %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_gmii_sel_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/phy/ti/phy-gmii-sel.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phy_gmii_sel_probe._entry_ptr = internal global ptr @phy_gmii_sel_probe._entry, section ".printk_index", align 4
@phy_gmii_sel_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create phy provider %d\0A\00", [62 x i8] zeroinitializer }, align 32
@phy_gmii_sel_probe._entry_ptr.8 = internal global ptr @phy_gmii_sel_probe._entry.6, section ".printk_index", align 4
@phy_gmii_sel_init_ports.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_gmii_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy_gmii_sel_init_ports\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@phy_gmii_init_phy.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_gmii_init_phy\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s field %x %d %d\0A\00", [45 x i8] zeroinitializer }, align 32
@phy_gmii_init_phy.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@phy_gmii_init_phy.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@phy_gmii_sel_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr null, ptr null, ptr @phy_gmii_sel_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@phy_gmii_init_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create phy%d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@phy_gmii_init_phy._entry_ptr = internal global ptr @phy_gmii_init_phy._entry, section ".printk_index", align 4
@phy_gmii_sel_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 93, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"port%u: unsupported mode: \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_gmii_sel_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@phy_gmii_sel_mode._entry_ptr = internal global ptr @phy_gmii_sel_mode._entry, section ".printk_index", align 4
@phy_gmii_sel_mode.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s id:%u mode:%u rgmii_id:%d rmii_clk_ext:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@phy_gmii_sel_mode._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"port%u: set mode fail %d\00", [39 x i8] zeroinitializer }, align 32
@phy_gmii_sel_mode._entry_ptr.21 = internal global ptr @phy_gmii_sel_mode._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@phy_gmii_sel_of_xlate.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy_gmii_sel_of_xlate\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s id:%u ext:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@phy_gmii_sel_soc_am33xx = internal constant { %struct.phy_gmii_sel_soc_data, [16 x i8] } { %struct.phy_gmii_sel_soc_data { i32 2, i32 6, ptr @phy_gmii_sel_fields_am33xx, i8 0 }, [16 x i8] zeroinitializer }, align 32
@phy_gmii_sel_soc_dra7 = internal constant { %struct.phy_gmii_sel_soc_data, [16 x i8] } { %struct.phy_gmii_sel_soc_data { i32 2, i32 0, ptr @phy_gmii_sel_fields_dra7, i8 0 }, [16 x i8] zeroinitializer }, align 32
@phy_gmii_sel_soc_dm814 = internal constant { %struct.phy_gmii_sel_soc_data, [16 x i8] } { %struct.phy_gmii_sel_soc_data { i32 2, i32 2, ptr @phy_gmii_sel_fields_am33xx, i8 0 }, [16 x i8] zeroinitializer }, align 32
@phy_gmii_sel_soc_am654 = internal constant { %struct.phy_gmii_sel_soc_data, [16 x i8] } { %struct.phy_gmii_sel_soc_data { i32 0, i32 0, ptr @phy_gmii_sel_fields_am654, i8 1 }, [16 x i8] zeroinitializer }, align 32
@phy_gmii_sel_fields_am33xx = internal constant { [2 x [3 x %struct.reg_field]], [40 x i8] } { [2 x [3 x %struct.reg_field]] [[3 x %struct.reg_field] [%struct.reg_field { i32 1616, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 6, i32 6, i32 0, i32 0 }], [3 x %struct.reg_field] [%struct.reg_field { i32 1616, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 7, i32 7, i32 0, i32 0 }]], [40 x i8] zeroinitializer }, align 32
@phy_gmii_sel_fields_dra7 = internal constant { [2 x [3 x %struct.reg_field]], [40 x i8] } { [2 x [3 x %struct.reg_field]] [[3 x %struct.reg_field] [%struct.reg_field { i32 1364, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 1364, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer]], [40 x i8] zeroinitializer }, align 32
@phy_gmii_sel_fields_am654 = internal constant { [8 x [3 x %struct.reg_field]], [96 x i8] } { [8 x [3 x %struct.reg_field]] [[3 x %struct.reg_field] [%struct.reg_field { i32 0, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 4, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 8, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 12, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 16, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 20, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 24, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 28, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer]], [96 x i8] zeroinitializer }, align 32
@switch.table.phy_gmii_sel_mode = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], [52 x i8] zeroinitializer }, align 32
@switch.table.phy_gmii_sel_mode.55 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2], [52 x i8] zeroinitializer }, align 32
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.51, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"phy_gmii_sel_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 392, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 395, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"phy_gmii_sel_id_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 191, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 370, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 385, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 335, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 264, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"phy_gmii_sel_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 216, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 303, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 92, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 99, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 106, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 211, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 213, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 215, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 217, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 219, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 221, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 223, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 225, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 227, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 229, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 231, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 233, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 235, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 237, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 239, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 241, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 243, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 245, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 247, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 249, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 251, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 253, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 255, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 257, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 259, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 261, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 263, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 265, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 267, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 269, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 271, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 242, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [24 x i8] c"phy_gmii_sel_soc_am33xx\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 143, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"phy_gmii_sel_soc_dra7\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 161, i32 30 }
@___asan_gen_.239 = private unnamed_addr constant [23 x i8] c"phy_gmii_sel_soc_dm814\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 167, i32 30 }
@___asan_gen_.242 = private unnamed_addr constant [23 x i8] c"phy_gmii_sel_soc_am654\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 186, i32 30 }
@___asan_gen_.245 = private unnamed_addr constant [27 x i8] c"phy_gmii_sel_fields_am33xx\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 129, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant [25 x i8] c"phy_gmii_sel_fields_dra7\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 151, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant [26 x i8] c"phy_gmii_sel_fields_am654\00", align 1
@___asan_gen_.252 = private constant [33 x i8] c"../drivers/phy/ti/phy-gmii-sel.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 174, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant [31 x i8] c"switch.table.phy_gmii_sel_mode\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [34 x i8] c"switch.table.phy_gmii_sel_mode.55\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__exitcall_phy_gmii_sel_driver_exit, ptr @__initcall__kmod_phy_gmii_sel__332_399_phy_gmii_sel_driver_init6, ptr @phy_gmii_init_phy._entry, ptr @phy_gmii_init_phy._entry_ptr, ptr @phy_gmii_sel_driver_exit, ptr @phy_gmii_sel_mode._entry, ptr @phy_gmii_sel_mode._entry.19, ptr @phy_gmii_sel_mode._entry_ptr, ptr @phy_gmii_sel_mode._entry_ptr.21, ptr @phy_gmii_sel_probe._entry, ptr @phy_gmii_sel_probe._entry.6, ptr @phy_gmii_sel_probe._entry_ptr, ptr @phy_gmii_sel_probe._entry_ptr.8, ptr @phy_gmii_sel_driver, ptr @.str, ptr @phy_gmii_sel_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @phy_gmii_sel_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @phy_gmii_sel_soc_am33xx, ptr @phy_gmii_sel_soc_dra7, ptr @phy_gmii_sel_soc_dm814, ptr @phy_gmii_sel_soc_am654, ptr @phy_gmii_sel_fields_am33xx, ptr @phy_gmii_sel_fields_dra7, ptr @phy_gmii_sel_fields_am654, ptr @switch.table.phy_gmii_sel_mode, ptr @switch.table.phy_gmii_sel_mode.55, ptr @switch.table.phy_modes], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_id_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_init_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_mode._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_soc_am33xx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_soc_dra7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_soc_dm814 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_soc_am654 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_fields_am33xx to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_fields_dra7 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_gmii_sel_fields_am654 to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_gmii_sel_mode to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_gmii_sel_mode.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_gmii_sel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_gmii_sel_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_gmii_sel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_gmii_sel_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_gmii_sel_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @phy_gmii_sel_id_table, ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %soc_data = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %soc_data, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  %num_ports12 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_ports12, align 4
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %call13 = tail call ptr @syscon_node_to_regmap(ptr noundef %10) #7
  %regmap = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %12) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = tail call fastcc i32 @phy_gmii_sel_init_ports(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call25 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @phy_gmii_sel_of_xlate) #7
  %phy_provider = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %phy_provider to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call25, ptr %phy_provider, align 4
  %cmp.i64 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %if.then28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then16 ], [ %15, %if.then28 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_gmii_sel_init_ports(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_data1 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %soc_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %use_of_data = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %use_of_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_of_data, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #7
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %size, align 8, !annotation !150
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @__of_get_address(ptr noundef %8, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %size, ptr noundef null) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %div53 = lshr i64 %10, 2
  %conv = trunc i64 %div53 to i32
  %num_ports = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 5
  %11 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool6.not = icmp eq i32 %conv, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 4
  %reg_offset = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 6
  %14 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg_offset, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #7
  br label %if.end10

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #7
  br label %cleanup30

if.end10:                                         ; preds = %if.end8, %entry.if.end10_crit_edge
  %num_ports11 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 5
  %15 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ports11, align 4
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 32) #7
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end10.cleanup30_crit_edge, label %devm_kcalloc.exit, !prof !151

if.end10.cleanup30_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

devm_kcalloc.exit:                                ; preds = %if.end10
  %19 = extractvalue { i32, i1 } %17, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %19, i32 noundef 3520) #7
  %tobool13.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool13.not, label %devm_kcalloc.exit.cleanup30_crit_edge, label %do.body

devm_kcalloc.exit.cleanup30_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

do.body:                                          ; preds = %devm_kcalloc.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_gmii_sel_init_ports.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_gmii_sel_init_ports, %if.then20)) #7
          to label %for.cond [label %if.then20], !srcloc !152

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ports11, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_gmii_sel_init_ports.__UNIQUE_ID_ddebug331, ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %21) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then20, %do.body
  %i.0 = phi i32 [ %add, %for.body.for.cond_crit_edge ], [ 0, %do.body ], [ 0, %if.then20 ]
  %22 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ports11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %23)
  %cmp = icmp ult i32 %i.0, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nuw i32 %i.0, 1
  %arrayidx = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %call5.i.i, i32 %i.0
  %call25 = call fastcc i32 @phy_gmii_init_phy(ptr noundef %priv, i32 noundef %add, ptr noundef %arrayidx)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup30_crit_edge

for.body.cleanup30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %if_phys29 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 4
  %24 = ptrtoint ptr %if_phys29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %if_phys29, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %for.end, %for.body.cleanup30_crit_edge, %devm_kcalloc.exit.cleanup30_crit_edge, %if.end10.cleanup30_crit_edge, %cleanup
  %retval.1 = phi i32 [ 0, %for.end ], [ -22, %cleanup ], [ -12, %devm_kcalloc.exit.cleanup30_crit_edge ], [ -12, %if.end10.cleanup30_crit_edge ], [ %call25, %for.body.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @phy_gmii_sel_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args1, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %if_phys = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %if_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_phys, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %soc_data = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_data, align 4
  %features = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp9 = icmp ult i32 %5, 2
  %or.cond = select i1 %tobool7.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %num_ports = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %13)
  %cmp13 = icmp ugt i32 %3, %13
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %sub = add i32 %3, -1
  %id = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %7, i32 %sub, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp19.not = icmp eq i32 %3, %15
  br i1 %cmp19.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end22.do.body_crit_edge, label %if.then27

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx29 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx29, align 4
  %rmii_clock_external = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %7, i32 %sub, i32 3
  %18 = ptrtoint ptr %rmii_clock_external to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rmii_clock_external, align 4
  br label %do.body

do.body:                                          ; preds = %if.then27, %if.end22.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_gmii_sel_of_xlate.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_gmii_sel_of_xlate, %if.then37)) #7
          to label %do.end [label %if.then37], !srcloc !152

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %if_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %if_phys, align 4
  %id40 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %20, i32 %sub, i32 1
  %21 = ptrtoint ptr %id40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id40, align 4
  %arrayidx42 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_gmii_sel_of_xlate.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %22, i32 noundef %24) #7
  br label %do.end

do.end:                                           ; preds = %if.then37, %do.body
  %25 = ptrtoint ptr %if_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %if_phys, align 4
  %if_phy = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %26, i32 %sub, i32 2
  %27 = ptrtoint ptr %if_phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %if_phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %28, %do.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end12.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_gmii_init_phy(ptr noundef %priv, i32 noundef %port, ptr noundef %if_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_data1 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %soc_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %if_phy, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port, ptr %id, align 4
  %5 = ptrtoint ptr %if_phy to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %if_phy, align 4
  %regfields = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regfields to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regfields, align 4
  %sub = add i32 %port, -1
  %arrayidx = getelementptr [3 x %struct.reg_field], ptr %7, i32 %sub
  %incdec.ptr = getelementptr %struct.reg_field, ptr %arrayidx, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %field.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %field.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %9 = ptrtoint ptr %field.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %field.sroa.18.0.copyload = load i32, ptr %field.sroa.18.0..sroa_idx, align 4
  %field.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %10 = ptrtoint ptr %field.sroa.25.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %field.sroa.25.0.copyload = load i32, ptr %field.sroa.25.0..sroa_idx, align 4
  %field.sroa.32.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %11 = ptrtoint ptr %field.sroa.32.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %field.sroa.32.0.copyload = load i32, ptr %field.sroa.32.0..sroa_idx, align 4
  %field.sroa.36.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %12 = ptrtoint ptr %field.sroa.36.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %field.sroa.36.0.copyload = load i32, ptr %field.sroa.36.0..sroa_idx, align 4
  %reg_offset = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 6
  %13 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_offset, align 4
  %add = add i32 %14, %field.sroa.0.0.copyload
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_gmii_init_phy.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_gmii_init_phy, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_gmii_init_phy.__UNIQUE_ID_ddebug328, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %add, i32 noundef %field.sroa.25.0.copyload, i32 noundef %field.sroa.18.0.copyload) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %.fca.0.insert = insertvalue [5 x i32] poison, i32 %add, 0
  %.fca.1.insert = insertvalue [5 x i32] %.fca.0.insert, i32 %field.sroa.18.0.copyload, 1
  %.fca.2.insert = insertvalue [5 x i32] %.fca.1.insert, i32 %field.sroa.25.0.copyload, 2
  %.fca.3.insert = insertvalue [5 x i32] %.fca.2.insert, i32 %field.sroa.32.0.copyload, 3
  %.fca.4.insert = insertvalue [5 x i32] %.fca.3.insert, i32 %field.sroa.36.0.copyload, 4
  %call7 = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %16, [5 x i32] %.fca.4.insert) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %fields12 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %if_phy, i32 0, i32 5
  %18 = ptrtoint ptr %fields12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %fields12, align 4
  %incdec.ptr14 = getelementptr %struct.reg_field, ptr %incdec.ptr, i32 1
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %field.sroa.0.0.copyload137 = load i32, ptr %incdec.ptr, align 4
  %field.sroa.18.0..sroa_idx139 = getelementptr inbounds i8, ptr %incdec.ptr, i32 4
  %20 = ptrtoint ptr %field.sroa.18.0..sroa_idx139 to i32
  call void @__asan_load4_noabort(i32 %20)
  %field.sroa.18.0.copyload140 = load i32, ptr %field.sroa.18.0..sroa_idx139, align 4
  %field.sroa.25.0..sroa_idx145 = getelementptr inbounds i8, ptr %incdec.ptr, i32 8
  %21 = ptrtoint ptr %field.sroa.25.0..sroa_idx145 to i32
  call void @__asan_load4_noabort(i32 %21)
  %field.sroa.25.0.copyload146 = load i32, ptr %field.sroa.25.0..sroa_idx145, align 4
  %22 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_offset, align 4
  %add17 = add i32 %23, %field.sroa.0.0.copyload137
  %features = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features, align 4
  %and = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end11.if.end47_crit_edge, label %if.then19

if.end11.if.end47_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then19:                                        ; preds = %if.end11
  %field.sroa.36.0..sroa_idx155 = getelementptr inbounds i8, ptr %incdec.ptr, i32 16
  %26 = ptrtoint ptr %field.sroa.36.0..sroa_idx155 to i32
  call void @__asan_load4_noabort(i32 %26)
  %field.sroa.36.0.copyload156 = load i32, ptr %field.sroa.36.0..sroa_idx155, align 4
  %field.sroa.32.0..sroa_idx151 = getelementptr inbounds i8, ptr %incdec.ptr, i32 12
  %27 = ptrtoint ptr %field.sroa.32.0..sroa_idx151 to i32
  call void @__asan_load4_noabort(i32 %27)
  %field.sroa.32.0.copyload152 = load i32, ptr %field.sroa.32.0..sroa_idx151, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %.fca.0.insert104 = insertvalue [5 x i32] poison, i32 %add17, 0
  %.fca.1.insert107 = insertvalue [5 x i32] %.fca.0.insert104, i32 %field.sroa.18.0.copyload140, 1
  %.fca.2.insert110 = insertvalue [5 x i32] %.fca.1.insert107, i32 %field.sroa.25.0.copyload146, 2
  %.fca.3.insert113 = insertvalue [5 x i32] %.fca.2.insert110, i32 %field.sroa.32.0.copyload152, 3
  %.fca.4.insert116 = insertvalue [5 x i32] %.fca.3.insert113, i32 %field.sroa.36.0.copyload156, 4
  %call21 = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %29, [5 x i32] %.fca.4.insert116) #7
  %cmp.i206 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx27 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %if_phy, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call21, ptr %arrayidx27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_gmii_init_phy.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_gmii_init_phy, %if.then40)) #7
          to label %if.end47 [label %if.then40], !srcloc !152

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_gmii_init_phy.__UNIQUE_ID_ddebug329, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %add17, i32 noundef %field.sroa.25.0.copyload146, i32 noundef %field.sroa.18.0.copyload140) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.end25, %if.end11.if.end47_crit_edge
  %32 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %field.sroa.0.0.copyload138 = load i32, ptr %incdec.ptr14, align 4
  %field.sroa.18.0..sroa_idx141 = getelementptr inbounds i8, ptr %incdec.ptr14, i32 4
  %33 = ptrtoint ptr %field.sroa.18.0..sroa_idx141 to i32
  call void @__asan_load4_noabort(i32 %33)
  %field.sroa.18.0.copyload142 = load i32, ptr %field.sroa.18.0..sroa_idx141, align 4
  %field.sroa.25.0..sroa_idx147 = getelementptr inbounds i8, ptr %incdec.ptr14, i32 8
  %34 = ptrtoint ptr %field.sroa.25.0..sroa_idx147 to i32
  call void @__asan_load4_noabort(i32 %34)
  %field.sroa.25.0.copyload148 = load i32, ptr %field.sroa.25.0..sroa_idx147, align 4
  %35 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_offset, align 4
  %add50 = add i32 %36, %field.sroa.0.0.copyload138
  %37 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %features, align 4
  %and52 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end47.if.end82_crit_edge, label %if.then54

if.end47.if.end82_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then54:                                        ; preds = %if.end47
  %field.sroa.36.0..sroa_idx157 = getelementptr inbounds i8, ptr %incdec.ptr14, i32 16
  %39 = ptrtoint ptr %field.sroa.36.0..sroa_idx157 to i32
  call void @__asan_load4_noabort(i32 %39)
  %field.sroa.36.0.copyload158 = load i32, ptr %field.sroa.36.0..sroa_idx157, align 4
  %field.sroa.32.0..sroa_idx153 = getelementptr inbounds i8, ptr %incdec.ptr14, i32 12
  %40 = ptrtoint ptr %field.sroa.32.0..sroa_idx153 to i32
  call void @__asan_load4_noabort(i32 %40)
  %field.sroa.32.0.copyload154 = load i32, ptr %field.sroa.32.0..sroa_idx153, align 4
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %.fca.0.insert119 = insertvalue [5 x i32] poison, i32 %add50, 0
  %.fca.1.insert122 = insertvalue [5 x i32] %.fca.0.insert119, i32 %field.sroa.18.0.copyload142, 1
  %.fca.2.insert125 = insertvalue [5 x i32] %.fca.1.insert122, i32 %field.sroa.25.0.copyload148, 2
  %.fca.3.insert128 = insertvalue [5 x i32] %.fca.2.insert125, i32 %field.sroa.32.0.copyload154, 3
  %.fca.4.insert131 = insertvalue [5 x i32] %.fca.3.insert128, i32 %field.sroa.36.0.copyload158, 4
  %call56 = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %42, [5 x i32] %.fca.4.insert131) #7
  %cmp.i207 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx62 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %if_phy, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call56, ptr %arrayidx62, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_gmii_init_phy.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_gmii_init_phy, %if.then75)) #7
          to label %if.end82 [label %if.then75], !srcloc !152

if.then75:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_gmii_init_phy.__UNIQUE_ID_ddebug330, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %add50, i32 noundef %field.sroa.25.0.copyload148, i32 noundef %field.sroa.18.0.copyload142) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then75, %if.end60, %if.end47.if.end82_crit_edge
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %call84 = tail call ptr @devm_phy_create(ptr noundef %3, ptr noundef %48, ptr noundef nonnull @phy_gmii_sel_ops) #7
  %if_phy85 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %if_phy, i32 0, i32 2
  %49 = ptrtoint ptr %if_phy85 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call84, ptr %if_phy85, align 4
  %cmp.i208 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then88, label %if.end94

if.then88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %call84 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %port, i32 noundef %50) #10
  br label %cleanup

if.end94:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call84, i32 0, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %if_phy, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then88, %if.then58, %if.then23, %if.then9
  %retval.0 = phi i32 [ %17, %if.then9 ], [ %30, %if.then23 ], [ %43, %if.then58 ], [ %50, %if.then88 ], [ 0, %if.end94 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_gmii_sel_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %soc_data1 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %soc_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 15
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %submode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 11
  br i1 %8, label %switch.hole_check, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end.do.end_crit_edge
  %id = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call7 = tail call fastcc ptr @phy_modes(i32 noundef %submode)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %10, ptr noundef nonnull %call7) #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1955, %switch.maskindex
  %11 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %switch.lobit.not = icmp eq i16 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.phy_gmii_sel_mode, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep85 = getelementptr inbounds [11 x i32], ptr @switch.table.phy_gmii_sel_mode.55, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load86 = load i32, ptr %switch.gep85, align 4
  %phy_if_mode = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %phy_if_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %submode, ptr %phy_if_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_gmii_sel_mode.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_gmii_sel_mode, %if.then12)) #7
          to label %do.end16 [label %if.then12], !srcloc !152

if.then12:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %id13 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id13, align 4
  %rmii_clock_external = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %rmii_clock_external to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rmii_clock_external, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_gmii_sel_mode.__UNIQUE_ID_ddebug326, ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %16, i32 noundef %submode, i32 noundef %switch.load, i32 noundef %18) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %switch.lookup
  %fields = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fields, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %20, i32 noundef -1, i32 noundef %switch.load86, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %id23 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %22, i32 noundef %call.i) #10
  br label %cleanup

if.end24:                                         ; preds = %do.end16
  %features = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %features, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end24.if.end36_crit_edge, label %land.lhs.true

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end24
  %arrayidx27 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %26, null
  br i1 %tobool28.not, label %land.lhs.true.if.end36_crit_edge, label %if.then29

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29:                                        ; preds = %land.lhs.true
  %call.i82 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %26, i32 noundef -1, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool33.not = icmp eq i32 %call.i82, 0
  br i1 %tobool33.not, label %if.then29.if.end36_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end36:                                         ; preds = %if.then29.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end24.if.end36_crit_edge
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %features, align 4
  %and38 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %land.lhs.true40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.end36
  %arrayidx42 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %30, null
  br i1 %tobool43.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then44

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  %rmii_clock_external47 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %rmii_clock_external47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rmii_clock_external47, align 4
  %call.i83 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %30, i32 noundef -1, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %land.lhs.true40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %do.end22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end22 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i82, %if.then29.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %land.lhs.true40.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.52, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !45, !47, !48, !49, !50, !51, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__initcall__kmod_phy_gmii_sel__332_399_phy_gmii_sel_driver_init6, !1, !"__initcall__kmod_phy_gmii_sel__332_399_phy_gmii_sel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 399, i32 1}
!2 = !{ptr @__exitcall_phy_gmii_sel_driver_exit, !1, !"__exitcall_phy_gmii_sel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file333, !4, !"__UNIQUE_ID_file333", i1 false, i1 false}
!4 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 401, i32 1}
!5 = !{ptr @__UNIQUE_ID_license334, !4, !"__UNIQUE_ID_license334", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author335, !7, !"__UNIQUE_ID_author335", i1 false, i1 false}
!7 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 402, i32 1}
!8 = !{ptr @__UNIQUE_ID_description336, !9, !"__UNIQUE_ID_description336", i1 false, i1 false}
!9 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 403, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 395, i32 11}
!12 = !{ptr @phy_gmii_sel_driver, !13, !"phy_gmii_sel_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 392, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 370, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @phy_gmii_sel_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @phy_gmii_sel_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 385, i32 3}
!24 = !{ptr @phy_gmii_sel_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @phy_gmii_sel_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 335, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @phy_gmii_sel_init_ports.__UNIQUE_ID_ddebug331, !27, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 264, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @phy_gmii_init_phy.__UNIQUE_ID_ddebug328, !32, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!35 = !{ptr @phy_gmii_init_phy.__UNIQUE_ID_ddebug329, !36, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!36 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 281, i32 3}
!37 = !{ptr @phy_gmii_init_phy.__UNIQUE_ID_ddebug330, !38, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!38 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 294, i32 3}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 303, i32 3}
!41 = !{ptr @phy_gmii_init_phy._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @phy_gmii_init_phy._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @phy_gmii_sel_ops, !44, !"phy_gmii_sel_ops", i1 false, i1 false}
!44 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 216, i32 29}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 92, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @phy_gmii_sel_mode._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @phy_gmii_sel_mode._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 99, i32 2}
!53 = !{ptr @phy_gmii_sel_mode.__UNIQUE_ID_ddebug326, !52, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 106, i32 3}
!56 = !{ptr @phy_gmii_sel_mode._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @phy_gmii_sel_mode._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/phy.h", i32 211, i32 10}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/phy.h", i32 213, i32 10}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/phy.h", i32 215, i32 10}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/phy.h", i32 217, i32 10}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/phy.h", i32 219, i32 10}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 221, i32 10}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 223, i32 10}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 225, i32 10}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 227, i32 10}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 229, i32 10}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 231, i32 10}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 233, i32 10}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 235, i32 10}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 237, i32 10}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/phy.h", i32 239, i32 10}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/phy.h", i32 241, i32 10}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/phy.h", i32 243, i32 10}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/phy.h", i32 245, i32 10}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/phy.h", i32 247, i32 10}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/phy.h", i32 249, i32 10}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/phy.h", i32 251, i32 10}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/phy.h", i32 253, i32 10}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/phy.h", i32 255, i32 10}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/phy.h", i32 257, i32 10}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/phy.h", i32 259, i32 10}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/phy.h", i32 261, i32 10}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/phy.h", i32 263, i32 10}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/phy.h", i32 265, i32 10}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/phy.h", i32 267, i32 10}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/phy.h", i32 269, i32 10}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/phy.h", i32 271, i32 10}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 242, i32 2}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @phy_gmii_sel_of_xlate.__UNIQUE_ID_ddebug327, !121, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!124 = !{ptr @phy_gmii_sel_id_table, !125, !"phy_gmii_sel_id_table", i1 false, i1 false}
!125 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 191, i32 34}
!126 = !{ptr @phy_gmii_sel_soc_am33xx, !127, !"phy_gmii_sel_soc_am33xx", i1 false, i1 false}
!127 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 143, i32 30}
!128 = !{ptr @phy_gmii_sel_fields_am33xx, !129, !"phy_gmii_sel_fields_am33xx", i1 false, i1 false}
!129 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 129, i32 18}
!130 = !{ptr @phy_gmii_sel_soc_dra7, !131, !"phy_gmii_sel_soc_dra7", i1 false, i1 false}
!131 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 161, i32 30}
!132 = !{ptr @phy_gmii_sel_fields_dra7, !133, !"phy_gmii_sel_fields_dra7", i1 false, i1 false}
!133 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 151, i32 18}
!134 = !{ptr @phy_gmii_sel_soc_dm814, !135, !"phy_gmii_sel_soc_dm814", i1 false, i1 false}
!135 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 167, i32 30}
!136 = !{ptr @phy_gmii_sel_soc_am654, !137, !"phy_gmii_sel_soc_am654", i1 false, i1 false}
!137 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 186, i32 30}
!138 = !{ptr @phy_gmii_sel_fields_am654, !139, !"phy_gmii_sel_fields_am654", i1 false, i1 false}
!139 = !{!"../drivers/phy/ti/phy-gmii-sel.c", i32 174, i32 18}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i8 0, i8 2}
!150 = !{!"auto-init"}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{i64 2148298637, i64 2148298642, i64 2148298655, i64 2148298699, i64 2148298733, i64 2148298754}
