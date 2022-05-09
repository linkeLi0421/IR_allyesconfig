; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-uniphier-f.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-uniphier-f.c"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_fi2c_priv = type { %struct.completion, %struct.i2c_adapter, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_uniphier_f__288_641_uniphier_fi2c_drv_init6 = internal global ptr @uniphier_fi2c_drv_init, section ".initcall6.init", align 4
@uniphier_fi2c_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_fi2c_probe, ptr @uniphier_fi2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_fi2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_fi2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_fi2c_drv_exit = internal global ptr @uniphier_fi2c_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [70 x i8] c"i2c_uniphier_f.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [64 x i8] c"i2c_uniphier_f.description=UniPhier FIFO-builtin I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [54 x i8] c"i2c_uniphier_f.file=drivers/i2c/busses/i2c-uniphier-f\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"i2c_uniphier_f.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uniphier-fi2c\00", [18 x i8] zeroinitializer }, align 32
@uniphier_fi2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-fi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_fi2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @uniphier_fi2c_suspend, ptr @uniphier_fi2c_resume, ptr @uniphier_fi2c_suspend, ptr @uniphier_fi2c_resume, ptr @uniphier_fi2c_suspend, ptr @uniphier_fi2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@uniphier_fi2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 539, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid clock-frequency %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uniphier_fi2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-uniphier-f.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_fi2c_probe._entry_ptr = internal global ptr @uniphier_fi2c_probe._entry, section ".printk_index", align 4
@uniphier_fi2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@uniphier_fi2c_probe._entry_ptr.9 = internal global ptr @uniphier_fi2c_probe._entry.7, section ".printk_index", align 4
@uniphier_fi2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"input clock rate should not be zero\0A\00", [59 x i8] zeroinitializer }, align 32
@uniphier_fi2c_probe._entry_ptr.12 = internal global ptr @uniphier_fi2c_probe._entry.10, section ".printk_index", align 4
@uniphier_fi2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@uniphier_fi2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @uniphier_fi2c_master_xfer, ptr null, ptr null, ptr null, ptr @uniphier_fi2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UniPhier FI2C\00", [18 x i8] zeroinitializer }, align 32
@uniphier_fi2c_bus_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @uniphier_fi2c_get_scl, ptr @uniphier_fi2c_set_scl, ptr @uniphier_fi2c_get_sda, ptr null, ptr null, ptr null, ptr @uniphier_fi2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_fi2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@uniphier_fi2c_probe._entry_ptr.17 = internal global ptr @uniphier_fi2c_probe._entry.15, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@uniphier_fi2c_master_xfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"transaction timeout.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"uniphier_fi2c_master_xfer_one\00", [34 x i8] zeroinitializer }, align 32
@uniphier_fi2c_master_xfer_one._entry_ptr = internal global ptr @uniphier_fi2c_master_xfer_one._entry, section ".printk_index", align 4
@uniphier_fi2c_master_xfer_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 377, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stop condition was not completed.\0A\00", [61 x i8] zeroinitializer }, align 32
@uniphier_fi2c_master_xfer_one._entry_ptr.23 = internal global ptr @uniphier_fi2c_master_xfer_one._entry.21, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"uniphier_fi2c_drv\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 632, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 636, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"uniphier_fi2c_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 626, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"uniphier_fi2c_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 622, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 535, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 539, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 545, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 555, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 562, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"uniphier_fi2c_algo\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 437, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 567, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [32 x i8] c"uniphier_fi2c_bus_recovery_info\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 471, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 577, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 361, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-uniphier-f.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 376, i32 4 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_uniphier_fi2c_drv_exit, ptr @__initcall__kmod_i2c_uniphier_f__288_641_uniphier_fi2c_drv_init6, ptr @uniphier_fi2c_drv_exit, ptr @uniphier_fi2c_master_xfer_one._entry, ptr @uniphier_fi2c_master_xfer_one._entry.21, ptr @uniphier_fi2c_master_xfer_one._entry_ptr, ptr @uniphier_fi2c_master_xfer_one._entry_ptr.23, ptr @uniphier_fi2c_probe._entry, ptr @uniphier_fi2c_probe._entry.10, ptr @uniphier_fi2c_probe._entry.15, ptr @uniphier_fi2c_probe._entry.7, ptr @uniphier_fi2c_probe._entry_ptr, ptr @uniphier_fi2c_probe._entry_ptr.12, ptr @uniphier_fi2c_probe._entry_ptr.17, ptr @uniphier_fi2c_probe._entry_ptr.9, ptr @uniphier_fi2c_drv, ptr @.str, ptr @uniphier_fi2c_match, ptr @uniphier_fi2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @uniphier_fi2c_probe.__key, ptr @.str.13, ptr @uniphier_fi2c_algo, ptr @.str.14, ptr @uniphier_fi2c_bus_recovery_info, ptr @.str.16, ptr @init_completion.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_bus_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_master_xfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_fi2c_master_xfer_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_fi2c_drv, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_fi2c_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_fi2c_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bus_speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_speed) #8
  %0 = ptrtoint ptr %bus_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_speed, align 4, !annotation !70
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1496, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %membase = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %membase, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %bus_speed, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %bus_speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100000, ptr %bus_speed, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %6 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_speed, align 4
  %8 = add i32 %7, -400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400000, i32 %8)
  %9 = icmp ult i32 %8, -400000
  br i1 %9, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %7) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %clk, align 4
  %cmp.i122 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call.i123 = call i32 @clk_prepare(ptr noundef %call20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end29
  %call1.i = call i32 @clk_enable(ptr noundef %call20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call20) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call36 = call i32 @clk_get_rate(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  br label %if.then69

if.end42:                                         ; preds = %if.end34
  %16 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_speed, align 4
  %div = udiv i32 %call36, %17
  %clk_cycle = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %clk_cycle to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %clk_cycle, align 8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %call.i, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %call.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #8
  %lock = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @uniphier_fi2c_probe.__key, i16 noundef signext 3) #8
  %adap = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %adap, align 8
  %algo = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @uniphier_fi2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev1, ptr %parent, align 8
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %of_node53 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %25 = ptrtoint ptr %of_node53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %of_node53, align 8
  %name = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 1, i32 12
  %call55 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef 48) #8
  %bus_recovery_info = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 1, i32 16
  %26 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @uniphier_fi2c_bus_recovery_info, ptr %bus_recovery_info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i124 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i124 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i124, align 4
  call fastcc void @uniphier_fi2c_hw_init(ptr noundef nonnull %call.i)
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %call.i125 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @uniphier_fi2c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %30, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool60.not = icmp eq i32 %call.i125, 0
  br i1 %tobool60.not, label %disable_clk, label %do.end64

do.end64:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call9) #11
  br label %if.then69

disable_clk:                                      ; preds = %if.end42
  %call67 = call i32 @i2c_add_adapter(ptr noundef %adap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %disable_clk.cleanup_crit_edge, label %disable_clk.if.then69_crit_edge

disable_clk.if.then69_crit_edge:                  ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

disable_clk.cleanup_crit_edge:                    ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then69:                                        ; preds = %disable_clk.if.then69_crit_edge, %do.end64, %do.end41
  %ret.0130 = phi i32 [ %call67, %disable_clk.if.then69_crit_edge ], [ -22, %do.end41 ], [ %call.i125, %do.end64 ]
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %32) #8
  call void @clk_unprepare(ptr noundef %32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %disable_clk.cleanup_crit_edge, %if.then3.i, %if.end29.cleanup_crit_edge, %do.end26, %do.end, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ -22, %do.end ], [ %13, %do.end26 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %ret.0130, %if.then69 ], [ 0, %disable_clk.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i123, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  %clk = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_fi2c_hw_init(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_cycle = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %clk_cycle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_cycle, align 8
  %membase = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %5 = or i32 %4, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %1)
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 8
  %add.ptr9 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %mul = mul i32 %1, 5
  %div = udiv i32 %mul, 9
  %13 = tail call i32 @llvm.bswap.i32(i32 %div)
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 8
  %add.ptr14 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %13) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %div1839 = lshr i32 %1, 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %div1839)
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 8
  %add.ptr20 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %16) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %div2440 = lshr i32 %1, 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %div2440)
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 8
  %add.ptr26 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %19) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 8
  %add.ptr.i42 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 50331648) #8, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %membase = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %enabled_irqs = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled_irqs, align 8
  %and = and i32 %5, %3
  %and2 = and i32 %and, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %entry.complete_crit_edge

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.end:                                           ; preds = %entry
  %and3 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then7, !prof !82

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 7
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -11, ptr %error, align 4
  br label %complete

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end24, label %if.then17, !prof !82

if.then17:                                        ; preds = %if.end8
  %error18 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 7
  %7 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -6, ptr %error18, align 4
  %flags = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and19 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then17.stop_crit_edge, label %if.then21

if.then17.stop_crit_edge:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uniphier_fi2c_stop(ptr noundef %dev_id)
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %or = or i32 %11, 16
  store i32 %or, ptr %flags, align 8
  br label %complete

if.end24:                                         ; preds = %if.end8
  %and25 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end24
  %len = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not = icmp eq i32 %13, 0
  br i1 %tobool28.not, label %if.then27.data_done_crit_edge, label %do.body.lr.ph.i

if.then27.data_done_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_done

do.body.lr.ph.i:                                  ; preds = %if.then27
  %buf.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %15, i32 1
  store ptr %incdec.ptr.i, ptr %buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv.i = zext i8 %17 to i32
  %18 = shl nuw i32 %conv.i, 24
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !74
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 8
  %dec6.i = add i32 %22, -1
  store i32 %dec6.i, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i)
  %tobool1.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool1.not.i, label %do.body.lr.ph.i.handled_crit_edge, label %do.body.i.1

do.body.lr.ph.i.handled_crit_edge:                ; preds = %do.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body.i.1:                                      ; preds = %do.body.lr.ph.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i.1 = getelementptr i8, ptr %24, i32 1
  store ptr %incdec.ptr.i.1, ptr %buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i.1 = zext i8 %26 to i32
  %27 = shl nuw i32 %conv.i.1, 24
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %27) #8, !srcloc !74
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 8
  %dec6.i.1 = add i32 %31, -1
  store i32 %dec6.i.1, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.1)
  %tobool1.not.i.1 = icmp eq i32 %dec6.i.1, 0
  br i1 %tobool1.not.i.1, label %do.body.i.1.handled_crit_edge, label %do.body.i.2

do.body.i.1.handled_crit_edge:                    ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body.i.2:                                      ; preds = %do.body.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i.2 = getelementptr i8, ptr %33, i32 1
  store ptr %incdec.ptr.i.2, ptr %buf.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv.i.2 = zext i8 %35 to i32
  %36 = shl nuw i32 %conv.i.2, 24
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %36) #8, !srcloc !74
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 8
  %dec6.i.2 = add i32 %40, -1
  store i32 %dec6.i.2, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.2)
  %tobool1.not.i.2 = icmp eq i32 %dec6.i.2, 0
  br i1 %tobool1.not.i.2, label %do.body.i.2.handled_crit_edge, label %do.body.i.3

do.body.i.2.handled_crit_edge:                    ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body.i.3:                                      ; preds = %do.body.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i.3 = getelementptr i8, ptr %42, i32 1
  store ptr %incdec.ptr.i.3, ptr %buf.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv.i.3 = zext i8 %44 to i32
  %45 = shl nuw i32 %conv.i.3, 24
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %45) #8, !srcloc !74
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 8
  %dec6.i.3 = add i32 %49, -1
  store i32 %dec6.i.3, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.3)
  %tobool1.not.i.3 = icmp eq i32 %dec6.i.3, 0
  br i1 %tobool1.not.i.3, label %do.body.i.3.handled_crit_edge, label %do.body.i.4

do.body.i.3.handled_crit_edge:                    ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body.i.4:                                      ; preds = %do.body.i.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i.4 = getelementptr i8, ptr %51, i32 1
  store ptr %incdec.ptr.i.4, ptr %buf.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv.i.4 = zext i8 %53 to i32
  %54 = shl nuw i32 %conv.i.4, 24
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %54) #8, !srcloc !74
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 8
  %dec6.i.4 = add i32 %58, -1
  store i32 %dec6.i.4, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.4)
  %tobool1.not.i.4 = icmp eq i32 %dec6.i.4, 0
  br i1 %tobool1.not.i.4, label %do.body.i.4.handled_crit_edge, label %do.body.i.5

do.body.i.4.handled_crit_edge:                    ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body.i.5:                                      ; preds = %do.body.i.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i.5 = getelementptr i8, ptr %60, i32 1
  store ptr %incdec.ptr.i.5, ptr %buf.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %conv.i.5 = zext i8 %62 to i32
  %63 = shl nuw i32 %conv.i.5, 24
  %64 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %63) #8, !srcloc !74
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 8
  %dec6.i.5 = add i32 %67, -1
  store i32 %dec6.i.5, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.5)
  %tobool1.not.i.5 = icmp eq i32 %dec6.i.5, 0
  br i1 %tobool1.not.i.5, label %do.body.i.5.handled_crit_edge, label %do.body.i.6

do.body.i.5.handled_crit_edge:                    ; preds = %do.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body.i.6:                                      ; preds = %do.body.i.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i.6 = getelementptr i8, ptr %69, i32 1
  store ptr %incdec.ptr.i.6, ptr %buf.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i.6 = zext i8 %71 to i32
  %72 = shl nuw i32 %conv.i.6, 24
  %73 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %72) #8, !srcloc !74
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 8
  %dec6.i.6 = add i32 %76, -1
  store i32 %dec6.i.6, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.6)
  %tobool1.not.i.6 = icmp eq i32 %dec6.i.6, 0
  br i1 %tobool1.not.i.6, label %do.body.i.6.handled_crit_edge, label %do.body.i.7

do.body.i.6.handled_crit_edge:                    ; preds = %do.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body.i.7:                                      ; preds = %do.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i.7 = getelementptr i8, ptr %78, i32 1
  store ptr %incdec.ptr.i.7, ptr %buf.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %conv.i.7 = zext i8 %80 to i32
  %81 = shl nuw i32 %conv.i.7, 24
  %82 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %83, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %81) #8, !srcloc !74
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 8
  %dec6.i.7 = add i32 %85, -1
  store i32 %dec6.i.7, ptr %len, align 8
  br label %handled

if.end31:                                         ; preds = %if.end24
  %and32 = and i32 %and, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  %len.i114 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 4
  %86 = ptrtoint ptr %len.i114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.not9.i = icmp eq i32 %87, 0
  br i1 %tobool1.not9.i, label %if.then34.uniphier_fi2c_drain_rxfifo.exit_crit_edge, label %if.end.lr.ph.i

if.then34.uniphier_fi2c_drain_rxfifo.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_fi2c_drain_rxfifo.exit

if.end.lr.ph.i:                                   ; preds = %if.then34
  %flags.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 8
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %89, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 1
  %buf.i116 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %fifo_left.010.i = phi i32 [ %cond.i, %if.end.lr.ph.i ], [ %dec.i, %if.end.i.if.end.i_crit_edge ]
  %dec.i = add nsw i32 %fifo_left.010.i, -1
  %90 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase, align 8
  %add.ptr.i117 = getelementptr i8, ptr %91, i32 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #8, !srcloc !71
  %93 = lshr i32 %92, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %conv.i118 = trunc i32 %93 to i8
  %94 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buf.i116, align 4
  %incdec.ptr.i119 = getelementptr i8, ptr %95, i32 1
  store ptr %incdec.ptr.i119, ptr %buf.i116, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv.i118, ptr %95, align 1
  %97 = ptrtoint ptr %len.i114 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i114, align 8
  %dec4.i = add i32 %98, -1
  store i32 %dec4.i, ptr %len.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec4.i)
  %tobool1.not.i120 = icmp eq i32 %dec4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fifo_left.010.i)
  %cmp.i121 = icmp ult i32 %fifo_left.010.i, 2
  %or.cond.i122 = select i1 %tobool1.not.i120, i1 true, i1 %cmp.i121
  br i1 %or.cond.i122, label %if.end.i.uniphier_fi2c_drain_rxfifo.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.uniphier_fi2c_drain_rxfifo.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_fi2c_drain_rxfifo.exit

uniphier_fi2c_drain_rxfifo.exit:                  ; preds = %if.end.i.uniphier_fi2c_drain_rxfifo.exit_crit_edge, %if.then34.uniphier_fi2c_drain_rxfifo.exit_crit_edge
  %99 = ptrtoint ptr %len.i114 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool36.not = icmp ne i32 %100, 0
  %and37 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %if.end40, label %uniphier_fi2c_drain_rxfifo.exit.data_done_crit_edge

uniphier_fi2c_drain_rxfifo.exit.data_done_crit_edge: ; preds = %uniphier_fi2c_drain_rxfifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %data_done

if.end40:                                         ; preds = %uniphier_fi2c_drain_rxfifo.exit
  %flags41 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 8
  %101 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags41, align 8
  %and42 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.handled_crit_edge, label %if.then50, !prof !82

if.end40.handled_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %100)
  %cmp = icmp ult i32 %100, 9
  %and54 = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %or.cond113 = select i1 %cmp, i1 %tobool55.not, i1 false
  br i1 %or.cond113, label %if.then56, label %if.then50.if.end61_crit_edge

if.then50.if.end61_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %enabled_irqs, align 8
  %or58 = or i32 %104, 16
  store i32 %or58, ptr %enabled_irqs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %enabled_irqs, align 8
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #8
  %108 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %membase, align 8
  %add.ptr.i124 = getelementptr i8, ptr %109, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %107) #8, !srcloc !74
  %110 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags41, align 8
  %or60 = or i32 %111, 8
  store i32 %or60, ptr %flags41, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.then50.if.end61_crit_edge
  %112 = ptrtoint ptr %len.i114 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp63 = icmp ult i32 %113, 2
  br i1 %cmp63, label %do.body, label %if.end61.handled_crit_edge

if.end61.handled_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %handled

do.body:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %membase, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 150994944) #8, !srcloc !74
  br label %handled

data_done:                                        ; preds = %uniphier_fi2c_drain_rxfifo.exit.data_done_crit_edge, %if.then27.data_done_crit_edge
  %flags71 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %dev_id, i32 0, i32 8
  %116 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags71, align 8
  %and72 = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %data_done.complete_crit_edge, label %data_done.stop_crit_edge

data_done.stop_crit_edge:                         ; preds = %data_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop

data_done.complete_crit_edge:                     ; preds = %data_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

stop:                                             ; preds = %data_done.stop_crit_edge, %if.then17.stop_crit_edge
  %118 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %enabled_irqs, align 8
  %or.i = or i32 %119, 192
  store i32 %or.i, ptr %enabled_irqs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %enabled_irqs, align 8
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #8
  %123 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase, align 8
  %add.ptr.i.i = getelementptr i8, ptr %124, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %122) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %125 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %membase, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 167772160) #8, !srcloc !74
  br label %handled

complete:                                         ; preds = %data_done.complete_crit_edge, %if.then21, %if.then7, %entry.complete_crit_edge
  %127 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %enabled_irqs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %enabled_irqs, align 8
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #8
  %131 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %membase, align 8
  %add.ptr.i128 = getelementptr i8, ptr %132, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %130) #8, !srcloc !74
  tail call void @complete(ptr noundef %dev_id) #8
  br label %handled

handled:                                          ; preds = %complete, %stop, %do.body, %if.end61.handled_crit_edge, %if.end40.handled_crit_edge, %do.body.i.7, %do.body.i.6.handled_crit_edge, %do.body.i.5.handled_crit_edge, %do.body.i.4.handled_crit_edge, %do.body.i.3.handled_crit_edge, %do.body.i.2.handled_crit_edge, %do.body.i.1.handled_crit_edge, %do.body.lr.ph.i.handled_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %133 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %134 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %membase, align 8
  %add.ptr.i130 = getelementptr i8, ptr %135, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %133) #8, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %handled, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %handled ], [ 0, %if.end31.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_master_xfer(ptr noundef %adap, ptr noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.i2c_msg, ptr %msgs, i32 %num
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %membase.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %5 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %busy_cnt6.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 9
  br i1 %tobool.not.i, label %uniphier_fi2c_check_bus_busy.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %busy_cnt6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %busy_cnt6.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %busy_cnt6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp ugt i32 %7, 3
  br i1 %cmp.i, label %uniphier_fi2c_check_bus_busy.exit.thread40, label %if.then.i.cleanup12_crit_edge

if.then.i.cleanup12_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

uniphier_fi2c_check_bus_busy.exit.thread40:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #8, !srcloc !74
  %adap.i.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 1
  %call.i.i = tail call i32 @i2c_recover_bus(ptr noundef %adap.i.i) #8
  %10 = ptrtoint ptr %busy_cnt6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %busy_cnt6.i, align 4
  br label %cleanup12

uniphier_fi2c_check_bus_busy.exit:                ; preds = %entry
  %11 = ptrtoint ptr %busy_cnt6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %busy_cnt6.i, align 4
  %timeout.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %dev119.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %uniphier_fi2c_master_xfer_one.exit.for.cond_crit_edge, %uniphier_fi2c_check_bus_busy.exit
  %msg.0 = phi ptr [ %msgs, %uniphier_fi2c_check_bus_busy.exit ], [ %add.ptr1, %uniphier_fi2c_master_xfer_one.exit.for.cond_crit_edge ]
  %repeat.0.off0 = phi i1 [ false, %uniphier_fi2c_check_bus_busy.exit ], [ %lnot, %uniphier_fi2c_master_xfer_one.exit.for.cond_crit_edge ]
  %cmp = icmp ult ptr %msg.0, %add.ptr
  br i1 %cmp, label %for.body, label %for.cond.cleanup12_crit_edge

for.cond.cleanup12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

for.body:                                         ; preds = %for.cond
  %add.ptr1 = getelementptr %struct.i2c_msg, ptr %msg.0, i32 1
  %cmp2 = icmp eq ptr %add.ptr1, %add.ptr
  br i1 %cmp2, label %for.body.lor.end_crit_edge, label %lor.rhs

for.body.lor.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool3 = icmp slt i16 %13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.lor.end_crit_edge
  %14 = phi i1 [ true, %for.body.lor.end_crit_edge ], [ %tobool3, %lor.rhs ]
  %15 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i31 = icmp eq i16 %19, 0
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 2
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len.i, align 4
  %conv4.i = zext i16 %21 to i32
  %len5.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 4
  %22 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv4.i, ptr %len5.i, align 8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf.i, align 4
  %buf6.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 5
  %25 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %buf6.i, align 4
  %enabled_irqs.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 6
  %26 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %enabled_irqs.i, align 8
  %error.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 7
  %27 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %error.i, align 4
  %flags7.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 8
  %spec.select = select i1 %14, i32 2, i32 0
  %28 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select, ptr %flags7.i, align 8
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %membase.i.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %33, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 100663296) #8, !srcloc !74
  %lock.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 11
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %34 = ptrtoint ptr %msg.0 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %msg.0, align 4
  br i1 %tobool.not.i31, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %lor.end
  %36 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags7.i, align 8
  %or.i.i = or i32 %37, 1
  store i32 %or.i.i, ptr %flags7.i, align 8
  %38 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %39)
  %cmp.i.i = icmp ult i32 %39, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i.i, label %do.body.i.i, label %do.body4.i.i, !prof !82

do.body.i.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len5.i, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %43 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i171.i = getelementptr i8, ptr %44, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %42) #8, !srcloc !74
  br label %uniphier_fi2c_rx_init.exit.i

do.body4.i.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %46, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 0) #8, !srcloc !74
  %47 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags7.i, align 8
  %or9.i.i = or i32 %48, 4
  store i32 %or9.i.i, ptr %flags7.i, align 8
  br label %uniphier_fi2c_rx_init.exit.i

uniphier_fi2c_rx_init.exit.i:                     ; preds = %do.body4.i.i, %do.body.i.i
  %.sink26.i.i = phi i32 [ 256, %do.body4.i.i ], [ 272, %do.body.i.i ]
  %49 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enabled_irqs.i, align 8
  %or11.i.i = or i32 %50, %.sink26.i.i
  store i32 %or11.i.i, ptr %enabled_irqs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enabled_irqs.i, align 8
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  %54 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i.i33 = getelementptr i8, ptr %55, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i33, i32 %53) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %conv.i.i = zext i16 %35 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %or14.i.i = or i32 %shl.i.i, 257
  %56 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i) #8
  %57 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i.i, align 8
  %add.ptr16.i.i = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %56) #8, !srcloc !74
  br i1 %repeat.0.off0, label %uniphier_fi2c_rx_init.exit.i.if.end31.i_crit_edge, label %uniphier_fi2c_rx_init.exit.i.do.body26.i_crit_edge

uniphier_fi2c_rx_init.exit.i.do.body26.i_crit_edge: ; preds = %uniphier_fi2c_rx_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

uniphier_fi2c_rx_init.exit.i.if.end31.i_crit_edge: ; preds = %uniphier_fi2c_rx_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else.i:                                        ; preds = %lor.end
  %59 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %enabled_irqs.i, align 8
  %or.i172.i = or i32 %60, 512
  store i32 %or.i172.i, ptr %enabled_irqs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enabled_irqs.i, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %64 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i174.i = getelementptr i8, ptr %65, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i174.i, i32 %63) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i175.i = getelementptr i8, ptr %67, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 0) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %conv.i176.i = zext i16 %35 to i32
  %shl.i177.i = shl nuw nsw i32 %conv.i176.i, 1
  %or3.i.i = or i32 %shl.i177.i, 256
  %68 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i) #8
  %69 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %68) #8, !srcloc !74
  br i1 %repeat.0.off0, label %if.else.i.if.end31.i_crit_edge, label %if.then.i.i

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then.i.i:                                      ; preds = %if.else.i
  %71 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool1.not11.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool1.not11.i.i.i, label %if.then.i.i.do.body26.i_crit_edge, label %do.body.i.i.i

if.then.i.i.do.body26.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

do.body.i.i.i:                                    ; preds = %if.then.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf6.i, align 4
  %incdec.ptr.i.i.i = getelementptr i8, ptr %74, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %buf6.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  %conv.i.i.i = zext i8 %76 to i32
  %77 = shl nuw i32 %conv.i.i.i, 24
  %78 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i11.i.i = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %77) #8, !srcloc !74
  %80 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len5.i, align 8
  %dec6.i.i.i = add i32 %81, -1
  store i32 %dec6.i.i.i, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %dec6.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.body.i.i.i.do.body26.i_crit_edge, label %do.body.i.i.i.1

do.body.i.i.i.do.body26.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

do.body.i.i.i.1:                                  ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buf6.i, align 4
  %incdec.ptr.i.i.i.1 = getelementptr i8, ptr %83, i32 1
  store ptr %incdec.ptr.i.i.i.1, ptr %buf6.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %conv.i.i.i.1 = zext i8 %85 to i32
  %86 = shl nuw i32 %conv.i.i.i.1, 24
  %87 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i11.i.i.1 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.1, i32 %86) #8, !srcloc !74
  %89 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len5.i, align 8
  %dec6.i.i.i.1 = add i32 %90, -1
  store i32 %dec6.i.i.i.1, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.i.i.1)
  %tobool1.not.i.i.i.1 = icmp eq i32 %dec6.i.i.i.1, 0
  br i1 %tobool1.not.i.i.i.1, label %do.body.i.i.i.1.do.body26.i_crit_edge, label %do.body.i.i.i.2

do.body.i.i.i.1.do.body26.i_crit_edge:            ; preds = %do.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

do.body.i.i.i.2:                                  ; preds = %do.body.i.i.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %91 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf6.i, align 4
  %incdec.ptr.i.i.i.2 = getelementptr i8, ptr %92, i32 1
  store ptr %incdec.ptr.i.i.i.2, ptr %buf6.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 1
  %conv.i.i.i.2 = zext i8 %94 to i32
  %95 = shl nuw i32 %conv.i.i.i.2, 24
  %96 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i11.i.i.2 = getelementptr i8, ptr %97, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.2, i32 %95) #8, !srcloc !74
  %98 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len5.i, align 8
  %dec6.i.i.i.2 = add i32 %99, -1
  store i32 %dec6.i.i.i.2, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.i.i.2)
  %tobool1.not.i.i.i.2 = icmp eq i32 %dec6.i.i.i.2, 0
  br i1 %tobool1.not.i.i.i.2, label %do.body.i.i.i.2.do.body26.i_crit_edge, label %do.body.i.i.i.3

do.body.i.i.i.2.do.body26.i_crit_edge:            ; preds = %do.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

do.body.i.i.i.3:                                  ; preds = %do.body.i.i.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buf6.i, align 4
  %incdec.ptr.i.i.i.3 = getelementptr i8, ptr %101, i32 1
  store ptr %incdec.ptr.i.i.i.3, ptr %buf6.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  %conv.i.i.i.3 = zext i8 %103 to i32
  %104 = shl nuw i32 %conv.i.i.i.3, 24
  %105 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i11.i.i.3 = getelementptr i8, ptr %106, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.3, i32 %104) #8, !srcloc !74
  %107 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len5.i, align 8
  %dec6.i.i.i.3 = add i32 %108, -1
  store i32 %dec6.i.i.i.3, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.i.i.3)
  %tobool1.not.i.i.i.3 = icmp eq i32 %dec6.i.i.i.3, 0
  br i1 %tobool1.not.i.i.i.3, label %do.body.i.i.i.3.do.body26.i_crit_edge, label %do.body.i.i.i.4

do.body.i.i.i.3.do.body26.i_crit_edge:            ; preds = %do.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

do.body.i.i.i.4:                                  ; preds = %do.body.i.i.i.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %buf6.i, align 4
  %incdec.ptr.i.i.i.4 = getelementptr i8, ptr %110, i32 1
  store ptr %incdec.ptr.i.i.i.4, ptr %buf6.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %110, align 1
  %conv.i.i.i.4 = zext i8 %112 to i32
  %113 = shl nuw i32 %conv.i.i.i.4, 24
  %114 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i11.i.i.4 = getelementptr i8, ptr %115, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.4, i32 %113) #8, !srcloc !74
  %116 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len5.i, align 8
  %dec6.i.i.i.4 = add i32 %117, -1
  store i32 %dec6.i.i.i.4, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.i.i.4)
  %tobool1.not.i.i.i.4 = icmp eq i32 %dec6.i.i.i.4, 0
  br i1 %tobool1.not.i.i.i.4, label %do.body.i.i.i.4.do.body26.i_crit_edge, label %do.body.i.i.i.5

do.body.i.i.i.4.do.body26.i_crit_edge:            ; preds = %do.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

do.body.i.i.i.5:                                  ; preds = %do.body.i.i.i.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %buf6.i, align 4
  %incdec.ptr.i.i.i.5 = getelementptr i8, ptr %119, i32 1
  store ptr %incdec.ptr.i.i.i.5, ptr %buf6.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %119, align 1
  %conv.i.i.i.5 = zext i8 %121 to i32
  %122 = shl nuw i32 %conv.i.i.i.5, 24
  %123 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i11.i.i.5 = getelementptr i8, ptr %124, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.5, i32 %122) #8, !srcloc !74
  %125 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len5.i, align 8
  %dec6.i.i.i.5 = add i32 %126, -1
  store i32 %dec6.i.i.i.5, ptr %len5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6.i.i.i.5)
  %tobool1.not.i.i.i.5 = icmp eq i32 %dec6.i.i.i.5, 0
  br i1 %tobool1.not.i.i.i.5, label %do.body.i.i.i.5.do.body26.i_crit_edge, label %do.body.i.i.i.6

do.body.i.i.i.5.do.body26.i_crit_edge:            ; preds = %do.body.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26.i

do.body.i.i.i.6:                                  ; preds = %do.body.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %127 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %buf6.i, align 4
  %incdec.ptr.i.i.i.6 = getelementptr i8, ptr %128, i32 1
  store ptr %incdec.ptr.i.i.i.6, ptr %buf6.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %128, align 1
  %conv.i.i.i.6 = zext i8 %130 to i32
  %131 = shl nuw i32 %conv.i.i.i.6, 24
  %132 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i11.i.i.6 = getelementptr i8, ptr %133, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i.6, i32 %131) #8, !srcloc !74
  %134 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len5.i, align 8
  %dec6.i.i.i.6 = add i32 %135, -1
  store i32 %dec6.i.i.i.6, ptr %len5.i, align 8
  br label %do.body26.i

do.body26.i:                                      ; preds = %do.body.i.i.i.6, %do.body.i.i.i.5.do.body26.i_crit_edge, %do.body.i.i.i.4.do.body26.i_crit_edge, %do.body.i.i.i.3.do.body26.i_crit_edge, %do.body.i.i.i.2.do.body26.i_crit_edge, %do.body.i.i.i.1.do.body26.i_crit_edge, %do.body.i.i.i.do.body26.i_crit_edge, %if.then.i.i.do.body26.i_crit_edge, %uniphier_fi2c_rx_init.exit.i.do.body26.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %136 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %membase.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 201326592) #8, !srcloc !74
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.body26.i, %if.else.i.if.end31.i_crit_edge, %uniphier_fi2c_rx_init.exit.i.if.end31.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call14.i) #8
  %138 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %timeout.i, align 4
  %call34.i = tail call i32 @wait_for_completion_timeout(ptr noundef %16, i32 noundef %139) #8
  %call44.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %140 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %enabled_irqs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %141 = ptrtoint ptr %enabled_irqs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %enabled_irqs.i, align 8
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #8
  %144 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i180.i = getelementptr i8, ptr %145, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %143) #8, !srcloc !74
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call44.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool51.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool51.not.i, label %do.end55.i, label %if.end56.i

do.end55.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119.i, ptr noundef nonnull @.str.19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %146 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i182.i = getelementptr i8, ptr %147, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i182.i, i32 16777216) #8, !srcloc !74
  %adap.i.i34 = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 1
  %call.i.i35 = tail call i32 @i2c_recover_bus(ptr noundef %adap.i.i34) #8
  br label %cleanup12

if.end56.i:                                       ; preds = %if.end31.i
  %148 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags7.i, align 8
  %and58.i = and i32 %149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.if.end122.i_crit_edge, label %if.then62.i, !prof !82

if.end56.i.if.end122.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.i

if.then62.i:                                      ; preds = %if.end56.i
  %call63.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call63.i, 20000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 374) #8
  %150 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %membase.i.i, align 8
  %add.ptr79186.i = getelementptr i8, ptr %151, i32 44
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79186.i) #8, !srcloc !71
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %154 = and i32 %153, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %154)
  %155 = icmp eq i32 %154, 2048
  br i1 %155, label %if.then62.i.for.end.i_crit_edge, label %if.then62.i.land.lhs.true90.i_crit_edge

if.then62.i.land.lhs.true90.i_crit_edge:          ; preds = %if.then62.i
  br label %land.lhs.true90.i

if.then62.i.for.end.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.lhs.true90.i:                                ; preds = %if.then105.i.land.lhs.true90.i_crit_edge, %if.then62.i.land.lhs.true90.i_crit_edge
  %call91.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call91.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call91.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then95.i, label %if.then105.i

if.then95.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %membase.i.i, align 8
  %add.ptr99.i = getelementptr i8, ptr %157, i32 44
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.i) #8, !srcloc !71
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  br label %for.end.i

if.then105.i:                                     ; preds = %land.lhs.true90.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %160 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %membase.i.i, align 8
  %add.ptr79.i = getelementptr i8, ptr %161, i32 44
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79.i) #8, !srcloc !71
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %164 = and i32 %163, 2304
  %165 = icmp eq i32 %164, 2048
  br i1 %165, label %if.then105.i.for.end.i_crit_edge, label %if.then105.i.land.lhs.true90.i_crit_edge

if.then105.i.land.lhs.true90.i_crit_edge:         ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true90.i

if.then105.i.for.end.i_crit_edge:                 ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.then105.i.for.end.i_crit_edge, %if.then95.i, %if.then62.i.for.end.i_crit_edge
  %status.0.i = phi i32 [ %159, %if.then95.i ], [ %153, %if.then62.i.for.end.i_crit_edge ], [ %163, %if.then105.i.for.end.i_crit_edge ]
  %and108.i = and i32 %status.0.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  %and110.i = and i32 %status.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  %not.tobool109.not.i = xor i1 %tobool109.not.i, true
  %tobool114.not.i = select i1 %not.tobool109.not.i, i1 %tobool111.not.i, i1 false
  br i1 %tobool114.not.i, label %for.end.i.if.end122.i_crit_edge, label %do.end118.i

for.end.i.if.end122.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.i

do.end118.i:                                      ; preds = %for.end.i
  %phi.sel.i = select i1 %tobool111.not.i, i32 0, i32 -110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119.i, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %166 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i37 = getelementptr i8, ptr %167, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 16777216) #8, !srcloc !74
  %adap.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %16, i32 0, i32 1
  %call.i = tail call i32 @i2c_recover_bus(ptr noundef %adap.i) #8
  br i1 %tobool109.not.i, label %do.end118.i.cleanup12_crit_edge, label %do.end118.i.uniphier_fi2c_master_xfer_one.exit_crit_edge

do.end118.i.uniphier_fi2c_master_xfer_one.exit_crit_edge: ; preds = %do.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_fi2c_master_xfer_one.exit

do.end118.i.cleanup12_crit_edge:                  ; preds = %do.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

if.end122.i:                                      ; preds = %for.end.i.if.end122.i_crit_edge, %if.end56.i.if.end122.i_crit_edge
  %168 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %error.i, align 4
  br label %uniphier_fi2c_master_xfer_one.exit

uniphier_fi2c_master_xfer_one.exit:               ; preds = %if.end122.i, %do.end118.i.uniphier_fi2c_master_xfer_one.exit_crit_edge
  %retval.1.i = phi i32 [ %169, %if.end122.i ], [ %phi.sel.i, %do.end118.i.uniphier_fi2c_master_xfer_one.exit_crit_edge ]
  %tobool7.not = icmp eq i32 %retval.1.i, 0
  %lnot = xor i1 %14, true
  br i1 %tobool7.not, label %uniphier_fi2c_master_xfer_one.exit.for.cond_crit_edge, label %uniphier_fi2c_master_xfer_one.exit.cleanup12_crit_edge

uniphier_fi2c_master_xfer_one.exit.cleanup12_crit_edge: ; preds = %uniphier_fi2c_master_xfer_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup12

uniphier_fi2c_master_xfer_one.exit.for.cond_crit_edge: ; preds = %uniphier_fi2c_master_xfer_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

cleanup12:                                        ; preds = %uniphier_fi2c_master_xfer_one.exit.cleanup12_crit_edge, %do.end118.i.cleanup12_crit_edge, %do.end55.i, %for.cond.cleanup12_crit_edge, %uniphier_fi2c_check_bus_busy.exit.thread40, %if.then.i.cleanup12_crit_edge
  %retval.2 = phi i32 [ -11, %uniphier_fi2c_check_bus_busy.exit.thread40 ], [ -11, %if.then.i.cleanup12_crit_edge ], [ -110, %do.end55.i ], [ -110, %do.end118.i.cleanup12_crit_edge ], [ %num, %for.cond.cleanup12_crit_edge ], [ %retval.1.i, %uniphier_fi2c_master_xfer_one.exit.cleanup12_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_fi2c_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_get_scl(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %membase = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %5 = lshr i32 %4, 24
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_fi2c_set_scl(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.not = icmp eq i32 %val, 0
  %2 = select i1 %tobool.not.not, i32 0, i32 16777216
  %membase = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_get_sda(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %membase = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %5 = lshr i32 %4, 26
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_fi2c_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %membase.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #8, !srcloc !74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uniphier_fi2c_stop(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled_irqs = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled_irqs, align 8
  %or = or i32 %1, 192
  store i32 %or, ptr %enabled_irqs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %enabled_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled_irqs, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %membase.i = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 167772160) #8, !srcloc !74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_fi2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.uniphier_fi2c_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @uniphier_fi2c_hw_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_i2c_uniphier_f__288_641_uniphier_fi2c_drv_init6, !1, !"__initcall__kmod_i2c_uniphier_f__288_641_uniphier_fi2c_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 641, i32 1}
!2 = !{ptr @__exitcall_uniphier_fi2c_drv_exit, !1, !"__exitcall_uniphier_fi2c_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 643, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 644, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 645, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 636, i32 12}
!12 = !{ptr @uniphier_fi2c_drv, !13, !"uniphier_fi2c_drv", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 632, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 535, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 539, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uniphier_fi2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @uniphier_fi2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 545, i32 3}
!26 = !{ptr @uniphier_fi2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @uniphier_fi2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 555, i32 3}
!30 = !{ptr @uniphier_fi2c_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @uniphier_fi2c_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @uniphier_fi2c_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 562, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 567, i32 27}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 577, i32 3}
!39 = !{ptr @uniphier_fi2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @uniphier_fi2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @uniphier_fi2c_algo, !45, !"uniphier_fi2c_algo", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 437, i32 35}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 361, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @uniphier_fi2c_master_xfer_one._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @uniphier_fi2c_master_xfer_one._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 376, i32 4}
!53 = !{ptr @uniphier_fi2c_master_xfer_one._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @uniphier_fi2c_master_xfer_one._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @uniphier_fi2c_bus_recovery_info, !56, !"uniphier_fi2c_bus_recovery_info", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 471, i32 37}
!57 = !{ptr @uniphier_fi2c_match, !58, !"uniphier_fi2c_match", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 626, i32 34}
!59 = !{ptr @uniphier_fi2c_pm_ops, !60, !"uniphier_fi2c_pm_ops", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-uniphier-f.c", i32 622, i32 32}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{i64 6871303}
!72 = !{i64 2155607126}
!73 = !{i64 2155607430}
!74 = !{i64 6870885}
!75 = !{i64 2155593922}
!76 = !{i64 2155607830}
!77 = !{i64 2155608238}
!78 = !{i64 2155608666}
!79 = !{i64 2155609083}
!80 = !{i64 2155594612}
!81 = !{i64 2155588129}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2155584980}
!84 = !{i64 2155585772}
!85 = !{i64 2155586009}
!86 = !{i64 2155589975}
!87 = !{i64 2155587286}
!88 = !{i64 2155586455}
!89 = !{i64 2155604052}
!90 = !{i64 2155595702}
!91 = !{i64 2155593218}
!92 = !{i64 2155590699}
!93 = !{i64 2155591211}
!94 = !{i64 2155596836}
!95 = !{i64 2155601345}
!96 = !{i64 2155601843}
!97 = !{i64 2155605338}
!98 = !{i64 2155605758}
!99 = !{i64 2155606541}
