; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-sun6i-p2wi.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-sun6i-p2wi.c"
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
%struct.p2wi = type { %struct.i2c_adapter, %struct.completion, i32, ptr, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_i2c_sun6i_p2wi__288_335_p2wi_driver_init6 = internal global ptr @p2wi_driver_init, section ".initcall6.init", align 4
@p2wi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @p2wi_probe, ptr @p2wi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @p2wi_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_p2wi_driver_exit = internal global ptr @p2wi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [75 x i8] c"i2c_sun6i_p2wi.author=Boris BREZILLON <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"i2c_sun6i_p2wi.description=Allwinner P2WI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [54 x i8] c"i2c_sun6i_p2wi.file=drivers/i2c/busses/i2c-sun6i-p2wi\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"i2c_sun6i_p2wi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c-sunxi-p2wi\00", [17 x i8] zeroinitializer }, align 32
@p2wi_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-p2wi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@p2wi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"required clock-frequency (%u Hz) is too high (max = 6MHz)\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"p2wi_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-sun6i-p2wi.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr = internal global ptr @p2wi_probe._entry, section ".printk_index", align 4
@p2wi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"P2WI only supports one slave device\0A\00", [59 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.9 = internal global ptr @p2wi_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@p2wi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid slave address on node %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.13 = internal global ptr @p2wi_probe._entry.11, section ".printk_index", align 4
@p2wi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to retrieve clk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.16 = internal global ptr @p2wi_probe._entry.14, section ".printk_index", align 4
@p2wi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.19 = internal global ptr @p2wi_probe._entry.17, section ".printk_index", align 4
@p2wi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to retrieve reset controller: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.22 = internal global ptr @p2wi_probe._entry.20, section ".printk_index", align 4
@p2wi_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to deassert reset line: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.25 = internal global ptr @p2wi_probe._entry.23, section ".printk_index", align 4
@p2wi_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @p2wi_smbus_xfer, ptr null, ptr @p2wi_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@p2wi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can't register interrupt handler irq%d: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.28 = internal global ptr @p2wi_probe._entry.26, section ".printk_index", align 4
@p2wi_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 291, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"clock-frequency is too high, setting it to %lu Hz\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.32 = internal global ptr @p2wi_probe._entry.29, section ".printk_index", align 4
@p2wi_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 296, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"clock-frequency is too low, setting it to %lu Hz\0A\00", [46 x i8] zeroinitializer }, align 32
@p2wi_probe._entry_ptr.35 = internal global ptr @p2wi_probe._entry.33, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@p2wi_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid P2WI address\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p2wi_smbus_xfer\00", [16 x i8] zeroinitializer }, align 32
@p2wi_smbus_xfer._entry_ptr = internal global ptr @p2wi_smbus_xfer._entry, section ".printk_index", align 4
@p2wi_smbus_xfer._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"P2WI bus busy\0A\00", [17 x i8] zeroinitializer }, align 32
@p2wi_smbus_xfer._entry_ptr.41 = internal global ptr @p2wi_smbus_xfer._entry.39, section ".printk_index", align 4
@p2wi_smbus_xfer._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@p2wi_smbus_xfer._entry_ptr.43 = internal global ptr @p2wi_smbus_xfer._entry.42, section ".printk_index", align 4
@p2wi_smbus_xfer._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.4, i32 162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"P2WI bus xfer error\0A\00", [43 x i8] zeroinitializer }, align 32
@p2wi_smbus_xfer._entry_ptr.46 = internal global ptr @p2wi_smbus_xfer._entry.44, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"p2wi_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 327, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 331, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"p2wi_of_match_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 177, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 196, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 198, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 205, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 223, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 225, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 245, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 251, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 260, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 266, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"p2wi_algo\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 172, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 280, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 289, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 294, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 87, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 125, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 142, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 157, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-sun6i-p2wi.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 162, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_p2wi_driver_exit, ptr @__initcall__kmod_i2c_sun6i_p2wi__288_335_p2wi_driver_init6, ptr @p2wi_driver_exit, ptr @p2wi_probe._entry, ptr @p2wi_probe._entry.11, ptr @p2wi_probe._entry.14, ptr @p2wi_probe._entry.17, ptr @p2wi_probe._entry.20, ptr @p2wi_probe._entry.23, ptr @p2wi_probe._entry.26, ptr @p2wi_probe._entry.29, ptr @p2wi_probe._entry.33, ptr @p2wi_probe._entry.7, ptr @p2wi_probe._entry_ptr, ptr @p2wi_probe._entry_ptr.13, ptr @p2wi_probe._entry_ptr.16, ptr @p2wi_probe._entry_ptr.19, ptr @p2wi_probe._entry_ptr.22, ptr @p2wi_probe._entry_ptr.25, ptr @p2wi_probe._entry_ptr.28, ptr @p2wi_probe._entry_ptr.32, ptr @p2wi_probe._entry_ptr.35, ptr @p2wi_probe._entry_ptr.9, ptr @p2wi_smbus_xfer._entry, ptr @p2wi_smbus_xfer._entry.39, ptr @p2wi_smbus_xfer._entry.42, ptr @p2wi_smbus_xfer._entry.44, ptr @p2wi_smbus_xfer._entry_ptr, ptr @p2wi_smbus_xfer._entry_ptr.41, ptr @p2wi_smbus_xfer._entry_ptr.43, ptr @p2wi_smbus_xfer._entry_ptr.46, ptr @p2wi_driver, ptr @.str, ptr @p2wi_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @p2wi_algo, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @init_completion.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.45], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_smbus_xfer._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_smbus_xfer._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2wi_smbus_xfer._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p2wi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @p2wi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p2wi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @p2wi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p2wi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_freq = alloca i32, align 4
  %slave_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq) #7
  %2 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100000, ptr %clk_freq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave_addr) #7
  %3 = ptrtoint ptr %slave_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %slave_addr, align 4, !annotation !95
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_freq, i32 noundef 1, i32 noundef 0) #7
  %4 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %5)
  %cmp = icmp ugt i32 %5, 6000000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end.if.end8_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp3 = icmp sgt i32 %inc.i, 1
  br i1 %cmp3, label %do.end7, label %of_get_child_count.exit.if.end8_crit_edge

of_get_child_count.exit.if.end8_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end7:                                          ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end8:                                          ; preds = %of_get_child_count.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i206 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1440, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i206, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %slave_addr12 = getelementptr inbounds %struct.p2wi, ptr %call.i206, i32 0, i32 6
  %6 = ptrtoint ptr %slave_addr12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %slave_addr12, align 8
  %call13 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.if.end24_crit_edge, label %if.then15

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15:                                        ; preds = %if.end11
  %call.i.i207 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call13, ptr noundef nonnull @.str.10, ptr noundef nonnull %slave_addr, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i207)
  %tobool17.not = icmp sgt i32 %call.i.i207, -1
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull %call13) #10
  br label %cleanup

if.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_addr, align 4
  %9 = ptrtoint ptr %slave_addr12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %slave_addr12, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end11.if.end24_crit_edge
  %call25 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.p2wi, ptr %call.i206, i32 0, i32 3
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call25, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i206, i32 0, i32 12
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %call33 = call i32 @strscpy(ptr noundef %name, ptr noundef %13, i32 noundef 48) #7
  %call34 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %call38 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.p2wi, ptr %call.i206, i32 0, i32 4
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38, ptr %clk, align 8
  %cmp.i208 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %15) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %call.i209 = call i32 @clk_prepare(ptr noundef %call38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool.not.i = icmp eq i32 %call.i209, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.do.end54_crit_edge

if.end47.do.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54

if.end.i:                                         ; preds = %if.end47
  %call1.i210 = call i32 @clk_enable(ptr noundef %call38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i210)
  %tobool2.not.i = icmp eq i32 %call1.i210, 0
  br i1 %tobool2.not.i, label %if.end55, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call38) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then3.i, %if.end47.do.end54_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i210, %if.then3.i ], [ %call.i209, %if.end47.do.end54_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end.i
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 8
  %call57 = call i32 @clk_get_rate(ptr noundef %17) #7
  %call.i211 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rstc = getelementptr inbounds %struct.p2wi, ptr %call.i206, i32 0, i32 5
  %18 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i211, ptr %rstc, align 4
  %cmp.i212 = icmp ugt ptr %call.i211, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call.i211 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %19) #10
  br label %err_clk_disable

if.end67:                                         ; preds = %if.end55
  %call69 = call i32 @reset_control_deassert(ptr noundef %call.i211) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end75, label %do.end74

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call69) #10
  br label %err_clk_disable

if.end75:                                         ; preds = %if.end67
  %complete = getelementptr inbounds %struct.p2wi, ptr %call.i206, i32 0, i32 1
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.p2wi, ptr %call.i206, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #7
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i206, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i206, i32 0, i32 2
  %22 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @p2wi_algo, ptr %algo, align 8
  %23 = ptrtoint ptr %call.i206 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %call.i206, align 8
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %of_node84 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i206, i32 0, i32 9, i32 27
  %26 = ptrtoint ptr %of_node84 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %of_node84, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i206, ptr %driver_data.i.i, align 4
  %driver_data.i.i213 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i206, i32 0, i32 9, i32 8
  %28 = ptrtoint ptr %driver_data.i.i213 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i206, ptr %driver_data.i.i213, align 4
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %call.i214 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call34, ptr noundef nonnull @p2wi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %30, ptr noundef nonnull %call.i206) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool88.not = icmp eq i32 %call.i214, 0
  br i1 %tobool88.not, label %do.body94, label %do.end92

do.end92:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call34, i32 noundef %call.i214) #10
  br label %err_reset_assert

do.body94:                                        ; preds = %if.end75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 16777216) #7, !srcloc !97
  %33 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call57)
  %tobool98.not = icmp ugt i32 %34, %call57
  br i1 %tobool98.not, label %do.end102, label %if.else

do.end102:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call57) #10
  br label %do.body111

if.else:                                          ; preds = %do.body94
  %div = udiv i32 %call57, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div)
  %cmp103 = icmp sgt i32 %div, 255
  br i1 %cmp103, label %do.end107, label %if.else.do.body111_crit_edge

if.else.do.body111_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body111

do.end107:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %div108 = udiv i32 %call57, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %div108) #10
  br label %do.body111

do.body111:                                       ; preds = %do.end107, %if.else.do.body111_crit_edge, %do.end102
  %clk_div.0 = phi i32 [ 255, %do.end107 ], [ %div, %if.else.do.body111_crit_edge ], [ 1, %do.end102 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %and = and i32 %clk_div.0, 255
  %or = or i32 %and, 256
  %35 = call i32 @llvm.bswap.i32(i32 %or)
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr115 = getelementptr i8, ptr %37, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %35) #7, !srcloc !97
  %call117 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i206) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.body111.cleanup_crit_edge, label %do.body111.err_reset_assert_crit_edge

do.body111.err_reset_assert_crit_edge:            ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_reset_assert

do.body111.cleanup_crit_edge:                     ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_reset_assert:                                 ; preds = %do.body111.err_reset_assert_crit_edge, %do.end92
  %ret.0 = phi i32 [ %call.i214, %do.end92 ], [ %call117, %do.body111.err_reset_assert_crit_edge ]
  %38 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rstc, align 4
  %call122 = call i32 @reset_control_assert(ptr noundef %39) #7
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_reset_assert, %do.end74, %if.then61
  %ret.1 = phi i32 [ %19, %if.then61 ], [ %call69, %do.end74 ], [ %ret.0, %err_reset_assert ]
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %41) #7
  call void @clk_unprepare(ptr noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %do.body111.cleanup_crit_edge, %do.end54, %if.then41, %if.end31.cleanup_crit_edge, %if.then28, %do.end21, %if.end8.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end21 ], [ %11, %if.then28 ], [ %15, %if.then41 ], [ %retval.0.i.ph, %do.end54 ], [ %ret.1, %err_clk_disable ], [ -12, %if.end8.cleanup_crit_edge ], [ %call34, %if.end31.cleanup_crit_edge ], [ 0, %do.body111.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave_addr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p2wi_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rstc = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  %clk = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  tail call void @i2c_del_adapter(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p2wi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.p2wi, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %status2 = getelementptr inbounds %struct.p2wi, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %and = shl i32 %3, 24
  %5 = and i32 %and, 117440512
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #7, !srcloc !97
  %complete = getelementptr inbounds %struct.p2wi, ptr %dev_id, i32 0, i32 1
  tail call void @complete(ptr noundef %complete) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p2wi_smbus_xfer(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %slave_addr = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slave_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  %conv = zext i16 %addr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp2.not = icmp eq i32 %3, %conv
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body6:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %conv9 = zext i8 %command to i32
  %4 = shl nuw i32 %conv9, 24
  %regs = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp11 = icmp eq i8 %read_write, 1
  br i1 %cmp11, label %do.body6.do.body21_crit_edge, label %do.body14

do.body6.do.body21_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

do.body14:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 2
  %conv17 = zext i8 %8 to i32
  %9 = shl nuw i32 %conv17, 24
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %9) #7, !srcloc !97
  br label %do.body21

do.body21:                                        ; preds = %do.body14, %do.body6.do.body21_crit_edge
  %dlen.0 = phi i32 [ 0, %do.body14 ], [ 268435456, %do.body6.do.body21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %dlen.0) #7, !srcloc !97
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool30.not = icmp sgt i32 %16, -1
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end36:                                         ; preds = %do.body21
  %complete = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %complete, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 117440512) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -2113929216) #7, !srcloc !97
  tail call void @wait_for_completion(ptr noundef %complete) #7
  %status = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 8
  %and48 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end36
  %and57 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  br i1 %cmp11, label %if.then68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr72 = getelementptr i8, ptr %25, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #7, !srcloc !99
  %27 = lshr i32 %26, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %conv76 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv76, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end64.cleanup_crit_edge, %do.end62, %do.end53, %do.end34, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end34 ], [ -16, %do.end53 ], [ -6, %do.end62 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @p2wi_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1572864
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_i2c_sun6i_p2wi__288_335_p2wi_driver_init6, !1, !"__initcall__kmod_i2c_sun6i_p2wi__288_335_p2wi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 335, i32 1}
!2 = !{ptr @__exitcall_p2wi_driver_exit, !1, !"__exitcall_p2wi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 337, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 338, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 339, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 331, i32 11}
!12 = !{ptr @p2wi_driver, !13, !"p2wi_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 327, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 196, i32 27}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 198, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @p2wi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @p2wi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 205, i32 3}
!26 = !{ptr @p2wi_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @p2wi_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 223, i32 39}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 225, i32 4}
!32 = !{ptr @p2wi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @p2wi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 245, i32 3}
!36 = !{ptr @p2wi_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @p2wi_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 251, i32 3}
!40 = !{ptr @p2wi_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @p2wi_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 260, i32 3}
!44 = !{ptr @p2wi_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @p2wi_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 266, i32 3}
!48 = !{ptr @p2wi_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @p2wi_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 280, i32 3}
!52 = !{ptr @p2wi_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @p2wi_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 289, i32 3}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @p2wi_probe._entry.29, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @p2wi_probe._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 294, i32 3}
!61 = !{ptr @p2wi_probe._entry.33, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @p2wi_probe._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @init_completion.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/completion.h", i32 87, i32 2}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @p2wi_algo, !67, !"p2wi_algo", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 172, i32 35}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 125, i32 3}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @p2wi_smbus_xfer._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @p2wi_smbus_xfer._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 142, i32 3}
!75 = !{ptr @p2wi_smbus_xfer._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @p2wi_smbus_xfer._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @p2wi_smbus_xfer._entry.42, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 157, i32 3}
!79 = !{ptr @p2wi_smbus_xfer._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 162, i32 3}
!82 = !{ptr @p2wi_smbus_xfer._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @p2wi_smbus_xfer._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @p2wi_of_match_table, !85, !"p2wi_of_match_table", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-sun6i-p2wi.c", i32 177, i32 34}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"auto-init"}
!96 = !{i64 2155626141}
!97 = !{i64 6861420}
!98 = !{i64 2155630500}
!99 = !{i64 6861838}
!100 = !{i64 2155600485}
!101 = !{i64 2155600951}
!102 = !{i64 2155603061}
!103 = !{i64 2155603558}
!104 = !{i64 2155603974}
!105 = !{i64 2155604638}
!106 = !{i64 2155606792}
!107 = !{i64 2155607653}
!108 = !{i64 2155611749}
