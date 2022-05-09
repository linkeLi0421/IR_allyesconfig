; ModuleID = '/llk/IR_all_yes/drivers/phy/hisilicon/phy-hi3670-usb3.c_pt.bc'
source_filename = "../drivers/phy/hisilicon/phy-hi3670-usb3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hi3670_priv = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }

@__initcall__kmod_phy_hi3670_usb3__304_657_hi3670_phy_driver_init6 = internal global ptr @hi3670_phy_driver_init, section ".initcall6.init", align 4
@hi3670_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3670_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3670_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi3670_phy_driver_exit = internal global ptr @hi3670_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [53 x i8] c"phy_hi3670_usb3.author=Yu Chen <chenyu56@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [59 x i8] c"phy_hi3670_usb3.file=drivers/phy/hisilicon/phy-hi3670-usb3\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [31 x i8] c"phy_hi3670_usb3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [64 x i8] c"phy_hi3670_usb3.description=Hilisicon Kirin970 USB31 PHY Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hi3670-usb-phy\00", [17 x i8] zeroinitializer }, align 32
@hi3670_phy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hisilicon,pericrg-syscon\00", [39 x i8] zeroinitializer }, align 32
@hi3670_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no hisilicon,pericrg-syscon\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hi3670_phy_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/hisilicon/phy-hi3670-usb3.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi3670_phy_probe._entry_ptr = internal global ptr @hi3670_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisilicon,pctrl-syscon\00", [41 x i8] zeroinitializer }, align 32
@hi3670_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no hisilicon,pctrl-syscon\0A\00", [37 x i8] zeroinitializer }, align 32
@hi3670_phy_probe._entry_ptr.10 = internal global ptr @hi3670_phy_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisilicon,sctrl-syscon\00", [41 x i8] zeroinitializer }, align 32
@hi3670_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no hisilicon,sctrl-syscon\0A\00", [37 x i8] zeroinitializer }, align 32
@hi3670_phy_probe._entry_ptr.14 = internal global ptr @hi3670_phy_probe._entry.12, section ".printk_index", align 4
@hi3670_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 623, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no hisilicon,usb3-otg-bc-syscon\0A\00", [63 x i8] zeroinitializer }, align 32
@hi3670_phy_probe._entry_ptr.17 = internal global ptr @hi3670_phy_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hisilicon,eye-diagram-param\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hisilicon,tx-vboost-lvl\00", [40 x i8] zeroinitializer }, align 32
@hi3670_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @hi3670_phy_init, ptr @hi3670_phy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hi3670_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init phy ret: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi3670_phy_init\00", [16 x i8] zeroinitializer }, align 32
@hi3670_phy_init._entry_ptr = internal global ptr @hi3670_phy_init._entry, section ".printk_index", align 4
@hi3670_config_phy_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 411, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to config phy clock ret: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hi3670_config_phy_clock\00", [40 x i8] zeroinitializer }, align 32
@hi3670_config_phy_clock._entry_ptr = internal global ptr @hi3670_config_phy_clock._entry, section ".printk_index", align 4
@hi3670_is_abbclk_selected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"priv->sctrl is null!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hi3670_is_abbclk_selected\00", [38 x i8] zeroinitializer }, align 32
@hi3670_is_abbclk_selected._entry_ptr = internal global ptr @hi3670_is_abbclk_selected._entry, section ".printk_index", align 4
@hi3670_is_abbclk_selected._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SCTRL_SCDEEPSLEEPED read failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@hi3670_is_abbclk_selected._entry_ptr.28 = internal global ptr @hi3670_is_abbclk_selected._entry.26, section ".printk_index", align 4
@hi3670_config_tca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.29, ptr @.str.4, i32 461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi3670_config_tca\00", [46 x i8] zeroinitializer }, align 32
@hi3670_config_tca._entry_ptr = internal global ptr @hi3670_config_tca._entry, section ".printk_index", align 4
@hi3670_phy_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set USB3OTG_CTRL4 failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi3670_phy_set_params\00", [42 x i8] zeroinitializer }, align 32
@hi3670_phy_set_params._entry_ptr = internal global ptr @hi3670_phy_set_params._entry, section ".printk_index", align 4
@hi3670_phy_set_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"read TX_VBOOST_LVL_REG failed\0A\00", [33 x i8] zeroinitializer }, align 32
@hi3670_phy_set_params._entry_ptr.34 = internal global ptr @hi3670_phy_set_params._entry.32, section ".printk_index", align 4
@hi3670_phy_set_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.4, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write TX_VBOOST_LVL_REG failed\0A\00", [32 x i8] zeroinitializer }, align 32
@hi3670_phy_set_params._entry_ptr.37 = internal global ptr @hi3670_phy_set_params._entry.35, section ".printk_index", align 4
@hi3670_phy_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to exit phy ret: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi3670_phy_exit\00", [16 x i8] zeroinitializer }, align 32
@hi3670_phy_exit._entry_ptr = internal global ptr @hi3670_phy_exit._entry, section ".printk_index", align 4
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"hi3670_phy_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 650, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 653, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"hi3670_phy_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 644, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 600, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 602, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 607, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 609, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 614, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 616, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 623, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 627, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 631, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"hi3670_phy_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 581, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 548, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 411, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 327, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 332, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 461, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 296, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 307, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 317, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [43 x i8] c"../drivers/phy/hisilicon/phy-hi3670-usb3.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 577, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_hi3670_phy_driver_exit, ptr @__initcall__kmod_phy_hi3670_usb3__304_657_hi3670_phy_driver_init6, ptr @hi3670_config_phy_clock._entry, ptr @hi3670_config_phy_clock._entry_ptr, ptr @hi3670_config_tca._entry, ptr @hi3670_config_tca._entry_ptr, ptr @hi3670_is_abbclk_selected._entry, ptr @hi3670_is_abbclk_selected._entry.26, ptr @hi3670_is_abbclk_selected._entry_ptr, ptr @hi3670_is_abbclk_selected._entry_ptr.28, ptr @hi3670_phy_driver_exit, ptr @hi3670_phy_exit._entry, ptr @hi3670_phy_exit._entry_ptr, ptr @hi3670_phy_init._entry, ptr @hi3670_phy_init._entry_ptr, ptr @hi3670_phy_probe._entry, ptr @hi3670_phy_probe._entry.12, ptr @hi3670_phy_probe._entry.15, ptr @hi3670_phy_probe._entry.8, ptr @hi3670_phy_probe._entry_ptr, ptr @hi3670_phy_probe._entry_ptr.10, ptr @hi3670_phy_probe._entry_ptr.14, ptr @hi3670_phy_probe._entry_ptr.17, ptr @hi3670_phy_set_params._entry, ptr @hi3670_phy_set_params._entry.32, ptr @hi3670_phy_set_params._entry.35, ptr @hi3670_phy_set_params._entry_ptr, ptr @hi3670_phy_set_params._entry_ptr.34, ptr @hi3670_phy_set_params._entry_ptr.37, ptr @hi3670_phy_driver, ptr @.str, ptr @hi3670_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @hi3670_phy_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_config_phy_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_is_abbclk_selected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_is_abbclk_selected._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_config_tca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_set_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_set_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_phy_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3670_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3670_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %peri_crg = getelementptr inbounds %struct.hi3670_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %peri_crg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %peri_crg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %4 = ptrtoint ptr %peri_crg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peri_crg, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %8, ptr noundef nonnull @.str.7) #5
  %pctrl = getelementptr inbounds %struct.hi3670_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %pctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %pctrl, align 4
  %cmp.i98 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %10 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pctrl, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call22 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %14, ptr noundef nonnull @.str.11) #5
  %sctrl = getelementptr inbounds %struct.hi3670_priv, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %sctrl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call22, ptr %sctrl, align 4
  %cmp.i99 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %16 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sctrl, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %of_node32 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %of_node32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node32, align 8
  %call33 = tail call ptr @syscon_node_to_regmap(ptr noundef %22) #5
  %usb31misc = getelementptr inbounds %struct.hi3670_priv, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %usb31misc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call33, ptr %usb31misc, align 4
  %cmp.i100 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  %24 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb31misc, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %eye_diagram_param = getelementptr inbounds %struct.hi3670_priv, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.18, ptr noundef %eye_diagram_param, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool45.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool45.not, label %if.end42.if.end48_crit_edge, label %if.then46

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %eye_diagram_param to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16645860, ptr %eye_diagram_param, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42.if.end48_crit_edge
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %tx_vboost_lvl = getelementptr inbounds %struct.hi3670_priv, ptr %call.i, i32 0, i32 6
  %call.i.i101 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.19, ptr noundef %tx_vboost_lvl, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i101)
  %tobool51.not = icmp sgt i32 %call.i.i101, -1
  br i1 %tobool51.not, label %if.end48.if.end54_crit_edge, label %if.then52

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %tx_vboost_lvl to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %tx_vboost_lvl, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48.if.end54_crit_edge
  %call55 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @hi3670_phy_ops) #5
  %cmp.i102 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call55, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call60 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  %35 = ptrtoint ptr %call60 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %35, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then57, %do.end39, %do.end28, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %12, %do.end17 ], [ %18, %do.end28 ], [ %26, %do.end39 ], [ %33, %if.then57 ], [ %spec.select.i, %if.end59 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %reg.i.i43.i = alloca i32, align 4
  %reg.i.i.i = alloca i32, align 4
  %reg.i.i109 = alloca i32, align 4
  %val.i95 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb31misc = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb31misc, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 160, i32 noundef 771, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #5
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !98
  %sctrl.i.i = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sctrl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24) #8
  br label %hi3670_is_abbclk_selected.exit.thread.i

if.end.i.i:                                       ; preds = %if.end
  %call.i.i = call i32 @regmap_read(ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %reg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %hi3670_is_abbclk_selected.exit.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27) #8
  br label %hi3670_is_abbclk_selected.exit.thread.i

hi3670_is_abbclk_selected.exit.thread.i:          ; preds = %do.end6.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #5
  br label %if.then.i

hi3670_is_abbclk_selected.exit.i:                 ; preds = %if.end.i.i
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #5
  br i1 %cmp.i.not.i, label %hi3670_is_abbclk_selected.exit.i.if.then.i_crit_edge, label %if.end23.i

hi3670_is_abbclk_selected.exit.i.if.then.i_crit_edge: ; preds = %hi3670_is_abbclk_selected.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %hi3670_is_abbclk_selected.exit.i.if.then.i_crit_edge, %hi3670_is_abbclk_selected.exit.thread.i
  %peri_crg.i = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %peri_crg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peri_crg.i, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 328, i32 noundef 33554432) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.hi3670_config_phy_clock.exit_crit_edge

if.then.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end.i:                                         ; preds = %if.then.i
  %pctrl.i = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pctrl.i, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 16, i32 noundef 131074) #5
  %18 = ptrtoint ptr %pctrl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pctrl.i, align 4
  %call.i76.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 100, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool6.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.hi3670_config_phy_clock.exit_crit_edge

if.end.i.hi3670_config_phy_clock.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end8.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb31misc, align 4
  %call.i77.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 160, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool10.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.hi3670_config_phy_clock.exit_crit_edge

if.end8.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end12.i:                                       ; preds = %if.end8.i
  %22 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb31misc, align 4
  %call14.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 28, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.hi3670_config_phy_clock.exit_crit_edge

if.end12.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end17.i:                                       ; preds = %if.end12.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %or.i = or i32 %25, 24
  store i32 %or.i, ptr %val.i, align 4
  %26 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb31misc, align 4
  %call19.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 28, i32 noundef %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.if.end5_crit_edge, label %if.end17.i.hi3670_config_phy_clock.exit_crit_edge

if.end17.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end17.i.if.end5_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end23.i:                                       ; preds = %hi3670_is_abbclk_selected.exit.i
  %28 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb31misc, align 4
  %call.i78.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 84, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool26.not.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end23.i.hi3670_config_phy_clock.exit_crit_edge

if.end23.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end28.i:                                       ; preds = %if.end23.i
  %30 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb31misc, align 4
  %call.i79.i = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 160, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %tobool31.not.i = icmp eq i32 %call.i79.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.hi3670_config_phy_clock.exit_crit_edge

if.end28.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end33.i:                                       ; preds = %if.end28.i
  %32 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb31misc, align 4
  %call35.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 28, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end33.i.hi3670_config_phy_clock.exit_crit_edge

if.end33.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end38.i:                                       ; preds = %if.end33.i
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %and39.i = and i32 %35, -25
  %or40.i = or i32 %and39.i, 16
  store i32 %or40.i, ptr %val.i, align 4
  %36 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb31misc, align 4
  %call42.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 28, i32 noundef %or40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end38.i.hi3670_config_phy_clock.exit_crit_edge

if.end38.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end45.i:                                       ; preds = %if.end38.i
  %peri_crg46.i = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %peri_crg46.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %peri_crg46.i, align 4
  %call47.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 1040, i32 noundef 524288) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end5_crit_edge, label %if.end45.i.hi3670_config_phy_clock.exit_crit_edge

if.end45.i.hi3670_config_phy_clock.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_phy_clock.exit

if.end45.i.if.end5_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

hi3670_config_phy_clock.exit:                     ; preds = %if.end45.i.hi3670_config_phy_clock.exit_crit_edge, %if.end38.i.hi3670_config_phy_clock.exit_crit_edge, %if.end33.i.hi3670_config_phy_clock.exit_crit_edge, %if.end28.i.hi3670_config_phy_clock.exit_crit_edge, %if.end23.i.hi3670_config_phy_clock.exit_crit_edge, %if.end17.i.hi3670_config_phy_clock.exit_crit_edge, %if.end12.i.hi3670_config_phy_clock.exit_crit_edge, %if.end8.i.hi3670_config_phy_clock.exit_crit_edge, %if.end.i.hi3670_config_phy_clock.exit_crit_edge, %if.then.i.hi3670_config_phy_clock.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i78.i, %if.end23.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call.i79.i, %if.end28.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call35.i, %if.end33.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call42.i, %if.end38.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call47.i, %if.end45.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call1.i, %if.then.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call.i76.i, %if.end.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call.i77.i, %if.end8.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call14.i, %if.end12.i.hi3670_config_phy_clock.exit_crit_edge ], [ %call19.i, %if.end17.i.hi3670_config_phy_clock.exit_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.22, i32 noundef %ret.0.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %do.end

if.end5:                                          ; preds = %if.end45.i.if.end5_crit_edge, %if.end17.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %42 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb31misc, align 4
  %call.i91 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 20, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool8.not = icmp eq i32 %call.i91, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end10:                                         ; preds = %if.end5
  %44 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb31misc, align 4
  %call.i92 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 80, i32 noundef 8388608, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool13.not = icmp eq i32 %call.i92, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.do.end_crit_edge

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end15:                                         ; preds = %if.end10
  %46 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb31misc, align 4
  %call.i93 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 160, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool18.not = icmp eq i32 %call.i93, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.do.end_crit_edge

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end20:                                         ; preds = %if.end15
  call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #5
  %48 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb31misc, align 4
  %call.i94 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 84, i32 noundef 2562, i32 noundef 2562, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool23.not = icmp eq i32 %call.i94, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end25:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i95) #5
  %50 = ptrtoint ptr %val.i95 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i95, align 4, !annotation !98
  %51 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb31misc, align 4
  %call.i97 = call i32 @regmap_write(ptr noundef %52, i32 noundef 520, i32 noundef 65535) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %if.end.i99, label %if.end25.hi3670_config_tca.exit_crit_edge

if.end25.hi3670_config_tca.exit_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

if.end.i99:                                       ; preds = %if.end25
  %53 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb31misc, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 516, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i99.hi3670_config_tca.exit_crit_edge

if.end.i99.hi3670_config_tca.exit_crit_edge:      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

if.end5.i:                                        ; preds = %if.end.i99
  %55 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb31misc, align 4
  %call.i.i100 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 512, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool8.not.i = icmp eq i32 %call.i.i100, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.hi3670_config_tca.exit_crit_edge

if.end5.i.hi3670_config_tca.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

if.end10.i:                                       ; preds = %if.end5.i
  %57 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb31misc, align 4
  %call.i55.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 528, i32 noundef 19, i32 noundef 17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool13.not.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.hi3670_config_tca.exit_crit_edge

if.end10.i.hi3670_config_tca.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

if.end15.i:                                       ; preds = %if.end10.i
  %59 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usb31misc, align 4
  %call.i56.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 536, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool18.not.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.hi3670_config_tca.exit_crit_edge

if.end15.i.hi3670_config_tca.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

if.end20.i:                                       ; preds = %if.end15.i
  %61 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb31misc, align 4
  %call22.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 532, ptr noundef nonnull %val.i95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end20.i.hi3670_config_tca.exit_crit_edge

if.end20.i.hi3670_config_tca.exit_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

if.end25.i:                                       ; preds = %if.end20.i
  %63 = ptrtoint ptr %val.i95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i95, align 4
  %and.i = and i32 %64, -28
  %or.i101 = or i32 %and.i, 17
  store i32 %or.i101, ptr %val.i95, align 4
  %65 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb31misc, align 4
  %call27.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 532, i32 noundef %or.i101) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end25.i.hi3670_config_tca.exit_crit_edge

if.end25.i.hi3670_config_tca.exit_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

if.end30.i:                                       ; preds = %if.end25.i
  %67 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb31misc, align 4
  %call32.i = call i32 @regmap_write(ptr noundef %68, i32 noundef 576, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end29, label %if.end30.i.hi3670_config_tca.exit_crit_edge

if.end30.i.hi3670_config_tca.exit_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_config_tca.exit

hi3670_config_tca.exit:                           ; preds = %if.end30.i.hi3670_config_tca.exit_crit_edge, %if.end25.i.hi3670_config_tca.exit_crit_edge, %if.end20.i.hi3670_config_tca.exit_crit_edge, %if.end15.i.hi3670_config_tca.exit_crit_edge, %if.end10.i.hi3670_config_tca.exit_crit_edge, %if.end5.i.hi3670_config_tca.exit_crit_edge, %if.end.i99.hi3670_config_tca.exit_crit_edge, %if.end25.hi3670_config_tca.exit_crit_edge
  %ret.0.i102 = phi i32 [ %call.i97, %if.end25.hi3670_config_tca.exit_crit_edge ], [ %call2.i, %if.end.i99.hi3670_config_tca.exit_crit_edge ], [ %call.i.i100, %if.end5.i.hi3670_config_tca.exit_crit_edge ], [ %call.i55.i, %if.end10.i.hi3670_config_tca.exit_crit_edge ], [ %call.i56.i, %if.end15.i.hi3670_config_tca.exit_crit_edge ], [ %call22.i, %if.end20.i.hi3670_config_tca.exit_crit_edge ], [ %call27.i, %if.end25.i.hi3670_config_tca.exit_crit_edge ], [ %call32.i, %if.end30.i.hi3670_config_tca.exit_crit_edge ]
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.22, i32 noundef %ret.0.i102) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i95) #5
  br label %do.end

if.end29:                                         ; preds = %if.end30.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i95) #5
  %71 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb31misc, align 4
  %call.i105 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 92, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool32.not = icmp eq i32 %call.i105, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.do.end_crit_edge

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end34:                                         ; preds = %if.end29
  %73 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %usb31misc, align 4
  %call.i106 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 160, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool37.not = icmp eq i32 %call.i106, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.do.end_crit_edge

if.end34.do.end_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end39:                                         ; preds = %if.end34
  call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #5
  %75 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb31misc, align 4
  %call.i107 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 0, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool42.not = icmp eq i32 %call.i107, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.do.end_crit_edge

if.end39.do.end_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end44:                                         ; preds = %if.end39
  %77 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usb31misc, align 4
  %call.i108 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 12, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool47.not = icmp eq i32 %call.i108, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.do.end_crit_edge

if.end44.do.end_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end49:                                         ; preds = %if.end44
  call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #5
  %79 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %usb31misc, align 4
  %eye_diagram_param.i = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 5
  %81 = ptrtoint ptr %eye_diagram_param.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %eye_diagram_param.i, align 4
  %call.i111 = call i32 @regmap_write(ptr noundef %80, i32 noundef 16, i32 noundef %82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i112, label %if.end49.while.body.i_crit_edge, label %do.end.i113

if.end49.while.body.i_crit_edge:                  ; preds = %if.end49
  br label %while.body.i

do.end.i113:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.30) #8
  br label %do.end

while.cond.i:                                     ; preds = %hi3670_phy_cr_read.exit.i
  %dec.i = add nsw i32 %dec79.i, -1
  %cmp.not.i = icmp eq i32 %dec79.i, 0
  br i1 %cmp.not.i, label %while.cond.i.do.end_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.end49.while.body.i_crit_edge
  %dec79.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ 2, %if.end49.while.body.i_crit_edge ]
  %85 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %usb31misc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i109) #5
  %87 = ptrtoint ptr %reg.i.i109 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %reg.i.i109, align 4, !annotation !98
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %hi3670_phy_cr_clk.exit.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %while.body.i
  %i.09.i.i = phi i32 [ 0, %while.body.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %hi3670_phy_cr_clk.exit.i.i, label %for.body.i.i.hi3670_phy_cr_read.exit.i_crit_edge

for.body.i.i.hi3670_phy_cr_read.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_phy_cr_read.exit.i

hi3670_phy_cr_clk.exit.i.i:                       ; preds = %for.body.i.i
  %call.i4.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 84, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool.not.i.i114 = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool.not.i.i114, label %for.cond.i.i, label %hi3670_phy_cr_clk.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge

hi3670_phy_cr_clk.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge: ; preds = %hi3670_phy_cr_clk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_phy_cr_read.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %call.i.i1.i.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 84, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i.i)
  %tobool2.not.i.i115 = icmp eq i32 %call.i.i1.i.i, 0
  br i1 %tobool2.not.i.i115, label %if.end4.i.i, label %for.end.i.i.hi3670_phy_cr_read.exit.i_crit_edge

for.end.i.i.hi3670_phy_cr_read.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_phy_cr_read.exit.i

if.end4.i.i:                                      ; preds = %for.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #5
  %88 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %reg.i.i.i, align 4, !annotation !98
  %call.i.i.i = call i32 @regmap_read(ptr noundef %86, i32 noundef 84, ptr noundef nonnull %reg.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i2.i.i, label %hi3670_phy_cr_set_addr.exit.i.i, label %hi3670_phy_cr_set_addr.exit.thread.i.i

hi3670_phy_cr_set_addr.exit.thread.i.i:           ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #5
  br label %hi3670_phy_cr_read.exit.i

hi3670_phy_cr_set_addr.exit.i.i:                  ; preds = %if.end4.i.i
  %89 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 983040, ptr %reg.i.i.i, align 4
  %call.i.i3.i.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 84, i32 noundef -65536, i32 noundef 983040, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i3.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %hi3670_phy_cr_set_addr.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge

hi3670_phy_cr_set_addr.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge: ; preds = %hi3670_phy_cr_set_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_phy_cr_read.exit.i

if.end8.i.i:                                      ; preds = %hi3670_phy_cr_set_addr.exit.i.i
  %call9.i.i = call fastcc i32 @hi3670_phy_cr_start(ptr noundef %86, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i.i.hi3670_phy_cr_read.exit.i_crit_edge

if.end8.i.i.hi3670_phy_cr_read.exit.i_crit_edge:  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_phy_cr_read.exit.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %call13.i.i = call fastcc i32 @hi3670_phy_cr_wait_ack(ptr noundef %86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end12.i.i.hi3670_phy_cr_read.exit.i_crit_edge

if.end12.i.i.hi3670_phy_cr_read.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_phy_cr_read.exit.i

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %call17.i.i = call i32 @regmap_read(ptr noundef %86, i32 noundef 88, ptr noundef nonnull %reg.i.i109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %hi3670_phy_cr_read.exit.thread.i, label %if.end16.i.i.hi3670_phy_cr_read.exit.i_crit_edge

if.end16.i.i.hi3670_phy_cr_read.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hi3670_phy_cr_read.exit.i

hi3670_phy_cr_read.exit.thread.i:                 ; preds = %if.end16.i.i
  %90 = ptrtoint ptr %reg.i.i109 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reg.i.i109, align 4
  %shr.i.i = and i32 %91, -33619968
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i109) #5
  %tx_vboost_lvl.i = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 6
  %92 = ptrtoint ptr %tx_vboost_lvl.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_vboost_lvl.i, align 4
  %shl.i = shl i32 %93, 22
  %or.i116 = or i32 %shr.i.i, %shl.i
  %or16.i = or i32 %or.i116, 33554432
  %94 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usb31misc, align 4
  br label %for.body.i50.i

hi3670_phy_cr_read.exit.i:                        ; preds = %if.end16.i.i.hi3670_phy_cr_read.exit.i_crit_edge, %if.end12.i.i.hi3670_phy_cr_read.exit.i_crit_edge, %if.end8.i.i.hi3670_phy_cr_read.exit.i_crit_edge, %hi3670_phy_cr_set_addr.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge, %hi3670_phy_cr_set_addr.exit.thread.i.i, %for.end.i.i.hi3670_phy_cr_read.exit.i_crit_edge, %hi3670_phy_cr_clk.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge, %for.body.i.i.hi3670_phy_cr_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i1.i.i, %for.end.i.i.hi3670_phy_cr_read.exit.i_crit_edge ], [ %call.i.i3.i.i, %hi3670_phy_cr_set_addr.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge ], [ %call9.i.i, %if.end8.i.i.hi3670_phy_cr_read.exit.i_crit_edge ], [ %call13.i.i, %if.end12.i.i.hi3670_phy_cr_read.exit.i_crit_edge ], [ %call17.i.i, %if.end16.i.i.hi3670_phy_cr_read.exit.i_crit_edge ], [ %call.i.i.i, %hi3670_phy_cr_set_addr.exit.thread.i.i ], [ %call.i.i.i.i, %for.body.i.i.hi3670_phy_cr_read.exit.i_crit_edge ], [ %call.i4.i.i.i, %hi3670_phy_cr_clk.exit.i.i.hi3670_phy_cr_read.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i.i)
  %cond.i = icmp eq i32 %retval.0.i.i, -110
  br i1 %cond.i, label %while.cond.i, label %do.end10.i

do.end10.i:                                       ; preds = %hi3670_phy_cr_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.33) #8
  br label %do.end

for.cond.i46.i:                                   ; preds = %hi3670_phy_cr_clk.exit.i53.i
  %inc.i44.i = add nuw nsw i32 %i.09.i47.i, 1
  %exitcond.not.i45.i = icmp eq i32 %inc.i44.i, 100
  br i1 %exitcond.not.i45.i, label %for.end.i56.i, label %for.cond.i46.i.for.body.i50.i_crit_edge

for.cond.i46.i.for.body.i50.i_crit_edge:          ; preds = %for.cond.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i50.i

for.body.i50.i:                                   ; preds = %for.cond.i46.i.for.body.i50.i_crit_edge, %hi3670_phy_cr_read.exit.thread.i
  %i.09.i47.i = phi i32 [ 0, %hi3670_phy_cr_read.exit.thread.i ], [ %inc.i44.i, %for.cond.i46.i.for.body.i50.i_crit_edge ]
  %call.i.i.i48.i = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i48.i)
  %tobool.not.i.i49.i = icmp eq i32 %call.i.i.i48.i, 0
  br i1 %tobool.not.i.i49.i, label %hi3670_phy_cr_clk.exit.i53.i, label %for.body.i50.i.do.end23.i_crit_edge

for.body.i50.i.do.end23.i_crit_edge:              ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

hi3670_phy_cr_clk.exit.i53.i:                     ; preds = %for.body.i50.i
  %call.i4.i.i51.i = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 84, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i4.i.i51.i, 0
  br i1 %tobool.not.i52.i, label %for.cond.i46.i, label %hi3670_phy_cr_clk.exit.i53.i.do.end23.i_crit_edge

hi3670_phy_cr_clk.exit.i53.i.do.end23.i_crit_edge: ; preds = %hi3670_phy_cr_clk.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

for.end.i56.i:                                    ; preds = %for.cond.i46.i
  %call.i.i1.i54.i = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 84, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i54.i)
  %tobool2.not.i55.i = icmp eq i32 %call.i.i1.i54.i, 0
  br i1 %tobool2.not.i55.i, label %if.end4.i59.i, label %for.end.i56.i.do.end23.i_crit_edge

for.end.i56.i.do.end23.i_crit_edge:               ; preds = %for.end.i56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

if.end4.i59.i:                                    ; preds = %for.end.i56.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i43.i) #5
  %98 = ptrtoint ptr %reg.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %reg.i.i43.i, align 4, !annotation !98
  %call.i.i57.i = call i32 @regmap_read(ptr noundef %95, i32 noundef 84, ptr noundef nonnull %reg.i.i43.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57.i)
  %tobool.not.i2.i58.i = icmp eq i32 %call.i.i57.i, 0
  br i1 %tobool.not.i2.i58.i, label %hi3670_phy_cr_set_addr.exit.i63.i, label %hi3670_phy_cr_set_addr.exit.thread.i60.i

hi3670_phy_cr_set_addr.exit.thread.i60.i:         ; preds = %if.end4.i59.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i43.i) #5
  br label %do.end23.i

hi3670_phy_cr_set_addr.exit.i63.i:                ; preds = %if.end4.i59.i
  %99 = ptrtoint ptr %reg.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 983040, ptr %reg.i.i43.i, align 4
  %call.i.i3.i61.i = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 84, i32 noundef -65536, i32 noundef 983040, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i43.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3.i61.i)
  %tobool6.not.i62.i = icmp eq i32 %call.i.i3.i61.i, 0
  br i1 %tobool6.not.i62.i, label %do.end23.i.i, label %hi3670_phy_cr_set_addr.exit.i63.i.do.end23.i_crit_edge

hi3670_phy_cr_set_addr.exit.i63.i.do.end23.i_crit_edge: ; preds = %hi3670_phy_cr_set_addr.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

do.end23.i.i:                                     ; preds = %hi3670_phy_cr_set_addr.exit.i63.i
  %call25.i.i = call i32 @regmap_write(ptr noundef %95, i32 noundef 88, i32 noundef %or16.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %do.end23.i.i.do.end23.i_crit_edge

do.end23.i.i.do.end23.i_crit_edge:                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

if.end28.i.i:                                     ; preds = %do.end23.i.i
  %call29.i.i = call fastcc i32 @hi3670_phy_cr_start(ptr noundef %95, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %hi3670_phy_cr_write.exit.i, label %if.end28.i.i.do.end23.i_crit_edge

if.end28.i.i.do.end23.i_crit_edge:                ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

hi3670_phy_cr_write.exit.i:                       ; preds = %if.end28.i.i
  %call33.i.i = call fastcc i32 @hi3670_phy_cr_wait_ack(ptr noundef %95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool19.not.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool19.not.i, label %hi3670_phy_cr_write.exit.i.cleanup_crit_edge, label %hi3670_phy_cr_write.exit.i.do.end23.i_crit_edge

hi3670_phy_cr_write.exit.i.do.end23.i_crit_edge:  ; preds = %hi3670_phy_cr_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i

hi3670_phy_cr_write.exit.i.cleanup_crit_edge:     ; preds = %hi3670_phy_cr_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23.i:                                       ; preds = %hi3670_phy_cr_write.exit.i.do.end23.i_crit_edge, %if.end28.i.i.do.end23.i_crit_edge, %do.end23.i.i.do.end23.i_crit_edge, %hi3670_phy_cr_set_addr.exit.i63.i.do.end23.i_crit_edge, %hi3670_phy_cr_set_addr.exit.thread.i60.i, %for.end.i56.i.do.end23.i_crit_edge, %hi3670_phy_cr_clk.exit.i53.i.do.end23.i_crit_edge, %for.body.i50.i.do.end23.i_crit_edge
  %retval.0.i6574.i = phi i32 [ %call33.i.i, %hi3670_phy_cr_write.exit.i.do.end23.i_crit_edge ], [ %call.i.i57.i, %hi3670_phy_cr_set_addr.exit.thread.i60.i ], [ %call29.i.i, %if.end28.i.i.do.end23.i_crit_edge ], [ %call25.i.i, %do.end23.i.i.do.end23.i_crit_edge ], [ %call.i.i3.i61.i, %hi3670_phy_cr_set_addr.exit.i63.i.do.end23.i_crit_edge ], [ %call.i.i1.i54.i, %for.end.i56.i.do.end23.i_crit_edge ], [ %call.i4.i.i51.i, %hi3670_phy_cr_clk.exit.i53.i.do.end23.i_crit_edge ], [ %call.i.i.i48.i, %for.body.i50.i.do.end23.i_crit_edge ]
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %do.end23.i, %do.end10.i, %while.cond.i.do.end_crit_edge, %do.end.i113, %if.end44.do.end_crit_edge, %if.end39.do.end_crit_edge, %if.end34.do.end_crit_edge, %if.end29.do.end_crit_edge, %hi3670_config_tca.exit, %if.end20.do.end_crit_edge, %if.end15.do.end_crit_edge, %if.end10.do.end_crit_edge, %if.end5.do.end_crit_edge, %hi3670_config_phy_clock.exit, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %ret.0.i, %hi3670_config_phy_clock.exit ], [ %call.i91, %if.end5.do.end_crit_edge ], [ %call.i92, %if.end10.do.end_crit_edge ], [ %call.i93, %if.end15.do.end_crit_edge ], [ %call.i94, %if.end20.do.end_crit_edge ], [ %ret.0.i102, %hi3670_config_tca.exit ], [ %call.i105, %if.end29.do.end_crit_edge ], [ %call.i106, %if.end34.do.end_crit_edge ], [ %call.i107, %if.end39.do.end_crit_edge ], [ %call.i108, %if.end44.do.end_crit_edge ], [ %retval.0.i6574.i, %do.end23.i ], [ %retval.0.i.i, %do.end10.i ], [ %call.i111, %do.end.i113 ], [ -110, %while.cond.i.do.end_crit_edge ]
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.20, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %hi3670_phy_cr_write.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %hi3670_phy_cr_write.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb31misc = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb31misc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb31misc, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 160, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg.i, align 4, !annotation !98
  %sctrl.i = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %sctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sctrl.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24) #8
  br label %hi3670_is_abbclk_selected.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i19 = call i32 @regmap_read(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %reg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool2.not.i = icmp eq i32 %call.i19, 0
  br i1 %tobool2.not.i, label %hi3670_is_abbclk_selected.exit, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27) #8
  br label %hi3670_is_abbclk_selected.exit.thread

hi3670_is_abbclk_selected.exit.thread:            ; preds = %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  br label %if.then3

hi3670_is_abbclk_selected.exit:                   ; preds = %if.end.i
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  br i1 %cmp.i.not, label %hi3670_is_abbclk_selected.exit.if.then3_crit_edge, label %if.else

hi3670_is_abbclk_selected.exit.if.then3_crit_edge: ; preds = %hi3670_is_abbclk_selected.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %hi3670_is_abbclk_selected.exit.if.then3_crit_edge, %hi3670_is_abbclk_selected.exit.thread
  %pctrl = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pctrl, align 4
  %call4 = call i32 @regmap_write(ptr noundef %14, i32 noundef 16, i32 noundef 131072) #5
  br label %cleanup

if.else:                                          ; preds = %hi3670_is_abbclk_selected.exit
  %peri_crg = getelementptr inbounds %struct.hi3670_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %peri_crg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peri_crg, align 4
  %call5 = call i32 @regmap_write(ptr noundef %16, i32 noundef 1044, i32 noundef 524288) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.else.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call5, %if.else.do.end_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.38, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3670_phy_cr_start(ptr noundef %usb31misc, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %tobool.not = icmp eq i32 %direction, 0
  %. = select i1 %tobool.not, i32 8, i32 32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %usb31misc, i32 noundef 84, i32 noundef %., i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %usb31misc, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %hi3670_phy_cr_clk.exit, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

hi3670_phy_cr_clk.exit:                           ; preds = %if.end3
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %usb31misc, i32 noundef 84, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool5.not = icmp eq i32 %call.i4.i, 0
  br i1 %tobool5.not, label %if.end7, label %hi3670_phy_cr_clk.exit.cleanup_crit_edge

hi3670_phy_cr_clk.exit.cleanup_crit_edge:         ; preds = %hi3670_phy_cr_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %hi3670_phy_cr_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %usb31misc, i32 noundef 84, i32 noundef 40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %hi3670_phy_cr_clk.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i16, %if.end7 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i4.i, %hi3670_phy_cr_clk.exit.cleanup_crit_edge ], [ %call.i.i, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3670_phy_cr_wait_ack(ptr noundef %usb31misc) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !98
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry
  %dec16 = phi i32 [ 9, %entry ], [ %dec, %if.end7.while.body_crit_edge ]
  %call = call i32 @regmap_read(ptr noundef %usb31misc, i32 noundef 84, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %usb31misc, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %hi3670_phy_cr_clk.exit, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

hi3670_phy_cr_clk.exit:                           ; preds = %if.end3
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %usb31misc, i32 noundef 84, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool5.not = icmp eq i32 %call.i4.i, 0
  br i1 %tobool5.not, label %if.end7, label %hi3670_phy_cr_clk.exit.cleanup_crit_edge

hi3670_phy_cr_clk.exit.cleanup_crit_edge:         ; preds = %hi3670_phy_cr_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %hi3670_phy_cr_clk.exit
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %dec = add nsw i32 %dec16, -1
  %cmp.not = icmp eq i32 %dec16, 0
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %hi3670_phy_cr_clk.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i4.i, %hi3670_phy_cr_clk.exit.cleanup_crit_edge ], [ -110, %if.end7.cleanup_crit_edge ], [ %call.i.i, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_phy_hi3670_usb3__304_657_hi3670_phy_driver_init6, !1, !"__initcall__kmod_phy_hi3670_usb3__304_657_hi3670_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 657, i32 1}
!2 = !{ptr @__exitcall_hi3670_phy_driver_exit, !1, !"__exitcall_hi3670_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 659, i32 1}
!5 = !{ptr @__UNIQUE_ID_file306, !6, !"__UNIQUE_ID_file306", i1 false, i1 false}
!6 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 660, i32 1}
!7 = !{ptr @__UNIQUE_ID_license307, !6, !"__UNIQUE_ID_license307", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description308, !9, !"__UNIQUE_ID_description308", i1 false, i1 false}
!9 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 661, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 653, i32 11}
!12 = !{ptr @hi3670_phy_driver, !13, !"hi3670_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 650, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 600, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 602, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hi3670_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hi3670_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 607, i32 13}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 609, i32 3}
!28 = !{ptr @hi3670_phy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hi3670_phy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 614, i32 13}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 616, i32 3}
!34 = !{ptr @hi3670_phy_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hi3670_phy_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 623, i32 3}
!38 = !{ptr @hi3670_phy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hi3670_phy_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 627, i32 41}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 631, i32 41}
!44 = !{ptr @hi3670_phy_ops, !45, !"hi3670_phy_ops", i1 false, i1 false}
!45 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 581, i32 29}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 548, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hi3670_phy_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @hi3670_phy_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 411, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hi3670_config_phy_clock._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hi3670_config_phy_clock._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 327, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @hi3670_is_abbclk_selected._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @hi3670_is_abbclk_selected._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 332, i32 3}
!63 = !{ptr @hi3670_is_abbclk_selected._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hi3670_is_abbclk_selected._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 461, i32 2}
!67 = !{ptr @hi3670_config_tca._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hi3670_config_tca._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 296, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hi3670_phy_set_params._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @hi3670_phy_set_params._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 307, i32 4}
!76 = !{ptr @hi3670_phy_set_params._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hi3670_phy_set_params._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 317, i32 3}
!80 = !{ptr @hi3670_phy_set_params._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @hi3670_phy_set_params._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 577, i32 2}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @hi3670_phy_exit._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @hi3670_phy_exit._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @hi3670_phy_of_match, !88, !"hi3670_phy_of_match", i1 false, i1 false}
!88 = !{!"../drivers/phy/hisilicon/phy-hi3670-usb3.c", i32 644, i32 34}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
