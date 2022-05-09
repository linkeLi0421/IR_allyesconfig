; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-wmt.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-wmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wmt_i2c_dev = type { %struct.i2c_adapter, %struct.completion, ptr, ptr, ptr, i32, i32, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_wmt__289_465_wmt_i2c_driver_init6 = internal global ptr @wmt_i2c_driver_init, section ".initcall6.init", align 4
@wmt_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wmt_i2c_probe, ptr @wmt_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wmt_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wmt_i2c_driver_exit = internal global ptr @wmt_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"i2c_wmt.description=Wondermedia I2C master-mode bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [50 x i8] c"i2c_wmt.author=Tony Prisk <linux@prisktech.co.nz>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [40 x i8] c"i2c_wmt.file=drivers/i2c/busses/i2c-wmt\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"i2c_wmt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wmt-i2c\00", [24 x i8] zeroinitializer }, align 32
@wmt_i2c_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,wm8505-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wmt_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq missing or invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wmt_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-wmt.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wmt_i2c_probe._entry_ptr = internal global ptr @wmt_i2c_probe._entry, section ".printk_index", align 4
@wmt_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to request clock\0A\00", [39 x i8] zeroinitializer }, align 32
@wmt_i2c_probe._entry_ptr.8 = internal global ptr @wmt_i2c_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@wmt_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %i\0A\00", [38 x i8] zeroinitializer }, align 32
@wmt_i2c_probe._entry_ptr.13 = internal global ptr @wmt_i2c_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WMT I2C adapter\00", [16 x i8] zeroinitializer }, align 32
@wmt_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @wmt_i2c_xfer, ptr null, ptr null, ptr null, ptr @wmt_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@wmt_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error initializing hardware\0A\00", [35 x i8] zeroinitializer }, align 32
@wmt_i2c_probe._entry_ptr.17 = internal global ptr @wmt_i2c_probe._entry.15, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wmt_i2c_wait_bus_not_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 100, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for bus ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wmt_i2c_wait_bus_not_busy\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wmt_i2c_wait_bus_not_busy._entry_ptr = internal global ptr @wmt_i2c_wait_bus_not_busy._entry, section ".printk_index", align 4
@wmt_i2c_write.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_wmt\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wmt_i2c_write\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write RCV NACK error\0A\00", [42 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wmt_i2c_reset_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wmt_i2c_reset_hardware\00", [41 x i8] zeroinitializer }, align 32
@wmt_i2c_reset_hardware._entry_ptr = internal global ptr @wmt_i2c_reset_hardware._entry, section ".printk_index", align 4
@wmt_i2c_reset_hardware._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set clock = 20Mhz\0A\00", [35 x i8] zeroinitializer }, align 32
@wmt_i2c_reset_hardware._entry_ptr.29 = internal global ptr @wmt_i2c_reset_hardware._entry.27, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"wmt_i2c_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 456, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 460, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"wmt_i2c_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 451, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 390, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 396, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 401, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 408, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 410, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 416, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"wmt_i2c_algo\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 319, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 426, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 100, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 190, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 343, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-wmt.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 349, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_wmt_i2c_driver_exit, ptr @__initcall__kmod_i2c_wmt__289_465_wmt_i2c_driver_init6, ptr @wmt_i2c_driver_exit, ptr @wmt_i2c_probe._entry, ptr @wmt_i2c_probe._entry.11, ptr @wmt_i2c_probe._entry.15, ptr @wmt_i2c_probe._entry.6, ptr @wmt_i2c_probe._entry_ptr, ptr @wmt_i2c_probe._entry_ptr.13, ptr @wmt_i2c_probe._entry_ptr.17, ptr @wmt_i2c_probe._entry_ptr.8, ptr @wmt_i2c_reset_hardware._entry, ptr @wmt_i2c_reset_hardware._entry.27, ptr @wmt_i2c_reset_hardware._entry_ptr, ptr @wmt_i2c_reset_hardware._entry_ptr.29, ptr @wmt_i2c_wait_bus_not_busy._entry, ptr @wmt_i2c_wait_bus_not_busy._entry_ptr, ptr @wmt_i2c_driver, ptr @.str, ptr @wmt_i2c_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @wmt_i2c_algo, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_wait_bus_not_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_reset_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wmt_i2c_reset_hardware._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wmt_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wmt_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @wmt_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_rate) #8
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clk_rate, align 4, !annotation !76
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1440, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #8
  %base = getelementptr inbounds %struct.wmt_i2c_dev, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.wmt_i2c_dev, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call11, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call17 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 0) #8
  %clk = getelementptr inbounds %struct.wmt_i2c_dev, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %clk, align 8
  %cmp.i115 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 8
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %mode = getelementptr inbounds %struct.wmt_i2c_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %clk_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool29.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool29.not, label %land.lhs.true, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end27
  %11 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %12)
  %cmp = icmp eq i32 %12, 400000
  br i1 %cmp, label %if.then30, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %mode, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  %dev34 = getelementptr inbounds %struct.wmt_i2c_dev, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev34, align 8
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 8
  %call.i116 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull @wmt_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool38.not = icmp eq i32 %call.i116, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %18) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call46 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef 48) #8
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wmt_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 8
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %of_node52 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %25 = ptrtoint ptr %of_node52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %of_node52, align 8
  %complete = getelementptr inbounds %struct.wmt_i2c_dev, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %call.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #8
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 8
  %call.i.i117 = call i32 @clk_prepare(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %tobool.not.i.i = icmp eq i32 %call.i.i117, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end45.do.end.i_crit_edge

if.end45.do.end.i_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end45
  %call1.i.i = call i32 @clk_enable(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %28) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end45.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i117, %if.end45.do.end.i_crit_edge ]
  %29 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.25) #11
  br label %do.end58

if.end.i:                                         ; preds = %if.end.i.i
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 8
  %call2.i = call i32 @clk_set_rate(ptr noundef %32, i32 noundef 20000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body11.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.28) #11
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %36) #8
  call void @clk_unprepare(ptr noundef %36) #8
  br label %do.end58

do.body11.i:                                      ; preds = %if.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 0) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr18.i = getelementptr i8, ptr %40, i32 14
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18.i, i16 3072) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr23.i = getelementptr i8, ptr %42, i32 6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.i, i16 1792) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr28.i = getelementptr i8, ptr %44, i32 8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.i, i16 1792) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 256) #8, !srcloc !78
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr35.i = getelementptr i8, ptr %48, i32 4
  %49 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.i) #8, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr42.i = getelementptr i8, ptr %51, i32 6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42.i, i16 1792) #8, !srcloc !78
  %52 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i118 = icmp eq i32 %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr48.i = getelementptr i8, ptr %55, i32 12
  br i1 %cmp.i118, label %do.body44.i, label %do.body49.i

do.body44.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr48.i, i16 25728) #8, !srcloc !78
  br label %if.end60

do.body49.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr48.i, i16 6528) #8, !srcloc !78
  br label %if.end60

do.end58:                                         ; preds = %do.end7.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i.ph.i, %do.end.i ], [ %call2.i, %do.end7.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end60:                                         ; preds = %do.body49.i, %do.body44.i
  %call61 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i119 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i119 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i119, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end60.cleanup_crit_edge, %do.end58, %do.end42, %do.end23, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %9, %do.end23 ], [ %call.i116, %do.end42 ], [ %retval.0.i, %do.end58 ], [ 0, %if.end64 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #8, !srcloc !78
  %clk = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_i2c_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.wmt_i2c_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !83
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %cmd_status = getelementptr inbounds %struct.wmt_i2c_dev, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %cmd_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cmd_status, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %7) #8, !srcloc !78
  %complete = getelementptr inbounds %struct.wmt_i2c_dev, ptr %data, i32 0, i32 1
  tail call void @complete(ptr noundef %complete) #8
  ret i32 1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wmt_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp118 = icmp sgt i32 %num, 0
  br i1 %cmp118, label %for.body.lr.ph, label %entry.for.end.thread30_crit_edge

entry.for.end.thread30_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread30

for.body.lr.ph:                                   ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.019, 1
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.019
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.019, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end4.i_crit_edge

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 100
  %base.i.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %12 = and i16 %11, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not6.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not6.i.i, label %if.then.i.while.body.i.i_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %wmt_i2c_wait_bus_not_busy.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  tail call void @msleep(i32 noundef 20) #8
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %17 = and i16 %16, 512
  %tobool.not.i.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.if.end4.i_crit_edge

if.end.i.i.if.end4.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

wmt_i2c_wait_bus_not_busy.exit.i:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %4, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.18) #11
  br label %for.end.thread

if.end4.i:                                        ; preds = %if.end.i.i.if.end4.i_crit_edge, %if.then.i.if.end4.i_crit_edge, %if.then.if.end4.i_crit_edge
  %base.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %21) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %23 = and i16 %22, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %23) #8, !srcloc !78
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %29 = and i16 %28, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #8, !srcloc !78
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags, align 2
  %34 = and i16 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool30.not.i = icmp eq i16 %34, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end4.i.if.end46.i_crit_edge

if.end4.i.if.end46.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then31.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %38 = or i16 %37, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 %38) #8, !srcloc !78
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then31.i, %if.end4.i.if.end46.i_crit_edge
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.019, i32 2
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %42)
  %cmp48.i = icmp eq i16 %42, 1
  br i1 %cmp48.i, label %if.then50.i, label %if.end46.i.if.end66.i_crit_edge

if.end46.i.if.end66.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %44) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %46 = or i16 %45, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 %46) #8, !srcloc !78
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then50.i, %if.end46.i.if.end66.i_crit_edge
  %complete.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %4, i32 0, i32 1
  %49 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %complete.i, align 4
  %mode.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %4, i32 0, i32 5
  %50 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp67.i = icmp eq i32 %51, 0
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx, align 4
  %54 = and i16 %53, 127
  %55 = select i1 %cmp67.i, i16 16384, i16 -16384
  %or75.i = or i16 %55, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %56 = tail call i16 @llvm.bswap.i16(i16 %or75.i) #8
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr81.i = getelementptr i8, ptr %58, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81.i, i16 %56) #8, !srcloc !78
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags, align 2
  %61 = and i16 %60, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool85.not.i = icmp eq i16 %61, 0
  br i1 %tobool85.not.i, label %if.end66.i.if.end102.i_crit_edge, label %if.then86.i

if.end66.i.if.end102.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then86.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %63) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %65 = or i16 %64, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %65) #8, !srcloc !78
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then86.i, %if.end66.i.if.end102.i_crit_edge
  %cmd_status.i.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %4, i32 0, i32 7
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp10510.not.i = icmp eq i16 %69, 0
  br i1 %cmp10510.not.i, label %if.end102.i.for.inc_crit_edge, label %while.body.lr.ph.i

if.end102.i.for.inc_crit_edge:                    ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body.lr.ph.i:                               ; preds = %if.end102.i
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.019, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end162.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %xfer_len.011.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end162.i.while.body.i_crit_edge ]
  %call109.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %while.body.i.for.end.thread_crit_edge, label %if.end112.i

while.body.i.for.end.thread_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.end112.i:                                      ; preds = %while.body.i
  %70 = ptrtoint ptr %cmd_status.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cmd_status.i.i, align 4
  %72 = and i16 %71, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %if.end116.i, label %cleanup.loopexit.split.loop.exit4.i

if.end116.i:                                      ; preds = %if.end112.i
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr120.i = getelementptr i8, ptr %75, i32 10
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr120.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %conv125.i = trunc i16 %76 to i8
  %77 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %78, i32 %xfer_len.011.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv125.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %xfer_len.011.i, 1
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %len.i, align 4
  %conv127.i = zext i16 %81 to i32
  %82 = add nsw i32 %conv127.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %xfer_len.011.i, i32 %82)
  %cmp128.i = icmp eq i32 %xfer_len.011.i, %82
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %84) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp128.i, label %if.then130.i, label %if.else146.i

if.then130.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = or i16 %85, 2560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %88, i16 %86) #8, !srcloc !78
  br label %if.end162.i

if.else146.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = or i16 %85, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 %89) #8, !srcloc !78
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.else146.i, %if.then130.i
  %92 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %len.i, align 4
  %conv104.i = zext i16 %93 to i32
  %cmp105.i = icmp ult i32 %inc.i, %conv104.i
  br i1 %cmp105.i, label %if.end162.i.while.body.i_crit_edge, label %if.end162.i.for.inc_crit_edge

if.end162.i.for.inc_crit_edge:                    ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end162.i.while.body.i_crit_edge:               ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.loopexit.split.loop.exit4.i:              ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.le.i = zext i16 %71 to i32
  %and.i.le.i = and i32 %conv.i.le.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.le.i)
  %tobool.not.i1.le.i = icmp eq i32 %and.i.le.i, 0
  %spec.store.select.i.le.i = select i1 %tobool.not.i1.le.i, i32 0, i32 -5
  %and3.i.le.i = and i32 %conv.i.le.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.le.i)
  %tobool4.not.i.le.i = icmp eq i32 %and3.i.le.i, 0
  %spec.store.select7.i.le.i = select i1 %tobool4.not.i.le.i, i32 %spec.store.select.i.le.i, i32 -110
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp2 = icmp eq i32 %add, %num
  %conv = zext i1 %cmp2 to i32
  %call4 = tail call fastcc i32 @wmt_i2c_write(ptr noundef %adap, ptr noundef %arrayidx, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %cleanup.loopexit.split.loop.exit4.i, %if.end162.i.for.inc_crit_edge, %if.end102.i.for.inc_crit_edge
  %ret.1 = phi i32 [ %call4, %if.else ], [ %spec.store.select7.i.le.i, %cleanup.loopexit.split.loop.exit4.i ], [ 0, %if.end102.i.for.inc_crit_edge ], [ 0, %if.end162.i.for.inc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1)
  %cmp = icmp sgt i32 %ret.1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp1 = icmp slt i32 %add, %num
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp5 = icmp slt i32 %ret.1, 0
  br i1 %cmp5, label %for.end.for.end.thread_crit_edge, label %for.end.for.end.thread30_crit_edge

for.end.for.end.thread30_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread30

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %while.body.i.for.end.thread_crit_edge, %wmt_i2c_wait_bus_not_busy.exit.i
  %ret.0.lcssa29 = phi i32 [ %ret.1, %for.end.for.end.thread_crit_edge ], [ -16, %wmt_i2c_wait_bus_not_busy.exit.i ], [ -110, %while.body.i.for.end.thread_crit_edge ]
  br label %for.end.thread30

for.end.thread30:                                 ; preds = %for.end.thread, %for.end.for.end.thread30_crit_edge, %entry.for.end.thread30_crit_edge
  %94 = phi i32 [ %ret.0.lcssa29, %for.end.thread ], [ %add, %for.end.for.end.thread30_crit_edge ], [ 0, %entry.for.end.thread30_crit_edge ]
  ret i32 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wmt_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592729
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wmt_i2c_write(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %pmsg, i32 noundef %last) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %pmsg, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %5, 100
  %base.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %9 = and i16 %8, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not6.i = icmp eq i16 %9, 0
  br i1 %tobool.not6.i, label %if.then.while.body.i_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %wmt_i2c_wait_bus_not_busy.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 20) #8
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %14 = and i16 %13, 512
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

wmt_i2c_wait_bus_not_busy.exit:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %len = getelementptr inbounds %struct.i2c_msg, ptr %pmsg, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp6 = icmp eq i16 %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp6, label %if.then8, label %do.body9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #8, !srcloc !78
  br label %if.end17

do.body9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %pmsg, i32 0, i32 3
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv14 = zext i8 %24 to i16
  %25 = shl nuw i16 %conv14, 8
  %base15 = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base15, align 4
  %add.ptr16 = getelementptr i8, ptr %27, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %25) #8, !srcloc !78
  br label %if.end17

if.end17:                                         ; preds = %do.body9, %if.then8
  %xfer_len.0 = phi i32 [ -1, %if.then8 ], [ 0, %do.body9 ]
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags, align 2
  %30 = and i16 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool21.not = icmp eq i16 %30, 0
  br i1 %tobool21.not, label %if.then22, label %if.end17.if.end49_crit_edge

if.end17.if.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %base23 = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base23, align 4
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %34 = and i16 %33, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base23, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %34) #8, !srcloc !78
  %37 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base23, align 4
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %40 = or i16 %39, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base23, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %40) #8, !srcloc !78
  br label %if.end49

if.end49:                                         ; preds = %if.then22, %if.end17.if.end49_crit_edge
  %complete = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %complete, align 4
  %mode = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp50 = icmp eq i32 %45, 0
  %. = select i1 %cmp50, i16 0, i16 -32768
  %46 = ptrtoint ptr %pmsg to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %pmsg, align 4
  %48 = and i16 %47, 127
  %or59 = or i16 %., %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %49 = tail call i16 @llvm.bswap.i16(i16 %or59)
  %base64 = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base64, align 4
  %add.ptr65 = getelementptr i8, ptr %51, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr65, i16 %49) #8, !srcloc !78
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 2
  %54 = and i16 %53, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool69.not = icmp eq i16 %54, 0
  br i1 %tobool69.not, label %if.end49.if.end86_crit_edge, label %if.then70

if.end49.if.end86_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then70:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base64, align 4
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %56) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %58 = or i16 %57, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base64, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %60, i16 %58) #8, !srcloc !78
  br label %if.end86

if.end86:                                         ; preds = %if.then70, %if.end49.if.end86_crit_edge
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %len, align 4
  %conv88225 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %xfer_len.0, i32 %conv88225)
  %cmp89226 = icmp slt i32 %xfer_len.0, %conv88225
  br i1 %cmp89226, label %while.body.lr.ph, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end86
  %cmd_status.i = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 7
  %buf155 = getelementptr inbounds %struct.i2c_msg, ptr %pmsg, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %last)
  %cmp142.not = icmp eq i32 %last, 1
  br label %while.body

while.body:                                       ; preds = %if.end167.while.body_crit_edge, %while.body.lr.ph
  %xfer_len.1227 = phi i32 [ %xfer_len.0, %while.body.lr.ph ], [ %inc, %if.end167.while.body_crit_edge ]
  %call93 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %while.body.cleanup_crit_edge, label %if.end97

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %while.body
  %63 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cmd_status.i, align 4
  %65 = and i16 %64, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %if.end101, label %cleanup.loopexit.split.loop.exit220

if.end101:                                        ; preds = %if.end97
  %inc = add nsw i32 %xfer_len.1227, 1
  %67 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base64, align 4
  %add.ptr105 = getelementptr i8, ptr %68, i32 4
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr105) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %70 = and i16 %69, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp111.not = icmp eq i16 %70, 0
  br i1 %cmp111.not, label %if.end125, label %do.body114

do.body114:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wmt_i2c_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wmt_i2c_write, %cleanup)) #8
          to label %if.then121 [label %cleanup], !srcloc !112

if.then121:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wmt_i2c_dev, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wmt_i2c_write.__UNIQUE_ID_ddebug288, ptr noundef %72, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end125:                                        ; preds = %if.end101
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp128 = icmp eq i16 %74, 0
  br i1 %cmp128, label %if.then130, label %if.end136

if.then130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base64, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 3328) #8, !srcloc !78
  br label %cleanup

if.end136:                                        ; preds = %if.end125
  %conv127 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv127)
  %cmp139 = icmp eq i32 %inc, %conv127
  br i1 %cmp139, label %if.then141, label %do.body152

if.then141:                                       ; preds = %if.end136
  br i1 %cmp142.not, label %if.then141.if.end167_crit_edge, label %do.body145

if.then141.if.end167_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

do.body145:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base64, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %78, i16 256) #8, !srcloc !78
  br label %if.end167

do.body152:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %buf155 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf155, align 4
  %arrayidx156 = getelementptr i8, ptr %80, i32 %inc
  %81 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx156, align 1
  %conv159 = zext i8 %82 to i16
  %83 = shl nuw i16 %conv159, 8
  %84 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base64, align 4
  %add.ptr161 = getelementptr i8, ptr %85, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr161, i16 %83) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %86 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base64, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 2304) #8, !srcloc !78
  br label %if.end167

if.end167:                                        ; preds = %do.body152, %do.body145, %if.then141.if.end167_crit_edge
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %len, align 4
  %conv88 = zext i16 %89 to i32
  %cmp89 = icmp ult i32 %inc, %conv88
  br i1 %cmp89, label %if.end167.while.body_crit_edge, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end167.while.body_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.loopexit.split.loop.exit220:              ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.le = zext i16 %64 to i32
  %and.i.le = and i32 %conv.i.le, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.le)
  %tobool.not.i216.le = icmp eq i32 %and.i.le, 0
  %spec.store.select.i.le = select i1 %tobool.not.i216.le, i32 0, i32 -5
  %and3.i.le = and i32 %conv.i.le, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.le)
  %tobool4.not.i.le = icmp eq i32 %and3.i.le, 0
  %spec.store.select7.i.le = select i1 %tobool4.not.i.le, i32 %spec.store.select.i.le, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit220, %if.end167.cleanup_crit_edge, %if.then130, %if.then121, %do.body114, %while.body.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %wmt_i2c_wait_bus_not_busy.exit
  %retval.0 = phi i32 [ -16, %wmt_i2c_wait_bus_not_busy.exit ], [ -5, %if.then121 ], [ 0, %if.then130 ], [ -5, %do.body114 ], [ %spec.store.select7.i.le, %cleanup.loopexit.split.loop.exit220 ], [ 0, %if.end86.cleanup_crit_edge ], [ -110, %while.body.cleanup_crit_edge ], [ 0, %if.end167.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_i2c_wmt__289_465_wmt_i2c_driver_init6, !1, !"__initcall__kmod_i2c_wmt__289_465_wmt_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 465, i32 1}
!2 = !{ptr @__exitcall_wmt_i2c_driver_exit, !1, !"__exitcall_wmt_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 467, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 468, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 469, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 460, i32 11}
!12 = !{ptr @wmt_i2c_driver, !13, !"wmt_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 456, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 390, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wmt_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wmt_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 396, i32 3}
!24 = !{ptr @wmt_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wmt_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 401, i32 33}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 408, i32 8}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 410, i32 3}
!32 = !{ptr @wmt_i2c_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wmt_i2c_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 416, i32 22}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 426, i32 3}
!38 = !{ptr @wmt_i2c_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wmt_i2c_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @wmt_i2c_algo, !41, !"wmt_i2c_algo", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 319, i32 35}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 100, i32 4}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @wmt_i2c_wait_bus_not_busy._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @wmt_i2c_wait_bus_not_busy._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 190, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wmt_i2c_write.__UNIQUE_ID_ddebug288, !49, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!53 = !{ptr @init_completion.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/completion.h", i32 87, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 343, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @wmt_i2c_reset_hardware._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @wmt_i2c_reset_hardware._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 349, i32 3}
!63 = !{ptr @wmt_i2c_reset_hardware._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wmt_i2c_reset_hardware._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @wmt_i2c_dt_ids, !66, !"wmt_i2c_dt_ids", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-wmt.c", i32 451, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i64 2155601982}
!78 = !{i64 6870694}
!79 = !{i64 2155602378}
!80 = !{i64 2155602785}
!81 = !{i64 2155603204}
!82 = !{i64 2155603623}
!83 = !{i64 6870894}
!84 = !{i64 2155604313}
!85 = !{i64 2155604545}
!86 = !{i64 2155612760}
!87 = !{i64 2155598053}
!88 = !{i64 2155598291}
!89 = !{i64 2155578819}
!90 = !{i64 2155590002}
!91 = !{i64 2155590231}
!92 = !{i64 2155590912}
!93 = !{i64 2155591141}
!94 = !{i64 2155591829}
!95 = !{i64 2155592058}
!96 = !{i64 2155592739}
!97 = !{i64 2155592968}
!98 = !{i64 2155593402}
!99 = !{i64 2155594102}
!100 = !{i64 2155594331}
!101 = !{i64 2155595016}
!102 = !{i64 2155595755}
!103 = !{i64 2155596665}
!104 = !{i64 2155582237}
!105 = !{i64 2155582466}
!106 = !{i64 2155583147}
!107 = !{i64 2155583376}
!108 = !{i64 2155583810}
!109 = !{i64 2155584510}
!110 = !{i64 2155584739}
!111 = !{i64 2155585424}
!112 = !{i64 2148730732, i64 2148730737, i64 2148730750, i64 2148730794, i64 2148730828, i64 2148730849}
!113 = !{i64 2155587941}
!114 = !{i64 2155588351}
!115 = !{i64 2155588783}
!116 = !{i64 2155589278}
