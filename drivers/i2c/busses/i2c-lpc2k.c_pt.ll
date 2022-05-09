; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-lpc2k.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-lpc2k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lpc2k_i2c = type { ptr, ptr, i32, %struct.wait_queue_head, %struct.i2c_adapter, ptr, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_lpc2k__288_493_i2c_lpc2k_driver_init6 = internal global ptr @i2c_lpc2k_driver_init, section ".initcall6.init", align 4
@i2c_lpc2k_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_lpc2k_probe, ptr @i2c_lpc2k_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc2k_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_lpc2k_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_lpc2k_driver_exit = internal global ptr @i2c_lpc2k_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"i2c_lpc2k.author=Kevin Wells <kevin.wells@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"i2c_lpc2k.description=I2C driver for LPC2xxx devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"i2c_lpc2k.file=drivers/i2c/busses/i2c-lpc2k\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"i2c_lpc2k.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [35 x i8] c"i2c_lpc2k.alias=platform:lpc2k-i2c\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lpc2k-i2c\00", [22 x i8] zeroinitializer }, align 32
@lpc2k_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1788-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@i2c_lpc2k_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_lpc2k_suspend, ptr @i2c_lpc2k_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->wait\00", [21 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error getting clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_lpc2k_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-lpc2k.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry_ptr = internal global ptr @i2c_lpc2k_probe._entry, section ".printk_index", align 4
@i2c_lpc2k_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry_ptr.9 = internal global ptr @i2c_lpc2k_probe._entry.7, section ".printk_index", align 4
@i2c_lpc2k_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't request interrupt.\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry_ptr.12 = internal global ptr @i2c_lpc2k_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get I2C base clock\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry_ptr.16 = internal global ptr @i2c_lpc2k_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LPC2K I2C adapter\00", [46 x i8] zeroinitializer }, align 32
@i2c_lpc2k_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_lpc2k_xfer, ptr null, ptr null, ptr null, ptr @i2c_lpc2k_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 429, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LPC2K I2C adapter\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_lpc2k_probe._entry_ptr.21 = internal global ptr @i2c_lpc2k_probe._entry.18, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"i2c_lpc2k_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 484, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 488, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"lpc2k_i2c_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 478, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"i2c_lpc2k_dev_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 468, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 366, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 370, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 376, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 383, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 392, i32 48 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 399, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 420, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"i2c_lpc2k_algorithm\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 341, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-lpc2k.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 429, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_i2c_lpc2k_driver_exit, ptr @__initcall__kmod_i2c_lpc2k__288_493_i2c_lpc2k_driver_init6, ptr @i2c_lpc2k_driver_exit, ptr @i2c_lpc2k_probe._entry, ptr @i2c_lpc2k_probe._entry.10, ptr @i2c_lpc2k_probe._entry.14, ptr @i2c_lpc2k_probe._entry.18, ptr @i2c_lpc2k_probe._entry.7, ptr @i2c_lpc2k_probe._entry_ptr, ptr @i2c_lpc2k_probe._entry_ptr.12, ptr @i2c_lpc2k_probe._entry_ptr.16, ptr @i2c_lpc2k_probe._entry_ptr.21, ptr @i2c_lpc2k_probe._entry_ptr.9, ptr @i2c_lpc2k_driver, ptr @.str, ptr @lpc2k_i2c_match, ptr @i2c_lpc2k_dev_pm_ops, ptr @i2c_lpc2k_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @i2c_lpc2k_algorithm, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc2k_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_lpc2k_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_lpc2k_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_lpc2k_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_lpc2k_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_lpc2k_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_lpc2k_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bus_clk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_clk_rate) #8
  %0 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_clk_rate, align 4, !annotation !63
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1440, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call8, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %do.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end7
  %wait = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.1, ptr noundef nonnull @i2c_lpc2k_probe.__key) #8
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %clk, align 4
  %cmp.i161 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %do.end20, label %if.end24

do.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end24:                                         ; preds = %do.body
  %call.i162 = tail call i32 @clk_prepare(ptr noundef %call14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.do.end31_crit_edge

if.end24.do.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.end.i:                                         ; preds = %if.end24
  %call1.i = tail call i32 @clk_enable(ptr noundef %call14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end33, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call14) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then3.i, %if.end24.do.end31_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i162, %if.end24.do.end31_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i163 = icmp eq ptr %11, null
  br i1 %tobool.not.i163, label %if.end.i164, label %if.end33.dev_name.exit_crit_edge

if.end33.dev_name.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i164:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i164, %if.end33.dev_name.exit_crit_edge
  %retval.0.i165 = phi ptr [ %13, %if.end.i164 ], [ %11, %if.end33.dev_name.exit_crit_edge ]
  %call.i166 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @i2c_lpc2k_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i165, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp39 = icmp slt i32 %call.i166, 0
  br i1 %cmp39, label %do.end43, label %if.end45

do.end43:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %fail_clk

if.end45:                                         ; preds = %dev_name.exit
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 8
  tail call void @disable_irq_nosync(i32 noundef %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2080374784) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1073741824) #8, !srcloc !65
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.13, ptr noundef nonnull %bus_clk_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool49.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool49.not, label %if.end45.if.end51_crit_edge, label %if.then50

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 100000, ptr %bus_clk_rate, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end45.if.end51_crit_edge
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  %call53 = call i32 @clk_get_rate(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %fail_clk

if.end60:                                         ; preds = %if.end51
  %27 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus_clk_rate, align 4
  %div = udiv i32 %call53, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %28)
  %cmp61 = icmp ult i32 %28, 100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %28)
  %cmp64 = icmp ult i32 %28, 400001
  %. = select i1 %cmp64, i32 36, i32 38
  %.sink = select i1 %cmp61, i32 46, i32 %.
  %mul = mul i32 %div, %.sink
  %scl_high.0 = udiv i32 %mul, 100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @arm_heavy_mb() #8
  %29 = call i32 @llvm.bswap.i32(i32 %scl_high.0)
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 8
  %add.ptr = getelementptr i8, ptr %31, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #8, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  call void @arm_heavy_mb() #8
  %sub = sub i32 %div, %scl_high.0
  %32 = call i32 @llvm.bswap.i32(i32 %sub)
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %add.ptr81 = getelementptr i8, ptr %34, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %32) #8, !srcloc !65
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 4
  %driver_data.i.i167 = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 4, i32 9, i32 8
  %36 = ptrtoint ptr %driver_data.i.i167 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i167, align 4
  %37 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %adap, align 8
  %name = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 4, i32 12
  %call84 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef 48) #8
  %algo = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @i2c_lpc2k_algorithm, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 4, i32 9, i32 1
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %parent, align 8
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %of_node93 = getelementptr inbounds %struct.lpc2k_i2c, ptr %call.i, i32 0, i32 4, i32 9, i32 27
  %42 = ptrtoint ptr %of_node93 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %of_node93, align 8
  %call95 = call i32 @i2c_add_adapter(ptr noundef %adap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end60.fail_clk_crit_edge, label %do.end101

if.end60.fail_clk_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_clk

do.end101:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

fail_clk:                                         ; preds = %if.end60.fail_clk_crit_edge, %do.end58, %do.end43
  %ret.0 = phi i32 [ %call.i166, %do.end43 ], [ -22, %do.end58 ], [ %call95, %if.end60.fail_clk_crit_edge ]
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %44) #8
  call void @clk_unprepare(ptr noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_clk, %do.end101, %do.end31, %do.end20, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %7, %do.end20 ], [ %retval.0.i.ph, %do.end31 ], [ %ret.0, %fail_clk ], [ 0, %do.end101 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_clk_rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_lpc2k_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  %clk = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 1
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_lpc2k_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !70
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %8 = add i32 %7, -8
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 29) #8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default.i [
    i32 0, label %if.then.sw.bb.i_crit_edge
    i32 1, label %if.then.sw.bb.i_crit_edge3
    i32 2, label %if.then.sw.bb10.i_crit_edge
    i32 4, label %if.then.sw.bb10.i_crit_edge4
    i32 7, label %sw.bb38.i
    i32 10, label %if.then.sw.bb62.i_crit_edge
    i32 9, label %if.then.sw.bb62.i_crit_edge5
    i32 3, label %if.then.do.body143.i_crit_edge
    i32 5, label %if.then.do.body143.i_crit_edge6
    i32 8, label %if.then.do.body143.i_crit_edge7
    i32 6, label %sw.bb150.i
  ]

if.then.do.body143.i_crit_edge7:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body143.i

if.then.do.body143.i_crit_edge6:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body143.i

if.then.do.body143.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body143.i

if.then.sw.bb62.i_crit_edge5:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb62.i

if.then.sw.bb62.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb62.i

if.then.sw.bb10.i_crit_edge4:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then.sw.bb10.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then.sw.bb.i_crit_edge3:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge3
  %msg.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 5
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 4
  %conv.i.i = zext i16 %14 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i.i, align 2
  %17 = and i16 %16, 1
  %18 = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %conv.i = or i32 %shl.i.masked.i, %18
  %19 = shl nuw i32 %conv.i, 24
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 8
  %add.ptr4.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %19) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 8
  %add.ptr9.i = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 536870912) #8, !srcloc !65
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.then.sw.bb10.i_crit_edge, %if.then.sw.bb10.i_crit_edge4
  %msg_idx.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 6
  %24 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_idx.i, align 4
  %msg11.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 5
  %26 = ptrtoint ptr %msg11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg11.i, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len.i, align 4
  %conv12.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv12.i)
  %cmp.i = icmp slt i32 %25, %conv12.i
  br i1 %cmp.i, label %do.body14.i, label %if.else.i

do.body14.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %msg11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msg11.i, align 8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i, align 4
  %34 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_idx.i, align 4
  %arrayidx.i = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %conv19.i = zext i8 %37 to i32
  %38 = shl nuw i32 %conv19.i, 24
  %39 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_id, align 8
  %add.ptr21.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %38) #8, !srcloc !65
  br label %if.end36.i

if.else.i:                                        ; preds = %sw.bb10.i
  %is_last.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 8
  %41 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %is_last.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.else33.i, label %do.body23.i

do.body23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_id, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 335544320) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_id, align 8
  %add.ptr32.i = getelementptr i8, ptr %46, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 134217728) #8, !srcloc !65
  %msg_status.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %47 = ptrtoint ptr %msg_status.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %msg_status.i, align 8
  %irq.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 2
  %48 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %49) #8
  br label %if.end36.i

if.else33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %msg_status34.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %50 = ptrtoint ptr %msg_status34.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %msg_status34.i, align 8
  %irq35.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 2
  %51 = ptrtoint ptr %irq35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq35.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %52) #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else33.i, %do.body23.i, %do.body14.i
  %53 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_idx.i, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %msg_idx.i, align 4
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %if.then
  %msg39.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 5
  %55 = ptrtoint ptr %msg39.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %msg39.i, align 8
  %len40.i = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %len40.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %len40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %58)
  %cmp42.i = icmp eq i16 %58, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_id, align 8
  br i1 %cmp42.i, label %do.body45.i, label %do.body51.i

do.body45.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr49.i = getelementptr i8, ptr %60, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 67108864) #8, !srcloc !65
  br label %do.body57.i

do.body51.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 67108864) #8, !srcloc !65
  br label %do.body57.i

do.body57.i:                                      ; preds = %do.body51.i, %do.body45.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_id, align 8
  %add.ptr61.i = getelementptr i8, ptr %62, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 536870912) #8, !srcloc !65
  br label %sw.epilog.i

sw.bb62.i:                                        ; preds = %if.then.sw.bb62.i_crit_edge, %if.then.sw.bb62.i_crit_edge5
  %msg_idx63.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 6
  %63 = ptrtoint ptr %msg_idx63.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_idx63.i, align 4
  %msg64.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 5
  %65 = ptrtoint ptr %msg64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %msg64.i, align 8
  %len65.i = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %len65.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %len65.i, align 4
  %conv66.i = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv66.i)
  %cmp67.i = icmp slt i32 %64, %conv66.i
  br i1 %cmp67.i, label %if.then69.i, label %sw.bb62.i.if.end82.i_crit_edge

sw.bb62.i.if.end82.i_crit_edge:                   ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then69.i:                                      ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_id, align 8
  %add.ptr73.i = getelementptr i8, ptr %70, i32 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #8, !srcloc !70
  %72 = lshr i32 %71, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %conv77.i = trunc i32 %72 to i8
  %73 = ptrtoint ptr %msg64.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %msg64.i, align 8
  %buf79.i = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %buf79.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf79.i, align 4
  %77 = ptrtoint ptr %msg_idx63.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_idx63.i, align 4
  %arrayidx81.i = getelementptr i8, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv77.i, ptr %arrayidx81.i, align 1
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then69.i, %sw.bb62.i.if.end82.i_crit_edge
  %80 = ptrtoint ptr %msg_idx63.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_idx63.i, align 4
  %82 = ptrtoint ptr %msg64.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %msg64.i, align 8
  %len85.i = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %len85.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %len85.i, align 4
  %conv86.i = zext i16 %85 to i32
  %sub.i = add nsw i32 %conv86.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %sub.i)
  %cmp87.not.i = icmp slt i32 %81, %sub.i
  br i1 %cmp87.not.i, label %if.end82.i.if.end103.i_crit_edge, label %land.lhs.true.i

if.end82.i.if.end103.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

land.lhs.true.i:                                  ; preds = %if.end82.i
  %is_last89.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 8
  %86 = ptrtoint ptr %is_last89.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %is_last89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool90.not.i = icmp eq i32 %87, 0
  br i1 %tobool90.not.i, label %land.lhs.true.i.if.end103.i_crit_edge, label %do.body92.i

land.lhs.true.i.if.end103.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

do.body92.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_id, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 335544320) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_id, align 8
  %add.ptr101.i = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 134217728) #8, !srcloc !65
  %msg_status102.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %92 = ptrtoint ptr %msg_status102.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %msg_status102.i, align 8
  br label %if.end103.i

if.end103.i:                                      ; preds = %do.body92.i, %land.lhs.true.i.if.end103.i_crit_edge, %if.end82.i.if.end103.i_crit_edge
  %93 = ptrtoint ptr %msg_idx63.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %msg_idx63.i, align 4
  %95 = ptrtoint ptr %msg64.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %msg64.i, align 8
  %len106.i = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %len106.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %len106.i, align 4
  %conv107.i = zext i16 %98 to i32
  %sub108.i = add nsw i32 %conv107.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %sub108.i)
  %cmp109.not.i = icmp slt i32 %94, %sub108.i
  br i1 %cmp109.not.i, label %if.end103.i.if.end114.i_crit_edge, label %if.then111.i

if.end103.i.if.end114.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114.i

if.then111.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  %msg_status112.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %99 = ptrtoint ptr %msg_status112.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %msg_status112.i, align 8
  %irq113.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 2
  %100 = ptrtoint ptr %irq113.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq113.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %101) #8
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then111.i, %if.end103.i.if.end114.i_crit_edge
  %102 = ptrtoint ptr %msg_idx63.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %msg_idx63.i, align 4
  %104 = ptrtoint ptr %msg64.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %msg64.i, align 8
  %len117.i = getelementptr inbounds %struct.i2c_msg, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %len117.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %len117.i, align 4
  %conv118.i = zext i16 %107 to i32
  %sub119.i = add nsw i32 %conv118.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %sub119.i)
  %cmp120.not.i = icmp slt i32 %103, %sub119.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %108 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_id, align 8
  br i1 %cmp120.not.i, label %do.body129.i, label %do.body123.i

do.body123.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr127.i = getelementptr i8, ptr %109, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127.i, i32 67108864) #8, !srcloc !65
  br label %do.body135.i

do.body129.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 67108864) #8, !srcloc !65
  br label %do.body135.i

do.body135.i:                                     ; preds = %do.body129.i, %do.body123.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %110 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_id, align 8
  %add.ptr139.i = getelementptr i8, ptr %111, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139.i, i32 536870912) #8, !srcloc !65
  %112 = ptrtoint ptr %msg_idx63.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %msg_idx63.i, align 4
  %inc141.i = add i32 %113, 1
  store i32 %inc141.i, ptr %msg_idx63.i, align 4
  br label %sw.epilog.i

do.body143.i:                                     ; preds = %if.then.do.body143.i_crit_edge, %if.then.do.body143.i_crit_edge6, %if.then.do.body143.i_crit_edge7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_id, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 335544320) #8, !srcloc !65
  %msg_status148.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %116 = ptrtoint ptr %msg_status148.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -6, ptr %msg_status148.i, align 8
  %irq149.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 2
  %117 = ptrtoint ptr %irq149.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq149.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %118) #8
  br label %sw.epilog.i

sw.bb150.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %msg_status151.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %119 = ptrtoint ptr %msg_status151.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -11, ptr %msg_status151.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_id, align 8
  %add.ptr156.i = getelementptr i8, ptr %121, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156.i, i32 805306368) #8, !srcloc !65
  %irq157.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 2
  %122 = ptrtoint ptr %irq157.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq157.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %123) #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %msg_status158.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %124 = ptrtoint ptr %msg_status158.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -5, ptr %msg_status158.i, align 8
  %irq159.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 2
  %125 = ptrtoint ptr %irq159.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq159.i, align 8
  tail call void @disable_irq_nosync(i32 noundef %126) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb150.i, %do.body143.i, %do.body135.i, %do.body57.i, %if.end36.i, %sw.bb.i
  %msg_status160.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 7
  %127 = ptrtoint ptr %msg_status160.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %msg_status160.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %128)
  %cmp161.not.i = icmp eq i32 %128, -16
  br i1 %cmp161.not.i, label %sw.epilog.i.do.body169.i_crit_edge, label %if.end164.i

sw.epilog.i.do.body169.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body169.i

if.end164.i:                                      ; preds = %sw.epilog.i
  %wait.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %dev_id, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %129 = ptrtoint ptr %msg_status160.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr.i = load i32, ptr %msg_status160.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp166.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp166.not.i, label %if.end164.i.cleanup_crit_edge, label %if.end164.i.do.body169.i_crit_edge

if.end164.i.do.body169.i_crit_edge:               ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body169.i

if.end164.i.cleanup_crit_edge:                    ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body169.i:                                     ; preds = %if.end164.i.do.body169.i_crit_edge, %sw.epilog.i.do.body169.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_id, align 8
  %add.ptr173.i = getelementptr i8, ptr %131, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173.i, i32 134217728) #8, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %do.body169.i, %if.end164.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end164.i.cleanup_crit_edge ], [ 1, %do.body169.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_lpc2k_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %msg_num) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -134217728, i32 %4)
  %cmp.not = icmp eq i32 %4, -134217728
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_num)
  %cmp429 = icmp sgt i32 %msg_num, 0
  br i1 %cmp429, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %msg = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 5
  %msg_idx = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 6
  %msg_status = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 7
  %sub = add nsw i32 %msg_num, -1
  %is_last = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 8
  %irq.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 2
  %wait.i = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %5, 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 268435456) #8, !srcloc !65
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr217.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217.i) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -134217728, i32 %10)
  %cmp.not18.i = icmp eq i32 %10, -134217728
  br i1 %cmp.not18.i, label %if.then.cleanup_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %do.end10.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp slt i32 %sub.i, 0
  br i1 %cmp5.i, label %if.then.i, label %do.end10.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2080374784) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1073741824) #8, !srcloc !65
  br label %cleanup

do.end10.i:                                       ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !90
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr2.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %cmp.not.i = icmp eq i32 %20, -134217728
  br i1 %cmp.not.i, label %do.end10.i.cleanup_crit_edge, label %do.end10.i.while.body.i_crit_edge

do.end10.i.while.body.i_crit_edge:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end10.i.cleanup_crit_edge:                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %lpc2k_process_msg.exit
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %msg_num
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.030
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %msg, align 8
  %22 = ptrtoint ptr %msg_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msg_idx, align 4
  %23 = ptrtoint ptr %msg_status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -16, ptr %msg_status, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.030, i32 %sub)
  %cmp5 = icmp eq i32 %i.030, %sub
  %conv = zext i1 %cmp5 to i32
  %24 = ptrtoint ptr %is_last to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %is_last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.030)
  %tobool.not.i = icmp eq i32 %i.030, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 536870912) #8, !srcloc !65
  br label %if.end60.i

if.else.i:                                        ; preds = %for.body
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.030, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i, align 2
  %29 = and i16 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool1.not.i = icmp eq i16 %29, 0
  br i1 %tobool1.not.i, label %do.body49.i, label %if.then4.i, !prof !92

if.then4.i:                                       ; preds = %if.else.i
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.030, i32 2
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i = icmp eq i16 %31, 0
  br i1 %cmp.i, label %do.end22.i, label %if.then4.i.if.end.i_crit_edge, !prof !93

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end22.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 264, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end22.i, %if.then4.i.if.end.i_crit_edge
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg, align 8
  %flags35.i = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags35.i, align 2
  %36 = and i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool38.not.i = icmp eq i16 %36, 0
  br i1 %tobool38.not.i, label %do.body40.i, label %if.end.i.do.body55.i_crit_edge

if.end.i.do.body55.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55.i

do.body40.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msg, align 8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv44.i = zext i8 %42 to i32
  %43 = shl nuw i32 %conv44.i, 24
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %add.ptr46.i = getelementptr i8, ptr %45, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %43) #8, !srcloc !65
  %46 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_idx, align 4
  %inc.i = add i32 %47, 1
  store i32 %inc.i, ptr %msg_idx, align 4
  br label %do.body55.i

do.body49.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 536870912) #8, !srcloc !65
  br label %do.body55.i

do.body55.i:                                      ; preds = %do.body49.i, %do.body40.i, %if.end.i.do.body55.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %add.ptr59.i = getelementptr i8, ptr %51, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 134217728) #8, !srcloc !65
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.body55.i, %do.body.i
  %52 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq.i, align 8
  call void @enable_irq(i32 noundef %53) #8
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 284) #8
  %54 = ptrtoint ptr %msg_status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %55)
  %cmp67.not.i = icmp eq i32 %55, -16
  br i1 %cmp67.not.i, label %if.then81.i, label %if.end60.i.lpc2k_process_msg.exit_crit_edge

if.end60.i.lpc2k_process_msg.exit_crit_edge:      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpc2k_process_msg.exit

if.then81.i:                                      ; preds = %if.end60.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %56 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %call84149.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %57 = ptrtoint ptr %msg_status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %58)
  %cmp87.not150.not.i = icmp eq i32 %58, -16
  br i1 %cmp87.not150.not.i, label %if.then81.i.cleanup.i_crit_edge, label %if.end111.thread.i

if.then81.i.cleanup.i_crit_edge:                  ; preds = %if.then81.i
  br label %cleanup.i

if.end111.thread.i:                               ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %lpc2k_process_msg.exitthread-pre-split

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then81.i.cleanup.i_crit_edge
  %__ret82.1152.i = phi i32 [ %__ret82.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 100, %if.then81.i.cleanup.i_crit_edge ]
  %call108.i = call i32 @schedule_timeout(i32 noundef %__ret82.1152.i) #8
  %call84.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %59 = ptrtoint ptr %msg_status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %60)
  %cmp87.not.i = icmp eq i32 %60, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool93.not.i = icmp eq i32 %call108.i, 0
  %spec.store.select119.i = select i1 %tobool93.not.i, i32 1, i32 %call108.i
  %__ret82.1.i = select i1 %cmp87.not.i, i32 %call108.i, i32 %spec.store.select119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret82.1.i)
  %tobool100.not.i = icmp eq i32 %__ret82.1.i, 0
  %not.cmp87.not.i = xor i1 %cmp87.not.i, true
  %61 = select i1 %not.cmp87.not.i, i1 true, i1 %tobool100.not.i
  br i1 %61, label %if.end111.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end111.i:                                      ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br i1 %tobool100.not.i, label %lpc2k_process_msg.exit.thread, label %if.end111.i.lpc2k_process_msg.exitthread-pre-split_crit_edge

if.end111.i.lpc2k_process_msg.exitthread-pre-split_crit_edge: ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpc2k_process_msg.exitthread-pre-split

lpc2k_process_msg.exit.thread:                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq.i, align 8
  call void @disable_irq_nosync(i32 noundef %63) #8
  br label %cleanup

lpc2k_process_msg.exitthread-pre-split:           ; preds = %if.end111.i.lpc2k_process_msg.exitthread-pre-split_crit_edge, %if.end111.thread.i
  %64 = ptrtoint ptr %msg_status to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load i32, ptr %msg_status, align 8
  br label %lpc2k_process_msg.exit

lpc2k_process_msg.exit:                           ; preds = %lpc2k_process_msg.exitthread-pre-split, %if.end60.i.lpc2k_process_msg.exit_crit_edge
  %65 = phi i32 [ %.pr, %lpc2k_process_msg.exitthread-pre-split ], [ %55, %if.end60.i.lpc2k_process_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not = icmp eq i32 %65, 0
  br i1 %tobool.not, label %for.cond, label %lpc2k_process_msg.exit.cleanup_crit_edge

lpc2k_process_msg.exit.cleanup_crit_edge:         ; preds = %lpc2k_process_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %lpc2k_process_msg.exit.cleanup_crit_edge, %lpc2k_process_msg.exit.thread, %for.cond.cleanup_crit_edge, %do.end10.i.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then.i ], [ 0, %if.then.cleanup_crit_edge ], [ -110, %lpc2k_process_msg.exit.thread ], [ %msg_num, %for.cond.preheader.cleanup_crit_edge ], [ %65, %lpc2k_process_msg.exit.cleanup_crit_edge ], [ %msg_num, %for.cond.cleanup_crit_edge ], [ 0, %do.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i2c_lpc2k_functionality(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_lpc2k_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_lpc2k_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.lpc2k_i2c, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2080374784) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1073741824) #8, !srcloc !65
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_i2c_lpc2k__288_493_i2c_lpc2k_driver_init6, !1, !"__initcall__kmod_i2c_lpc2k__288_493_i2c_lpc2k_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 493, i32 1}
!2 = !{ptr @__exitcall_i2c_lpc2k_driver_exit, !1, !"__exitcall_i2c_lpc2k_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 495, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 496, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 497, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 498, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 488, i32 12}
!14 = !{ptr @i2c_lpc2k_driver, !15, !"i2c_lpc2k_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 484, i32 31}
!16 = !{ptr @i2c_lpc2k_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 366, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 370, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @i2c_lpc2k_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @i2c_lpc2k_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 376, i32 3}
!29 = !{ptr @i2c_lpc2k_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @i2c_lpc2k_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 383, i32 3}
!33 = !{ptr @i2c_lpc2k_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @i2c_lpc2k_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 392, i32 48}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 399, i32 3}
!39 = !{ptr @i2c_lpc2k_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @i2c_lpc2k_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 420, i32 26}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 429, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @i2c_lpc2k_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @i2c_lpc2k_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @i2c_lpc2k_algorithm, !49, !"i2c_lpc2k_algorithm", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 341, i32 35}
!50 = !{ptr @lpc2k_i2c_match, !51, !"lpc2k_i2c_match", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 478, i32 34}
!52 = !{ptr @i2c_lpc2k_dev_pm_ops, !53, !"i2c_lpc2k_dev_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-lpc2k.c", i32 468, i32 32}
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
!64 = !{i64 2155603746}
!65 = !{i64 6864883}
!66 = !{i64 2155604580}
!67 = !{i64 2155605072}
!68 = !{i64 2155631382}
!69 = !{i64 2155631804}
!70 = !{i64 6865301}
!71 = !{i64 2155623585}
!72 = !{i64 2155607486}
!73 = !{i64 2155607705}
!74 = !{i64 2155608206}
!75 = !{i64 2155608694}
!76 = !{i64 2155609407}
!77 = !{i64 2155610079}
!78 = !{i64 2155611789}
!79 = !{i64 2155612522}
!80 = !{i64 2155612989}
!81 = !{i64 2155613661}
!82 = !{i64 2155615371}
!83 = !{i64 2155616084}
!84 = !{i64 2155616873}
!85 = !{i64 2155617654}
!86 = !{i64 2155623095}
!87 = !{i64 2155605642}
!88 = !{i64 2155606375}
!89 = !{i64 2155606999}
!90 = !{i64 2155606841}
!91 = !{i64 2155618224}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2155619279}
!95 = !{i64 2155619816}
!96 = !{i64 2155620386}
