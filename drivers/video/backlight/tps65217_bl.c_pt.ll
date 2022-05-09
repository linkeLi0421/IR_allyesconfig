; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/tps65217_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/tps65217_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.tps65217_bl_pdata = type { i32, i32, i32 }
%struct.tps65217_bl = type { ptr, ptr, ptr, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_tps65217_bl__306_322_tps65217_bl_driver_init6 = internal global ptr @tps65217_bl_driver_init, section ".initcall6.init", align 4
@tps65217_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65217_bl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps65217_bl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps65217_bl_driver_exit = internal global ptr @tps65217_bl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [50 x i8] c"tps65217_bl.description=TPS65217 Backlight driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [53 x i8] c"tps65217_bl.file=drivers/video/backlight/tps65217_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [27 x i8] c"tps65217_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [61 x i8] c"tps65217_bl.author=Matthias Kaehlcke <matthias@kaehlcke.net>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tps65217-bl\00", [20 x i8] zeroinitializer }, align 32
@tps65217_bl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65217-bl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tps65217_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @tps65217_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@tps65217_bl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"registration of backlight device failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps65217_bl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/backlight/tps65217_bl.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65217_bl_probe._entry_ptr = internal global ptr @tps65217_bl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backlight\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isel\00", [27 x i8] zeroinitializer }, align 32
@tps65217_bl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid 'isel' value in the device tree\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tps65217_bl_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@tps65217_bl_parse_dt._entry_ptr = internal global ptr @tps65217_bl_parse_dt._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fdim\00", [27 x i8] zeroinitializer }, align 32
@tps65217_bl_parse_dt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid 'fdim' value in the device tree\0A\00", [55 x i8] zeroinitializer }, align 32
@tps65217_bl_parse_dt._entry_ptr.13 = internal global ptr @tps65217_bl_parse_dt._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"default-brightness\00", [45 x i8] zeroinitializer }, align 32
@tps65217_bl_parse_dt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid 'default-brightness' value in the device tree\0A\00", [41 x i8] zeroinitializer }, align 32
@tps65217_bl_parse_dt._entry_ptr.17 = internal global ptr @tps65217_bl_parse_dt._entry.15, section ".printk_index", align 4
@tps65217_bl_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to select ISET1 current level: %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps65217_bl_hw_init\00", [44 x i8] zeroinitializer }, align 32
@tps65217_bl_hw_init._entry_ptr = internal global ptr @tps65217_bl_hw_init._entry, section ".printk_index", align 4
@tps65217_bl_hw_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tps65217_bl\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"selected ISET1 current level\0A\00", [34 x i8] zeroinitializer }, align 32
@tps65217_bl_hw_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to select ISET2 current level: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tps65217_bl_hw_init._entry_ptr.24 = internal global ptr @tps65217_bl_hw_init._entry.22, section ".printk_index", align 4
@tps65217_bl_hw_init.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.19, ptr @.str.3, ptr @.str.25, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"selected ISET2 current level\0A\00", [34 x i8] zeroinitializer }, align 32
@tps65217_bl_hw_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid value for current level: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tps65217_bl_hw_init._entry_ptr.28 = internal global ptr @tps65217_bl_hw_init._entry.26, section ".printk_index", align 4
@tps65217_bl_hw_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to select PWM dimming frequency: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tps65217_bl_hw_init._entry_ptr.31 = internal global ptr @tps65217_bl_hw_init._entry.29, section ".printk_index", align 4
@tps65217_bl_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 65, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable backlight: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps65217_bl_disable\00", [44 x i8] zeroinitializer }, align 32
@tps65217_bl_disable._entry_ptr = internal global ptr @tps65217_bl_disable._entry, section ".printk_index", align 4
@tps65217_bl_disable.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"backlight disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@tps65217_bl_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set brightness level: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tps65217_bl_update_status\00", [38 x i8] zeroinitializer }, align 32
@tps65217_bl_update_status._entry_ptr = internal global ptr @tps65217_bl_update_status._entry, section ".printk_index", align 4
@tps65217_bl_update_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brightness set to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tps65217_bl_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 44, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable backlight: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65217_bl_enable\00", [45 x i8] zeroinitializer }, align 32
@tps65217_bl_enable._entry_ptr = internal global ptr @tps65217_bl_enable._entry, section ".printk_index", align 4
@tps65217_bl_enable.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"backlight enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 200, i64 500, i64 1000]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"tps65217_bl_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 314, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 317, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"tps65217_bl_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 307, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"tps65217_bl_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 104, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 294, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 183, i32 49 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 194, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 197, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 207, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 226, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 233, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 235, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 126, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 132, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 142, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 148, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 153, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 165, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 64, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 71, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 88, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 93, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 43, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [41 x i8] c"../drivers/video/backlight/tps65217_bl.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 50, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_tps65217_bl_driver_exit, ptr @__initcall__kmod_tps65217_bl__306_322_tps65217_bl_driver_init6, ptr @tps65217_bl_disable._entry, ptr @tps65217_bl_disable._entry_ptr, ptr @tps65217_bl_driver_exit, ptr @tps65217_bl_enable._entry, ptr @tps65217_bl_enable._entry_ptr, ptr @tps65217_bl_hw_init._entry, ptr @tps65217_bl_hw_init._entry.22, ptr @tps65217_bl_hw_init._entry.26, ptr @tps65217_bl_hw_init._entry.29, ptr @tps65217_bl_hw_init._entry_ptr, ptr @tps65217_bl_hw_init._entry_ptr.24, ptr @tps65217_bl_hw_init._entry_ptr.28, ptr @tps65217_bl_hw_init._entry_ptr.31, ptr @tps65217_bl_parse_dt._entry, ptr @tps65217_bl_parse_dt._entry.11, ptr @tps65217_bl_parse_dt._entry.15, ptr @tps65217_bl_parse_dt._entry_ptr, ptr @tps65217_bl_parse_dt._entry_ptr.13, ptr @tps65217_bl_parse_dt._entry_ptr.17, ptr @tps65217_bl_probe._entry, ptr @tps65217_bl_probe._entry_ptr, ptr @tps65217_bl_update_status._entry, ptr @tps65217_bl_update_status._entry_ptr, ptr @tps65217_bl_driver, ptr @.str, ptr @tps65217_bl_of_match, ptr @tps65217_bl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_parse_dt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_parse_dt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_hw_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_hw_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_hw_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65217_bl_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_bl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65217_bl_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65217_bl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65217_bl_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_bl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %bl_props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bl_props) #5
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 1
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 4
  %6 = call ptr @memset(ptr %bl_props, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.6) #5
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %tps65217_bl_parse_dt.exit.thread, label %if.end.i

tps65217_bl_parse_dt.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.tps65217_bl_parse_dt.exit.thread63_crit_edge, label %if.end9.i

if.end.i.tps65217_bl_parse_dt.exit.thread63_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65217_bl_parse_dt.exit.thread63

if.end9.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %call.i.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end9.i.if.end19.i_crit_edge

if.end9.i.if.end19.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.end9.i
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %15 = add i32 %14, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %15)
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %if.then12.i.err48.sink.split.i_crit_edge, label %if.end17.i

if.then12.i.err48.sink.split.i_crit_edge:         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err48.sink.split.i

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %call.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end17.i, %if.end9.i.if.end19.i_crit_edge
  %fdim.i = getelementptr inbounds %struct.tps65217_bl_pdata, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %fdim.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %fdim.i, align 4
  %call.i.i72.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i72.i)
  %tobool21.not.i = icmp sgt i32 %call.i.i72.i, -1
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.if.end35.i_crit_edge

if.end19.i.if.end35.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then22.i:                                      ; preds = %if.end19.i
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.then22.i.err48.sink.split.i_crit_edge [
    i32 100, label %if.then22.i.if.end35.sink.split.i_crit_edge
    i32 200, label %sw.bb24.i
    i32 500, label %sw.bb26.i
    i32 1000, label %sw.bb28.i
  ]

if.then22.i.if.end35.sink.split.i_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i

if.then22.i.err48.sink.split.i_crit_edge:         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err48.sink.split.i

sw.bb24.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i

sw.bb26.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i

sw.bb28.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.sink.split.i

if.end35.sink.split.i:                            ; preds = %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %if.then22.i.if.end35.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb24.i ], [ 2, %sw.bb26.i ], [ 3, %sw.bb28.i ], [ 0, %if.then22.i.if.end35.sink.split.i_crit_edge ]
  %22 = ptrtoint ptr %fdim.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %fdim.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.sink.split.i, %if.end19.i.if.end35.i_crit_edge
  %call.i.i73.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i73.i)
  %tobool37.not.i = icmp sgt i32 %call.i.i73.i, -1
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end35.i.tps65217_bl_parse_dt.exit_crit_edge

if.end35.i.tps65217_bl_parse_dt.exit_crit_edge:   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps65217_bl_parse_dt.exit

if.then38.i:                                      ; preds = %if.end35.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %24)
  %cmp39.i = icmp ugt i32 %24, 100
  br i1 %cmp39.i, label %if.then38.i.err48.sink.split.i_crit_edge, label %if.end46.i

if.then38.i.err48.sink.split.i_crit_edge:         ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err48.sink.split.i

if.end46.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  %dft_brightness.i = getelementptr inbounds %struct.tps65217_bl_pdata, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %dft_brightness.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dft_brightness.i, align 4
  br label %tps65217_bl_parse_dt.exit

err48.sink.split.i:                               ; preds = %if.then38.i.err48.sink.split.i_crit_edge, %if.then22.i.err48.sink.split.i_crit_edge, %if.then12.i.err48.sink.split.i_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.8, %if.then12.i.err48.sink.split.i_crit_edge ], [ @.str.12, %if.then22.i.err48.sink.split.i_crit_edge ], [ @.str.16, %if.then38.i.err48.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.16.sink.i) #8
  br label %tps65217_bl_parse_dt.exit.thread63

tps65217_bl_parse_dt.exit.thread63:               ; preds = %err48.sink.split.i, %if.end.i.tps65217_bl_parse_dt.exit.thread63_crit_edge
  %retval.0.ph.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %err48.sink.split.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.tps65217_bl_parse_dt.exit.thread63_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %if.then

tps65217_bl_parse_dt.exit:                        ; preds = %if.end46.i, %if.end35.i.tps65217_bl_parse_dt.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %call2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %tps65217_bl_parse_dt.exit.if.then_crit_edge, label %if.end

tps65217_bl_parse_dt.exit.if.then_crit_edge:      ; preds = %tps65217_bl_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %tps65217_bl_parse_dt.exit.if.then_crit_edge, %tps65217_bl_parse_dt.exit.thread63, %tps65217_bl_parse_dt.exit.thread
  %retval.0.i62 = phi ptr [ inttoptr (i32 -19 to ptr), %tps65217_bl_parse_dt.exit.thread ], [ %call.i.i, %tps65217_bl_parse_dt.exit.if.then_crit_edge ], [ %retval.0.ph.i.ph, %tps65217_bl_parse_dt.exit.thread63 ]
  %26 = ptrtoint ptr %retval.0.i62 to i32
  br label %cleanup

if.end:                                           ; preds = %tps65217_bl_parse_dt.exit
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %call.i, align 4
  %dev10 = getelementptr inbounds %struct.tps65217_bl, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev10, align 4
  %is_enabled = getelementptr inbounds %struct.tps65217_bl, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %is_enabled, align 4
  %call11 = call fastcc i32 @tps65217_bl_hw_init(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %30 = call ptr @memset(ptr %bl_props, i32 0, i32 28)
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %5, align 4
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 100, ptr %4, align 4
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %35 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev10, align 4
  %call16 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %34, ptr noundef %36, ptr noundef nonnull %call.i, ptr noundef nonnull @tps65217_bl_ops, ptr noundef nonnull %bl_props) #5
  %bl = getelementptr inbounds %struct.tps65217_bl, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call16, ptr %bl, align 4
  %cmp.i55 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  %40 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bl, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %dft_brightness = getelementptr inbounds %struct.tps65217_bl_pdata, ptr %call.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %dft_brightness to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dft_brightness, align 4
  %45 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %call16, align 8
  %46 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bl, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %47, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %tobool.not.i56 = icmp eq ptr %49, null
  br i1 %tobool.not.i56, label %if.end23.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end23.backlight_update_status.exit_crit_edge:  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %51, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i57 = call i32 %51(ptr noundef %47) #5
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end23.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #5
  %driver_data.i.i59 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i59, align 4
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %26, %if.then ], [ %42, %do.end ], [ 0, %backlight_update_status.exit ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bl_props) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps65217_bl_hw_init(ptr nocapture noundef %tps65217_bl, ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tps65217_bl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tps65217_bl, align 4
  %call.i = tail call i32 @tps65217_clear_bits(ptr noundef %1, i32 noundef 7, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tps65217_bl_disable.exit.thread80

tps65217_bl_disable.exit.thread80:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %call.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %is_enabled.i = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 3
  %4 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_enabled.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65217_bl_disable.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps65217_bl_hw_init, %tps65217_bl_disable.exit.thread)) #5
          to label %if.end [label %tps65217_bl_disable.exit.thread], !srcloc !105

tps65217_bl_disable.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev7.i = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %5 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65217_bl_disable.__UNIQUE_ID_ddebug302, ptr noundef %6, ptr noundef nonnull @.str.34) #5
  br label %if.end

if.end:                                           ; preds = %tps65217_bl_disable.exit.thread, %if.end.i
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdata, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %8, label %do.end44 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  %10 = ptrtoint ptr %tps65217_bl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tps65217_bl, align 4
  %call1 = tail call i32 @tps65217_clear_bits(ptr noundef %11, i32 noundef 7, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body5, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %call1) #8
  br label %cleanup

do.body5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65217_bl_hw_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps65217_bl_hw_init, %if.then10)) #5
          to label %sw.epilog [label %if.then10], !srcloc !105

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %dev11 = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65217_bl_hw_init.__UNIQUE_ID_ddebug304, ptr noundef %15, ptr noundef nonnull @.str.21) #5
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %16 = ptrtoint ptr %tps65217_bl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tps65217_bl, align 4
  %call17 = tail call i32 @tps65217_set_bits(ptr noundef %17, i32 noundef 7, i32 noundef 4, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body25, label %do.end22

do.end22:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, i32 noundef %call17) #8
  br label %cleanup

do.body25:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65217_bl_hw_init.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps65217_bl_hw_init, %if.then37)) #5
          to label %sw.epilog [label %if.then37], !srcloc !105

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %dev38 = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %20 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65217_bl_hw_init.__UNIQUE_ID_ddebug305, ptr noundef %21, ptr noundef nonnull @.str.25) #5
  br label %sw.epilog

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev45 = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %22 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.27, i32 noundef %8) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then37, %do.body25, %if.then10, %do.body5
  %24 = ptrtoint ptr %tps65217_bl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tps65217_bl, align 4
  %fdim = getelementptr inbounds %struct.tps65217_bl_pdata, ptr %pdata, i32 0, i32 1
  %26 = ptrtoint ptr %fdim to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fdim, align 4
  %call48 = tail call i32 @tps65217_set_bits(ptr noundef %25, i32 noundef 7, i32 noundef 3, i32 noundef %27, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %sw.epilog.cleanup_crit_edge, label %do.end53

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end53:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev54 = getelementptr inbounds %struct.tps65217_bl, ptr %tps65217_bl, i32 0, i32 1
  %28 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.30, i32 noundef %call48) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %sw.epilog.cleanup_crit_edge, %do.end44, %do.end22, %do.end, %tps65217_bl_disable.exit.thread80
  %retval.0 = phi i32 [ -22, %do.end44 ], [ %call17, %do.end22 ], [ %call48, %do.end53 ], [ %call1, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %call.i, %tps65217_bl_disable.exit.thread80 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65217_clear_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65217_set_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65217_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.if.else_crit_edge

lor.lhs.false.i.i.if.else_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %backlight_get_brightness.exit, label %backlight_is_blank.exit.i.if.else_crit_edge

backlight_is_blank.exit.i.if.else_crit_edge:      ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

backlight_get_brightness.exit:                    ; preds = %backlight_is_blank.exit.i
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %backlight_get_brightness.exit.if.else_crit_edge

backlight_get_brightness.exit.if.else_crit_edge:  ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %backlight_get_brightness.exit
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %sub = add nsw i32 %9, -1
  %call2 = tail call i32 @tps65217_reg_write(ptr noundef %11, i32 noundef 8, i32 noundef %sub, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.35, i32 noundef %call2) #8
  br label %cleanup

do.body4:                                         ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65217_bl_update_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps65217_bl_update_status, %if.then9)) #5
          to label %do.end13 [label %if.then9], !srcloc !105

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65217_bl_update_status.__UNIQUE_ID_ddebug303, ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef %9) #5
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body4
  %is_enabled = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_enabled, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.then15, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %do.end13
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @tps65217_set_bits(ptr noundef %19, i32 noundef 7, i32 noundef 8, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.38, i32 noundef %call.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65217_bl_enable.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps65217_bl_update_status, %if.then6.i)) #5
          to label %cleanup [label %if.then6.i], !srcloc !105

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev7.i = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65217_bl_enable.__UNIQUE_ID_ddebug301, ptr noundef %24, ptr noundef nonnull @.str.40) #5
  br label %cleanup

if.else:                                          ; preds = %backlight_get_brightness.exit.if.else_crit_edge, %backlight_is_blank.exit.i.if.else_crit_edge, %lor.lhs.false.i.i.if.else_crit_edge, %entry.if.else_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i34 = tail call i32 @tps65217_clear_bits(ptr noundef %26, i32 noundef 7, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i39, label %do.end.i37

do.end.i37:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i36 = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32, i32 noundef %call.i34) #8
  br label %cleanup

if.end.i39:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %is_enabled.i38 = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %is_enabled.i38 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %is_enabled.i38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps65217_bl_disable.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tps65217_bl_update_status, %if.then6.i41)) #5
          to label %cleanup [label %if.then6.i41], !srcloc !105

if.then6.i41:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #7
  %dev7.i40 = getelementptr inbounds %struct.tps65217_bl, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %dev7.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev7.i40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps65217_bl_disable.__UNIQUE_ID_ddebug302, ptr noundef %31, ptr noundef nonnull @.str.34) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i41, %if.end.i39, %do.end.i37, %if.then6.i, %if.end.i, %do.end.i, %do.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %do.end13.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ 0, %if.end.i ], [ 0, %if.then6.i ], [ %call.i34, %do.end.i37 ], [ 0, %if.end.i39 ], [ 0, %if.then6.i41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65217_reg_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_tps65217_bl__306_322_tps65217_bl_driver_init6, !1, !"__initcall__kmod_tps65217_bl__306_322_tps65217_bl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 322, i32 1}
!2 = !{ptr @__exitcall_tps65217_bl_driver_exit, !1, !"__exitcall_tps65217_bl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 324, i32 1}
!5 = !{ptr @__UNIQUE_ID_file308, !6, !"__UNIQUE_ID_file308", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 325, i32 1}
!7 = !{ptr @__UNIQUE_ID_license309, !6, !"__UNIQUE_ID_license309", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author310, !9, !"__UNIQUE_ID_author310", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 326, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 317, i32 11}
!12 = !{ptr @tps65217_bl_driver, !13, !"tps65217_bl_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 314, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 294, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tps65217_bl_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tps65217_bl_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 183, i32 49}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 194, i32 34}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 197, i32 4}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tps65217_bl_parse_dt._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tps65217_bl_parse_dt._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 207, i32 34}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 226, i32 4}
!35 = !{ptr @tps65217_bl_parse_dt._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tps65217_bl_parse_dt._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 233, i32 34}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 235, i32 4}
!41 = !{ptr @tps65217_bl_parse_dt._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tps65217_bl_parse_dt._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 126, i32 4}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tps65217_bl_hw_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @tps65217_bl_hw_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 132, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tps65217_bl_hw_init.__UNIQUE_ID_ddebug304, !49, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 142, i32 4}
!54 = !{ptr @tps65217_bl_hw_init._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tps65217_bl_hw_init._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 148, i32 3}
!58 = !{ptr @tps65217_bl_hw_init.__UNIQUE_ID_ddebug305, !57, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 153, i32 3}
!61 = !{ptr @tps65217_bl_hw_init._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tps65217_bl_hw_init._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 165, i32 3}
!65 = !{ptr @tps65217_bl_hw_init._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tps65217_bl_hw_init._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 64, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tps65217_bl_disable._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @tps65217_bl_disable._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 71, i32 2}
!74 = !{ptr @tps65217_bl_disable.__UNIQUE_ID_ddebug302, !73, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!75 = !{ptr @tps65217_bl_ops, !76, !"tps65217_bl_ops", i1 false, i1 false}
!76 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 104, i32 35}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 88, i32 4}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tps65217_bl_update_status._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @tps65217_bl_update_status._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 93, i32 3}
!84 = !{ptr @tps65217_bl_update_status.__UNIQUE_ID_ddebug303, !83, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 43, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @tps65217_bl_enable._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @tps65217_bl_enable._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 50, i32 2}
!92 = !{ptr @tps65217_bl_enable.__UNIQUE_ID_ddebug301, !91, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!93 = !{ptr @tps65217_bl_of_match, !94, !"tps65217_bl_of_match", i1 false, i1 false}
!94 = !{!"../drivers/video/backlight/tps65217_bl.c", i32 307, i32 34}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i64 2148697036, i64 2148697041, i64 2148697054, i64 2148697098, i64 2148697132, i64 2148697153}
!106 = !{i8 0, i8 2}
