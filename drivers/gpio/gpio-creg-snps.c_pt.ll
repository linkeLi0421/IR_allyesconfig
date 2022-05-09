; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-creg-snps.c_pt.bc'
source_filename = "../drivers/gpio/gpio-creg-snps.c"
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
%struct.creg_gpio = type { %struct.gpio_chip, ptr, %struct.spinlock, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.creg_layout = type { i8, [32 x i8], [32 x i8], [32 x i8], [32 x i8] }

@__initcall__kmod_gpio_creg_snps__223_189_creg_gpio_snps_driver_init6 = internal global ptr @creg_gpio_snps_driver_init, section ".initcall6.init", align 4
@creg_gpio_snps_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @creg_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @creg_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snps-creg-gpio\00", [17 x i8] zeroinitializer }, align 32
@creg_gpio_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,creg-gpio-axs10x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axs10x_flsh_cs_ctl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,creg-gpio-hsdk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hsdk_cs_ctl }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@creg_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&hcg->lock\00", [21 x i8] zeroinitializer }, align 32
@creg_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@creg_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@creg_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 177, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIO controller with %d gpios probed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"creg_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpio/gpio-creg-snps.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@creg_gpio_probe._entry_ptr = internal global ptr @creg_gpio_probe._entry, section ".printk_index", align 4
@creg_gpio_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 91, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ngpios must be in [1:%u]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"creg_gpio_validate\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@creg_gpio_validate._entry_ptr = internal global ptr @creg_gpio_validate._entry, section ".printk_index", align 4
@axs10x_flsh_cs_ctl = internal constant { { i8, [32 x i8], <{ i8, [31 x i8] }>, <{ i8, [31 x i8] }>, <{ i8, [31 x i8] }> }, [63 x i8] } { { i8, [32 x i8], <{ i8, [31 x i8] }>, <{ i8, [31 x i8] }>, <{ i8, [31 x i8] }> } { i8 1, [32 x i8] zeroinitializer, <{ i8, [31 x i8] }> <{ i8 3, [31 x i8] zeroinitializer }>, <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, <{ i8, [31 x i8] }> <{ i8 2, [31 x i8] zeroinitializer }> }, [63 x i8] zeroinitializer }, align 32
@hsdk_cs_ctl = internal constant { { i8, [32 x i8], <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }> }, [63 x i8] } { { i8, [32 x i8], <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }>, <{ [10 x i8], [22 x i8] }> } { i8 10, [32 x i8] zeroinitializer, <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"\03\03\03\03\03\03\03\03\03\03", [22 x i8] zeroinitializer }>, <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"\02\02\02\02\02\02\02\02\02\02", [22 x i8] zeroinitializer }>, <{ [10 x i8], [22 x i8] }> <{ [10 x i8] c"\02\02\02\02\02\02\02\02\02\02", [22 x i8] zeroinitializer }> }, [63 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"creg_gpio_snps_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 182, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 184, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"creg_gpio_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 125, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 156, i32 43 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 164, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 173, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 177, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 91, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"axs10x_flsh_cs_ctl\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 117, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"hsdk_cs_ctl\00", align 1
@___asan_gen_.71 = private constant [33 x i8] c"../drivers/gpio/gpio-creg-snps.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 109, i32 33 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_gpio_creg_snps__223_189_creg_gpio_snps_driver_init6, ptr @creg_gpio_probe._entry, ptr @creg_gpio_probe._entry_ptr, ptr @creg_gpio_validate._entry, ptr @creg_gpio_validate._entry_ptr, ptr @creg_gpio_snps_driver, ptr @.str, ptr @creg_gpio_ids, ptr @.str.1, ptr @creg_gpio_probe.__key, ptr @.str.2, ptr @creg_gpio_probe.lock_key, ptr @creg_gpio_probe.request_key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @axs10x_flsh_cs_ctl, ptr @hsdk_cs_ctl], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creg_gpio_snps_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creg_gpio_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creg_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creg_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creg_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creg_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @creg_gpio_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axs10x_flsh_cs_ctl to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsdk_cs_ctl to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @creg_gpio_snps_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @creg_gpio_snps_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @creg_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #6
  %0 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ngpios, align 4, !annotation !43
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 400, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.creg_gpio, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call10 = tail call ptr @of_match_node(ptr noundef nonnull @creg_gpio_ids, ptr noundef %4) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call10, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %layout = getelementptr inbounds %struct.creg_gpio, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %layout, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %ngpios, i32 noundef 1, i32 noundef 0) #6
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool17.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %layout, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = zext i8 %14 to i32
  %15 = add i8 %14, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %15)
  %16 = icmp ult i8 %15, -32
  br i1 %16, label %if.end19.cleanup_crit_edge, label %if.end.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ngpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.i = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i)
  %cmp13.i = icmp ugt i32 %18, %conv.i
  %or.cond52.i = select i1 %cmp7.i, i1 true, i1 %cmp13.i
  br i1 %or.cond52.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv.i) #9
  br label %cleanup

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.059.i = phi i32 [ %inc.i, %if.end26.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %reg_len.058.i = phi i32 [ %add32.i, %if.end26.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.creg_layout, ptr %12, i32 0, i32 4, i32 %i.059.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %21 = add i8 %20, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %21)
  %22 = icmp ult i8 %21, -8
  br i1 %22, label %for.body.i.cleanup_crit_edge, label %if.end.i.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i
  %conv.i.i = zext i8 %20 to i32
  %shl.neg.i.i = shl nsw i32 -1, %conv.i.i
  %arrayidx12.i.i = getelementptr %struct.creg_layout, ptr %12, i32 0, i32 2, i32 %i.059.i
  %23 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %24 to i32
  %and14.i.i = and i32 %shl.neg.i.i, %conv13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool.not.i.i, label %if.end16.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.i.i:                                     ; preds = %if.end.i.i
  %arrayidx25.i.i = getelementptr %struct.creg_layout, ptr %12, i32 0, i32 3, i32 %i.059.i
  %25 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx25.i.i, align 1
  %conv26.i.i = zext i8 %26 to i32
  %and27.i.i = and i32 %shl.neg.i.i, %conv26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp ne i32 %and27.i.i, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp37.i.i = icmp eq i8 %24, %26
  %or.cond55.i = select i1 %tobool28.not.i.i, i1 true, i1 %cmp37.i.i
  br i1 %or.cond55.i, label %if.end16.i.i.cleanup_crit_edge, label %if.end26.i

if.end16.i.i.cleanup_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26.i:                                       ; preds = %if.end16.i.i
  %arrayidx.i = getelementptr %struct.creg_layout, ptr %12, i32 0, i32 1, i32 %i.059.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv28.i = zext i8 %28 to i32
  %add.i = add i32 %reg_len.058.i, %conv.i.i
  %add32.i = add i32 %add.i, %conv28.i
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add32.i)
  %phi.cmp.i = icmp ugt i32 %add32.i, 32
  br i1 %phi.cmp.i, label %for.end.i.cleanup_crit_edge, label %do.body

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %for.end.i
  %lock = getelementptr inbounds %struct.creg_gpio, ptr %call.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @creg_gpio_probe.__key, i16 noundef signext 3) #6
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev1, ptr %parent, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i71, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i71:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i71, %do.body.dev_name.exit_crit_edge
  %retval.0.i72 = phi ptr [ %33, %if.end.i71 ], [ %31, %do.body.dev_name.exit_crit_edge ]
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i72, ptr %call.i, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %35 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %base, align 4
  %36 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %37 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %38 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %ngpio, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %39 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @creg_gpio_set, ptr %set, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @creg_gpio_dir_out, ptr %direction_output, align 4
  %call32 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @creg_gpio_probe.lock_key, ptr noundef nonnull @creg_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end38, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end38:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ngpios, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %42) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %dev_name.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end16.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.end.i, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ 0, %do.end38 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %10, %if.end14.cleanup_crit_edge ], [ %call32, %dev_name.exit.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @creg_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %layout1 = getelementptr inbounds %struct.creg_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %arrayidx = getelementptr %struct.creg_layout, ptr %1, i32 0, i32 2, i32 %offset
  %arrayidx4 = getelementptr %struct.creg_layout, ptr %1, i32 0, i32 3, i32 %offset
  %cond.in.in = select i1 %tobool.not, ptr %arrayidx4, ptr %arrayidx
  %2 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %arrayidx6 = getelementptr %struct.creg_layout, ptr %1, i32 0, i32 1, i32 %offset
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp57.not = icmp eq i32 %offset, 0
  br i1 %cmp57.not, label %entry.do.body15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %reg_shift.059 = phi i32 [ %add14, %for.body.for.body_crit_edge ], [ %conv7, %entry.for.body_crit_edge ]
  %i.058 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx9 = getelementptr %struct.creg_layout, ptr %1, i32 0, i32 4, i32 %i.058
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %6 to i32
  %arrayidx12 = getelementptr %struct.creg_layout, ptr %1, i32 0, i32 1, i32 %i.058
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %8 to i32
  %add = add i32 %reg_shift.059, %conv10
  %add14 = add i32 %add, %conv13
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %offset
  br i1 %exitcond.not, label %for.body.do.body15_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

do.body15:                                        ; preds = %for.body.do.body15_crit_edge, %entry.do.body15_crit_edge
  %reg_shift.0.lcssa = phi i32 [ %conv7, %entry.do.body15_crit_edge ], [ %add14, %for.body.do.body15_crit_edge ]
  %cond = zext i8 %cond.in to i32
  %lock = getelementptr inbounds %struct.creg_gpio, ptr %call, i32 0, i32 2
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %regs = getelementptr inbounds %struct.creg_gpio, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !44
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %arrayidx26 = getelementptr %struct.creg_layout, ptr %1, i32 0, i32 4, i32 %offset
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %14 to i32
  %sub28 = sub nsw i32 32, %conv27
  %shr = lshr i32 -1, %sub28
  %shl = shl i32 %shr, %reg_shift.0.lcssa
  %neg = xor i32 %shl, -1
  %and30 = and i32 %12, %neg
  %shl31 = shl i32 %cond, %reg_shift.0.lcssa
  %or = or i32 %and30, %shl31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !47
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @creg_gpio_dir_out(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @creg_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %val)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_gpio_creg_snps__223_189_creg_gpio_snps_driver_init6, !1, !"__initcall__kmod_gpio_creg_snps__223_189_creg_gpio_snps_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 189, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 184, i32 11}
!4 = !{ptr @creg_gpio_snps_driver, !5, !"creg_gpio_snps_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 182, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 156, i32 43}
!8 = !{ptr @creg_gpio_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 164, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @creg_gpio_probe.lock_key, !12, !"lock_key", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 173, i32 8}
!13 = !{ptr @creg_gpio_probe.request_key, !12, !"request_key", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 177, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @creg_gpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @creg_gpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 91, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @creg_gpio_validate._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @creg_gpio_validate._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @creg_gpio_ids, !29, !"creg_gpio_ids", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 125, i32 34}
!30 = !{ptr @axs10x_flsh_cs_ctl, !31, !"axs10x_flsh_cs_ctl", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 117, i32 33}
!32 = !{ptr @hsdk_cs_ctl, !33, !"hsdk_cs_ctl", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-creg-snps.c", i32 109, i32 33}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 4842073}
!45 = !{i64 2153830817}
!46 = !{i64 2153831891}
!47 = !{i64 4841655}
