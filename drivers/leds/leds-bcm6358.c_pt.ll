; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-bcm6358.c_pt.bc'
source_filename = "../drivers/leds/leds-bcm6358.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.bcm6358_led = type { %struct.led_classdev, ptr, ptr, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_bcm6358__171_224_bcm6358_leds_driver_init6 = internal global ptr @bcm6358_leds_driver_init, section ".initcall6.init", align 4
@bcm6358_leds_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm6358_leds_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm6358_leds_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm6358_leds_driver_exit = internal global ptr @bcm6358_leds_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [65 x i8] c"leds_bcm6358.author=\C3\81lvaro Fern\C3\A1ndez Rojas <noltari@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [60 x i8] c"leds_bcm6358.description=LED driver for BCM6358 controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [44 x i8] c"leds_bcm6358.file=drivers/leds/leds-bcm6358\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [28 x i8] c"leds_bcm6358.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [41 x i8] c"leds_bcm6358.alias=platform:leds-bcm6358\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds-bcm6358\00", [19 x i8] zeroinitializer }, align 32
@bcm6358_leds_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6358-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm6358_leds_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,clk-dat-low\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcm,clk-div\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@bcm6358_leds_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 196, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid LED (%u >= %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm6358_leds_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-bcm6358.c\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm6358_leds_probe._entry_ptr = internal global ptr @bcm6358_leds_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"active-low\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@bcm6358_led.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.7, ptr @.str.16, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds_bcm6358\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm6358_led\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"registered LED %s\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"bcm6358_leds_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 216, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 219, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"bcm6358_leds_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 210, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 164, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 168, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 170, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 191, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 195, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 110, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 113, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 114, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 116, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [31 x i8] c"../drivers/leds/leds-bcm6358.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 141, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_bcm6358_leds_driver_exit, ptr @__initcall__kmod_leds_bcm6358__171_224_bcm6358_leds_driver_init6, ptr @bcm6358_leds_driver_exit, ptr @bcm6358_leds_probe._entry, ptr @bcm6358_leds_probe._entry_ptr, ptr @bcm6358_leds_driver, ptr @.str, ptr @bcm6358_leds_of_match, ptr @bcm6358_leds_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_leds_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_leds_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_leds_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6358_leds_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6358_leds_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm6358_leds_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm6358_leds_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm6358_leds_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6358_leds_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_div = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_div) #6
  %2 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clk_div, align 4, !annotation !57
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup38

if.end:                                           ; preds = %dev_of_node.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup38_crit_edge, label %do.body

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm6358_leds_probe.__key, i16 noundef signext 3) #6
  %add.ptr.i = getelementptr i8, ptr %call3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %and1.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not2.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not2.i, label %do.body.bcm6358_led_busy.exit_crit_edge, label %do.body.while.body.i_crit_edge

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

do.body.bcm6358_led_busy.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm6358_led_busy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %and.i = and i32 %6, 8
  %tobool.not.i69 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i69, label %while.body.i.bcm6358_led_busy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.bcm6358_led_busy.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm6358_led_busy.exit

bcm6358_led_busy.exit:                            ; preds = %while.body.i.bcm6358_led_busy.exit_crit_edge, %do.body.bcm6358_led_busy.exit_crit_edge
  %.lcssa.i = phi i32 [ %4, %do.body.bcm6358_led_busy.exit_crit_edge ], [ %6, %while.body.i.bcm6358_led_busy.exit_crit_edge ]
  %and = and i32 %.lcssa.i, -8
  %call.i70 = tail call ptr @of_find_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i70, null
  %or = or i32 %and, 4
  %spec.select = select i1 %tobool.i.not, i32 %and, i32 %or
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %clk_div, i32 noundef 1, i32 noundef 0) #6
  %7 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_div, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %bcm6358_led_busy.exit.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %sw.bb16
    i32 2, label %sw.bb18
  ]

bcm6358_led_busy.exit.sw.epilog_crit_edge:        ; preds = %bcm6358_led_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %bcm6358_led_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or15 = or i32 %spec.select, 3
  br label %sw.epilog

sw.bb16:                                          ; preds = %bcm6358_led_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or17 = or i32 %spec.select, 2
  br label %sw.epilog

sw.bb18:                                          ; preds = %bcm6358_led_busy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or19 = or i32 %spec.select, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb16, %sw.bb, %bcm6358_led_busy.exit.sw.epilog_crit_edge
  %val.1 = phi i32 [ %or19, %sw.bb18 ], [ %or17, %sw.bb16 ], [ %or15, %sw.bb ], [ %spec.select, %bcm6358_led_busy.exit.sw.epilog_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %val.1) #6, !srcloc !61
  %call21 = call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #6
  %cmp.not76 = icmp eq ptr %call21, null
  br i1 %cmp.not76, label %sw.epilog.cleanup38_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.cleanup38_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %child.077 = phi ptr [ %call37, %for.inc.for.body_crit_edge ], [ %call21, %sw.epilog.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg, align 4, !annotation !57
  %call.i.i71 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.077, ptr noundef nonnull @.str.4, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i71)
  %tobool23.not = icmp sgt i32 %call.i.i71, -1
  br i1 %tobool23.not, label %if.end25, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %cmp26 = icmp ugt i32 %12, 31
  br i1 %cmp26, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef 32) #9
  br label %for.inc

if.end31:                                         ; preds = %if.end25
  %call32 = call fastcc i32 @bcm6358_led(ptr noundef %dev1, ptr noundef nonnull %child.077, i32 noundef %12, ptr noundef %call3, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %cleanup, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child.077) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  br label %cleanup38

for.inc:                                          ; preds = %if.end31.for.inc_crit_edge, %do.end30, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  %call37 = call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.077) #6
  %cmp.not = icmp eq ptr %call37, null
  br i1 %cmp.not, label %for.inc.cleanup38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38

cleanup38:                                        ; preds = %for.inc.cleanup38_crit_edge, %cleanup, %sw.epilog.cleanup38_crit_edge, %if.end.cleanup38_crit_edge, %if.then
  %retval.2 = phi i32 [ %3, %if.then ], [ %call32, %cleanup ], [ -12, %if.end.cleanup38_crit_edge ], [ 0, %sw.epilog.cleanup38_crit_edge ], [ 0, %for.inc.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_div) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm6358_led(ptr noundef %dev, ptr noundef %nc, i32 noundef %reg, ptr noundef %mem, ptr noundef %lock) unnamed_addr #2 align 64 {
entry:
  %init_data = alloca %struct.led_init_data, align 4
  %state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %0 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #6
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4, !annotation !57
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 416, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin = getelementptr inbounds %struct.bcm6358_led, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reg, ptr %pin, align 4
  %mem1 = getelementptr inbounds %struct.bcm6358_led, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %mem1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mem, ptr %mem1, align 4
  %lock2 = getelementptr inbounds %struct.bcm6358_led, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock2, align 4
  %call.i89 = tail call ptr @of_find_property(ptr noundef %nc, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i89, null
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %active_low = getelementptr inbounds %struct.bcm6358_led, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %active_low to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %active_low, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = call i32 @of_property_read_string(ptr noundef %nc, ptr noundef nonnull @.str.11, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else37

if.then8:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %call9 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(3) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 255, ptr %brightness, align 4
  br label %if.end40

if.else:                                          ; preds = %if.then8
  %call12 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(5) @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else32

if.then14:                                        ; preds = %if.else
  %9 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem1, align 4
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %12 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pin, align 4
  %shl = shl nuw i32 1, %13
  %and = and i32 %shl, %11
  %active_low18 = getelementptr inbounds %struct.bcm6358_led, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %active_low18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active_low18, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool20.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %or.cond88 = select i1 %tobool19.not, i1 true, i1 %tobool20.not
  %or.cond91 = select i1 %or.cond.not, i1 %or.cond88, i1 false
  %brightness30 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  br i1 %or.cond91, label %if.else28, label %if.then25

if.then25:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %brightness30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %brightness30, align 4
  br label %if.end40

if.else28:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %brightness30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %brightness30, align 4
  br label %if.end40

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %brightness34 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %brightness34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %brightness34, align 4
  br label %if.end40

if.else37:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %brightness39 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %brightness39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %brightness39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.else32, %if.else28, %if.then25, %if.then11
  %brightness43 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %brightness43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %brightness43, align 4
  call void @bcm6358_led_set(ptr noundef nonnull %call.i, i32 noundef %21)
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bcm6358_led_set, ptr %brightness_set, align 4
  %tobool45.not = icmp eq ptr %nc, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %nc, i32 0, i32 3
  %spec.select = select i1 %tobool45.not, ptr null, ptr %fwnode
  %23 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spec.select, ptr %init_data, align 4
  %call48 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %init_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp = icmp slt i32 %call48, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %do.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm6358_led.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm6358_led, %if.then56)) #6
          to label %cleanup [label %if.then56], !srcloc !63

if.then56:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm6358_led.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body, %if.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call48, %if.end40.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm6358_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bcm6358_led, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %mem = getelementptr inbounds %struct.bcm6358_led, ptr %led_cdev, i32 0, i32 1
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %and1.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not2.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not2.i, label %entry.bcm6358_led_busy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.bcm6358_led_busy.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm6358_led_busy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %and.i = and i32 %6, 8
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.bcm6358_led_busy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.bcm6358_led_busy.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm6358_led_busy.exit

bcm6358_led_busy.exit:                            ; preds = %while.body.i.bcm6358_led_busy.exit_crit_edge, %entry.bcm6358_led_busy.exit_crit_edge
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %active_low = getelementptr inbounds %struct.bcm6358_led, ptr %led_cdev, i32 0, i32 4
  %10 = ptrtoint ptr %active_low to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_low, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp11 = icmp eq i32 %value, 0
  %or.cond35 = xor i1 %cmp11, %tobool.not
  %pin18 = getelementptr inbounds %struct.bcm6358_led, ptr %led_cdev, i32 0, i32 3
  %12 = ptrtoint ptr %pin18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pin18, align 4
  %shl19 = shl nuw i32 1, %13
  %or = or i32 %shl19, %9
  %neg = xor i32 %shl19, -1
  %and = and i32 %9, %neg
  %val.0 = select i1 %or.cond35, i32 %and, i32 %or
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %val.0) #6, !srcloc !61
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_leds_bcm6358__171_224_bcm6358_leds_driver_init6, !1, !"__initcall__kmod_leds_bcm6358__171_224_bcm6358_leds_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-bcm6358.c", i32 224, i32 1}
!2 = !{ptr @__exitcall_bcm6358_leds_driver_exit, !1, !"__exitcall_bcm6358_leds_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author172, !4, !"__UNIQUE_ID_author172", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-bcm6358.c", i32 226, i32 1}
!5 = !{ptr @__UNIQUE_ID_description173, !6, !"__UNIQUE_ID_description173", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-bcm6358.c", i32 227, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-bcm6358.c", i32 228, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias176, !11, !"__UNIQUE_ID_alias176", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-bcm6358.c", i32 229, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-bcm6358.c", i32 219, i32 11}
!14 = !{ptr @bcm6358_leds_driver, !15, !"bcm6358_leds_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-bcm6358.c", i32 216, i32 31}
!16 = !{ptr @bcm6358_leds_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-bcm6358.c", i32 164, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/leds/leds-bcm6358.c", i32 168, i32 32}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/leds/leds-bcm6358.c", i32 170, i32 27}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/leds/leds-bcm6358.c", i32 191, i32 35}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-bcm6358.c", i32 195, i32 4}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @bcm6358_leds_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @bcm6358_leds_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-bcm6358.c", i32 110, i32 32}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-bcm6358.c", i32 113, i32 35}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-bcm6358.c", i32 114, i32 22}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-bcm6358.c", i32 116, i32 29}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-bcm6358.c", i32 141, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bcm6358_led.__UNIQUE_ID_ddebug170, !42, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!46 = !{ptr @bcm6358_leds_of_match, !47, !"bcm6358_leds_of_match", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-bcm6358.c", i32 210, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i64 2979753}
!59 = !{i64 2152484512}
!60 = !{i64 2152484179}
!61 = !{i64 2979335}
!62 = !{i8 0, i8 2}
!63 = !{i64 2148760078, i64 2148760083, i64 2148760096, i64 2148760140, i64 2148760174, i64 2148760195}
