; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-uniphier.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-uniphier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_i2c_priv = type { %struct.completion, %struct.i2c_adapter, ptr, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_uniphier__288_435_uniphier_i2c_drv_init6 = internal global ptr @uniphier_i2c_drv_init, section ".initcall6.init", align 4
@uniphier_i2c_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_i2c_probe, ptr @uniphier_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_i2c_drv_exit = internal global ptr @uniphier_i2c_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [68 x i8] c"i2c_uniphier.author=Masahiro Yamada <yamada.masahiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"i2c_uniphier.description=UniPhier I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [50 x i8] c"i2c_uniphier.file=drivers/i2c/busses/i2c-uniphier\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"i2c_uniphier.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uniphier-i2c\00", [19 x i8] zeroinitializer }, align 32
@uniphier_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @uniphier_i2c_suspend, ptr @uniphier_i2c_resume, ptr @uniphier_i2c_suspend, ptr @uniphier_i2c_resume, ptr @uniphier_i2c_suspend, ptr @uniphier_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@uniphier_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid clock-frequency %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uniphier_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/i2c/busses/i2c-uniphier.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_i2c_probe._entry_ptr = internal global ptr @uniphier_i2c_probe._entry, section ".printk_index", align 4
@uniphier_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@uniphier_i2c_probe._entry_ptr.9 = internal global ptr @uniphier_i2c_probe._entry.7, section ".printk_index", align 4
@uniphier_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"input clock rate should not be zero\0A\00", [59 x i8] zeroinitializer }, align 32
@uniphier_i2c_probe._entry_ptr.12 = internal global ptr @uniphier_i2c_probe._entry.10, section ".printk_index", align 4
@uniphier_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @uniphier_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @uniphier_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UniPhier I2C\00", [19 x i8] zeroinitializer }, align 32
@uniphier_i2c_bus_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @uniphier_i2c_get_scl, ptr @uniphier_i2c_set_scl, ptr @uniphier_i2c_get_sda, ptr null, ptr null, ptr null, ptr @uniphier_i2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@uniphier_i2c_probe._entry_ptr.16 = internal global ptr @uniphier_i2c_probe._entry.14, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@uniphier_i2c_xfer_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"transaction timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uniphier_i2c_xfer_byte\00", [41 x i8] zeroinitializer }, align 32
@uniphier_i2c_xfer_byte._entry_ptr = internal global ptr @uniphier_i2c_xfer_byte._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"uniphier_i2c_drv\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 426, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 430, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"uniphier_i2c_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 420, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"uniphier_i2c_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 416, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 330, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 334, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 340, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 350, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"uniphier_i2c_algo\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 243, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 361, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"uniphier_i2c_bus_recovery_info\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 285, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 371, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 87, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [37 x i8] c"../drivers/i2c/busses/i2c-uniphier.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 75, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_uniphier_i2c_drv_exit, ptr @__initcall__kmod_i2c_uniphier__288_435_uniphier_i2c_drv_init6, ptr @uniphier_i2c_drv_exit, ptr @uniphier_i2c_probe._entry, ptr @uniphier_i2c_probe._entry.10, ptr @uniphier_i2c_probe._entry.14, ptr @uniphier_i2c_probe._entry.7, ptr @uniphier_i2c_probe._entry_ptr, ptr @uniphier_i2c_probe._entry_ptr.12, ptr @uniphier_i2c_probe._entry_ptr.16, ptr @uniphier_i2c_probe._entry_ptr.9, ptr @uniphier_i2c_xfer_byte._entry, ptr @uniphier_i2c_xfer_byte._entry_ptr, ptr @uniphier_i2c_drv, ptr @.str, ptr @uniphier_i2c_match, ptr @uniphier_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @uniphier_i2c_algo, ptr @.str.13, ptr @uniphier_i2c_bus_recovery_info, ptr @.str.15, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_bus_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_i2c_xfer_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_i2c_drv, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_i2c_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_i2c_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bus_speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_speed) #8
  %0 = ptrtoint ptr %bus_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_speed, align 4, !annotation !63
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1432, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %membase = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 2
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
  %clk = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %clk, align 4
  %cmp.i117 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call.i118 = call i32 @clk_prepare(ptr noundef %call20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i = icmp eq i32 %call.i118, 0
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
  br label %if.then65

if.end42:                                         ; preds = %if.end34
  %16 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_speed, align 4
  %div = udiv i32 %call36, %17
  %clk_cycle = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %clk_cycle to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %clk_cycle, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %call.i, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %call.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  %adap = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %adap, align 8
  %algo = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @uniphier_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev1, ptr %parent, align 8
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %of_node49 = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %25 = ptrtoint ptr %of_node49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %of_node49, align 8
  %name = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 1, i32 12
  %call51 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef 48) #8
  %bus_recovery_info = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 1, i32 16
  %26 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @uniphier_i2c_bus_recovery_info, ptr %bus_recovery_info, align 4
  %driver_data.i.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i119 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i119 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i119, align 4
  %29 = ptrtoint ptr %clk_cycle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_cycle, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 8
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #8, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  call void @arm_heavy_mb() #8
  %mul.i = mul i32 %30, 5
  %div.i = udiv i32 %mul.i, 9
  %shl.i = shl i32 %div.i, 16
  %or.i = or i32 %shl.i, %30
  %33 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 8
  %add.ptr.i = getelementptr i8, ptr %35, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #8, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %37, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 50331648) #8, !srcloc !65
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %call.i120 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @uniphier_i2c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %39, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool56.not = icmp eq i32 %call.i120, 0
  br i1 %tobool56.not, label %disable_clk, label %do.end60

do.end60:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call9) #11
  br label %if.then65

disable_clk:                                      ; preds = %if.end42
  %call63 = call i32 @i2c_add_adapter(ptr noundef %adap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %disable_clk.cleanup_crit_edge, label %disable_clk.if.then65_crit_edge

disable_clk.if.then65_crit_edge:                  ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

disable_clk.cleanup_crit_edge:                    ; preds = %disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %disable_clk.if.then65_crit_edge, %do.end60, %do.end41
  %ret.0125 = phi i32 [ %call63, %disable_clk.if.then65_crit_edge ], [ -22, %do.end41 ], [ %call.i120, %do.end60 ]
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %41) #8
  call void @clk_unprepare(ptr noundef %41) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %disable_clk.cleanup_crit_edge, %if.then3.i, %if.end29.cleanup_crit_edge, %do.end26, %do.end, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ -22, %do.end ], [ %13, %do.end26 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %ret.0125, %if.then65 ], [ 0, %disable_clk.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i118, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  %clk = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 3
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

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %dev_id) #8
  ret i32 1
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
define internal i32 @uniphier_i2c_master_xfer(ptr noundef %adap, ptr noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.i2c_msg, ptr %msgs, i32 %num
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %membase.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %busy_cnt.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 4
  br i1 %tobool.not.i, label %if.then.i, label %uniphier_i2c_check_bus_busy.exit

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %busy_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %busy_cnt.i, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %busy_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp ugt i32 %7, 3
  br i1 %cmp.i, label %uniphier_i2c_check_bus_busy.exit.thread28, label %if.then.i.cleanup9_crit_edge

if.then.i.cleanup9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

uniphier_i2c_check_bus_busy.exit.thread28:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @i2c_recover_bus(ptr noundef %adap) #8
  %8 = ptrtoint ptr %busy_cnt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %busy_cnt.i, align 8
  br label %cleanup9

uniphier_i2c_check_bus_busy.exit:                 ; preds = %entry
  %9 = ptrtoint ptr %busy_cnt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %busy_cnt.i, align 8
  %timeout.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %dev.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %uniphier_i2c_master_xfer_one.exit.for.cond_crit_edge, %uniphier_i2c_check_bus_busy.exit
  %msg.0 = phi ptr [ %msgs, %uniphier_i2c_check_bus_busy.exit ], [ %add.ptr1, %uniphier_i2c_master_xfer_one.exit.for.cond_crit_edge ]
  %cmp = icmp ult ptr %msg.0, %add.ptr
  br i1 %cmp, label %for.body, label %for.cond.cleanup9_crit_edge

for.cond.cleanup9_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

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
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3 = icmp slt i16 %11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body.lor.end_crit_edge
  %12 = phi i1 [ true, %for.body.lor.end_crit_edge ], [ %tobool3, %lor.rhs ]
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i23 = icmp eq i16 %15, 0
  %16 = ptrtoint ptr %msg.0 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msg.0, align 4
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 2
  %18 = ptrtoint ptr %len4.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 3
  %20 = ptrtoint ptr %buf5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf5.i, align 4
  %conv.i45.i = zext i16 %17 to i32
  %shl.i46.i = shl nuw nsw i32 %conv.i45.i, 1
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  br i1 %tobool.not.i23, label %if.else.i, label %if.then.i24

if.then.i24:                                      ; preds = %lor.end
  %or.i.i.i.i = or i32 %shl.i46.i, 3329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #8
  %membase.i.i.i.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !65
  %28 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timeout.i.i.i.i, align 4
  %call2.i.i.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %23, i32 noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i24.cleanup11.sink.split.i.i_crit_edge, label %if.end.i.i.i, !prof !70

if.then.i24.cleanup11.sink.split.i.i_crit_edge:   ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11.sink.split.i.i

if.end.i.i.i:                                     ; preds = %if.then.i24
  %30 = ptrtoint ptr %membase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i.i.i.i, align 8
  %add.ptr10.i.i.i.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %and.i.i.i = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.cleanup9_crit_edge, !prof !72

if.end.i.i.i.cleanup9_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %and6.i.i.i = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %while.cond.preheader.i.i, label %if.end5.i.i.i.if.end9.i_crit_edge

if.end5.i.i.i.if.end9.i_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

while.cond.preheader.i.i:                         ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool3.not32.i.i = icmp eq i16 %19, 0
  br i1 %tobool3.not32.i.i, label %while.cond.preheader.i.i.if.end9.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.if.end9.i_crit_edge:     ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec34.in.i.i = phi i16 [ %dec34.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %19, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %buf.addr.033.i.i = phi ptr [ %incdec.ptr.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %21, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec34.i.i = add i16 %dec34.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec34.i.i)
  %tobool5.not.i.i = icmp eq i16 %dec34.i.i, 0
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %35, align 4
  %or.i.i.i = select i1 %tobool5.not.i.i, i32 589824, i32 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %membase.i.i.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %35, i32 0, i32 2
  %37 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %or.i.i.i) #8, !srcloc !65
  %39 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %timeout.i.i.i.i, align 4
  %call2.i.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %35, i32 noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.cleanup11.sink.split.i.i_crit_edge, label %cleanup.i.i, !prof !70

while.body.i.i.cleanup11.sink.split.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11.sink.split.i.i

cleanup.i.i:                                      ; preds = %while.body.i.i
  %41 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase.i.i.i, align 8
  %add.ptr10.i.i.i = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %44 = lshr i32 %43, 24
  %conv10.i.i = trunc i32 %44 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.033.i.i, i32 1
  %45 = ptrtoint ptr %buf.addr.033.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv10.i.i, ptr %buf.addr.033.i.i, align 1
  br i1 %tobool5.not.i.i, label %cleanup.i.i.if.end9.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

cleanup.i.i.if.end9.i_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

cleanup11.sink.split.i.i:                         ; preds = %while.body.i.i.cleanup11.sink.split.i.i_crit_edge, %if.then.i24.cleanup11.sink.split.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.18) #11
  br label %if.then23.i

if.else.i:                                        ; preds = %lor.end
  %or.i.i.i48.i = or i32 %shl.i46.i, 3328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i48.i) #8
  %membase.i.i.i49.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %23, i32 0, i32 2
  %47 = ptrtoint ptr %membase.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i.i.i49.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #8, !srcloc !65
  %49 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %timeout.i.i.i.i, align 4
  %call2.i.i.i51.i = tail call i32 @wait_for_completion_timeout(ptr noundef %23, i32 noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i51.i)
  %tobool.not.i.i.i52.i = icmp eq i32 %call2.i.i.i51.i, 0
  br i1 %tobool.not.i.i.i52.i, label %if.else.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i56.i, !prof !70

if.else.i.cleanup.sink.split.i.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.end.i.i56.i:                                   ; preds = %if.else.i
  %51 = ptrtoint ptr %membase.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i.i49.i, align 8
  %add.ptr10.i.i.i53.i = getelementptr i8, ptr %52, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i53.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  %and.i.i54.i = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54.i)
  %tobool1.not.i.i55.i = icmp eq i32 %and.i.i54.i, 0
  br i1 %tobool1.not.i.i55.i, label %if.end5.i.i59.i, label %if.end.i.i56.i.cleanup9_crit_edge, !prof !72

if.end.i.i56.i.cleanup9_crit_edge:                ; preds = %if.end.i.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end5.i.i59.i:                                  ; preds = %if.end.i.i56.i
  %and6.i.i57.i = and i32 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i57.i)
  %tobool7.not.i.i58.i = icmp eq i32 %and6.i.i57.i, 0
  br i1 %tobool7.not.i.i58.i, label %if.end5.i.i59.i.while.cond.i.i_crit_edge, label %if.end5.i.i59.i.if.end9.i_crit_edge

if.end5.i.i59.i.if.end9.i_crit_edge:              ; preds = %if.end5.i.i59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end5.i.i59.i.while.cond.i.i_crit_edge:         ; preds = %if.end5.i.i59.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end5.i28.i.i.while.cond.i.i_crit_edge, %if.end5.i.i59.i.while.cond.i.i_crit_edge
  %len.addr.0.i.i = phi i16 [ %dec.i.i, %if.end5.i28.i.i.while.cond.i.i_crit_edge ], [ %19, %if.end5.i.i59.i.while.cond.i.i_crit_edge ]
  %buf.addr.0.i.i = phi ptr [ %incdec.ptr.i60.i, %if.end5.i28.i.i.while.cond.i.i_crit_edge ], [ %21, %if.end5.i.i59.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.addr.0.i.i)
  %tobool2.not.i.i = icmp eq i16 %len.addr.0.i.i, 0
  br i1 %tobool2.not.i.i, label %while.cond.i.i.if.end9.i_crit_edge, label %while.body.i61.i

while.cond.i.i.if.end9.i_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

while.body.i61.i:                                 ; preds = %while.cond.i.i
  %dec.i.i = add i16 %len.addr.0.i.i, -1
  %incdec.ptr.i60.i = getelementptr i8, ptr %buf.addr.0.i.i, i32 1
  %55 = ptrtoint ptr %buf.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf.addr.0.i.i, align 1
  %conv3.i.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %58, align 4
  %or.i.i14.i.i = or i32 %conv3.i.i, 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i.i14.i.i) #8
  %membase.i.i15.i.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %58, i32 0, i32 2
  %61 = ptrtoint ptr %membase.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i15.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #8, !srcloc !65
  %63 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %timeout.i.i.i.i, align 4
  %call2.i.i17.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %58, i32 noundef %64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i17.i.i)
  %tobool.not.i.i18.i.i = icmp eq i32 %call2.i.i17.i.i, 0
  br i1 %tobool.not.i.i18.i.i, label %while.body.i61.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i24.i.i, !prof !70

while.body.i61.i.cleanup.sink.split.i.i_crit_edge: ; preds = %while.body.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.end.i24.i.i:                                   ; preds = %while.body.i61.i
  %65 = ptrtoint ptr %membase.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i15.i.i, align 8
  %add.ptr10.i.i21.i.i = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i21.i.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %and.i22.i.i = and i32 %68, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i.i)
  %tobool1.not.i23.i.i = icmp eq i32 %and.i22.i.i, 0
  br i1 %tobool1.not.i23.i.i, label %if.end5.i28.i.i, label %if.end.i24.i.i.cleanup9_crit_edge, !prof !72

if.end.i24.i.i.cleanup9_crit_edge:                ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end5.i28.i.i:                                  ; preds = %if.end.i24.i.i
  %and6.i25.i.i = and i32 %68, 2048
  %tobool7.not.i26.i.i = icmp eq i32 %and6.i25.i.i, 0
  br i1 %tobool7.not.i26.i.i, label %if.end5.i28.i.i.while.cond.i.i_crit_edge, label %if.end5.i28.i.i.if.end9.i_crit_edge

if.end5.i28.i.i.if.end9.i_crit_edge:              ; preds = %if.end5.i28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end5.i28.i.i.while.cond.i.i_crit_edge:         ; preds = %if.end5.i28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

cleanup.sink.split.i.i:                           ; preds = %while.body.i61.i.cleanup.sink.split.i.i_crit_edge, %if.else.i.cleanup.sink.split.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.18) #11
  br label %if.then23.i

if.end9.i:                                        ; preds = %if.end5.i28.i.i.if.end9.i_crit_edge, %while.cond.i.i.if.end9.i_crit_edge, %if.end5.i.i59.i.if.end9.i_crit_edge, %cleanup.i.i.if.end9.i_crit_edge, %while.cond.preheader.i.i.if.end9.i_crit_edge, %if.end5.i.i.i.if.end9.i_crit_edge
  %tobool19.not87.i = phi i1 [ false, %if.end5.i.i.i.if.end9.i_crit_edge ], [ true, %while.cond.preheader.i.i.if.end9.i_crit_edge ], [ false, %if.end5.i.i59.i.if.end9.i_crit_edge ], [ %tobool2.not.i.i, %while.cond.i.i.if.end9.i_crit_edge ], [ %tobool2.not.i.i, %if.end5.i28.i.i.if.end9.i_crit_edge ], [ true, %cleanup.i.i.if.end9.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ -6, %if.end5.i.i.i.if.end9.i_crit_edge ], [ 0, %while.cond.preheader.i.i.if.end9.i_crit_edge ], [ -6, %if.end5.i.i59.i.if.end9.i_crit_edge ], [ -6, %if.end5.i28.i.i.if.end9.i_crit_edge ], [ 0, %while.cond.i.i.if.end9.i_crit_edge ], [ 0, %cleanup.i.i.if.end9.i_crit_edge ]
  br i1 %12, label %if.then15.i, label %if.end9.i.uniphier_i2c_master_xfer_one.exit_crit_edge

if.end9.i.uniphier_i2c_master_xfer_one.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_i2c_master_xfer_one.exit

if.then15.i:                                      ; preds = %if.end9.i
  %69 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %70, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %membase.i.i.i64.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %70, i32 0, i32 2
  %72 = ptrtoint ptr %membase.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase.i.i.i64.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 720896) #8, !srcloc !65
  %74 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %timeout.i.i.i.i, align 4
  %call2.i.i.i66.i = tail call i32 @wait_for_completion_timeout(ptr noundef %70, i32 noundef %75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i66.i)
  %tobool.not.i.i.i67.i = icmp eq i32 %call2.i.i.i66.i, 0
  br i1 %tobool.not.i.i.i67.i, label %uniphier_i2c_xfer_byte.exit.i.i.i, label %if.end.i.i72.i, !prof !70

uniphier_i2c_xfer_byte.exit.i.i.i:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.18) #11
  br label %uniphier_i2c_stop.exit.thread.i

if.end.i.i72.i:                                   ; preds = %if.then15.i
  %76 = ptrtoint ptr %membase.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase.i.i.i64.i, align 8
  %add.ptr10.i.i.i69.i = getelementptr i8, ptr %77, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i69.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %and.i.i70.i = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70.i)
  %tobool1.not.i.i71.i = icmp eq i32 %and.i.i70.i, 0
  br i1 %tobool1.not.i.i71.i, label %uniphier_i2c_stop.exit.i, label %if.end.i.i72.i.uniphier_i2c_stop.exit.thread.i_crit_edge, !prof !72

if.end.i.i72.i.uniphier_i2c_stop.exit.thread.i_crit_edge: ; preds = %if.end.i.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_i2c_stop.exit.thread.i

uniphier_i2c_stop.exit.thread.i:                  ; preds = %if.end.i.i72.i.uniphier_i2c_stop.exit.thread.i_crit_edge, %uniphier_i2c_xfer_byte.exit.i.i.i
  %retval.0.i.i.ph.i = phi i32 [ -11, %if.end.i.i72.i.uniphier_i2c_stop.exit.thread.i_crit_edge ], [ -110, %uniphier_i2c_xfer_byte.exit.i.i.i ]
  %spec.select4488.i = select i1 %tobool19.not87.i, i32 %retval.0.i.i.ph.i, i32 %ret.0.ph.i
  br label %if.then23.i

uniphier_i2c_stop.exit.i:                         ; preds = %if.end.i.i72.i
  %and6.i.i73.i = and i32 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i73.i)
  %tobool7.not.i.i74.i = icmp eq i32 %and6.i.i73.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i74.i, i32 0, i32 -6, !prof !72
  %spec.select44.i = select i1 %tobool19.not87.i, i32 %..i.i.i, i32 %ret.0.ph.i
  br i1 %tobool7.not.i.i74.i, label %uniphier_i2c_stop.exit.i.uniphier_i2c_master_xfer_one.exit_crit_edge, label %uniphier_i2c_stop.exit.i.if.then23.i_crit_edge

uniphier_i2c_stop.exit.i.if.then23.i_crit_edge:   ; preds = %uniphier_i2c_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

uniphier_i2c_stop.exit.i.uniphier_i2c_master_xfer_one.exit_crit_edge: ; preds = %uniphier_i2c_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uniphier_i2c_master_xfer_one.exit

if.then23.i:                                      ; preds = %uniphier_i2c_stop.exit.i.if.then23.i_crit_edge, %uniphier_i2c_stop.exit.thread.i, %cleanup.sink.split.i.i, %cleanup11.sink.split.i.i
  %ret.284.i = phi i32 [ %spec.select44.i, %uniphier_i2c_stop.exit.i.if.then23.i_crit_edge ], [ -110, %cleanup11.sink.split.i.i ], [ -110, %cleanup.sink.split.i.i ], [ %spec.select4488.i, %uniphier_i2c_stop.exit.thread.i ]
  %call24.i = tail call i32 @i2c_recover_bus(ptr noundef %adap) #8
  br label %uniphier_i2c_master_xfer_one.exit

uniphier_i2c_master_xfer_one.exit:                ; preds = %if.then23.i, %uniphier_i2c_stop.exit.i.uniphier_i2c_master_xfer_one.exit_crit_edge, %if.end9.i.uniphier_i2c_master_xfer_one.exit_crit_edge
  %retval.0.i25 = phi i32 [ %ret.284.i, %if.then23.i ], [ %ret.0.ph.i, %uniphier_i2c_stop.exit.i.uniphier_i2c_master_xfer_one.exit_crit_edge ], [ %ret.0.ph.i, %if.end9.i.uniphier_i2c_master_xfer_one.exit_crit_edge ]
  %tobool6.not = icmp eq i32 %retval.0.i25, 0
  br i1 %tobool6.not, label %uniphier_i2c_master_xfer_one.exit.for.cond_crit_edge, label %uniphier_i2c_master_xfer_one.exit.cleanup9_crit_edge

uniphier_i2c_master_xfer_one.exit.cleanup9_crit_edge: ; preds = %uniphier_i2c_master_xfer_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

uniphier_i2c_master_xfer_one.exit.for.cond_crit_edge: ; preds = %uniphier_i2c_master_xfer_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

cleanup9:                                         ; preds = %uniphier_i2c_master_xfer_one.exit.cleanup9_crit_edge, %if.end.i24.i.i.cleanup9_crit_edge, %if.end.i.i56.i.cleanup9_crit_edge, %if.end.i.i.i.cleanup9_crit_edge, %for.cond.cleanup9_crit_edge, %uniphier_i2c_check_bus_busy.exit.thread28, %if.then.i.cleanup9_crit_edge
  %retval.2 = phi i32 [ -11, %uniphier_i2c_check_bus_busy.exit.thread28 ], [ -11, %if.then.i.cleanup9_crit_edge ], [ -11, %if.end.i24.i.i.cleanup9_crit_edge ], [ -11, %if.end.i.i.i.cleanup9_crit_edge ], [ -11, %if.end.i.i56.i.cleanup9_crit_edge ], [ %num, %for.cond.cleanup9_crit_edge ], [ %retval.0.i25, %uniphier_i2c_master_xfer_one.exit.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_i2c_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
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
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_get_scl(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %membase = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %5 = lshr i32 %4, 24
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_i2c_set_scl(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.not = icmp eq i32 %val, 0
  %2 = select i1 %tobool.not.not, i32 0, i32 16777216
  %membase = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_get_sda(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %membase = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %5 = lshr i32 %4, 25
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_i2c_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %membase.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #8, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 3
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
  %clk_cycle.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clk_cycle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_cycle.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %membase.i.i = getelementptr inbounds %struct.uniphier_i2c_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %mul.i = mul i32 %5, 5
  %div.i = udiv i32 %mul.i, 9
  %shl.i = shl i32 %div.i, 16
  %or.i = or i32 %shl.i, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %9 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 50331648) #8, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_i2c_uniphier__288_435_uniphier_i2c_drv_init6, !1, !"__initcall__kmod_i2c_uniphier__288_435_uniphier_i2c_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_uniphier_i2c_drv_exit, !1, !"__exitcall_uniphier_i2c_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 439, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 430, i32 12}
!12 = !{ptr @uniphier_i2c_drv, !13, !"uniphier_i2c_drv", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 426, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 330, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 334, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uniphier_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @uniphier_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 340, i32 3}
!26 = !{ptr @uniphier_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @uniphier_i2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 350, i32 3}
!30 = !{ptr @uniphier_i2c_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @uniphier_i2c_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 361, i32 27}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 371, i32 3}
!36 = !{ptr @uniphier_i2c_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @uniphier_i2c_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @uniphier_i2c_algo, !42, !"uniphier_i2c_algo", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 243, i32 35}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 75, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @uniphier_i2c_xfer_byte._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @uniphier_i2c_xfer_byte._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @uniphier_i2c_bus_recovery_info, !49, !"uniphier_i2c_bus_recovery_info", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 285, i32 37}
!50 = !{ptr @uniphier_i2c_match, !51, !"uniphier_i2c_match", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 420, i32 34}
!52 = !{ptr @uniphier_i2c_pm_ops, !53, !"uniphier_i2c_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-uniphier.c", i32 416, i32 32}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2155567368}
!65 = !{i64 6863676}
!66 = !{i64 2155569578}
!67 = !{i64 6864094}
!68 = !{i64 2155566201}
!69 = !{i64 2155562337}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2155564642}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2155568049}
!74 = !{i64 2155568469}
!75 = !{i64 2155569252}
