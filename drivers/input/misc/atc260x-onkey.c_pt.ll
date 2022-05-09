; ModuleID = '/llk/IR_all_yes/drivers/input/misc/atc260x-onkey.c_pt.bc'
source_filename = "../drivers/input/misc/atc260x-onkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.atc260x_onkey_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atc260x = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }
%struct.atc260x_onkey = type { ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_atc260x_onkey__248_301_atc260x_onkey_driver_init6 = internal global ptr @atc260x_onkey_driver_init, section ".initcall6.init", align 4
@atc260x_onkey_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atc260x_onkey_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atc260x_onkey_driver_exit = internal global ptr @atc260x_onkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [57 x i8] c"atc260x_onkey.description=Onkey driver for ATC260x PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [71 x i8] c"atc260x_onkey.author=Cristian Ciocaltea <cristian.ciocaltea@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [52 x i8] c"atc260x_onkey.file=drivers/input/misc/atc260x-onkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [26 x i8] c"atc260x_onkey.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atc260x-onkey\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset-time-sec\00", [17 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reset-time-sec out of range\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atc260x_onkey_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/misc/atc260x-onkey.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry_ptr = internal global ptr @atc260x_onkey_probe._entry, section ".printk_index", align 4
@atc260x_onkey_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atc260x_onkey\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Disabled reset on long-press\0A\00", [34 x i8] zeroinitializer }, align 32
@atc2603c_onkey_params = internal constant { %struct.atc260x_onkey_params, [56 x i8] } { %struct.atc260x_onkey_params { i32 2, i32 32768, i32 8192, i32 16384, i32 4, i32 4096, i32 2, i32 3072, i32 512, i32 384 }, [56 x i8] zeroinitializer }, align 32
@atc2609a_onkey_params = internal constant { %struct.atc260x_onkey_params, [56 x i8] } { %struct.atc260x_onkey_params { i32 2, i32 32768, i32 8192, i32 16384, i32 4, i32 4096, i32 2, i32 3072, i32 512, i32 384 }, [56 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"OnKey not supported for ATC260x PMIC type: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry_ptr.11 = internal global ptr @atc260x_onkey_probe._entry.9, section ".printk_index", align 4
@atc260x_onkey_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry_ptr.14 = internal global ptr @atc260x_onkey_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atc260x-onkey/input0\00", [43 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&onkey->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&onkey->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register IRQ %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry_ptr.21 = internal global ptr @atc260x_onkey_probe._entry.19, section ".printk_index", align 4
@atc260x_onkey_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@atc260x_onkey_probe._entry_ptr.24 = internal global ptr @atc260x_onkey_probe._entry.22, section ".printk_index", align 4
@atc260x_onkey_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 111, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read onkey status: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atc260x_onkey_query\00", [44 x i8] zeroinitializer }, align 32
@atc260x_onkey_query._entry_ptr = internal global ptr @atc260x_onkey_query._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@atc260x_onkey_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable interrupts: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc260x_onkey_irq\00", [46 x i8] zeroinitializer }, align 32
@atc260x_onkey_irq._entry_ptr = internal global ptr @atc260x_onkey_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"atc260x_onkey_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 294, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 297, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 204, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 209, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 217, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"atc2603c_onkey_params\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 48, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"atc2609a_onkey_params\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 61, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 236, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 244, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 252, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 259, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 269, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 279, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 110, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [38 x i8] c"../drivers/input/misc/atc260x-onkey.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 162, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_atc260x_onkey_driver_exit, ptr @__initcall__kmod_atc260x_onkey__248_301_atc260x_onkey_driver_init6, ptr @atc260x_onkey_driver_exit, ptr @atc260x_onkey_irq._entry, ptr @atc260x_onkey_irq._entry_ptr, ptr @atc260x_onkey_probe._entry, ptr @atc260x_onkey_probe._entry.12, ptr @atc260x_onkey_probe._entry.19, ptr @atc260x_onkey_probe._entry.22, ptr @atc260x_onkey_probe._entry.9, ptr @atc260x_onkey_probe._entry_ptr, ptr @atc260x_onkey_probe._entry_ptr.11, ptr @atc260x_onkey_probe._entry_ptr.14, ptr @atc260x_onkey_probe._entry_ptr.21, ptr @atc260x_onkey_probe._entry_ptr.24, ptr @atc260x_onkey_query._entry, ptr @atc260x_onkey_query._entry_ptr, ptr @atc260x_onkey_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @atc2603c_onkey_params, ptr @atc2609a_onkey_params, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @atc260x_onkey_probe.__key, ptr @.str.16, ptr @atc260x_onkey_probe.__key.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_onkey_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_onkey_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_onkey_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_onkey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atc260x_onkey_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atc260x_onkey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @atc260x_onkey_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_onkey_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !74
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i263 = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %val, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool6.not = icmp eq i32 %call.i263, 0
  br i1 %tobool6.not, label %if.else, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %if.else
  %9 = add i32 %8, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %9)
  %10 = icmp ult i32 %9, -7
  br i1 %10, label %do.end, label %if.end13

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %div266.lhs.trunc = shl nuw nsw i32 %8, 6
  %11 = add nuw nsw i32 %div266.lhs.trunc, 128
  %phi.bo268 = and i32 %11, 384
  br label %if.end26

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atc260x_onkey_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atc260x_onkey_probe, %if.then20)) #5
          to label %if.end26 [label %if.then20], !srcloc !75

if.then20:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atc260x_onkey_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.else14, %if.end13, %if.end.if.end26_crit_edge
  %reset_time.0 = phi i32 [ %phi.bo268, %if.end13 ], [ 0, %if.then20 ], [ 0, %if.end.if.end26_crit_edge ], [ 0, %if.else14 ]
  %reset_status.0 = phi i32 [ 2, %if.end13 ], [ 1, %if.then20 ], [ 0, %if.end.if.end26_crit_edge ], [ 1, %if.else14 ]
  %ic_type = getelementptr inbounds %struct.atc260x, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %ic_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ic_type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end123 [
    i32 1, label %if.end26.sw.epilog_crit_edge
    i32 2, label %sw.bb71
  ]

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end123:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %13) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb71, %if.end26.sw.epilog_crit_edge
  %atc2609a_onkey_params.sink = phi ptr [ @atc2609a_onkey_params, %sw.bb71 ], [ @atc2603c_onkey_params, %if.end26.sw.epilog_crit_edge ]
  %params72 = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %params72 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %atc2609a_onkey_params.sink, ptr %params72, align 4
  %call127 = call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %do.end132, label %if.end134

do.end132:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end134:                                        ; preds = %sw.epilog
  %input_dev135 = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %input_dev135 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call127, ptr %input_dev135, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %call.i, align 4
  %18 = ptrtoint ptr %call127 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %call127, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call127, i32 0, i32 1
  %19 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.15, ptr %phys, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call127, i32 0, i32 31
  %20 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @atc260x_onkey_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call127, i32 0, i32 32
  %21 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @atc260x_onkey_close, ptr %close, align 4
  call void @input_set_capability(ptr noundef nonnull %call127, i32 noundef 1, i32 noundef 116) #5
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call127, i32 0, i32 40, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %23 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @atc260x_onkey_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry146 = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %entry146 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry146, ptr %entry146, align 4
  %prev.i = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry146, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @atc260x_onkey_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @atc260x_onkey_probe.__key.17) #5
  %call157 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call157, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp159 = icmp slt i32 %call157, 0
  br i1 %cmp159, label %if.end134.cleanup_crit_edge, label %if.end162

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end162:                                        ; preds = %if.end134
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end162.dev_name.exit_crit_edge

if.end162.dev_name.exit_crit_edge:                ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end162.dev_name.exit_crit_edge
  %retval.0.i264 = phi ptr [ %31, %if.end.i ], [ %29, %if.end162.dev_name.exit_crit_edge ]
  %call167 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call157, ptr noundef null, ptr noundef nonnull @atc260x_onkey_irq, i32 noundef 8192, ptr noundef %retval.0.i264, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  br i1 %tobool168.not, label %if.end175, label %do.end172

do.end172:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %33, i32 noundef %call167) #8
  br label %cleanup

if.end175:                                        ; preds = %dev_name.exit
  call void @disable_irq(i32 noundef %33) #5
  %call177 = call i32 @input_register_device(ptr noundef nonnull %call127) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end184, label %do.end182

do.end182:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call177) #8
  br label %cleanup

if.end184:                                        ; preds = %if.end175
  %params.i = getelementptr inbounds %struct.atc260x_onkey, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %params.i, align 4
  %long_int_pnd_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %long_int_pnd_bm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %long_int_pnd_bm.i, align 4
  %short_int_pnd_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %short_int_pnd_bm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %short_int_pnd_bm.i, align 4
  %or.i = or i32 %39, %37
  %kdwn_int_pnd_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 4
  %40 = ptrtoint ptr %kdwn_int_pnd_bm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %kdwn_int_pnd_bm.i, align 4
  %or3.i = or i32 %or.i, %41
  %press_int_en_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 5
  %42 = ptrtoint ptr %press_int_en_bm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %press_int_en_bm.i, align 4
  %or5.i = or i32 %or3.i, %43
  %kdwn_int_en_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 6
  %44 = ptrtoint ptr %kdwn_int_en_bm.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %kdwn_int_en_bm.i, align 4
  %or7.i = or i32 %or5.i, %45
  %or8.i = or i32 %or7.i, 2048
  %press_time_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 7
  %46 = ptrtoint ptr %press_time_bm.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %press_time_bm.i, align 4
  %or10.i = or i32 %or7.i, %47
  %48 = zext i32 %reset_status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %reset_status.0, label %if.end184.atc2603x_onkey_hw_init.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then14.i
  ]

if.end184.atc2603x_onkey_hw_init.exit_crit_edge:  ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %atc2603x_onkey_hw_init.exit

if.then.i:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  %reset_en_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 8
  %49 = ptrtoint ptr %reset_en_bm.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reset_en_bm.i, align 4
  %or12.i = or i32 %50, %or10.i
  br label %atc2603x_onkey_hw_init.exit

if.then14.i:                                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  %reset_en_bm16.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 8
  %51 = ptrtoint ptr %reset_en_bm16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reset_en_bm16.i, align 4
  %reset_time_bm.i = getelementptr inbounds %struct.atc260x_onkey_params, ptr %35, i32 0, i32 9
  %53 = ptrtoint ptr %reset_time_bm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reset_time_bm.i, align 4
  %or18.i = or i32 %52, %or10.i
  %or19.i = or i32 %or18.i, %54
  %or22.i = or i32 %or8.i, %reset_time.0
  %or23.i = or i32 %or22.i, %52
  br label %atc2603x_onkey_hw_init.exit

atc2603x_onkey_hw_init.exit:                      ; preds = %if.then14.i, %if.then.i, %if.end184.atc2603x_onkey_hw_init.exit_crit_edge
  %reg_bm.0.i = phi i32 [ %or12.i, %if.then.i ], [ %or19.i, %if.then14.i ], [ %or10.i, %if.end184.atc2603x_onkey_hw_init.exit_crit_edge ]
  %reg_val.0.i = phi i32 [ %or8.i, %if.then.i ], [ %or23.i, %if.then14.i ], [ %or8.i, %if.end184.atc2603x_onkey_hw_init.exit_crit_edge ]
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %regmap.i = getelementptr inbounds %struct.atc260x, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %59 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %35, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %60, i32 noundef %reg_bm.0.i, i32 noundef %reg_val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool186.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool186.not, label %if.end188, label %atc2603x_onkey_hw_init.exit.cleanup_crit_edge

atc2603x_onkey_hw_init.exit.cleanup_crit_edge:    ; preds = %atc2603x_onkey_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end188:                                        ; preds = %atc2603x_onkey_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call190 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %atc2603x_onkey_hw_init.exit.cleanup_crit_edge, %do.end182, %do.end172, %if.end134.cleanup_crit_edge, %do.end132, %do.end123, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end123 ], [ %call167, %do.end172 ], [ %call177, %do.end182 ], [ 0, %if.end188 ], [ -12, %do.end132 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call157, %if.end134.cleanup_crit_edge ], [ %call.i.i, %atc2603x_onkey_hw_init.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_onkey_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.atc260x_onkey, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atc260x_onkey_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.atc260x_onkey, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %work = getelementptr inbounds %struct.atc260x_onkey, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atc260x_onkey_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  tail call fastcc void @atc260x_onkey_query(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atc260x_onkey_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.atc260x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %params = getelementptr inbounds %struct.atc260x_onkey, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %press_int_en_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %press_int_en_bm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %press_int_en_bm, align 4
  %kdwn_int_en_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %kdwn_int_en_bm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kdwn_int_en_bm, align 4
  %or = or i32 %11, %9
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef %or, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.27, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %input_dev = getelementptr inbounds %struct.atc260x_onkey, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef 116, i32 noundef 1) #5
  %18 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  tail call fastcc void @atc260x_onkey_query(ptr noundef %data)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atc260x_onkey_query(ptr noundef %onkey) unnamed_addr #2 align 64 {
entry:
  %key_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_down) #5
  %0 = ptrtoint ptr %key_down to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %key_down, align 4, !annotation !74
  %1 = ptrtoint ptr %onkey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %onkey, align 4
  %regmap = getelementptr inbounds %struct.atc260x, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %params = getelementptr inbounds %struct.atc260x_onkey, ptr %onkey, i32 0, i32 1
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %params, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %key_down) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %key_down to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %key_down, align 4
  %10 = ptrtoint ptr %onkey to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %onkey, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.25, i32 noundef %call) #8
  %14 = ptrtoint ptr %key_down to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %key_down, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params, align 4
  %kdwn_state_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %kdwn_state_bm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %kdwn_state_bm, align 4
  %19 = ptrtoint ptr %key_down to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key_down, align 4
  %and = and i32 %20, %18
  store i32 %and, ptr %key_down, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = phi i32 [ %and, %if.else ], [ %.pr, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not = icmp eq i32 %21, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.atc260x_onkey, ptr %onkey, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 20) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %input_dev = getelementptr inbounds %struct.atc260x_onkey, ptr %onkey, i32 0, i32 2
  %23 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef 116, i32 noundef 0) #5
  %25 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %params, align 4
  %long_int_pnd_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %long_int_pnd_bm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %long_int_pnd_bm, align 4
  %short_int_pnd_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %short_int_pnd_bm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %short_int_pnd_bm, align 4
  %or = or i32 %32, %30
  %kdwn_int_pnd_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %28, i32 0, i32 4
  %33 = ptrtoint ptr %kdwn_int_pnd_bm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %kdwn_int_pnd_bm, align 4
  %or12 = or i32 %or, %34
  %press_int_en_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %28, i32 0, i32 5
  %35 = ptrtoint ptr %press_int_en_bm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %press_int_en_bm, align 4
  %or14 = or i32 %or12, %36
  %kdwn_int_en_bm = getelementptr inbounds %struct.atc260x_onkey_params, ptr %28, i32 0, i32 6
  %37 = ptrtoint ptr %kdwn_int_en_bm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %kdwn_int_en_bm, align 4
  %or16 = or i32 %or14, %38
  %39 = ptrtoint ptr %onkey to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %onkey, align 4
  %regmap18 = getelementptr inbounds %struct.atc260x, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap18, align 4
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %28, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %44, i32 noundef %or16, i32 noundef %or16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_down) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_atc260x_onkey__248_301_atc260x_onkey_driver_init6, !1, !"__initcall__kmod_atc260x_onkey__248_301_atc260x_onkey_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_atc260x_onkey_driver_exit, !1, !"__exitcall_atc260x_onkey_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description249, !4, !"__UNIQUE_ID_description249", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_author250, !6, !"__UNIQUE_ID_author250", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 297, i32 11}
!12 = !{ptr @atc260x_onkey_driver, !13, !"atc260x_onkey_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 294, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 204, i32 7}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 209, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @atc260x_onkey_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @atc260x_onkey_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 217, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @atc260x_onkey_probe.__UNIQUE_ID_ddebug227, !25, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 236, i32 3}
!30 = !{ptr @atc260x_onkey_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @atc260x_onkey_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 244, i32 3}
!34 = !{ptr @atc260x_onkey_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @atc260x_onkey_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 252, i32 20}
!38 = !{ptr @atc260x_onkey_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 259, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @atc260x_onkey_probe.__key.17, !39, !"__key", i1 false, i1 false}
!42 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 269, i32 3}
!45 = !{ptr @atc260x_onkey_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @atc260x_onkey_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 279, i32 3}
!49 = !{ptr @atc260x_onkey_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @atc260x_onkey_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @atc2603c_onkey_params, !52, !"atc2603c_onkey_params", i1 false, i1 false}
!52 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 48, i32 42}
!53 = !{ptr @atc2609a_onkey_params, !54, !"atc2609a_onkey_params", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 61, i32 42}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 110, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @atc260x_onkey_query._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @atc260x_onkey_query._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/atc260x-onkey.c", i32 162, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @atc260x_onkey_irq._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @atc260x_onkey_irq._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2149070792, i64 2149070797, i64 2149070810, i64 2149070854, i64 2149070888, i64 2149070909}
