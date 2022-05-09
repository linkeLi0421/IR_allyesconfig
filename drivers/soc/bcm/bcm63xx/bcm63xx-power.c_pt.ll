; ModuleID = '/llk/IR_all_yes/drivers/soc/bcm/bcm63xx/bcm63xx-power.c_pt.bc'
source_filename = "../drivers/soc/bcm/bcm63xx/bcm63xx-power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bcm63xx_power_data = type { ptr, i8, i32 }
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
%struct.bcm63xx_power = type { ptr, %struct.spinlock, ptr, %struct.genpd_onecell_data, ptr }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.bcm63xx_power_dev = type { %struct.generic_pm_domain, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }

@__initcall__kmod_bcm63xx_power__172_376_bcm63xx_power_driver_init6 = internal global ptr @bcm63xx_power_driver_init, section ".initcall6.init", align 4
@bcm63xx_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm63xx_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm63xx_power_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm63xx-power-controller\00", [39 x i8] zeroinitializer }, align 32
@bcm63xx_power_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6318-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm6318_power_domains }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6328-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm6328_power_domains }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6362-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm6362_power_domains }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63268-power-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm63268_power_domains }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@bcm63xx_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to get current state for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm63xx_power_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/soc/bcm/bcm63xx/bcm63xx-power.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm63xx_power_probe._entry_ptr = internal global ptr @bcm63xx_power_probe._entry, section ".printk_index", align 4
@bcm63xx_power_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&power->lock\00", [19 x i8] zeroinitializer }, align 32
@bcm63xx_power_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 166, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register genpd driver: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bcm63xx_power_probe._entry_ptr.10 = internal global ptr @bcm63xx_power_probe._entry.7, section ".printk_index", align 4
@bcm63xx_power_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"registered %u power domains\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm63xx_power_probe._entry_ptr.14 = internal global ptr @bcm63xx_power_probe._entry.11, section ".printk_index", align 4
@bcm6318_power_domains = internal constant { [11 x %struct.bcm63xx_power_data], [60 x i8] } { [11 x %struct.bcm63xx_power_data] [%struct.bcm63xx_power_data { ptr @.str.15, i8 0, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.16, i8 1, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.17, i8 2, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.18, i8 3, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.19, i8 4, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.20, i8 5, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.21, i8 6, i32 4 }, %struct.bcm63xx_power_data { ptr @.str.22, i8 7, i32 4 }, %struct.bcm63xx_power_data { ptr @.str.23, i8 8, i32 4 }, %struct.bcm63xx_power_data { ptr @.str.24, i8 9, i32 4 }, %struct.bcm63xx_power_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@bcm6328_power_domains = internal constant { [11 x %struct.bcm63xx_power_data], [60 x i8] } { [11 x %struct.bcm63xx_power_data] [%struct.bcm63xx_power_data { ptr @.str.25, i8 0, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.26, i8 1, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.27, i8 2, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.28, i8 3, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.29, i8 4, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.30, i8 5, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.31, i8 6, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.15, i8 7, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.32, i8 8, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.33, i8 9, i32 0 }, %struct.bcm63xx_power_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@bcm6362_power_domains = internal constant { [15 x %struct.bcm63xx_power_data], [44 x i8] } { [15 x %struct.bcm63xx_power_data] [%struct.bcm63xx_power_data { ptr @.str.28, i8 0, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.34, i8 1, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.35, i8 2, i32 4 }, %struct.bcm63xx_power_data { ptr @.str.36, i8 3, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.31, i8 4, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.30, i8 5, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.32, i8 6, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.29, i8 7, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.37, i8 8, i32 4 }, %struct.bcm63xx_power_data { ptr @.str.38, i8 9, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.39, i8 10, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.40, i8 11, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.15, i8 12, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.41, i8 13, i32 0 }, %struct.bcm63xx_power_data zeroinitializer], [44 x i8] zeroinitializer }, align 32
@bcm63268_power_domains = internal constant { [15 x %struct.bcm63xx_power_data], [44 x i8] } { [15 x %struct.bcm63xx_power_data] [%struct.bcm63xx_power_data { ptr @.str.28, i8 0, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.34, i8 1, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.35, i8 2, i32 4 }, %struct.bcm63xx_power_data { ptr @.str.36, i8 3, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.31, i8 4, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.30, i8 5, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.32, i8 6, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.29, i8 7, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.37, i8 8, i32 4 }, %struct.bcm63xx_power_data { ptr @.str.42, i8 9, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.43, i8 10, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.40, i8 11, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.15, i8 12, i32 0 }, %struct.bcm63xx_power_data { ptr @.str.41, i8 13, i32 0 }, %struct.bcm63xx_power_data zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ephy0\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ephy1\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ephy2\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ephy3\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo2p5\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo2p9\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sw1p0\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pad\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adsl2-mips\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adsl2-phy\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adsl2-afe\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sar\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usbd\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usbh\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"robosw\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ephy\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipsec\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mips\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dect\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"periph\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adsl-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gmii-pads\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fap\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wlan-pads\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdsl-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdsl-mips\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"bcm63xx_power_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 369, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 371, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"bcm63xx_power_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 351, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 150, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 162, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 166, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 170, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"bcm6318_power_domains\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 175, i32 40 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"bcm6328_power_domains\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 215, i32 40 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"bcm6362_power_domains\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 251, i32 40 }
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"bcm63268_power_domains\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 301, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 177, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 180, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 183, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 186, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 189, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 192, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 195, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 199, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 203, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 207, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 217, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 220, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 223, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 226, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 229, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 232, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 235, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 241, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 244, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 256, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 259, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 263, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 278, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 282, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 285, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 288, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 294, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 332, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [43 x i8] c"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 335, i32 11 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__initcall__kmod_bcm63xx_power__172_376_bcm63xx_power_driver_init6, ptr @bcm63xx_power_probe._entry, ptr @bcm63xx_power_probe._entry.11, ptr @bcm63xx_power_probe._entry.7, ptr @bcm63xx_power_probe._entry_ptr, ptr @bcm63xx_power_probe._entry_ptr.10, ptr @bcm63xx_power_probe._entry_ptr.14, ptr @bcm63xx_power_driver, ptr @.str, ptr @bcm63xx_power_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcm63xx_power_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @bcm6318_power_domains, ptr @bcm6328_power_domains, ptr @bcm6362_power_domains, ptr @bcm63268_power_domains, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_power_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_power_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_power_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_power_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6318_power_domains to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_power_domains to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6362_power_domains to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63268_power_domains to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm63xx_power_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %genpd_data = getelementptr inbounds %struct.bcm63xx_power, ptr %call.i, i32 0, i32 3
  %num_domains = getelementptr inbounds %struct.bcm63xx_power, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_domains, align 4
  %5 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call10, align 4
  %tobool14.not166 = icmp eq ptr %6, null
  br i1 %tobool14.not166, label %if.end13.cleanup_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %max_bit.0169 = phi i32 [ %9, %for.body.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %ndom.0168 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %entry2.0167 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call10, %if.end13.for.body_crit_edge ]
  %bit = getelementptr inbounds %struct.bcm63xx_power_data, ptr %entry2.0167, i32 0, i32 1
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bit, align 4
  %conv15 = zext i8 %8 to i32
  %9 = tail call i32 @llvm.umax.i32(i32 %max_bit.0169, i32 %conv15)
  %inc = add i32 %ndom.0168, 1
  %incdec.ptr = getelementptr %struct.bcm63xx_power_data, ptr %entry2.0167, i32 1
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %incdec.ptr, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 0
  br i1 %phi.cmp, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %phi.bo = add i32 %9, 1
  %12 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %phi.bo, ptr %num_domains, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %phi.bo, i32 1360) #5
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !104

devm_kcalloc.exit.thread:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %dev29157 = getelementptr inbounds %struct.bcm63xx_power, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %dev29157 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dev29157, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end22
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %16, i32 noundef 3520) #5
  %dev29 = getelementptr inbounds %struct.bcm63xx_power, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %dev29, align 4
  %tobool31.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool31.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end33

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %devm_kcalloc.exit
  %18 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_domains, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #5
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kcalloc.exit155.thread, label %devm_kcalloc.exit155, !prof !104

devm_kcalloc.exit155.thread:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %genpd160 = getelementptr inbounds %struct.bcm63xx_power, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %genpd160 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %genpd160, align 4
  br label %cleanup

devm_kcalloc.exit155:                             ; preds = %if.end33
  %23 = extractvalue { i32, i1 } %20, 0
  %call5.i.i152 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %23, i32 noundef 3520) #5
  %genpd = getelementptr inbounds %struct.bcm63xx_power, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %genpd to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i152, ptr %genpd, align 4
  %tobool38.not = icmp eq ptr %call5.i.i152, null
  br i1 %tobool38.not, label %devm_kcalloc.exit155.cleanup_crit_edge, label %if.end40

devm_kcalloc.exit155.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit155
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %devm_kcalloc.exit155
  %25 = ptrtoint ptr %genpd_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i152, ptr %genpd_data, align 4
  %26 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call10, align 4
  %tobool45.not171 = icmp eq ptr %27, null
  br i1 %tobool45.not171, label %if.end40.do.body75_crit_edge, label %if.end40.if.end61_crit_edge

if.end40.if.end61_crit_edge:                      ; preds = %if.end40
  br label %if.end61

if.end40.do.body75_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

if.end61:                                         ; preds = %if.end61.if.end61_crit_edge, %if.end40.if.end61_crit_edge
  %ndom.1173 = phi i32 [ %inc71, %if.end61.if.end61_crit_edge ], [ 0, %if.end40.if.end61_crit_edge ]
  %entry2.1172 = phi ptr [ %incdec.ptr73, %if.end61.if.end61_crit_edge ], [ %call10, %if.end40.if.end61_crit_edge ]
  %28 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev29, align 4
  %arrayidx = getelementptr %struct.bcm63xx_power_dev, ptr %29, i32 %ndom.1173
  %power48 = getelementptr %struct.bcm63xx_power_dev, ptr %29, i32 %ndom.1173, i32 1
  %30 = ptrtoint ptr %power48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %power48, align 8
  %bit49 = getelementptr inbounds %struct.bcm63xx_power_data, ptr %entry2.1172, i32 0, i32 1
  %31 = ptrtoint ptr %bit49 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bit49, align 4
  %conv50 = zext i8 %32 to i32
  %shl = shl nuw i32 1, %conv50
  %mask = getelementptr %struct.bcm63xx_power_dev, ptr %29, i32 %ndom.1173, i32 2
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl, ptr %mask, align 4
  %34 = ptrtoint ptr %entry2.1172 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entry2.1172, align 4
  %name53 = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 10
  %36 = ptrtoint ptr %name53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %name53, align 8
  %flags = getelementptr inbounds %struct.bcm63xx_power_data, ptr %entry2.1172, i32 0, i32 2
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %flags55 = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 32
  %39 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %flags55, align 4
  %40 = load ptr, ptr %power48, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !105
  %44 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask, align 4
  %and.i = and i32 %45, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp ne i32 %and.i, 0
  %power_on = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 19
  %46 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @bcm63xx_power_on, ptr %power_on, align 4
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %arrayidx, i32 0, i32 18
  %47 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @bcm63xx_power_off, ptr %power_off, align 8
  %call66 = tail call i32 @pm_genpd_init(ptr noundef %arrayidx, ptr noundef null, i1 noundef zeroext %tobool3.not.i) #5
  %48 = ptrtoint ptr %genpd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %genpd, align 4
  %50 = ptrtoint ptr %bit49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bit49, align 4
  %idxprom = zext i8 %51 to i32
  %arrayidx70 = getelementptr ptr, ptr %49, i32 %idxprom
  %52 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx, ptr %arrayidx70, align 4
  %inc71 = add i32 %ndom.1173, 1
  %incdec.ptr73 = getelementptr %struct.bcm63xx_power_data, ptr %entry2.1172, i32 1
  %53 = ptrtoint ptr %incdec.ptr73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %incdec.ptr73, align 4
  %tobool45.not = icmp eq ptr %54, null
  br i1 %tobool45.not, label %if.end61.do.body75_crit_edge, label %if.end61.if.end61_crit_edge

if.end61.if.end61_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.end61.do.body75_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body75

do.body75:                                        ; preds = %if.end61.do.body75_crit_edge, %if.end40.do.body75_crit_edge
  %ndom.1.lcssa = phi i32 [ 0, %if.end40.do.body75_crit_edge ], [ %inc71, %if.end61.do.body75_crit_edge ]
  %lock = getelementptr inbounds %struct.bcm63xx_power, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @bcm63xx_power_probe.__key, i16 noundef signext 3) #5
  %call80 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %1, ptr noundef %genpd_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.end89, label %do.end85

do.end85:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call80) #8
  br label %cleanup

do.end89:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %ndom.1.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %do.end85, %devm_kcalloc.exit155.cleanup_crit_edge, %devm_kcalloc.exit155.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %for.end.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %call80, %do.end85 ], [ 0, %do.end89 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit155.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit155.thread ], [ -19, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_power_on(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mask.i = getelementptr inbounds %struct.bcm63xx_power_dev, ptr %genpd, i32 0, i32 2
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.bcm63xx_power_set_state.exit_crit_edge, label %do.body2.i

entry.bcm63xx_power_set_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm63xx_power_set_state.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %power1.i = getelementptr inbounds %struct.bcm63xx_power_dev, ptr %genpd, i32 0, i32 1
  %2 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power1.i, align 8
  %lock.i = getelementptr inbounds %struct.bcm63xx_power, ptr %3, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !105
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %8, -1
  %and.i = and i32 %6, %neg.i
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and.i) #5, !srcloc !106
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  br label %bcm63xx_power_set_state.exit

bcm63xx_power_set_state.exit:                     ; preds = %do.body2.i, %entry.bcm63xx_power_set_state.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body2.i ], [ -22, %entry.bcm63xx_power_set_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm63xx_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mask.i = getelementptr inbounds %struct.bcm63xx_power_dev, ptr %genpd, i32 0, i32 2
  %0 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.bcm63xx_power_set_state.exit_crit_edge, label %do.body2.i

entry.bcm63xx_power_set_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm63xx_power_set_state.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %power1.i = getelementptr inbounds %struct.bcm63xx_power_dev, ptr %genpd, i32 0, i32 1
  %2 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power1.i, align 8
  %lock.i = getelementptr inbounds %struct.bcm63xx_power, ptr %3, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !105
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask.i, align 4
  %or.i = or i32 %8, %6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %or.i) #5, !srcloc !106
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #5
  br label %bcm63xx_power_set_state.exit

bcm63xx_power_set_state.exit:                     ; preds = %do.body2.i, %entry.bcm63xx_power_set_state.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body2.i ], [ -22, %entry.bcm63xx_power_set_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_bcm63xx_power__172_376_bcm63xx_power_driver_init6, !1, !"__initcall__kmod_bcm63xx_power__172_376_bcm63xx_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 376, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 371, i32 11}
!4 = !{ptr @bcm63xx_power_driver, !5, !"bcm63xx_power_driver", i1 false, i1 false}
!5 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 369, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 150, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @bcm63xx_power_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @bcm63xx_power_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @bcm63xx_power_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 162, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 166, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm63xx_power_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm63xx_power_probe._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 170, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcm63xx_power_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcm63xx_power_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @bcm63xx_power_of_match, !28, !"bcm63xx_power_of_match", i1 false, i1 false}
!28 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 351, i32 34}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 177, i32 11}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 180, i32 11}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 183, i32 11}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 186, i32 11}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 189, i32 11}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 192, i32 11}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 195, i32 11}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 199, i32 11}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 203, i32 11}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 207, i32 11}
!49 = !{ptr @bcm6318_power_domains, !50, !"bcm6318_power_domains", i1 false, i1 false}
!50 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 175, i32 40}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 217, i32 11}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 220, i32 11}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 223, i32 11}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 226, i32 11}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 229, i32 11}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 232, i32 11}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 235, i32 11}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 241, i32 11}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 244, i32 11}
!69 = !{ptr @bcm6328_power_domains, !70, !"bcm6328_power_domains", i1 false, i1 false}
!70 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 215, i32 40}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 256, i32 11}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 259, i32 11}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 263, i32 11}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 278, i32 11}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 282, i32 11}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 285, i32 11}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 288, i32 11}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 294, i32 11}
!87 = !{ptr @bcm6362_power_domains, !88, !"bcm6362_power_domains", i1 false, i1 false}
!88 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 251, i32 40}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 332, i32 11}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 335, i32 11}
!93 = !{ptr @bcm63268_power_domains, !94, !"bcm63268_power_domains", i1 false, i1 false}
!94 = !{!"../drivers/soc/bcm/bcm63xx/bcm63xx-power.c", i32 301, i32 40}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 694328}
!106 = !{i64 693910}
