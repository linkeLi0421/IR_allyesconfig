; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/tegra-kbc.c_pt.bc'
source_filename = "../drivers/input/keyboard/tegra-kbc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_kbc_hw_support = type { i32, i32 }
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
%struct.tegra_kbc = type { ptr, i32, i32, [24 x %struct.tegra_kbc_pin_cfg], ptr, i8, ptr, ptr, i32, %struct.spinlock, i32, i32, i32, i8, i8, i8, [256 x i16], [8 x i16], i32, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.tegra_kbc_pin_cfg = type { i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_tegra_kbc__231_817_tegra_kbc_driver_init6 = internal global ptr @tegra_kbc_driver_init, section ".initcall6.init", align 4
@tegra_kbc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_kbc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_kbc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_kbc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_kbc_driver_exit = internal global ptr @tegra_kbc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file232 = internal constant [48 x i8] c"tegra_kbc.file=drivers/input/keyboard/tegra-kbc\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [22 x i8] c"tegra_kbc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [48 x i8] c"tegra_kbc.author=Rakesh Iyer <riyer@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [62 x i8] c"tegra_kbc.description=Tegra matrix keyboard controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [35 x i8] c"tegra_kbc.alias=platform:tegra-kbc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-kbc\00", [22 x i8] zeroinitializer }, align 32
@tegra_kbc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-kbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra11_kbc_hw_support }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-kbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_kbc_hw_support }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-kbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_kbc_hw_support }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_kbc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_kbc_suspend, ptr @tegra_kbc_resume, ptr @tegra_kbc_suspend, ptr @tegra_kbc_resume, ptr @tegra_kbc_suspend, ptr @tegra_kbc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to alloc memory for kbc\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_kbc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/keyboard/tegra-kbc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry_ptr = internal global ptr @tegra_kbc_probe._entry, section ".printk_index", align 4
@tegra_kbc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&kbc->lock\00", [21 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry_ptr.9 = internal global ptr @tegra_kbc_probe._entry.7, section ".printk_index", align 4
@tegra_kbc_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&kbc->timer)\00", [18 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get keyboard clock\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry_ptr.14 = internal global ptr @tegra_kbc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kbc\00", [28 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get keyboard reset\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry_ptr.18 = internal global ptr @tegra_kbc_probe._entry.16, section ".printk_index", align 4
@tegra_kbc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 687, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to setup keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry_ptr.21 = internal global ptr @tegra_kbc_probe._entry.19, section ".printk_index", align 4
@tegra_kbc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request keyboard IRQ\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry_ptr.24 = internal global ptr @tegra_kbc_probe._entry.22, section ".printk_index", align 4
@tegra_kbc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 706, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_kbc_probe._entry_ptr.27 = internal global ptr @tegra_kbc_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,debounce-delay-ms\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,repeat-delay-ms\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,needs-ghost-filter\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,wakeup-source\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,kbc-row-pins\00", [44 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"property nvidia,kbc-row-pins not found\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_kbc_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr = internal global ptr @tegra_kbc_parse_dt._entry, section ".printk_index", align 4
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,kbc-col-pins\00", [44 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"property nvidia,kbc-col-pins not found\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr.39 = internal global ptr @tegra_kbc_parse_dt._entry.37, section ".printk_index", align 4
@tegra_kbc_parse_dt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Number of rows is more than supported by hardware\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr.42 = internal global ptr @tegra_kbc_parse_dt._entry.40, section ".printk_index", align 4
@tegra_kbc_parse_dt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.3, i32 534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Number of cols is more than supported by hardware\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr.45 = internal global ptr @tegra_kbc_parse_dt._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,keymap\00", [19 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.35, ptr @.str.3, i32 539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"property linux,keymap not found\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr.49 = internal global ptr @tegra_kbc_parse_dt._entry.47, section ".printk_index", align 4
@tegra_kbc_parse_dt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.35, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"keypad rows/columns not properly specified\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr.52 = internal global ptr @tegra_kbc_parse_dt._entry.50, section ".printk_index", align 4
@tegra_kbc_parse_dt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.3, i32 556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rows configurations are not proper\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr.55 = internal global ptr @tegra_kbc_parse_dt._entry.53, section ".printk_index", align 4
@tegra_kbc_parse_dt._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.35, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cols configurations are not proper\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_kbc_parse_dt._entry_ptr.58 = internal global ptr @tegra_kbc_parse_dt._entry.56, section ".printk_index", align 4
@tegra_kbc_check_pin_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pin_cfg[%d]: invalid row number %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_kbc_check_pin_cfg\00", [40 x i8] zeroinitializer }, align 32
@tegra_kbc_check_pin_cfg._entry_ptr = internal global ptr @tegra_kbc_check_pin_cfg._entry, section ".printk_index", align 4
@tegra_kbc_check_pin_cfg._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pin_cfg[%d]: invalid column number %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_kbc_check_pin_cfg._entry_ptr.63 = internal global ptr @tegra_kbc_check_pin_cfg._entry.61, section ".printk_index", align 4
@tegra_kbc_check_pin_cfg._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pin_cfg[%d]: invalid entry type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_kbc_check_pin_cfg._entry_ptr.66 = internal global ptr @tegra_kbc_check_pin_cfg._entry.64, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra11_kbc_hw_support = internal constant { %struct.tegra_kbc_hw_support, [24 x i8] } { %struct.tegra_kbc_hw_support { i32 11, i32 8 }, [24 x i8] zeroinitializer }, align 32
@tegra20_kbc_hw_support = internal constant { %struct.tegra_kbc_hw_support, [24 x i8] } { %struct.tegra_kbc_hw_support { i32 16, i32 8 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"tegra_kbc_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 809, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 812, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"tegra_kbc_of_match\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 590, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"tegra_kbc_pm_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 807, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 613, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 624, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 639, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 643, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 652, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 656, i32 48 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 658, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 687, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 700, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 706, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 501, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 504, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 507, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 510, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 511, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 514, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 515, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 520, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 521, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 527, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 533, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 538, i32 27 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 539, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 544, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 556, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 563, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 458, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 468, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 479, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant [23 x i8] c"tegra11_kbc_hw_support\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 585, i32 42 }
@___asan_gen_.248 = private unnamed_addr constant [23 x i8] c"tegra20_kbc_hw_support\00", align 1
@___asan_gen_.249 = private constant [38 x i8] c"../drivers/input/keyboard/tegra-kbc.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 580, i32 42 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_tegra_kbc_driver_exit, ptr @__initcall__kmod_tegra_kbc__231_817_tegra_kbc_driver_init6, ptr @tegra_kbc_check_pin_cfg._entry, ptr @tegra_kbc_check_pin_cfg._entry.61, ptr @tegra_kbc_check_pin_cfg._entry.64, ptr @tegra_kbc_check_pin_cfg._entry_ptr, ptr @tegra_kbc_check_pin_cfg._entry_ptr.63, ptr @tegra_kbc_check_pin_cfg._entry_ptr.66, ptr @tegra_kbc_driver_exit, ptr @tegra_kbc_parse_dt._entry, ptr @tegra_kbc_parse_dt._entry.37, ptr @tegra_kbc_parse_dt._entry.40, ptr @tegra_kbc_parse_dt._entry.43, ptr @tegra_kbc_parse_dt._entry.47, ptr @tegra_kbc_parse_dt._entry.50, ptr @tegra_kbc_parse_dt._entry.53, ptr @tegra_kbc_parse_dt._entry.56, ptr @tegra_kbc_parse_dt._entry_ptr, ptr @tegra_kbc_parse_dt._entry_ptr.39, ptr @tegra_kbc_parse_dt._entry_ptr.42, ptr @tegra_kbc_parse_dt._entry_ptr.45, ptr @tegra_kbc_parse_dt._entry_ptr.49, ptr @tegra_kbc_parse_dt._entry_ptr.52, ptr @tegra_kbc_parse_dt._entry_ptr.55, ptr @tegra_kbc_parse_dt._entry_ptr.58, ptr @tegra_kbc_probe._entry, ptr @tegra_kbc_probe._entry.12, ptr @tegra_kbc_probe._entry.16, ptr @tegra_kbc_probe._entry.19, ptr @tegra_kbc_probe._entry.22, ptr @tegra_kbc_probe._entry.25, ptr @tegra_kbc_probe._entry.7, ptr @tegra_kbc_probe._entry_ptr, ptr @tegra_kbc_probe._entry_ptr.14, ptr @tegra_kbc_probe._entry_ptr.18, ptr @tegra_kbc_probe._entry_ptr.21, ptr @tegra_kbc_probe._entry_ptr.24, ptr @tegra_kbc_probe._entry_ptr.27, ptr @tegra_kbc_probe._entry_ptr.9, ptr @tegra_kbc_driver, ptr @.str, ptr @tegra_kbc_of_match, ptr @tegra_kbc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra_kbc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @tegra_kbc_probe.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @tegra11_kbc_hw_support, ptr @tegra20_kbc_hw_support], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_parse_dt._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_check_pin_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_check_pin_cfg._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_kbc_check_pin_cfg._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra11_kbc_hw_support to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_kbc_hw_support to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_kbc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_kbc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_kbc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_kbc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_kbc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  %cols_cfg.i = alloca [24 x i32], align 4
  %rows_cfg.i = alloca [24 x i32], align 4
  %proplen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @tegra_kbc_of_match, ptr noundef %dev) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 888, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %hw_support = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 23
  %3 = ptrtoint ptr %hw_support to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %hw_support, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  %max_columns = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %max_columns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_columns, align 4
  %mul = mul i32 %7, %5
  %max_keys = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 24
  %8 = ptrtoint ptr %max_keys to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %max_keys, align 4
  %9 = load i32, ptr %2, align 4
  %10 = load i32, ptr %max_columns, align 4
  %add = add i32 %10, %9
  %num_rows_and_columns = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 25
  %11 = ptrtoint ptr %num_rows_and_columns to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %num_rows_and_columns, align 4
  %lock = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tegra_kbc_probe.__key, i16 noundef signext 3) #6
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #6
  %16 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %prop.i, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %cols_cfg.i) #6
  %17 = call ptr @memset(ptr %cols_cfg.i, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rows_cfg.i) #6
  %18 = call ptr @memset(ptr %rows_cfg.i, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proplen.i) #6
  %19 = ptrtoint ptr %proplen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %proplen.i, align 4, !annotation !135
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.28, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prop.i, align 4
  %debounce_cnt.i = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %debounce_cnt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %debounce_cnt.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call.i.i168.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.29, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i168.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i168.i, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prop.i, align 4
  %repeat_cnt.i = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %repeat_cnt.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %repeat_cnt.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then7.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %use_ghost_filter.i = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 14
  %26 = ptrtoint ptr %use_ghost_filter.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %use_ghost_filter.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.31, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then11.i_crit_edge

if.end8.i.if.then11.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %call.i169.i = call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.32, ptr noundef null) #6
  %tobool.i170.not.i = icmp eq ptr %call.i169.i, null
  br i1 %tobool.i170.not.i, label %lor.lhs.false.i.if.end12.i_crit_edge, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

lor.lhs.false.i.if.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.if.then11.i_crit_edge, %if.end8.i.if.then11.i_crit_edge
  %wakeup.i = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %wakeup.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %lor.lhs.false.i.if.end12.i_crit_edge
  %call13.i = call ptr @of_get_property(ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef nonnull %proplen.i) #6
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end12.i.tegra_kbc_parse_dt.exit_crit_edge, label %if.end17.i

if.end12.i.tegra_kbc_parse_dt.exit_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

if.end17.i:                                       ; preds = %if.end12.i
  %28 = ptrtoint ptr %proplen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %proplen.i, align 4
  %div165.i = lshr i32 %29, 2
  %call18.i = call ptr @of_get_property(ptr noundef %15, ptr noundef nonnull @.str.36, ptr noundef nonnull %proplen.i) #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.tegra_kbc_parse_dt.exit_crit_edge, label %if.end25.i

if.end17.i.tegra_kbc_parse_dt.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

if.end25.i:                                       ; preds = %if.end17.i
  %30 = ptrtoint ptr %proplen.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %proplen.i, align 4
  %div26166.i = lshr i32 %31, 2
  %32 = ptrtoint ptr %hw_support to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_support, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div165.i, i32 %35)
  %cmp.i = icmp ugt i32 %div165.i, %35
  br i1 %cmp.i, label %if.end25.i.tegra_kbc_parse_dt.exit_crit_edge, label %if.end32.i

if.end25.i.tegra_kbc_parse_dt.exit_crit_edge:     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

if.end32.i:                                       ; preds = %if.end25.i
  %max_columns.i = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %max_columns.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_columns.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div26166.i, i32 %37)
  %cmp34.i = icmp ugt i32 %div26166.i, %37
  br i1 %cmp34.i, label %if.end32.i.tegra_kbc_parse_dt.exit_crit_edge, label %if.end40.i

if.end32.i.tegra_kbc_parse_dt.exit_crit_edge:     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

if.end40.i:                                       ; preds = %if.end32.i
  %call41.i = call ptr @of_get_property(ptr noundef %15, ptr noundef nonnull @.str.46, ptr noundef nonnull %proplen.i) #6
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %if.end40.i.tegra_kbc_parse_dt.exit_crit_edge, label %if.end48.i

if.end40.i.tegra_kbc_parse_dt.exit_crit_edge:     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

if.end48.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %tobool49.not.i = icmp ult i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %tobool51.not.i = icmp ult i32 %31, 4
  %or.cond.i = select i1 %tobool49.not.i, i1 true, i1 %tobool51.not.i
  %add.i = add nuw nsw i32 %div26166.i, %div165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add.i)
  %cmp53.i = icmp ugt i32 %add.i, 24
  %or.cond167.i = select i1 %or.cond.i, i1 true, i1 %cmp53.i
  br i1 %or.cond167.i, label %if.end48.i.tegra_kbc_parse_dt.exit_crit_edge, label %for.cond.preheader.i

if.end48.i.tegra_kbc_parse_dt.exit_crit_edge:     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

for.cond.preheader.i:                             ; preds = %if.end48.i
  %38 = ptrtoint ptr %num_rows_and_columns to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_rows_and_columns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp60173.i = icmp sgt i32 %39, 0
  br i1 %cmp60173.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0174.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %i.0174.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0174.i, 1
  %41 = ptrtoint ptr %num_rows_and_columns to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_rows_and_columns, align 4
  %cmp60.i = icmp slt i32 %inc.i, %42
  br i1 %cmp60.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call.i171.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef nonnull %rows_cfg.i, i32 noundef %div165.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.i)
  %cmp62.i = icmp slt i32 %call.i171.i, 0
  br i1 %cmp62.i, label %for.end.i.tegra_kbc_parse_dt.exit_crit_edge, label %if.end68.i

for.end.i.tegra_kbc_parse_dt.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

if.end68.i:                                       ; preds = %for.end.i
  %call.i172.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.36, ptr noundef nonnull %cols_cfg.i, i32 noundef %div26166.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172.i)
  %cmp71.i = icmp slt i32 %call.i172.i, 0
  br i1 %cmp71.i, label %if.end68.i.tegra_kbc_parse_dt.exit_crit_edge, label %for.body80.preheader.i

if.end68.i.tegra_kbc_parse_dt.exit_crit_edge:     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_parse_dt.exit

for.body80.preheader.i:                           ; preds = %if.end68.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div165.i, i32 1) #6
  br label %for.body80.i

for.body94.preheader.i:                           ; preds = %for.body80.i
  %umax179.i = call i32 @llvm.umax.i32(i32 %div26166.i, i32 1) #6
  br label %for.body94.i

for.body80.i:                                     ; preds = %for.body80.i.for.body80.i_crit_edge, %for.body80.preheader.i
  %i.1176.i = phi i32 [ %inc89.i, %for.body80.i.for.body80.i_crit_edge ], [ 0, %for.body80.preheader.i ]
  %arrayidx82.i = getelementptr [24 x i32], ptr %rows_cfg.i, i32 0, i32 %i.1176.i
  %43 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx82.i, align 4
  %arrayidx83.i = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %44
  %45 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %arrayidx83.i, align 4
  %conv.i = trunc i32 %i.1176.i to i8
  %num.i = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %44, i32 1
  %46 = ptrtoint ptr %num.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %num.i, align 4
  %inc89.i = add nuw nsw i32 %i.1176.i, 1
  %exitcond.not.i = icmp eq i32 %inc89.i, %umax.i
  br i1 %exitcond.not.i, label %for.body94.preheader.i, label %for.body80.i.for.body80.i_crit_edge

for.body80.i.for.body80.i_crit_edge:              ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body80.i

for.body94.i:                                     ; preds = %for.body94.i.for.body94.i_crit_edge, %for.body94.preheader.i
  %i.2178.i = phi i32 [ %inc105.i, %for.body94.i.for.body94.i_crit_edge ], [ 0, %for.body94.preheader.i ]
  %arrayidx96.i = getelementptr [24 x i32], ptr %cols_cfg.i, i32 0, i32 %i.2178.i
  %47 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx96.i, align 4
  %arrayidx97.i = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %48
  %49 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %arrayidx97.i, align 4
  %conv99.i = trunc i32 %i.2178.i to i8
  %num103.i = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %48, i32 1
  %50 = ptrtoint ptr %num103.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv99.i, ptr %num103.i, align 4
  %inc105.i = add nuw nsw i32 %i.2178.i, 1
  %exitcond180.not.i = icmp eq i32 %inc105.i, %umax179.i
  br i1 %exitcond180.not.i, label %if.end20, label %for.body94.i.for.body94.i_crit_edge

for.body94.i.for.body94.i_crit_edge:              ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body94.i

tegra_kbc_parse_dt.exit:                          ; preds = %if.end68.i.tegra_kbc_parse_dt.exit_crit_edge, %for.end.i.tegra_kbc_parse_dt.exit_crit_edge, %if.end48.i.tegra_kbc_parse_dt.exit_crit_edge, %if.end40.i.tegra_kbc_parse_dt.exit_crit_edge, %if.end32.i.tegra_kbc_parse_dt.exit_crit_edge, %if.end25.i.tegra_kbc_parse_dt.exit_crit_edge, %if.end17.i.tegra_kbc_parse_dt.exit_crit_edge, %if.end12.i.tegra_kbc_parse_dt.exit_crit_edge
  %.str.57.sink.i = phi ptr [ @.str.34, %if.end12.i.tegra_kbc_parse_dt.exit_crit_edge ], [ @.str.38, %if.end17.i.tegra_kbc_parse_dt.exit_crit_edge ], [ @.str.41, %if.end25.i.tegra_kbc_parse_dt.exit_crit_edge ], [ @.str.44, %if.end32.i.tegra_kbc_parse_dt.exit_crit_edge ], [ @.str.48, %if.end40.i.tegra_kbc_parse_dt.exit_crit_edge ], [ @.str.51, %if.end48.i.tegra_kbc_parse_dt.exit_crit_edge ], [ @.str.54, %for.end.i.tegra_kbc_parse_dt.exit_crit_edge ], [ @.str.57, %if.end68.i.tegra_kbc_parse_dt.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -2, %if.end12.i.tegra_kbc_parse_dt.exit_crit_edge ], [ -2, %if.end17.i.tegra_kbc_parse_dt.exit_crit_edge ], [ -22, %if.end25.i.tegra_kbc_parse_dt.exit_crit_edge ], [ -22, %if.end32.i.tegra_kbc_parse_dt.exit_crit_edge ], [ -2, %if.end40.i.tegra_kbc_parse_dt.exit_crit_edge ], [ -22, %if.end48.i.tegra_kbc_parse_dt.exit_crit_edge ], [ -22, %for.end.i.tegra_kbc_parse_dt.exit_crit_edge ], [ -22, %if.end68.i.tegra_kbc_parse_dt.exit_crit_edge ]
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.57.sink.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rows_cfg.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %cols_cfg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  br label %cleanup

if.end20:                                         ; preds = %for.body94.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proplen.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rows_cfg.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %cols_cfg.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  br label %for.body.i227

for.body.i227:                                    ; preds = %for.inc.i.for.body.i227_crit_edge, %if.end20
  %num_rows.0 = phi i32 [ 0, %if.end20 ], [ %num_rows.1, %for.inc.i.for.body.i227_crit_edge ]
  %cmp60.i225 = phi i1 [ true, %if.end20 ], [ %cmp.i233, %for.inc.i.for.body.i227_crit_edge ]
  %i.058.i = phi i32 [ 0, %if.end20 ], [ %inc27.i, %for.inc.i.for.body.i227_crit_edge ]
  %arrayidx.i226 = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %i.058.i
  %53 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i226, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %do.end22.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 0, label %for.body.i227.for.inc.i_crit_edge
  ]

for.body.i227.for.inc.i_crit_edge:                ; preds = %for.body.i227
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i227
  %num.i228 = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %i.058.i, i32 1
  %56 = ptrtoint ptr %num.i228 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num.i228, align 4
  %conv.i229 = zext i8 %57 to i32
  %58 = ptrtoint ptr %hw_support to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_support, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv.i229)
  %cmp2.not.i = icmp sgt i32 %61, %conv.i229
  br i1 %cmp2.not.i, label %if.end.i231, label %do.end.i

do.end.i:                                         ; preds = %sw.bb.i
  %conv.i229.le = zext i8 %57 to i32
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.59, i32 noundef %i.058.i, i32 noundef %conv.i229.le) #9
  br i1 %cmp60.i225, label %do.end.i.cleanup_crit_edge, label %do.end.i.if.end23_crit_edge

do.end.i.if.end23_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i231:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i230 = add i32 %num_rows.0, 1
  br label %for.inc.i

sw.bb6.i:                                         ; preds = %for.body.i227
  %num7.i = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %i.058.i, i32 1
  %64 = ptrtoint ptr %num7.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num7.i, align 4
  %conv8.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %hw_support to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_support, align 4
  %max_columns.i232 = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %max_columns.i232 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_columns.i232, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv8.i)
  %cmp10.not.i = icmp sgt i32 %69, %conv8.i
  br i1 %cmp10.not.i, label %sw.bb6.i.for.inc.i_crit_edge, label %do.end15.i

sw.bb6.i.for.inc.i_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end15.i:                                       ; preds = %sw.bb6.i
  %conv8.i.le = zext i8 %65 to i32
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.62, i32 noundef %i.058.i, i32 noundef %conv8.i.le) #9
  br i1 %cmp60.i225, label %do.end15.i.cleanup_crit_edge, label %do.end15.i.if.end23_crit_edge

do.end15.i.if.end23_crit_edge:                    ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end15.i.cleanup_crit_edge:                     ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22.i:                                       ; preds = %for.body.i227
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %num25.i = getelementptr %struct.tegra_kbc, ptr %call.i, i32 0, i32 3, i32 %i.058.i, i32 1
  %74 = ptrtoint ptr %num25.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num25.i, align 4
  %conv26.i = zext i8 %75 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.65, i32 noundef %54, i32 noundef %conv26.i) #9
  br i1 %cmp60.i225, label %do.end22.i.cleanup_crit_edge, label %do.end22.i.if.end23_crit_edge

do.end22.i.if.end23_crit_edge:                    ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end22.i.cleanup_crit_edge:                     ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i:                                        ; preds = %sw.bb6.i.for.inc.i_crit_edge, %if.end.i231, %for.body.i227.for.inc.i_crit_edge
  %num_rows.1 = phi i32 [ %num_rows.0, %for.body.i227.for.inc.i_crit_edge ], [ %num_rows.0, %sw.bb6.i.for.inc.i_crit_edge ], [ %inc.i230, %if.end.i231 ]
  %inc27.i = add nuw nsw i32 %i.058.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %i.058.i)
  %cmp.i233 = icmp ult i32 %i.058.i, 23
  %exitcond.not.i234 = icmp eq i32 %inc27.i, 24
  br i1 %exitcond.not.i234, label %tegra_kbc_check_pin_cfg.exit, label %for.inc.i.for.body.i227_crit_edge

for.inc.i.for.body.i227_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i227

tegra_kbc_check_pin_cfg.exit:                     ; preds = %for.inc.i
  br i1 %cmp.i233, label %tegra_kbc_check_pin_cfg.exit.cleanup_crit_edge, label %tegra_kbc_check_pin_cfg.exit.if.end23_crit_edge

tegra_kbc_check_pin_cfg.exit.if.end23_crit_edge:  ; preds = %tegra_kbc_check_pin_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

tegra_kbc_check_pin_cfg.exit.cleanup_crit_edge:   ; preds = %tegra_kbc_check_pin_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %tegra_kbc_check_pin_cfg.exit.if.end23_crit_edge, %do.end22.i.if.end23_crit_edge, %do.end15.i.if.end23_crit_edge, %do.end.i.if.end23_crit_edge
  %num_rows.2272 = phi i32 [ %num_rows.0, %do.end22.i.if.end23_crit_edge ], [ %num_rows.1, %tegra_kbc_check_pin_cfg.exit.if.end23_crit_edge ], [ %num_rows.0, %do.end15.i.if.end23_crit_edge ], [ %num_rows.0, %do.end.i.if.end23_crit_edge ]
  %call24 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 8
  %76 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call24, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call29 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %idev = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 7
  %77 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call29, ptr %idev, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %do.body38

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

do.body38:                                        ; preds = %if.end27
  %timer = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 20
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tegra_kbc_keypress_timer, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @tegra_kbc_probe.__key.10) #6
  %call41 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call43 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call41) #6
  %mmio = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 6
  %78 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call43, ptr %mmio, align 4
  %cmp.i235 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %if.then46, label %if.end49

if.then46:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end49:                                         ; preds = %do.body38
  %call51 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 21
  %80 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call51, ptr %clk, align 4
  %cmp.i236 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %do.end57, label %if.end61

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  %81 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clk, align 4
  %83 = ptrtoint ptr %82 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end49
  %call.i.i237 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 22
  %84 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i237, ptr %rst, align 4
  %cmp.i238 = icmp ugt ptr %call.i.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i238, label %do.end69, label %if.end73

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %85 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rst, align 4
  %87 = ptrtoint ptr %86 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end61
  %debounce_cnt74 = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 1
  %88 = ptrtoint ptr %debounce_cnt74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %debounce_cnt74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %89)
  %cmp75 = icmp ult i32 %89, 1023
  %phi.bo = add i32 %89, 16
  %cond = select i1 %cmp75, i32 %phi.bo, i32 1039
  %mul77 = mul i32 %cond, %num_rows.2272
  %repeat_cnt = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 2
  %90 = ptrtoint ptr %repeat_cnt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %repeat_cnt, align 4
  %repoll_dly = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 10
  %add79 = add i32 %91, 36
  %sub = add i32 %add79, %mul77
  %div224 = lshr i32 %sub, 5
  %92 = ptrtoint ptr %repoll_dly to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div224, ptr %repoll_dly, align 4
  %93 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev, align 8
  %95 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %idev, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %96, align 8
  %98 = load ptr, ptr %idev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 25, ptr %id, align 4
  %100 = load ptr, ptr %idev, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 40, i32 1
  %101 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %dev, ptr %parent, align 8
  %102 = load ptr, ptr %idev, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %102, i32 0, i32 31
  %103 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @tegra_kbc_open, ptr %open, align 8
  %104 = load ptr, ptr %idev, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %104, i32 0, i32 32
  %105 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @tegra_kbc_close, ptr %close, align 4
  %keymap_data = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 4
  %106 = ptrtoint ptr %keymap_data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %keymap_data, align 4
  %tobool91.not = icmp eq ptr %107, null
  br i1 %tobool91.not, label %if.end73.if.end95_crit_edge, label %land.lhs.true

if.end73.if.end95_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %use_fn_map = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 13
  %108 = ptrtoint ptr %use_fn_map to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %use_fn_map, align 4, !range !136
  %110 = zext i8 %109 to i32
  %spec.select = shl i32 %mul, %110
  br label %if.end95

if.end95:                                         ; preds = %land.lhs.true, %if.end73.if.end95_crit_edge
  %keymap_rows.0 = phi i32 [ %mul, %if.end73.if.end95_crit_edge ], [ %spec.select, %land.lhs.true ]
  %111 = ptrtoint ptr %hw_support to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw_support, align 4
  %max_columns98 = getelementptr inbounds %struct.tegra_kbc_hw_support, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %max_columns98 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_columns98, align 4
  %keycode = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 16
  %115 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %idev, align 4
  %call100 = call i32 @matrix_keypad_build_keymap(ptr noundef %107, ptr noundef null, i32 noundef %keymap_rows.0, i32 noundef %114, ptr noundef %keycode, ptr noundef %116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end107:                                        ; preds = %if.end95
  %117 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %idev, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %evbit, align 4
  %or.i = or i32 %120, 1048576
  store i32 %or.i, ptr %evbit, align 4
  %121 = load ptr, ptr %idev, align 4
  call void @input_set_capability(ptr noundef %121, i32 noundef 4, i32 noundef 4) #6
  %122 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %idev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %123, i32 0, i32 40, i32 8
  %124 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %125 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq, align 4
  %127 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev, align 8
  %call.i239 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %126, ptr noundef nonnull @tegra_kbc_isr, ptr noundef null, i32 noundef 524292, ptr noundef %128, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool116.not = icmp eq i32 %call.i239, 0
  br i1 %tobool116.not, label %if.end122, label %do.end120

do.end120:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end122:                                        ; preds = %if.end107
  %129 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %idev, align 4
  %call124 = call i32 @input_register_device(ptr noundef %130) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end131, label %do.end129

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end131:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i240 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %131 = ptrtoint ptr %driver_data.i.i240 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i, ptr %driver_data.i.i240, align 4
  %wakeup = getelementptr inbounds %struct.tegra_kbc, ptr %call.i, i32 0, i32 5
  %132 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %wakeup, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool133 = icmp ne i8 %133, 0
  %call134 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext %tobool133) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end129, %do.end120, %do.end105, %do.end69, %do.end57, %if.then46, %do.end35, %if.end23.cleanup_crit_edge, %tegra_kbc_check_pin_cfg.exit.cleanup_crit_edge, %do.end22.i.cleanup_crit_edge, %do.end15.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %tegra_kbc_parse_dt.exit, %do.end
  %retval.0 = phi i32 [ %79, %if.then46 ], [ %83, %do.end57 ], [ %87, %do.end69 ], [ %call100, %do.end105 ], [ %call.i239, %do.end120 ], [ %call124, %do.end129 ], [ 0, %if.end131 ], [ -12, %do.end35 ], [ -12, %do.end ], [ %retval.0.ph.i, %tegra_kbc_parse_dt.exit ], [ -22, %tegra_kbc_check_pin_cfg.exit.cleanup_crit_edge ], [ -6, %if.end23.cleanup_crit_edge ], [ -22, %do.end22.i.cleanup_crit_edge ], [ -22, %do.end15.i.cleanup_crit_edge ], [ -22, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_kbc_keypress_timer(ptr noundef %t) #2 align 64 {
entry:
  %scancodes.i = alloca [8 x i8], align 8
  %keycodes.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -820
  %lock = getelementptr i8, ptr %t, i32 -596
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mmio = getelementptr i8, ptr %t, i32 -608
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %2)
  %tobool.not = icmp ult i32 %2, 268435456
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_pressed_keys = getelementptr i8, ptr %t, i32 -8
  %3 = ptrtoint ptr %num_pressed_keys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pressed_keys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1439.not = icmp eq i32 %4, 0
  br i1 %cmp1439.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idev = getelementptr i8, ptr %t, i32 -604
  %current_keys = getelementptr i8, ptr %t, i32 -24
  br label %for.body

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scancodes.i) #6
  %5 = ptrtoint ptr %scancodes.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %scancodes.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keycodes.i) #6
  %use_fn_map.i = getelementptr i8, ptr %t, i32 -540
  %6 = call ptr @memset(ptr %keycodes.i, i32 255, i32 16)
  br label %for.body.i

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %if.then
  %val.0170.i = phi i32 [ 0, %if.then ], [ %shr18.i, %if.end17.i.for.body.i_crit_edge ]
  %i.0168.i = phi i32 [ 0, %if.then ], [ %inc19.i, %if.end17.i.for.body.i_crit_edge ]
  %num_down.0166.i = phi i32 [ 0, %if.then ], [ %num_down.2.i, %if.end17.i.for.body.i_crit_edge ]
  %fn_keypress.0.off0165.i = phi i1 [ false, %if.then ], [ %fn_keypress.2.off0.i, %if.end17.i.for.body.i_crit_edge ]
  %rem.i = and i32 %i.0168.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  br i1 %cmp1.i, label %if.then.i34, label %for.body.i.if.end.i35_crit_edge

for.body.i.if.end.i35_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i35

if.then.i34:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 48
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %i.0168.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !137
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  br label %if.end.i35

if.end.i35:                                       ; preds = %if.then.i34, %for.body.i.if.end.i35_crit_edge
  %val.1.i = phi i32 [ %10, %if.then.i34 ], [ %val.0170.i, %for.body.i.if.end.i35_crit_edge ]
  %and.i = and i32 %val.1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i35.if.end17.i_crit_edge, label %if.then4.i

if.end.i35.if.end17.i_crit_edge:                  ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then4.i:                                       ; preds = %if.end.i35
  %11 = trunc i32 %val.1.i to i8
  %conv.i = and i8 %11, 127
  %arrayidx.i = getelementptr [8 x i8], ptr %scancodes.i, i32 0, i32 %num_down.0166.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %conv.i to i32
  %arrayidx7.i = getelementptr %struct.tegra_kbc, ptr %add.ptr, i32 0, i32 16, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx7.i, align 2
  %arrayidx8.i = getelementptr [8 x i16], ptr %keycodes.i, i32 0, i32 %num_down.0166.i
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 464, i16 %14)
  %cmp11.i = icmp eq i16 %14, 464
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.then4.i.if.else.i36_crit_edge

if.then4.i.if.else.i36_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i36

land.lhs.true.i:                                  ; preds = %if.then4.i
  %16 = ptrtoint ptr %use_fn_map.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_fn_map.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not.i = icmp eq i8 %17, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.else.i36_crit_edge, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

land.lhs.true.i.if.else.i36_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i36

if.else.i36:                                      ; preds = %land.lhs.true.i.if.else.i36_crit_edge, %if.then4.i.if.else.i36_crit_edge
  %inc.i = add i32 %num_down.0166.i, 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i36, %land.lhs.true.i.if.end17.i_crit_edge, %if.end.i35.if.end17.i_crit_edge
  %fn_keypress.2.off0.i = phi i1 [ %fn_keypress.0.off0165.i, %if.end.i35.if.end17.i_crit_edge ], [ %fn_keypress.0.off0165.i, %if.else.i36 ], [ true, %land.lhs.true.i.if.end17.i_crit_edge ]
  %num_down.2.i = phi i32 [ %num_down.0166.i, %if.end.i35.if.end17.i_crit_edge ], [ %inc.i, %if.else.i36 ], [ %num_down.0166.i, %land.lhs.true.i.if.end17.i_crit_edge ]
  %shr18.i = lshr i32 %val.1.i, 8
  %inc19.i = add nuw nsw i32 %i.0168.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end17.i
  %use_ghost_filter.i = getelementptr i8, ptr %t, i32 -539
  %18 = ptrtoint ptr %use_ghost_filter.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use_ghost_filter.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not.i = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_down.2.i)
  %cmp23.i = icmp ugt i32 %num_down.2.i, 2
  %or.cond.i = select i1 %tobool20.not.i, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %for.end.i.for.body29.i_crit_edge, label %for.end.i.if.end71.i_crit_edge

for.end.i.if.end71.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i

for.end.i.for.body29.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body29.i

for.cond26.loopexit.i:                            ; preds = %for.body42.i.for.cond26.loopexit.i_crit_edge, %for.body29.i.for.cond26.loopexit.i_crit_edge
  %key_in_same_col.1.lcssa.i = phi i8 [ %key_in_same_col.0177.i, %for.body29.i.for.cond26.loopexit.i_crit_edge ], [ %spec.select.i, %for.body42.i.for.cond26.loopexit.i_crit_edge ]
  %key_in_same_row.1.lcssa.i = phi i8 [ %key_in_same_row.0178.i, %for.body29.i.for.cond26.loopexit.i_crit_edge ], [ %key_in_same_row.2.i, %for.body42.i.for.cond26.loopexit.i_crit_edge ]
  %exitcond187.not.i = icmp eq i32 %add38.i, %num_down.2.i
  br i1 %exitcond187.not.i, label %if.end71.loopexit.i, label %for.cond26.loopexit.i.for.body29.i_crit_edge

for.cond26.loopexit.i.for.body29.i_crit_edge:     ; preds = %for.cond26.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.cond26.loopexit.i.for.body29.i_crit_edge, %for.end.i.for.body29.i_crit_edge
  %i.1179.i = phi i32 [ %add38.i, %for.cond26.loopexit.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %key_in_same_row.0178.i = phi i8 [ %key_in_same_row.1.lcssa.i, %for.cond26.loopexit.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %key_in_same_col.0177.i = phi i8 [ %key_in_same_col.1.lcssa.i, %for.cond26.loopexit.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %arrayidx30.i = getelementptr [8 x i8], ptr %scancodes.i, i32 0, i32 %i.1179.i
  %20 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx30.i, align 1
  %add38.i = add nuw i32 %i.1179.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %num_down.2.i)
  %cmp40171.i = icmp ult i32 %add38.i, %num_down.2.i
  br i1 %cmp40171.i, label %for.body29.i.for.body42.i_crit_edge, label %for.body29.i.for.cond26.loopexit.i_crit_edge

for.body29.i.for.cond26.loopexit.i_crit_edge:     ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond26.loopexit.i

for.body29.i.for.body42.i_crit_edge:              ; preds = %for.body29.i
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.body29.i.for.body42.i_crit_edge
  %j.0174.i = phi i32 [ %inc66.i, %for.body42.i.for.body42.i_crit_edge ], [ %add38.i, %for.body29.i.for.body42.i_crit_edge ]
  %key_in_same_row.1173.i = phi i8 [ %key_in_same_row.2.i, %for.body42.i.for.body42.i_crit_edge ], [ %key_in_same_row.0178.i, %for.body29.i.for.body42.i_crit_edge ]
  %key_in_same_col.1172.i = phi i8 [ %spec.select.i, %for.body42.i.for.body42.i_crit_edge ], [ %key_in_same_col.0177.i, %for.body29.i.for.body42.i_crit_edge ]
  %arrayidx44.i = getelementptr [8 x i8], ptr %scancodes.i, i32 0, i32 %j.0174.i
  %22 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44.i, align 1
  %24 = xor i8 %23, %21
  %25 = and i8 %24, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp55.i = icmp eq i8 %25, 0
  %spec.select.i = select i1 %cmp55.i, i8 1, i8 %key_in_same_col.1172.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %24)
  %cmp61.i = icmp ult i8 %24, 8
  %key_in_same_row.2.i = select i1 %cmp61.i, i8 1, i8 %key_in_same_row.1173.i
  %inc66.i = add nuw i32 %j.0174.i, 1
  %exitcond186.not.i = icmp eq i32 %inc66.i, %num_down.2.i
  br i1 %exitcond186.not.i, label %for.body42.i.for.cond26.loopexit.i_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42.i

for.body42.i.for.cond26.loopexit.i_crit_edge:     ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond26.loopexit.i

if.end71.loopexit.i:                              ; preds = %for.cond26.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = and i8 %key_in_same_col.1.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %extract.t.le.i = icmp ne i8 %26, 0
  %27 = and i8 %key_in_same_row.1.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %extract.t159.le.i = icmp ne i8 %27, 0
  %phi.sel.i = select i1 %extract.t.le.i, i1 %extract.t159.le.i, i1 false
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end71.loopexit.i, %for.end.i.if.end71.i_crit_edge
  %key_in_same_col.3.off0.i = phi i1 [ false, %for.end.i.if.end71.i_crit_edge ], [ %phi.sel.i, %if.end71.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_down.2.i)
  %cmp75182.i = icmp ne i32 %num_down.2.i, 0
  %or.cond184.i = select i1 %fn_keypress.2.off0.i, i1 %cmp75182.i, i1 false
  br i1 %or.cond184.i, label %for.body77.lr.ph.i, label %if.end71.i.if.end90.i_crit_edge

if.end71.i.if.end90.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

for.body77.lr.ph.i:                               ; preds = %if.end71.i
  %max_keys.i = getelementptr i8, ptr %t, i32 60
  %28 = ptrtoint ptr %max_keys.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_keys.i, align 4
  %30 = trunc i32 %29 to i8
  br label %for.body77.i

for.body77.i:                                     ; preds = %for.body77.i.for.body77.i_crit_edge, %for.body77.lr.ph.i
  %i.2183.i = phi i32 [ 0, %for.body77.lr.ph.i ], [ %inc88.i, %for.body77.i.for.body77.i_crit_edge ]
  %arrayidx78.i = getelementptr [8 x i8], ptr %scancodes.i, i32 0, i32 %i.2183.i
  %31 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx78.i, align 1
  %conv81.i = add i8 %32, %30
  store i8 %conv81.i, ptr %arrayidx78.i, align 1
  %idxprom84.i = zext i8 %conv81.i to i32
  %arrayidx85.i = getelementptr %struct.tegra_kbc, ptr %add.ptr, i32 0, i32 16, i32 %idxprom84.i
  %33 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx85.i, align 2
  %arrayidx86.i = getelementptr [8 x i16], ptr %keycodes.i, i32 0, i32 %i.2183.i
  %35 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx86.i, align 2
  %inc88.i = add nuw i32 %i.2183.i, 1
  %exitcond188.not.i = icmp eq i32 %inc88.i, %num_down.2.i
  br i1 %exitcond188.not.i, label %for.body77.i.if.end90.i_crit_edge, label %for.body77.i.for.body77.i_crit_edge

for.body77.i.for.body77.i_crit_edge:              ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77.i

for.body77.i.if.end90.i_crit_edge:                ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.end90.i:                                       ; preds = %for.body77.i.if.end90.i_crit_edge, %if.end71.i.if.end90.i_crit_edge
  br i1 %key_in_same_col.3.off0.i, label %if.end90.i.tegra_kbc_report_keys.exit_crit_edge, label %if.end97.i

if.end90.i.tegra_kbc_report_keys.exit_crit_edge:  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_report_keys.exit

if.end97.i:                                       ; preds = %if.end90.i
  %idev.i = getelementptr i8, ptr %t, i32 -604
  %36 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %idev.i, align 4
  %current_keys.i = getelementptr i8, ptr %t, i32 -24
  %num_pressed_keys.i = getelementptr i8, ptr %t, i32 -8
  %38 = ptrtoint ptr %num_pressed_keys.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_pressed_keys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp28.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp28.not.i.i, label %if.end97.i.tegra_kbc_report_released_keys.exit.i_crit_edge, label %for.cond1.preheader.lr.ph.i.i

if.end97.i.tegra_kbc_report_released_keys.exit.i_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_report_released_keys.exit.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_down.2.i)
  %cmp225.not.i.i = icmp eq i32 %num_down.2.i, 0
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %inc15.i.i, %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge ]
  br i1 %cmp225.not.i.i, label %for.cond1.preheader.i.i.for.end.i.i_crit_edge, label %for.body3.lr.ph.i.i

for.cond1.preheader.i.i.for.end.i.i_crit_edge:    ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body3.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %arrayidx.i.i = getelementptr i16, ptr %current_keys.i, i32 %i.029.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i.i, align 2
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %j.026.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr i16, ptr %keycodes.i, i32 %j.026.i.i
  %42 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp6.i.i = icmp eq i16 %41, %43
  br i1 %cmp6.i.i, label %for.body3.i.i.for.end.i.i_crit_edge, label %for.inc.i.i

for.body3.i.i.for.end.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body3.i.i
  %inc.i.i = add nuw i32 %j.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %num_down.2.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then10.i.i_crit_edge, label %for.inc.i.i.for.body3.i.i_crit_edge

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i.i

for.inc.i.i.if.then10.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

for.end.i.i:                                      ; preds = %for.body3.i.i.for.end.i.i_crit_edge, %for.cond1.preheader.i.i.for.end.i.i_crit_edge
  %j.0.lcssa.i.i = phi i32 [ 0, %for.cond1.preheader.i.i.for.end.i.i_crit_edge ], [ %j.026.i.i, %for.body3.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i.i, i32 %num_down.2.i)
  %cmp8.i.i = icmp eq i32 %j.0.lcssa.i.i, %num_down.2.i
  br i1 %cmp8.i.i, label %for.end.i.i.if.then10.i.i_crit_edge, label %for.end.i.i.for.inc14.i.i_crit_edge

for.end.i.i.for.inc14.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc14.i.i

for.end.i.i.if.then10.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %for.end.i.i.if.then10.i.i_crit_edge, %for.inc.i.i.if.then10.i.i_crit_edge
  %arrayidx11.i.i = getelementptr i16, ptr %current_keys.i, i32 %i.029.i.i
  %44 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx11.i.i, align 2
  %conv12.i.i = zext i16 %45 to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef %conv12.i.i, i32 noundef 0) #6
  br label %for.inc14.i.i

for.inc14.i.i:                                    ; preds = %if.then10.i.i, %for.end.i.i.for.inc14.i.i_crit_edge
  %inc15.i.i = add nuw i32 %i.029.i.i, 1
  %exitcond31.not.i.i = icmp eq i32 %inc15.i.i, %39
  br i1 %exitcond31.not.i.i, label %for.inc14.i.i.tegra_kbc_report_released_keys.exit.i_crit_edge, label %for.inc14.i.i.for.cond1.preheader.i.i_crit_edge

for.inc14.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.inc14.i.i.tegra_kbc_report_released_keys.exit.i_crit_edge: ; preds = %for.inc14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_report_released_keys.exit.i

tegra_kbc_report_released_keys.exit.i:            ; preds = %for.inc14.i.i.tegra_kbc_report_released_keys.exit.i_crit_edge, %if.end97.i.tegra_kbc_report_released_keys.exit.i_crit_edge
  %46 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %idev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_down.2.i)
  %cmp7.not.i.i = icmp eq i32 %num_down.2.i, 0
  br i1 %cmp7.not.i.i, label %tegra_kbc_report_released_keys.exit.i.tegra_kbc_report_pressed_keys.exit.i_crit_edge, label %tegra_kbc_report_released_keys.exit.i.for.body.i.i_crit_edge

tegra_kbc_report_released_keys.exit.i.for.body.i.i_crit_edge: ; preds = %tegra_kbc_report_released_keys.exit.i
  br label %for.body.i.i

tegra_kbc_report_released_keys.exit.i.tegra_kbc_report_pressed_keys.exit.i_crit_edge: ; preds = %tegra_kbc_report_released_keys.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_report_pressed_keys.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %tegra_kbc_report_released_keys.exit.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i161.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %tegra_kbc_report_released_keys.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i160.i = getelementptr i8, ptr %scancodes.i, i32 %i.08.i.i
  %48 = ptrtoint ptr %arrayidx.i160.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i160.i, align 1
  %conv.i.i = zext i8 %49 to i32
  tail call void @input_event(ptr noundef %47, i32 noundef 4, i32 noundef 4, i32 noundef %conv.i.i) #6
  %arrayidx1.i.i = getelementptr i16, ptr %keycodes.i, i32 %i.08.i.i
  %50 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx1.i.i, align 2
  %conv2.i.i = zext i16 %51 to i32
  tail call void @input_event(ptr noundef %47, i32 noundef 1, i32 noundef %conv2.i.i, i32 noundef 1) #6
  %inc.i161.i = add nuw i32 %i.08.i.i, 1
  %exitcond.not.i162.i = icmp eq i32 %inc.i161.i, %num_down.2.i
  br i1 %exitcond.not.i162.i, label %for.body.i.i.tegra_kbc_report_pressed_keys.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.tegra_kbc_report_pressed_keys.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_report_pressed_keys.exit.i

tegra_kbc_report_pressed_keys.exit.i:             ; preds = %for.body.i.i.tegra_kbc_report_pressed_keys.exit.i_crit_edge, %tegra_kbc_report_released_keys.exit.i.tegra_kbc_report_pressed_keys.exit.i_crit_edge
  %52 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %idev.i, align 4
  tail call void @input_event(ptr noundef %53, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %54 = call ptr @memcpy(ptr %current_keys.i, ptr %keycodes.i, i32 16)
  %55 = ptrtoint ptr %num_pressed_keys.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %num_down.2.i, ptr %num_pressed_keys.i, align 4
  br label %tegra_kbc_report_keys.exit

tegra_kbc_report_keys.exit:                       ; preds = %tegra_kbc_report_pressed_keys.exit.i, %if.end90.i.tegra_kbc_report_keys.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keycodes.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scancodes.i) #6
  %.mask = and i32 %2, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %.mask)
  %cmp10 = icmp eq i32 %.mask, 268435456
  br i1 %cmp10, label %cond.true, label %tegra_kbc_report_keys.exit.cond.end_crit_edge

tegra_kbc_report_keys.exit.cond.end_crit_edge:    ; preds = %tegra_kbc_report_keys.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %tegra_kbc_report_keys.exit
  call void @__sanitizer_cov_trace_pc() #8
  %repoll_dly = getelementptr i8, ptr %t, i32 -552
  %56 = ptrtoint ptr %repoll_dly to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %repoll_dly, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %tegra_kbc_report_keys.exit.cond.end_crit_edge
  %cond = phi i32 [ %57, %cond.true ], [ 1, %tegra_kbc_report_keys.exit.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond) #6
  %add = add i32 %call2.i, %58
  %call13 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %59 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %idev, align 4
  %arrayidx = getelementptr [8 x i16], ptr %current_keys, i32 0, i32 %i.040
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx, align 2
  %conv16 = zext i16 %62 to i32
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef %conv16, i32 noundef 0) #6
  %inc = add nuw i32 %i.040, 1
  %63 = ptrtoint ptr %num_pressed_keys to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_pressed_keys, align 4
  %cmp14 = icmp ult i32 %inc, %64
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %idev17 = getelementptr i8, ptr %t, i32 -604
  %65 = ptrtoint ptr %idev17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %idev17, align 4
  tail call void @input_event(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %67 = ptrtoint ptr %num_pressed_keys to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %num_pressed_keys, align 4
  %68 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %71 = or i32 %70, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_kbc_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @tegra_kbc_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_kbc_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %mmio.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !142
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %irq.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %9) #6
  %timer.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 20
  %call14.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #6
  %clk.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_kbc_isr(i32 noundef %irq, ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_kbc, ptr %args, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mmio = getelementptr inbounds %struct.tegra_kbc, ptr %args, i32 0, i32 6
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !137
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %2) #6, !srcloc !142
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %9 = and i32 %8, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !142
  %timer = getelementptr inbounds %struct.tegra_kbc, ptr %args, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %cp_dly_jiffies = getelementptr inbounds %struct.tegra_kbc, ptr %args, i32 0, i32 11
  %13 = ptrtoint ptr %cp_dly_jiffies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cp_dly_jiffies, align 4
  %add = add i32 %14, %12
  %call13 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  br label %if.end17

if.else:                                          ; preds = %entry
  %and14 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else.if.end17_crit_edge, label %if.then16

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %keypress_caused_wake = getelementptr inbounds %struct.tegra_kbc, ptr %args, i32 0, i32 15
  %15 = ptrtoint ptr %keypress_caused_wake to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %keypress_caused_wake, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.else.if.end17_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_kbc_start(ptr nocapture noundef %kbc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 21
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %if.end.i78, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i78:                                       ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i78
  %rst = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 22
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #6
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %6) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #6
  %mmio.i = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %do.body.i.for.body.i_crit_edge, %if.end
  %i.062.i = phi i32 [ 0, %if.end ], [ %inc.i, %do.body.i.for.body.i_crit_edge ]
  %i.062.i.frozen = freeze i32 %i.062.i
  %div.i = udiv i32 %i.062.i.frozen, 6
  %8 = mul i32 %div.i, 6
  %rem.i.decomposed = sub i32 %i.062.i.frozen, %8
  %mul.i = mul nuw nsw i32 %rem.i.decomposed, 5
  %rem1.i = shl i32 %i.062.i, 2
  %mul2.i = and i32 %rem1.i, 28
  %shl.i = shl nuw nsw i32 31, %mul.i
  %shl3.i = shl nuw i32 15, %mul2.i
  %mul4.i = shl nuw nsw i32 %div.i, 2
  %add.i = add nuw i32 %mul4.i, 8
  %9 = lshr i32 %i.062.i, 1
  %mul6.i = and i32 %9, 1073741820
  %add7.i = add nuw nsw i32 %mul6.i, 24
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !137
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %15, i32 %add7.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !137
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %13, %neg.i
  %neg16.i = xor i32 %shl3.i, -1
  %and17.i = and i32 %17, %neg16.i
  %arrayidx.i = getelementptr %struct.tegra_kbc, ptr %kbc, i32 0, i32 3, i32 %i.062.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %19, label %for.body.i.do.body.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb23.i
  ]

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %num.i = getelementptr %struct.tegra_kbc, ptr %kbc, i32 0, i32 3, i32 %i.062.i, i32 1
  %21 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num.i, align 4
  %conv.i = zext i8 %22 to i32
  %shl20.i = shl nuw nsw i32 %conv.i, 1
  %or.i = or i32 %shl20.i, 1
  %shl21.i = shl i32 %or.i, %mul.i
  %or22.i = or i32 %shl21.i, %and.i
  br label %do.body.i

sw.bb23.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %num26.i = getelementptr %struct.tegra_kbc, ptr %kbc, i32 0, i32 3, i32 %i.062.i, i32 1
  %23 = ptrtoint ptr %num26.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num26.i, align 4
  %conv27.i = zext i8 %24 to i32
  %shl28.i = shl nuw nsw i32 %conv27.i, 1
  %or29.i = or i32 %shl28.i, 1
  %shl30.i = shl i32 %or29.i, %mul2.i
  %or31.i = or i32 %shl30.i, %and17.i
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb23.i, %sw.bb.i, %for.body.i.do.body.i_crit_edge
  %row_cfg.0.i = phi i32 [ %and.i, %for.body.i.do.body.i_crit_edge ], [ %and.i, %sw.bb23.i ], [ %or22.i, %sw.bb.i ]
  %col_cfg.0.i = phi i32 [ %and17.i, %for.body.i.do.body.i_crit_edge ], [ %or31.i, %sw.bb23.i ], [ %and17.i, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %row_cfg.0.i) #6
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %27, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %25) #6, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %col_cfg.0.i) #6
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %30, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %28) #6, !srcloc !142
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %tegra_kbc_config_pins.exit, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

tegra_kbc_config_pins.exit:                       ; preds = %do.body.i
  %hw_support.i = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 23
  %31 = ptrtoint ptr %hw_support.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_support.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp7.i = icmp sgt i32 %34, 0
  br i1 %cmp7.i, label %tegra_kbc_config_pins.exit.do.body.i85_crit_edge, label %tegra_kbc_config_pins.exit.tegra_kbc_setup_wakekeys.exit_crit_edge

tegra_kbc_config_pins.exit.tegra_kbc_setup_wakekeys.exit_crit_edge: ; preds = %tegra_kbc_config_pins.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_setup_wakekeys.exit

tegra_kbc_config_pins.exit.do.body.i85_crit_edge: ; preds = %tegra_kbc_config_pins.exit
  br label %do.body.i85

do.body.i85:                                      ; preds = %do.body.i85.do.body.i85_crit_edge, %tegra_kbc_config_pins.exit.do.body.i85_crit_edge
  %i.08.i = phi i32 [ %inc.i83, %do.body.i85.do.body.i85_crit_edge ], [ 0, %tegra_kbc_config_pins.exit.do.body.i85_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %36, i32 56
  %mul.i82 = shl i32 %i.08.i, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i81, i32 %mul.i82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !142
  %inc.i83 = add nuw nsw i32 %i.08.i, 1
  %37 = ptrtoint ptr %hw_support.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_support.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %cmp.i84 = icmp slt i32 %inc.i83, %40
  br i1 %cmp.i84, label %do.body.i85.do.body.i85_crit_edge, label %do.body.i85.tegra_kbc_setup_wakekeys.exit_crit_edge

do.body.i85.tegra_kbc_setup_wakekeys.exit_crit_edge: ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_setup_wakekeys.exit

do.body.i85.do.body.i85_crit_edge:                ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i85

tegra_kbc_setup_wakekeys.exit:                    ; preds = %do.body.i85.tegra_kbc_setup_wakekeys.exit_crit_edge, %tegra_kbc_config_pins.exit.tegra_kbc_setup_wakekeys.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %repeat_cnt = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 2
  %41 = ptrtoint ptr %repeat_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %repeat_cnt, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %43) #6, !srcloc !142
  %debounce_cnt4 = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 1
  %46 = ptrtoint ptr %debounce_cnt4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debounce_cnt4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %47)
  %cmp = icmp ult i32 %47, 1023
  %phi.bo = shl i32 %47, 4
  %phi.bo76 = or i32 %phi.bo, 16393
  %cond = select i1 %cmp, i32 %phi.bo76, i32 32761
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #6, !srcloc !142
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 4
  %add.ptr13 = getelementptr i8, ptr %52, i32 40
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %54 = and i32 %53, -61696
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %mul = shl nuw nsw i32 %55, 5
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #6
  %cp_dly_jiffies = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 11
  %56 = ptrtoint ptr %cp_dly_jiffies to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call3.i, ptr %cp_dly_jiffies, align 4
  %num_pressed_keys = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 18
  %57 = ptrtoint ptr %num_pressed_keys to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %num_pressed_keys, align 4
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 4
  %add.ptr2188 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2188) #6, !srcloc !137
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %61)
  %tobool25.not89 = icmp ult i32 %61, 16
  br i1 %tobool25.not89, label %tegra_kbc_setup_wakekeys.exit.do.body42_crit_edge, label %tegra_kbc_setup_wakekeys.exit.if.end27_crit_edge

tegra_kbc_setup_wakekeys.exit.if.end27_crit_edge: ; preds = %tegra_kbc_setup_wakekeys.exit
  br label %if.end27

tegra_kbc_setup_wakekeys.exit.do.body42_crit_edge: ; preds = %tegra_kbc_setup_wakekeys.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

if.end27:                                         ; preds = %if.end27.if.end27_crit_edge, %tegra_kbc_setup_wakekeys.exit.if.end27_crit_edge
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 4
  %add.ptr31 = getelementptr i8, ptr %63, i32 48
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i, align 4
  %add.ptr38 = getelementptr i8, ptr %66, i32 52
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr21 = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !137
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %tobool25.not = icmp ult i32 %71, 16
  br i1 %tobool25.not, label %if.end27.do.body42_crit_edge, label %if.end27.if.end27_crit_edge

if.end27.if.end27_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27.do.body42_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

do.body42:                                        ; preds = %if.end27.do.body42_crit_edge, %tegra_kbc_setup_wakekeys.exit.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i, align 4
  %add.ptr46 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 117440512) #6, !srcloc !142
  %irq = getelementptr inbounds %struct.tegra_kbc, ptr %kbc, i32 0, i32 8
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %75) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body42 ], [ %call1.i, %if.then3.i ], [ %call.i77, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_kbc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %idev = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #6
  %timer = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 20
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  %mmio.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %12 = and i32 %11, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr4 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 117440512) #6, !srcloc !142
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr6 = getelementptr i8, ptr %18, i32 36
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !137
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  %cp_to_wkup_dly = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %cp_to_wkup_dly to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cp_to_wkup_dly, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #6, !srcloc !142
  %hw_support.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %hw_support.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_support.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp7.i = icmp sgt i32 %27, 0
  br i1 %cmp7.i, label %do.body.lr.ph.i, label %if.then.tegra_kbc_setup_wakekeys.exit_crit_edge

if.then.tegra_kbc_setup_wakekeys.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_setup_wakekeys.exit

do.body.lr.ph.i:                                  ; preds = %if.then
  %wakeup.i40 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %wakeup.i40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wakeup.i40, align 4, !range !136
  %30 = xor i8 %29, 1
  %31 = zext i8 %30 to i32
  %phi.cast.i = sub nsw i32 0, %31
  %32 = tail call i32 @llvm.bswap.i32(i32 %phi.cast.i) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 56
  %mul.i = shl i32 %i.08.i, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %32) #6, !srcloc !142
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %35 = ptrtoint ptr %hw_support.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_support.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %cmp.i = icmp slt i32 %inc.i, %38
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.tegra_kbc_setup_wakekeys.exit_crit_edge

do.body.i.tegra_kbc_setup_wakekeys.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_setup_wakekeys.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

tegra_kbc_setup_wakekeys.exit:                    ; preds = %do.body.i.tegra_kbc_setup_wakekeys.exit_crit_edge, %if.then.tegra_kbc_setup_wakekeys.exit_crit_edge
  tail call void @msleep(i32 noundef 30) #6
  %keypress_caused_wake = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 15
  %39 = ptrtoint ptr %keypress_caused_wake to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %keypress_caused_wake, align 2
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %43 = or i32 %42, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !142
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %47) #6
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %49, i32 noundef 1) #6
  br label %if.end21

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %50 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %idev, align 4
  %call19 = tail call zeroext i1 @input_device_enabled(ptr noundef %51) #6
  br i1 %call19, label %if.then20, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %mmio.i44 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %mmio.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i44, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %55 = and i32 %54, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %mmio.i44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #6, !srcloc !142
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %irq.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %59) #6
  %timer.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 20
  %call14.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #6
  %clk.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 21
  %60 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %61) #6
  tail call void @clk_unprepare(ptr noundef %61) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else.if.end21_crit_edge, %tegra_kbc_setup_wakekeys.exit
  %62 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %idev, align 4
  %mutex23 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex23) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_kbc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %idev = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  %hw_support.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %hw_support.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_support.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.i = icmp sgt i32 %12, 0
  br i1 %cmp7.i, label %do.body.lr.ph.i, label %if.then.tegra_kbc_setup_wakekeys.exit_crit_edge

if.then.tegra_kbc_setup_wakekeys.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_setup_wakekeys.exit

do.body.lr.ph.i:                                  ; preds = %if.then
  %mmio.i = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 56
  %mul.i = shl i32 %i.08.i, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !142
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %15 = ptrtoint ptr %hw_support.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_support.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.tegra_kbc_setup_wakekeys.exit_crit_edge

do.body.i.tegra_kbc_setup_wakekeys.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_kbc_setup_wakekeys.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

tegra_kbc_setup_wakekeys.exit:                    ; preds = %do.body.i.tegra_kbc_setup_wakekeys.exit_crit_edge, %if.then.tegra_kbc_setup_wakekeys.exit_crit_edge
  %mmio.i39 = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %mmio.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i39, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %22 = and i32 %21, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %mmio.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %cp_to_wkup_dly = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %cp_to_wkup_dly to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cp_to_wkup_dly, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %mmio.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i39, align 4
  %add.ptr4 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %27) #6, !srcloc !142
  %30 = ptrtoint ptr %mmio.i39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i39, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %33 = or i32 %32, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %mmio.i39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #6, !srcloc !142
  %keypress_caused_wake = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %keypress_caused_wake to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %keypress_caused_wake, align 2, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %tegra_kbc_setup_wakekeys.exit.if.end18_crit_edge, label %land.lhs.true

tegra_kbc_setup_wakekeys.exit.if.end18_crit_edge: ; preds = %tegra_kbc_setup_wakekeys.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %tegra_kbc_setup_wakekeys.exit
  %wakeup_key = getelementptr inbounds %struct.tegra_kbc, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %wakeup_key to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wakeup_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool5.not = icmp eq i32 %39, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end18_crit_edge, label %if.then6

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %41, i32 noundef 1, i32 noundef %39, i32 noundef 1) #6
  %42 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %44 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %idev, align 4
  %46 = ptrtoint ptr %wakeup_key to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wakeup_key, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 1, i32 noundef %47, i32 noundef 0) #6
  %48 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end18

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %50 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %idev, align 4
  %call14 = tail call zeroext i1 @input_device_enabled(ptr noundef %51) #6
  br i1 %call14, label %if.then15, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call fastcc i32 @tegra_kbc_start(ptr noundef %1)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else.if.end18_crit_edge, %if.then6, %land.lhs.true.if.end18_crit_edge, %tegra_kbc_setup_wakekeys.exit.if.end18_crit_edge
  %err.0 = phi i32 [ 0, %if.then6 ], [ 0, %land.lhs.true.if.end18_crit_edge ], [ 0, %tegra_kbc_setup_wakekeys.exit.if.end18_crit_edge ], [ %call16, %if.then15 ], [ 0, %if.else.if.end18_crit_edge ]
  %52 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %idev, align 4
  %mutex20 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex20) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_tegra_kbc__231_817_tegra_kbc_driver_init6, !1, !"__initcall__kmod_tegra_kbc__231_817_tegra_kbc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 817, i32 1}
!2 = !{ptr @__exitcall_tegra_kbc_driver_exit, !1, !"__exitcall_tegra_kbc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file232, !4, !"__UNIQUE_ID_file232", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 819, i32 1}
!5 = !{ptr @__UNIQUE_ID_license233, !4, !"__UNIQUE_ID_license233", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author234, !7, !"__UNIQUE_ID_author234", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 820, i32 1}
!8 = !{ptr @__UNIQUE_ID_description235, !9, !"__UNIQUE_ID_description235", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 821, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias236, !11, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 822, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 812, i32 11}
!14 = !{ptr @tegra_kbc_driver, !15, !"tegra_kbc_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 809, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 613, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_kbc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_kbc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tegra_kbc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 624, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 639, i32 3}
!29 = !{ptr @tegra_kbc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_kbc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @tegra_kbc_probe.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 643, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 652, i32 3}
!36 = !{ptr @tegra_kbc_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_kbc_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 656, i32 48}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 658, i32 3}
!42 = !{ptr @tegra_kbc_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_kbc_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 687, i32 3}
!46 = !{ptr @tegra_kbc_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tegra_kbc_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 700, i32 3}
!50 = !{ptr @tegra_kbc_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_kbc_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 706, i32 3}
!54 = !{ptr @tegra_kbc_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_kbc_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 501, i32 32}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 504, i32 32}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 507, i32 27}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 510, i32 32}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 511, i32 32}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 514, i32 27}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 515, i32 3}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tegra_kbc_parse_dt._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tegra_kbc_parse_dt._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 520, i32 27}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 521, i32 3}
!77 = !{ptr @tegra_kbc_parse_dt._entry.37, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tegra_kbc_parse_dt._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 527, i32 3}
!81 = !{ptr @tegra_kbc_parse_dt._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_kbc_parse_dt._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 533, i32 3}
!85 = !{ptr @tegra_kbc_parse_dt._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tegra_kbc_parse_dt._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 538, i32 27}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 539, i32 3}
!91 = !{ptr @tegra_kbc_parse_dt._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @tegra_kbc_parse_dt._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 544, i32 3}
!95 = !{ptr @tegra_kbc_parse_dt._entry.50, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @tegra_kbc_parse_dt._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 556, i32 3}
!99 = !{ptr @tegra_kbc_parse_dt._entry.53, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @tegra_kbc_parse_dt._entry_ptr.55, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 563, i32 3}
!103 = !{ptr @tegra_kbc_parse_dt._entry.56, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @tegra_kbc_parse_dt._entry_ptr.58, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 458, i32 5}
!107 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @tegra_kbc_check_pin_cfg._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @tegra_kbc_check_pin_cfg._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 468, i32 5}
!112 = !{ptr @tegra_kbc_check_pin_cfg._entry.61, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @tegra_kbc_check_pin_cfg._entry_ptr.63, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 479, i32 4}
!116 = !{ptr @tegra_kbc_check_pin_cfg._entry.64, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @tegra_kbc_check_pin_cfg._entry_ptr.66, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @tegra_kbc_of_match, !119, !"tegra_kbc_of_match", i1 false, i1 false}
!119 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 590, i32 34}
!120 = !{ptr @tegra11_kbc_hw_support, !121, !"tegra11_kbc_hw_support", i1 false, i1 false}
!121 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 585, i32 42}
!122 = !{ptr @tegra20_kbc_hw_support, !123, !"tegra20_kbc_hw_support", i1 false, i1 false}
!123 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 580, i32 42}
!124 = !{ptr @tegra_kbc_pm_ops, !125, !"tegra_kbc_pm_ops", i1 false, i1 false}
!125 = !{!"../drivers/input/keyboard/tegra-kbc.c", i32 807, i32 8}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i8 0, i8 2}
!137 = !{i64 5647239}
!138 = !{i64 2154033601}
!139 = !{i64 2154030648}
!140 = !{i64 2154031185}
!141 = !{i64 2154031419}
!142 = !{i64 5646821}
!143 = !{i64 2154043701}
!144 = !{i64 2154043917}
!145 = !{i64 2154034435}
!146 = !{i64 2154034651}
!147 = !{i64 2154035768}
!148 = !{i64 2154036258}
!149 = !{i64 2154036477}
!150 = !{i64 2154036884}
!151 = !{i64 2154035072}
!152 = !{i64 2154038398}
!153 = !{i64 2154040362}
!154 = !{i64 2154041022}
!155 = !{i64 2154041504}
!156 = !{i64 2154041991}
!157 = !{i64 2154042478}
!158 = !{i64 2154042694}
!159 = !{i64 2154079802}
!160 = !{i64 2154080462}
!161 = !{i64 2154080678}
!162 = !{i64 2154077860}
!163 = !{i64 2154078094}
!164 = !{i64 2154082399}
