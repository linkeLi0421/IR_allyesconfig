; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-mlxreg.c_pt.bc'
source_filename = "../drivers/leds/leds-mlxreg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlxreg_led_priv_data = type { ptr, ptr, %struct.mutex }
%struct.mlxreg_core_platform_data = type { ptr, ptr, i32, i32, i32, [32 x i8], i32 }
%struct.mlxreg_core_data = type { [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, %struct.mlxreg_hotplug_device, ptr, i32, i8, i8, i8, i8 }
%struct.mlxreg_hotplug_device = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.mlxreg_led_data = type { ptr, %struct.led_classdev, i8, ptr, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_mlxreg__170_296_mlxreg_led_driver_init6 = internal global ptr @mlxreg_led_driver_init, section ".initcall6.init", align 4
@mlxreg_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxreg_led_probe, ptr @mlxreg_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxreg_led_driver_exit = internal global ptr @mlxreg_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [57 x i8] c"leds_mlxreg.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [51 x i8] c"leds_mlxreg.description=Mellanox LED regmap driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [42 x i8] c"leds_mlxreg.file=drivers/leds/leds-mlxreg\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [33 x i8] c"leds_mlxreg.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [39 x i8] c"leds_mlxreg.alias=platform:leds-mlxreg\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds-mlxreg\00", [20 x i8] zeroinitializer }, align 32
@mlxreg_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get platform data.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlxreg_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-mlxreg.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxreg_led_probe._entry_ptr = internal global ptr @mlxreg_led_probe._entry, section ".printk_index", align 4
@mlxreg_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->access_lock\00", [45 x i8] zeroinitializer }, align 32
@mlxreg_led_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to query capability register\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlxreg_led_config\00", [46 x i8] zeroinitializer }, align 32
@mlxreg_led_config._entry_ptr = internal global ptr @mlxreg_led_config._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"red\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"orange\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amber\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxreg:%s\00", [22 x i8] zeroinitializer }, align 32
@mlxreg_led_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 251, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"label: %s, mask: 0x%02x, offset:0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlxreg_led_config._entry_ptr.16 = internal global ptr @mlxreg_led_config._entry.13, section ".printk_index", align 4
@mlxreg_led_get_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 120, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get current brightness, error: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlxreg_led_get_hw\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlxreg_led_get_hw._entry_ptr = internal global ptr @mlxreg_led_get_hw._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 83, i64 167]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"mlxreg_led_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 288, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 290, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 264, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 272, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 206, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 221, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 222, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 225, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 233, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 250, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [30 x i8] c"../drivers/leds/leds-mlxreg.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 119, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mlxreg_led_driver_exit, ptr @__initcall__kmod_leds_mlxreg__170_296_mlxreg_led_driver_init6, ptr @mlxreg_led_config._entry, ptr @mlxreg_led_config._entry.13, ptr @mlxreg_led_config._entry_ptr, ptr @mlxreg_led_config._entry_ptr.16, ptr @mlxreg_led_driver_exit, ptr @mlxreg_led_get_hw._entry, ptr @mlxreg_led_get_hw._entry_ptr, ptr @mlxreg_led_probe._entry, ptr @mlxreg_led_probe._entry_ptr, ptr @mlxreg_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mlxreg_led_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_led_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_led_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_led_get_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxreg_led_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxreg_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxreg_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %access_lock = getelementptr inbounds %struct.mlxreg_led_priv_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %access_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mlxreg_led_probe.__key) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_led_priv_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %pdata, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %6 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %regval.i, align 4, !annotation !60
  %counter.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp111.i = icmp sgt i32 %8, 0
  br i1 %cmp111.i, label %for.body.lr.ph.i, label %do.body7.mlxreg_led_config.exit_crit_edge

do.body7.mlxreg_led_config.exit_crit_edge:        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxreg_led_config.exit

for.body.lr.ph.i:                                 ; preds = %do.body7
  %regmap.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0116.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %data.0112.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 444, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.i.mlxreg_led_config.exit_crit_edge, label %if.end.i

for.body.i.mlxreg_led_config.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxreg_led_config.exit

if.end.i:                                         ; preds = %for.body.i
  %capability.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0112.i, i32 0, i32 4
  %11 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capability.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then3.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then3.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %12, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %dev9.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.7) #11
  br label %mlxreg_led_config.exit

if.end10.i:                                       ; preds = %if.then3.i
  %17 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regval.i, align 4
  %bit.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0112.i, i32 0, i32 3
  %19 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bit.i, align 4
  %and.i = and i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.for.inc.i_crit_edge, label %if.end13.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %and15.i = and i32 %20, -256
  %21 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and15.i, ptr %bit.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end13.i, %if.end.i.if.end16.i_crit_edge
  %led_cdev17.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1
  %data_parent.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %data_parent.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %data_parent.i, align 4
  %call18.i = call ptr @strstr(ptr noundef %data.0112.i, ptr noundef nonnull @.str.9) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %lor.lhs.false.i, label %if.end16.i.if.then24.i_crit_edge

if.end16.i.if.then24.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %call22.i = call ptr @strstr(ptr noundef %data.0112.i, ptr noundef nonnull @.str.10) #8
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.else.i, label %lor.lhs.false.i.if.then24.i_crit_edge

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.end16.i.if.then24.i_crit_edge
  %base_color.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %base_color.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %base_color.i, align 4
  br label %if.end34.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call27.i = call ptr @strstr(ptr noundef %data.0112.i, ptr noundef nonnull @.str.11) #8
  %tobool28.not.i = icmp eq ptr %call27.i, null
  %base_color32.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 2
  br i1 %tobool28.not.i, label %if.else31.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %base_color32.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 9, ptr %base_color32.i, align 4
  br label %if.end34.i

if.else31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %base_color32.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 13, ptr %base_color32.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else31.i, %if.then29.i, %if.then24.i
  %led_cdev_name.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 4
  %call38.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %led_cdev_name.i, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %data.0112.i) #8
  %26 = ptrtoint ptr %led_cdev17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %led_cdev_name.i, ptr %led_cdev17.i, align 4
  %brightness41.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %brightness41.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %brightness41.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1, i32 6
  %29 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mlxreg_led_brightness_set, ptr %brightness_set_blocking.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mlxreg_led_brightness_get, ptr %brightness_get.i, align 4
  %blink_set.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mlxreg_led_blink_set, ptr %blink_set.i, align 4
  %flags.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65536, ptr %flags.i, align 4
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data.0112.i, ptr %call.i.i, align 4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %dev44.i = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %call.i110.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev44.i, ptr noundef %led_cdev17.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %tobool46.not.i = icmp eq i32 %call.i110.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end34.i.mlxreg_led_config.exit_crit_edge

if.end34.i.mlxreg_led_config.exit_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxreg_led_config.exit

if.end48.i:                                       ; preds = %if.end34.i
  %36 = ptrtoint ptr %brightness41.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %brightness41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool50.not.i = icmp eq i32 %37, 0
  br i1 %tobool50.not.i, label %if.end48.i.do.end57.i_crit_edge, label %mlxreg_led_brightness_set.exit.i

if.end48.i.do.end57.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57.i

mlxreg_led_brightness_set.exit.i:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %base_color.i.i = getelementptr %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %base_color.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %base_color.i.i, align 4
  %call1.i.i = call fastcc i32 @mlxreg_led_store_hw(ptr noundef nonnull %call.i.i, i8 noundef zeroext %39) #8
  br label %do.end57.i

do.end57.i:                                       ; preds = %mlxreg_led_brightness_set.exit.i, %if.end48.i.do.end57.i_crit_edge
  %dev58.i = getelementptr inbounds %struct.mlxreg_led_data, ptr %call.i.i, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev58.i, align 4
  %mask.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0112.i, i32 0, i32 2
  %42 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask.i, align 4
  %reg.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0112.i, i32 0, i32 1
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.14, ptr noundef %data.0112.i, i32 noundef %43, i32 noundef %45) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end57.i, %if.end10.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0116.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_core_data, ptr %data.0112.i, i32 1
  %46 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %counter.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %47
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mlxreg_led_config.exit_crit_edge

for.inc.i.mlxreg_led_config.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxreg_led_config.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mlxreg_led_config.exit:                           ; preds = %for.inc.i.mlxreg_led_config.exit_crit_edge, %if.end34.i.mlxreg_led_config.exit_crit_edge, %do.end.i, %for.body.i.mlxreg_led_config.exit_crit_edge, %do.body7.mlxreg_led_config.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %do.end.i ], [ 0, %do.body7.mlxreg_led_config.exit_crit_edge ], [ 0, %for.inc.i.mlxreg_led_config.exit_crit_edge ], [ %call.i110.i, %if.end34.i.mlxreg_led_config.exit_crit_edge ], [ -12, %for.body.i.mlxreg_led_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %cleanup

cleanup:                                          ; preds = %mlxreg_led_config.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %mlxreg_led_config.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %access_lock = getelementptr inbounds %struct.mlxreg_led_priv_data, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %access_lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_led_brightness_set(ptr nocapture noundef readonly %cled, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base_color = getelementptr i8, ptr %cled, i32 400
  %0 = ptrtoint ptr %base_color to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %base_color, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %.sink = phi i8 [ %1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  %add.ptr = getelementptr i8, ptr %cled, i32 -4
  %call1 = tail call fastcc i32 @mlxreg_led_store_hw(ptr noundef %add.ptr, i8 noundef zeroext %.sink)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_led_brightness_get(ptr nocapture noundef readonly %cled) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cled, i32 -4
  %data_parent.i = getelementptr i8, ptr %cled, i32 404
  %0 = ptrtoint ptr %data_parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_parent.i, align 4
  %pdata.i = getelementptr inbounds %struct.mlxreg_led_priv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %6 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %regval.i, align 4, !annotation !60
  %regmap.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %cled, i32 44
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.17, i32 noundef %call.i) #11
  br label %mlxreg_led_get_hw.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval.i, align 4
  %mask.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %16, -1
  %and.i = and i32 %14, %neg.i
  %bit.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bit.i, align 4
  %or.i.i = call i32 @llvm.fshr.i32(i32 %16, i32 %16, i32 %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %or.i.i)
  %cmp4.i = icmp eq i32 %or.i.i, 240
  %add.i = add i32 %18, 4
  %add.sink.i = select i1 %cmp4.i, i32 %18, i32 %add.i
  %or.i33.i = call i32 @llvm.fshr.i32(i32 %and.i, i32 %and.i, i32 %add.sink.i) #8
  %base_color.i = getelementptr i8, ptr %cled, i32 400
  %19 = ptrtoint ptr %base_color.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %base_color.i, align 4
  %conv.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i33.i, i32 %conv.i)
  %cmp9.not.i = icmp ult i32 %or.i33.i, %conv.i
  %add13.i = add nuw nsw i32 %conv.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i33.i, i32 %add13.i)
  %cmp14.not.i = icmp ugt i32 %or.i33.i, %add13.i
  %or.cond.i = select i1 %cmp9.not.i, i1 true, i1 %cmp14.not.i
  %spec.select.i = select i1 %or.cond.i, i32 0, i32 255
  br label %mlxreg_led_get_hw.exit

mlxreg_led_get_hw.exit:                           ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %spec.select.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_led_blink_set(ptr nocapture noundef readonly %cled, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cled, i32 -4
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %land.lhs.true
    i32 167, label %land.lhs.true4
    i32 83, label %land.lhs.true8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.else21, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4:                                   ; preds = %entry
  %5 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %6)
  %cmp5 = icmp eq i32 %6, 167
  br i1 %cmp5, label %if.then15, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true8:                                   ; preds = %entry
  %7 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %8)
  %cmp9 = icmp eq i32 %8, 83
  br i1 %cmp9, label %if.then11, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  %base_color = getelementptr i8, ptr %cled, i32 400
  %9 = ptrtoint ptr %base_color to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %base_color, align 4
  %add = add i8 %10, 2
  br label %cleanup.sink.split

if.then15:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  %base_color16 = getelementptr i8, ptr %cled, i32 400
  %11 = ptrtoint ptr %base_color16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %base_color16, align 4
  %add18 = add i8 %12, 1
  br label %cleanup.sink.split

if.else21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %base_color22 = getelementptr i8, ptr %cled, i32 400
  %13 = ptrtoint ptr %base_color22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %base_color22, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else21, %if.then15, %if.then11
  %add.sink = phi i8 [ %add, %if.then11 ], [ %14, %if.else21 ], [ %add18, %if.then15 ]
  %call = tail call fastcc i32 @mlxreg_led_store_hw(ptr noundef %add.ptr, i8 noundef zeroext %add.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true8.cleanup_crit_edge ], [ -22, %land.lhs.true4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxreg_led_store_hw(ptr nocapture noundef readonly %led_data, i8 noundef zeroext %vset) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_parent = getelementptr inbounds %struct.mlxreg_led_data, ptr %led_data, i32 0, i32 3
  %0 = ptrtoint ptr %data_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_parent, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_led_priv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %led_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %6 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %regval, align 4, !annotation !60
  %access_lock = getelementptr inbounds %struct.mlxreg_led_priv_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #8
  %regmap = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.mlxreg_core_data, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.access_error_crit_edge

entry.access_error_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %access_error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mask = getelementptr inbounds %struct.mlxreg_core_data, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %bit = getelementptr inbounds %struct.mlxreg_core_data, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit, align 4
  %or.i = call i32 @llvm.fshr.i32(i32 %12, i32 %12, i32 %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %or.i)
  %cmp = icmp eq i32 %or.i, 240
  %conv = zext i8 %vset to i32
  %add = add i32 %14, 4
  %add.sink = select i1 %cmp, i32 %14, i32 %add
  %or.i26 = call i32 @llvm.fshl.i32(i32 %conv, i32 %conv, i32 %add.sink) #8
  %15 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval, align 4
  %and = and i32 %16, %12
  %or = or i32 %and, %or.i26
  store i32 %or, ptr %regval, align 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %call11 = call i32 @regmap_write(ptr noundef %18, i32 noundef %20, i32 noundef %or) #8
  br label %access_error

access_error:                                     ; preds = %if.end, %entry.access_error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.access_error_crit_edge ], [ %call11, %if.end ]
  call void @mutex_unlock(ptr noundef %access_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_leds_mlxreg__170_296_mlxreg_led_driver_init6, !1, !"__initcall__kmod_leds_mlxreg__170_296_mlxreg_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-mlxreg.c", i32 296, i32 1}
!2 = !{ptr @__exitcall_mlxreg_led_driver_exit, !1, !"__exitcall_mlxreg_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-mlxreg.c", i32 298, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-mlxreg.c", i32 299, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-mlxreg.c", i32 300, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-mlxreg.c", i32 301, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-mlxreg.c", i32 290, i32 14}
!14 = !{ptr @mlxreg_led_driver, !15, !"mlxreg_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-mlxreg.c", i32 288, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-mlxreg.c", i32 264, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlxreg_led_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlxreg_led_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mlxreg_led_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-mlxreg.c", i32 272, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-mlxreg.c", i32 206, i32 5}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlxreg_led_config._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlxreg_led_config._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-mlxreg.c", i32 221, i32 27}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-mlxreg.c", i32 222, i32 27}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-mlxreg.c", i32 225, i32 34}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-mlxreg.c", i32 233, i32 5}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-mlxreg.c", i32 250, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlxreg_led_config._entry.13, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlxreg_led_config._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-mlxreg.c", i32 119, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlxreg_led_get_hw._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @mlxreg_led_get_hw._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
