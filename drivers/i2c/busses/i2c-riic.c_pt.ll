; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-riic.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-riic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.riic_dev = type { ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.i2c_adapter, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_riic__290_509_riic_i2c_driver_init6 = internal global ptr @riic_i2c_driver_init, section ".initcall6.init", align 4
@riic_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @riic_i2c_probe, ptr @riic_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @riic_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_riic_i2c_driver_exit = internal global ptr @riic_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [42 x i8] c"i2c_riic.description=Renesas RIIC adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [56 x i8] c"i2c_riic.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [42 x i8] c"i2c_riic.file=drivers/i2c/busses/i2c-riic\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"i2c_riic.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c-riic\00", [23 x i8] zeroinitializer }, align 32
@riic_i2c_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,riic-r9a07g044\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,riic-rz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@riic_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing controller clock\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"riic_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-riic.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@riic_i2c_probe._entry_ptr = internal global ptr @riic_i2c_probe._entry, section ".printk_index", align 4
@riic_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error: missing reset ctrl\0A\00", [37 x i8] zeroinitializer }, align 32
@riic_i2c_probe._entry_ptr.8 = internal global ptr @riic_i2c_probe._entry.6, section ".printk_index", align 4
@riic_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %s\0A\00", [38 x i8] zeroinitializer }, align 32
@riic_i2c_probe._entry_ptr.11 = internal global ptr @riic_i2c_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Renesas RIIC adapter\00", [43 x i8] zeroinitializer }, align 32
@riic_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @riic_xfer, ptr null, ptr null, ptr null, ptr @riic_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@riic_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 473, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"registered with %dHz bus speed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@riic_i2c_probe._entry_ptr.16 = internal global ptr @riic_i2c_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"riic-tend\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"riic-rdrf\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"riic-tdre\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"riic-stop\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"riic-nack\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@riic_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported bus speed (%dHz). %d max\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"riic_init_hw\00", [19 x i8] zeroinitializer }, align 32
@riic_init_hw._entry_ptr = internal global ptr @riic_init_hw._entry, section ".printk_index", align 4
@riic_init_hw._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid speed (%lu). Too slow.\0A\00", [32 x i8] zeroinitializer }, align 32
@riic_init_hw._entry_ptr.27 = internal global ptr @riic_init_hw._entry.25, section ".printk_index", align 4
@riic_init_hw.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.24, ptr @.str.3, ptr @.str.29, i8 0, i8 92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_riic\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"i2c-riic: freq=%lu, duty=%d, fall=%lu, rise=%lu, cks=%d, brl=%d, brh=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"riic_i2c_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 500, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 504, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"riic_i2c_dt_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 494, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 420, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 428, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 443, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 450, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"riic_algo\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 284, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 472, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 392, i32 48 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 393, i32 48 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 394, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 395, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 396, i32 48 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 298, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 338, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-riic.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 368, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_riic_i2c_driver_exit, ptr @__initcall__kmod_i2c_riic__290_509_riic_i2c_driver_init6, ptr @riic_i2c_driver_exit, ptr @riic_i2c_probe._entry, ptr @riic_i2c_probe._entry.13, ptr @riic_i2c_probe._entry.6, ptr @riic_i2c_probe._entry.9, ptr @riic_i2c_probe._entry_ptr, ptr @riic_i2c_probe._entry_ptr.11, ptr @riic_i2c_probe._entry_ptr.16, ptr @riic_i2c_probe._entry_ptr.8, ptr @riic_init_hw._entry, ptr @riic_init_hw._entry.25, ptr @riic_init_hw._entry_ptr, ptr @riic_init_hw._entry_ptr.27, ptr @riic_i2c_driver, ptr @.str, ptr @riic_i2c_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @riic_algo, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_i2c_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riic_init_hw._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @riic_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @riic_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @riic_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %i2c_t = alloca %struct.i2c_timings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i2c_t) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = call ptr @memset(ptr %i2c_t, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1448, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %clk, align 8
  %cmp.i130 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call20 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %cmp = icmp eq ptr %call20, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then21, label %if.end18.if.end33_crit_edge

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then21:                                        ; preds = %if.end18
  %call.i131 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %cmp.i132 = icmp ugt ptr %call.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %7 = ptrtoint ptr %call.i131 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @reset_control_deassert(ptr noundef %call.i131) #8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end18.if.end33_crit_edge
  %call35 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end33.cleanup_crit_edge, label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %if.end38
  %call35.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.1)
  %cmp36.1 = icmp slt i32 %call35.1, 0
  br i1 %cmp36.1, label %for.cond.cleanup_crit_edge, label %if.end38.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.1:                                       ; preds = %for.cond
  %call.i133.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35.1, ptr noundef nonnull @riic_rdrf_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.1)
  %tobool43.not.1 = icmp eq i32 %call.i133.1, 0
  br i1 %tobool43.not.1, label %for.cond.1, label %if.end38.1.do.end47_crit_edge

if.end38.1.do.end47_crit_edge:                    ; preds = %if.end38.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

for.cond.1:                                       ; preds = %if.end38.1
  %call35.2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.2)
  %cmp36.2 = icmp slt i32 %call35.2, 0
  br i1 %cmp36.2, label %for.cond.1.cleanup_crit_edge, label %if.end38.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.2:                                       ; preds = %for.cond.1
  %call.i133.2 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35.2, ptr noundef nonnull @riic_tdre_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.2)
  %tobool43.not.2 = icmp eq i32 %call.i133.2, 0
  br i1 %tobool43.not.2, label %for.cond.2, label %if.end38.2.do.end47_crit_edge

if.end38.2.do.end47_crit_edge:                    ; preds = %if.end38.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

for.cond.2:                                       ; preds = %if.end38.2
  %call35.3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.3)
  %cmp36.3 = icmp slt i32 %call35.3, 0
  br i1 %cmp36.3, label %for.cond.2.cleanup_crit_edge, label %if.end38.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.3:                                       ; preds = %for.cond.2
  %call.i133.3 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35.3, ptr noundef nonnull @riic_stop_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.3)
  %tobool43.not.3 = icmp eq i32 %call.i133.3, 0
  br i1 %tobool43.not.3, label %for.cond.3, label %if.end38.3.do.end47_crit_edge

if.end38.3.do.end47_crit_edge:                    ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

for.cond.3:                                       ; preds = %if.end38.3
  %call35.4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.4)
  %cmp36.4 = icmp slt i32 %call35.4, 0
  br i1 %cmp36.4, label %for.cond.3.cleanup_crit_edge, label %if.end38.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.4:                                       ; preds = %for.cond.3
  %call.i133.4 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35.4, ptr noundef nonnull @riic_tend_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.4)
  %tobool43.not.4 = icmp eq i32 %call.i133.4, 0
  br i1 %tobool43.not.4, label %for.cond.4, label %if.end38.4.do.end47_crit_edge

if.end38.4.do.end47_crit_edge:                    ; preds = %if.end38.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

for.cond.4:                                       ; preds = %if.end38.4
  %adapter = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 7
  %driver_data.i.i = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 7, i32 9, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name52 = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 7, i32 12
  %call53 = tail call i32 @strlcpy(ptr noundef %name52, ptr noundef nonnull @.str.12, i32 noundef 48) #8
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @riic_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 7, i32 9, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %of_node58 = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 7, i32 9, i32 27
  %14 = ptrtoint ptr %of_node58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %of_node58, align 8
  %msg_done = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %msg_done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %msg_done, align 4
  %wait.i = getelementptr inbounds %struct.riic_dev, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #8
  call void @i2c_parse_fw_timings(ptr noundef %dev, ptr noundef nonnull %i2c_t, i1 noundef zeroext true) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call61 = call fastcc i32 @riic_init_hw(ptr noundef nonnull %call.i, ptr noundef nonnull %i2c_t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %for.cond.4.out_crit_edge

for.cond.4.out_crit_edge:                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38:                                         ; preds = %if.end33
  %call.i133 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35, ptr noundef nonnull @riic_tend_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool43.not = icmp eq i32 %call.i133, 0
  br i1 %tobool43.not, label %for.cond, label %if.end38.do.end47_crit_edge

if.end38.do.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end47:                                         ; preds = %if.end38.do.end47_crit_edge, %if.end38.4.do.end47_crit_edge, %if.end38.3.do.end47_crit_edge, %if.end38.2.do.end47_crit_edge, %if.end38.1.do.end47_crit_edge
  %.lcssa = phi ptr [ @.str.17, %if.end38.do.end47_crit_edge ], [ @.str.18, %if.end38.1.do.end47_crit_edge ], [ @.str.19, %if.end38.2.do.end47_crit_edge ], [ @.str.20, %if.end38.3.do.end47_crit_edge ], [ @.str.21, %if.end38.4.do.end47_crit_edge ]
  %call.i133.lcssa = phi i32 [ %call.i133, %if.end38.do.end47_crit_edge ], [ %call.i133.1, %if.end38.1.do.end47_crit_edge ], [ %call.i133.2, %if.end38.2.do.end47_crit_edge ], [ %call.i133.3, %if.end38.3.do.end47_crit_edge ], [ %call.i133.4, %if.end38.4.do.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %.lcssa) #11
  br label %cleanup

if.end64:                                         ; preds = %for.cond.4
  %call65 = call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.out_crit_edge

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i134 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i134 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i134, align 4
  %17 = ptrtoint ptr %i2c_t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_t, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %18) #11
  br label %cleanup

out:                                              ; preds = %if.end64.out_crit_edge, %for.cond.4.out_crit_edge
  %ret.0 = phi i32 [ %call61, %for.cond.4.out_crit_edge ], [ %call65, %if.end64.out_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end68, %do.end47, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end28, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %6, %do.end ], [ %7, %do.end28 ], [ %call.i133.lcssa, %do.end47 ], [ %ret.0, %out ], [ 0, %if.end68 ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call35.1, %for.cond.cleanup_crit_edge ], [ %call35.2, %for.cond.1.cleanup_crit_edge ], [ %call35.3, %for.cond.2.cleanup_crit_edge ], [ %call35.4, %for.cond.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i2c_t) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !79
  %call.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  %adapter = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 7
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riic_init_hw(ptr noundef %riic, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.riic_dev, ptr %riic, i32 0, i32 7, i32 9
  %parent = getelementptr inbounds %struct.riic_dev, ptr %riic, i32 0, i32 7, i32 9, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %3)
  %cmp = icmp ugt i32 %3, 400000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef 400000) #11
  br label %out

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.riic_dev, ptr %riic, i32 0, i32 8
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call4 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  %add = add i32 %call4, -1
  %sub = add i32 %add, %7
  %div = udiv i32 %sub, %7
  %mul = mul i32 %div, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul)
  %cmp9 = icmp slt i32 %mul, 350
  br i1 %cmp9, label %if.end.if.end22_crit_edge, label %if.end11

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end11:                                         ; preds = %if.end
  %div12 = sdiv i32 %div, 2
  %div13150 = lshr i32 %call4, 1
  %mul.1 = mul i32 %div12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul.1)
  %cmp9.1 = icmp slt i32 %mul.1, 350
  br i1 %cmp9.1, label %if.end11.if.end22_crit_edge, label %if.end11.1

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end11.1:                                       ; preds = %if.end11
  %div12.1 = sdiv i32 %div, 4
  %div13150.1 = lshr i32 %call4, 2
  %mul.2 = mul i32 %div12.1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul.2)
  %cmp9.2 = icmp slt i32 %mul.2, 350
  br i1 %cmp9.2, label %if.end11.1.if.end22_crit_edge, label %if.end11.2

if.end11.1.if.end22_crit_edge:                    ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end11.2:                                       ; preds = %if.end11.1
  %div12.2 = sdiv i32 %div, 8
  %div13150.2 = lshr i32 %call4, 3
  %mul.3 = mul nsw i32 %div12.2, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul.3)
  %cmp9.3 = icmp slt i32 %mul.3, 350
  br i1 %cmp9.3, label %if.end11.2.if.end22_crit_edge, label %if.end11.3

if.end11.2.if.end22_crit_edge:                    ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end11.3:                                       ; preds = %if.end11.2
  %div12.3 = sdiv i32 %div, 16
  %div13150.3 = lshr i32 %call4, 4
  %mul.4 = mul nsw i32 %div12.3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul.4)
  %cmp9.4 = icmp slt i32 %mul.4, 350
  br i1 %cmp9.4, label %if.end11.3.if.end22_crit_edge, label %if.end11.4

if.end11.3.if.end22_crit_edge:                    ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end11.4:                                       ; preds = %if.end11.3
  %div12.4 = sdiv i32 %div, 32
  %div13150.4 = lshr i32 %call4, 5
  %mul.5 = mul nsw i32 %div12.4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul.5)
  %cmp9.5 = icmp slt i32 %mul.5, 350
  br i1 %cmp9.5, label %if.end11.4.if.end22_crit_edge, label %if.end11.5

if.end11.4.if.end22_crit_edge:                    ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end11.5:                                       ; preds = %if.end11.4
  %div12.5 = sdiv i32 %div, 64
  %div13150.5 = lshr i32 %call4, 6
  %mul.6 = mul nsw i32 %div12.5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %mul.6)
  %cmp9.6 = icmp slt i32 %mul.6, 350
  br i1 %cmp9.6, label %if.end11.5.if.end22_crit_edge, label %do.end18

if.end11.5.if.end22_crit_edge:                    ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end18:                                         ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %7) #11
  br label %out

if.end22:                                         ; preds = %if.end11.5.if.end22_crit_edge, %if.end11.4.if.end22_crit_edge, %if.end11.3.if.end22_crit_edge, %if.end11.2.if.end22_crit_edge, %if.end11.1.if.end22_crit_edge, %if.end11.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %brl.2.v = phi i32 [ -4, %if.end.if.end22_crit_edge ], [ -3, %if.end11.if.end22_crit_edge ], [ -3, %if.end11.1.if.end22_crit_edge ], [ -3, %if.end11.2.if.end22_crit_edge ], [ -3, %if.end11.3.if.end22_crit_edge ], [ -3, %if.end11.4.if.end22_crit_edge ], [ -3, %if.end11.5.if.end22_crit_edge ]
  %mul.lcssa.ph = phi i32 [ %mul, %if.end.if.end22_crit_edge ], [ %mul.1, %if.end11.if.end22_crit_edge ], [ %mul.2, %if.end11.1.if.end22_crit_edge ], [ %mul.3, %if.end11.2.if.end22_crit_edge ], [ %mul.4, %if.end11.3.if.end22_crit_edge ], [ %mul.5, %if.end11.4.if.end22_crit_edge ], [ %mul.6, %if.end11.5.if.end22_crit_edge ]
  %total_ticks.0.lcssa.ph = phi i32 [ %div, %if.end.if.end22_crit_edge ], [ %div12, %if.end11.if.end22_crit_edge ], [ %div12.1, %if.end11.1.if.end22_crit_edge ], [ %div12.2, %if.end11.2.if.end22_crit_edge ], [ %div12.3, %if.end11.3.if.end22_crit_edge ], [ %div12.4, %if.end11.4.if.end22_crit_edge ], [ %div12.5, %if.end11.5.if.end22_crit_edge ]
  %cks.0.lcssa.ph = phi i32 [ 0, %if.end.if.end22_crit_edge ], [ 1, %if.end11.if.end22_crit_edge ], [ 2, %if.end11.1.if.end22_crit_edge ], [ 3, %if.end11.2.if.end22_crit_edge ], [ 4, %if.end11.3.if.end22_crit_edge ], [ 5, %if.end11.4.if.end22_crit_edge ], [ 6, %if.end11.5.if.end22_crit_edge ]
  %rate.0.lcssa.ph = phi i32 [ %call4, %if.end.if.end22_crit_edge ], [ %div13150, %if.end11.if.end22_crit_edge ], [ %div13150.1, %if.end11.1.if.end22_crit_edge ], [ %div13150.2, %if.end11.2.if.end22_crit_edge ], [ %div13150.3, %if.end11.3.if.end22_crit_edge ], [ %div13150.4, %if.end11.4.if.end22_crit_edge ], [ %div13150.5, %if.end11.5.if.end22_crit_edge ]
  %div8.le = sdiv i32 %mul.lcssa.ph, 10
  %brl.2 = add nsw i32 %div8.le, %brl.2.v
  %scl_fall_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 2
  %8 = ptrtoint ptr %scl_fall_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scl_fall_ns, align 4
  %div31 = udiv i32 1000000000, %rate.0.lcssa.ph
  %div32 = udiv i32 %9, %div31
  %sub33 = sub i32 %brl.2, %div32
  %scl_rise_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %scl_rise_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scl_rise_ns, align 4
  %div35 = udiv i32 %11, %div31
  %.neg = add i32 %brl.2.v, %total_ticks.0.lcssa.ph
  %12 = add i32 %div8.le, %div35
  %sub36 = sub i32 %.neg, %12
  %13 = tail call i32 @llvm.smax.i32(i32 %sub33, i32 1)
  %14 = tail call i32 @llvm.smax.i32(i32 %sub36, i32 1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @riic_init_hw.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@riic_init_hw, %do.body64)) #8
          to label %if.then48 [label %do.body64], !srcloc !80

if.then48:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %div49 = udiv i32 %rate.0.lcssa.ph, %total_ticks.0.lcssa.ph
  %15 = mul i32 %13, 100
  %mul51 = add i32 %15, 300
  %add52 = add nuw i32 %13, 6
  %add53 = add i32 %add52, %14
  %div54 = sdiv i32 %mul51, %add53
  %16 = ptrtoint ptr %scl_fall_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scl_fall_ns, align 4
  %div57 = udiv i32 %17, %div31
  %18 = ptrtoint ptr %scl_rise_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scl_rise_ns, align 4
  %div60 = udiv i32 %19, %div31
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @riic_init_hw.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.29, i32 noundef %div49, i32 noundef %div54, i32 noundef %div57, i32 noundef %div60, i32 noundef %cks.0.lcssa.ph, i32 noundef %13, i32 noundef %14) #8
  br label %do.body64

do.body64:                                        ; preds = %if.then48, %if.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %riic, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 80) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %riic, align 8
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %or.i = or i8 %24, -128
  %25 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %riic, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %or.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %cks.0.tr = trunc i32 %cks.0.lcssa.ph to i8
  %27 = shl nuw nsw i8 %cks.0.tr, 4
  %conv = or i8 %27, 8
  %28 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %riic, align 8
  %add.ptr71 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71, i8 %conv) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %30 = trunc i32 %14 to i8
  %conv76 = or i8 %30, -32
  %31 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %riic, align 8
  %add.ptr78 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 %conv76) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %33 = trunc i32 %13 to i8
  %conv83 = or i8 %33, -32
  %34 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %riic, align 8
  %add.ptr85 = getelementptr i8, ptr %35, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr85, i8 %conv83) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %riic, align 8
  %add.ptr90 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr90, i8 0) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %riic, align 8
  %add.ptr95 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95, i8 48) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %riic, align 8
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %41) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and.i = and i8 %42, -65
  %43 = ptrtoint ptr %riic to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %riic, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %and.i) #8, !srcloc !79
  br label %out

out:                                              ; preds = %do.body64, %do.end18, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ 0, %do.body64 ]
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent, align 8
  %call.i151 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_tend_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %3 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 64
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 36
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and.i = and i8 %9, -17
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %add.ptr8.i = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %and.i) #8, !srcloc !79
  %err = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -6, ptr %err, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %bytes_left = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.else.if.end11_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then
  %is_last = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end11.if.then15_crit_edge

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %err13 = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %err13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.else18, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end11.if.then15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %add.ptr.i30 = getelementptr i8, ptr %20, i32 28
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i30) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and.i31 = and i8 %21, -73
  %or.i = or i8 %and.i31, 8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 8
  %add.ptr8.i32 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i32, i8 %or.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %add.ptr17 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 8) #8, !srcloc !79
  br label %cleanup

if.else18:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 8
  %add.ptr.i33 = getelementptr i8, ptr %27, i32 28
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i33) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and.i34 = and i8 %28, -65
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %add.ptr8.i35 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i35, i8 %and.i34) #8, !srcloc !79
  %msg_done = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_done) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else18, %if.then15, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 1, %if.else18 ], [ 1, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_rdrf_isr(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_left = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_left, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 0, label %entry.cleanup_crit_edge
    i32 -1, label %if.then2
    i32 1, label %if.then9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %msg = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %bytes_left, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 64
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  br label %cleanup

if.then9:                                         ; preds = %entry
  %is_last = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.then9.if.end14_crit_edge, label %if.then11

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 28
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %or.i = or i8 %15, 8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 8
  %add.ptr8.i = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %or.i) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 8
  %add.ptr13 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 8) #8, !srcloc !79
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then9.if.end14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  %add.ptr.i39 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %or.i40 = or i8 %22, 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  %add.ptr8.i41 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i41, i8 %or.i40) #8, !srcloc !79
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  %add.ptr.i42 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i42) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and.i = and i8 %27, -9
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 8
  %add.ptr8.i43 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i43, i8 %and.i) #8, !srcloc !79
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end14
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 8
  %add.ptr19 = getelementptr i8, ptr %31, i32 64
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %buf = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 1
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %34, align 1
  %36 = load ptr, ptr %buf, align 4
  %incdec.ptr = getelementptr i8, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %buf, align 4
  %37 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytes_left, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %bytes_left, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.end15 ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_tdre_isr(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_left = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_left, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %if.else10 [
    i32 0, label %entry.cleanup_crit_edge
    i32 -1, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %entry
  %msg = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.not = icmp eq i16 %7, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 28
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and.i = and i8 %10, 95
  %or.i = or i8 %and.i, 32
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %add.ptr8.i = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %or.i) #8, !srcloc !79
  br label %if.end8

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len, align 4
  %conv6 = zext i16 %14 to i32
  %15 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv6, ptr %bytes_left, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  %conv.i = trunc i16 %19 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i, align 2
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 1
  %or.i32 = or i8 %23, %shl.i
  %24 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %bytes_left, align 4
  br label %if.end13

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %buf = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %incdec.ptr = getelementptr i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %buf, align 4
  %dec = add i32 %1, -1
  %29 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dec, ptr %bytes_left, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.end8
  %30 = phi i32 [ %dec, %if.else10 ], [ %.pr, %if.end8 ]
  %val.0 = phi i8 [ %28, %if.else10 ], [ %or.i32, %if.end8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp15 = icmp eq i32 %30, 0
  br i1 %cmp15, label %if.then17, label %if.end13.do.body_crit_edge

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 8
  %add.ptr.i33 = getelementptr i8, ptr %32, i32 28
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i33) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and.i34 = and i8 %33, 63
  %or.i35 = or i8 %and.i34, 64
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 8
  %add.ptr8.i36 = getelementptr i8, ptr %35, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i36, i8 %or.i35) #8, !srcloc !79
  br label %do.body

do.body:                                          ; preds = %if.then17, %if.end13.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %37, i32 60
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val.0) #8, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_stop_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !79
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 36
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %add.ptr8 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 0) #8, !srcloc !79
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %add.ptr12 = getelementptr i8, ptr %8, i32 28
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %msg_done = getelementptr inbounds %struct.riic_dev, ptr %data, i32 0, i32 6
  tail call void @complete(ptr noundef %msg_done) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riic_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool.not = icmp sgt i8 %6, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %err = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -16, ptr %err, align 8
  br label %out

if.end:                                           ; preds = %entry
  %msg_done = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %msg_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %msg_done, align 4
  %err4 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %err4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %err4, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 0) #8, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp64 = icmp sgt i32 %num, 0
  br i1 %cmp64, label %for.body.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %bytes_left = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 3
  %buf8 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 1
  %msg = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 2
  %sub = add nsw i32 %num, -1
  %is_last = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 5
  %timeout = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 7, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %start_bit.065 = phi i8 [ 2, %for.body.lr.ph ], [ 4, %if.end28.for.body_crit_edge ]
  %12 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %bytes_left, align 4
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.066
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.066, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %buf8, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %msg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.066, i32 %sub)
  %cmp10 = icmp eq i32 %i.066, %sub
  %conv11 = zext i1 %cmp10 to i32
  %17 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv11, ptr %is_last, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr16 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 -112) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr21 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %start_bit.065) #8, !srcloc !79
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout, align 4
  %call23 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_done, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.end28.thread, label %if.end28

if.end28.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %err4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -110, ptr %err4, align 8
  br label %out

if.end28:                                         ; preds = %for.body
  %25 = ptrtoint ptr %err4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %err4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool30.not = icmp ne i32 %.pr, 0
  %inc = add nuw nsw i32 %i.066, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num)
  %exitcond.not = icmp eq i32 %inc, %num
  %or.cond = select i1 %tobool30.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.end28.out_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end28.out_crit_edge, %if.end28.thread, %if.end.out_crit_edge, %if.then
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %call.i62 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #8
  %err36 = getelementptr inbounds %struct.riic_dev, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %err36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  %spec.select = select i1 %tobool37.not, i32 %num, i32 %29
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @riic_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_i2c_riic__290_509_riic_i2c_driver_init6, !1, !"__initcall__kmod_i2c_riic__290_509_riic_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 509, i32 1}
!2 = !{ptr @__exitcall_riic_i2c_driver_exit, !1, !"__exitcall_riic_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 511, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 512, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 513, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 504, i32 11}
!12 = !{ptr @riic_i2c_driver, !13, !"riic_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 500, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 420, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @riic_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @riic_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 428, i32 4}
!24 = !{ptr @riic_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @riic_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 443, i32 4}
!28 = !{ptr @riic_i2c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @riic_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 450, i32 22}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 472, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @riic_i2c_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @riic_i2c_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 392, i32 48}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 393, i32 48}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 394, i32 48}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 395, i32 48}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 396, i32 48}
!47 = distinct !{null, !48, !"riic_irqs", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 391, i32 29}
!49 = !{ptr @riic_algo, !50, !"riic_algo", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 284, i32 35}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 298, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @riic_init_hw._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @riic_init_hw._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 338, i32 3}
!61 = !{ptr @riic_init_hw._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @riic_init_hw._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 368, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @riic_init_hw.__UNIQUE_ID_ddebug289, !64, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!67 = !{ptr @riic_i2c_dt_ids, !68, !"riic_i2c_dt_ids", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-riic.c", i32 494, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2155693850}
!79 = !{i64 6865524}
!80 = !{i64 2148732949, i64 2148732954, i64 2148732967, i64 2148733011, i64 2148733045, i64 2148733066}
!81 = !{i64 2155684831}
!82 = !{i64 2155672706}
!83 = !{i64 6865919}
!84 = !{i64 2155672881}
!85 = !{i64 2155685212}
!86 = !{i64 2155685527}
!87 = !{i64 2155685818}
!88 = !{i64 2155686095}
!89 = !{i64 2155686383}
!90 = !{i64 2155674598}
!91 = !{i64 2155674840}
!92 = !{i64 2155675092}
!93 = !{i64 2155675396}
!94 = !{i64 2155675631}
!95 = !{i64 2155675942}
!96 = !{i64 2155674308}
!97 = !{i64 2155676159}
!98 = !{i64 2155676447}
!99 = !{i64 2155676664}
!100 = !{i64 2155676952}
!101 = !{i64 2155673174}
!102 = !{i64 2155673399}
!103 = !{i64 2155673695}
!104 = !{i64 2155673981}
