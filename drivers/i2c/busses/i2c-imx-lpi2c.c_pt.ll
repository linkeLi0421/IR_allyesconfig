; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-imx-lpi2c.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-imx-lpi2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lpi2c_imx_struct = type { %struct.i2c_adapter, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_imx_lpi2c__294_674_lpi2c_imx_driver_init6 = internal global ptr @lpi2c_imx_driver_init, section ".initcall6.init", align 4
@lpi2c_imx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpi2c_imx_probe, ptr @lpi2c_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpi2c_imx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpi2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpi2c_imx_driver_exit = internal global ptr @lpi2c_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [49 x i8] c"i2c_imx_lpi2c.author=Gao Pan <pandy.gao@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [59 x i8] c"i2c_imx_lpi2c.description=I2C adapter driver for LPI2C bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"i2c_imx_lpi2c.file=drivers/i2c/busses/i2c-imx-lpi2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [26 x i8] c"i2c_imx_lpi2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-lpi2c\00", [22 x i8] zeroinitializer }, align 32
@lpi2c_imx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-lpi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpi2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @lpi2c_runtime_suspend, ptr @lpi2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@lpi2c_imx_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @lpi2c_imx_xfer, ptr null, ptr null, ptr null, ptr @lpi2c_imx_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lpi2c_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't get I2C peripheral clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lpi2c_imx_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/i2c/busses/i2c-imx-lpi2c.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpi2c_imx_probe._entry_ptr = internal global ptr @lpi2c_imx_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@lpi2c_imx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't claim irq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@lpi2c_imx_probe._entry_ptr.9 = internal global ptr @lpi2c_imx_probe._entry.7, section ".printk_index", align 4
@lpi2c_imx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk enable failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lpi2c_imx_probe._entry_ptr.12 = internal global ptr @lpi2c_imx_probe._entry.10, section ".printk_index", align 4
@lpi2c_imx_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPI2C adapter registered\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lpi2c_imx_probe._entry_ptr.16 = internal global ptr @lpi2c_imx_probe._entry.13, section ".printk_index", align 4
@lpi2c_imx_xfer.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_imx_lpi2c\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpi2c_imx_xfer\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"<%s> exit with: %s: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"success msg\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lpi2c_imx_bus_busy.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpi2c_imx_bus_busy\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bus not work\0A\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpi2c_imx_txfifo_empty\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NDF detected\0A\00", [18 x i8] zeroinitializer }, align 32
@lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"txfifo empty timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@lpi2c_imx_stop.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lpi2c_imx_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stop timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@lpi2c_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 650, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable I2C clock, ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lpi2c_runtime_resume\00", [43 x i8] zeroinitializer }, align 32
@lpi2c_runtime_resume._entry_ptr = internal global ptr @lpi2c_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"lpi2c_imx_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 664, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 668, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"lpi2c_imx_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 533, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"lpi2c_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 657, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"lpi2c_imx_algo\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 528, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 566, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 571, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 578, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 587, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 608, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 495, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 135, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 87, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 319, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 324, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 192, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [38 x i8] c"../drivers/i2c/busses/i2c-imx-lpi2c.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 650, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_lpi2c_imx_driver_exit, ptr @__initcall__kmod_i2c_imx_lpi2c__294_674_lpi2c_imx_driver_init6, ptr @lpi2c_imx_driver_exit, ptr @lpi2c_imx_probe._entry, ptr @lpi2c_imx_probe._entry.10, ptr @lpi2c_imx_probe._entry.13, ptr @lpi2c_imx_probe._entry.7, ptr @lpi2c_imx_probe._entry_ptr, ptr @lpi2c_imx_probe._entry_ptr.12, ptr @lpi2c_imx_probe._entry_ptr.16, ptr @lpi2c_imx_probe._entry_ptr.9, ptr @lpi2c_runtime_resume._entry, ptr @lpi2c_runtime_resume._entry_ptr, ptr @lpi2c_imx_driver, ptr @.str, ptr @lpi2c_imx_of_match, ptr @lpi2c_pm_ops, ptr @lpi2c_imx_algo, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_imx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_imx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_imx_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_imx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_imx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_imx_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpi2c_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi2c_imx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpi2c_imx_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpi2c_imx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpi2c_imx_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi2c_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1464, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lpi2c_imx_algo, ptr %algo, align 8
  %dev14 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %of_node18 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %7 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %of_node18, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call21 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %9, i32 noundef 48) #8
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %clk, align 8
  %cmp.i146 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %bitrate = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef %bitrate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool34.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100000, ptr %bitrate, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %call.i147 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call8, ptr noundef nonnull @lpi2c_imx_isr, ptr noundef null, i32 noundef 0, ptr noundef %18, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool41.not = icmp eq i32 %call.i147, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call8) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i148 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i148 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i148, align 4
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 8
  %call.i149 = tail call i32 @clk_prepare(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.do.end55_crit_edge

if.end47.do.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

if.end.i:                                         ; preds = %if.end47
  %call1.i = tail call i32 @clk_enable(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end57, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then3.i, %if.end47.do.end55_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i149, %if.end47.do.end55_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end57:                                         ; preds = %if.end.i
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 10) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !82
  %call.i150 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %and = and i32 %27, 15
  %shl = shl nuw nsw i32 1, %and
  %txfifosize = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %txfifosize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl, ptr %txfifosize, align 8
  %shr = lshr i32 %27, 8
  %and67 = and i32 %shr, 15
  %shl68 = shl nuw nsw i32 1, %and67
  %rxfifosize = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %call.i, i32 0, i32 11
  %29 = ptrtoint ptr %rxfifosize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl68, ptr %rxfifosize, align 4
  %call70 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %rpm_disable

if.end73:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call.i151 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i151, ptr %last_busy.i, align 8
  %call.i152 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.14) #11
  br label %cleanup

rpm_disable:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call.i153 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %rpm_disable, %if.end73, %do.end55, %do.end45, %do.end, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %13, %do.end ], [ %call.i147, %do.end45 ], [ %retval.0.i.ph, %do.end55 ], [ %call70, %rpm_disable ], [ 0, %if.end73 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi2c_imx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi2c_imx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !86
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %7, i32 112
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65.i) #8, !srcloc !83
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %and66.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool.not67.i = icmp eq i32 %and66.i, 0
  br i1 %tobool.not67.i, label %if.end.lr.ph.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.lr.ph.i:                                   ; preds = %if.then
  %rx_buf.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 3
  %delivered.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %10 = phi i32 [ %9, %if.end.lr.ph.i ], [ %19, %if.end.i.if.end.i_crit_edge ]
  %conv.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_buf.i, align 8
  %13 = ptrtoint ptr %delivered.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delivered.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %delivered.i, align 4
  %arrayidx.i = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %17, i32 112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #8, !srcloc !83
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %and.i = and i32 %19, 16384
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %block_data.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 8
  %20 = ptrtoint ptr %block_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %block_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not.i = icmp eq i32 %21, 0
  br i1 %tobool3.not.i, label %do.end.i.if.end8.i_crit_edge, label %if.then4.i

do.end.i.if.end8.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_buf5.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 3
  %22 = ptrtoint ptr %rx_buf5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf5.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv7.i = zext i8 %25 to i32
  %msglen.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 6
  %26 = ptrtoint ptr %msglen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msglen.i, align 8
  %add.i = add i32 %27, %conv7.i
  store i32 %add.i, ptr %msglen.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %do.end.i.if.end8.i_crit_edge
  %msglen9.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 6
  %28 = ptrtoint ptr %msglen9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msglen9.i, align 8
  %delivered10.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 7
  %30 = ptrtoint ptr %delivered10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delivered10.i, align 4
  %sub.i = sub i32 %29, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %tobool11.not.i = icmp eq i32 %29, %31
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 5
  tail call void @complete(ptr noundef %complete.i) #8
  br label %if.end

if.end13.i:                                       ; preds = %if.end8.i
  %rxfifosize.i.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 11
  %32 = ptrtoint ptr %rxfifosize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxfifosize.i.i, align 4
  %shr.i.i = lshr i32 %33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shr.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i, %shr.i.i
  %phi.bo.i.i = shl i32 %shr.i.i, 16
  %temp.0.i.i = select i1 %cmp.i.i, i32 %phi.bo.i.i, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %temp.0.i.i) #8
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %34) #8, !srcloc !86
  %37 = ptrtoint ptr %block_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %block_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool15.not.i = icmp eq i32 %38, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %block_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %block_data.i, align 8
  %or.i = or i32 %sub.i, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %42, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %40) #8, !srcloc !86
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end13.i
  %43 = ptrtoint ptr %delivered10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delivered10.i, align 4
  %and24.i = and i32 %44, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else.i.if.end36.i_crit_edge

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 256
  %phi.bo.i = add i32 %sub.i, -1
  %phi.bo62.i = or i32 %phi.bo.i, 256
  %cond.i = select i1 %cmp.i, i32 511, i32 %phi.bo62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %47, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %45) #8, !srcloc !86
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then26.i, %if.else.i.if.end36.i_crit_edge, %if.then16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %49, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 33554432) #8, !srcloc !86
  br label %if.end

if.end:                                           ; preds = %if.end36.i, %if.then12.i, %entry.if.end_crit_edge
  %and2 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lpi2c_imx_write_txfifo(ptr noundef %dev_id)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %complete = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %dev_id, i32 0, i32 5
  tail call void @complete(ptr noundef %complete) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi2c_imx_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !93
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !94
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #8, !srcloc !86
  %bitrate1.i.i.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %bitrate1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bitrate1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %10)
  %cmp.i.i.i = icmp ult i32 %10, 400000
  br i1 %cmp.i.i.i, label %if.end.i.lpi2c_imx_set_mode.exit.i.i_crit_edge, label %if.else.i.i.i

if.end.i.lpi2c_imx_set_mode.exit.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpi2c_imx_set_mode.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %10)
  %cmp2.i.i.i = icmp ult i32 %10, 1000000
  br i1 %cmp2.i.i.i, label %if.else.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge, label %if.else4.i.i.i

if.else.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpi2c_imx_set_mode.exit.i.i

if.else4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3400000, i32 %10)
  %cmp5.i.i.i = icmp ult i32 %10, 3400000
  br i1 %cmp5.i.i.i, label %if.else4.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge, label %if.else7.i.i.i

if.else4.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge: ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lpi2c_imx_set_mode.exit.i.i

if.else7.i.i.i:                                   ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %10)
  %cmp8.i.i.i = icmp ult i32 %10, 5000000
  %..i.i.i = select i1 %cmp8.i.i.i, i32 3, i32 4
  br label %lpi2c_imx_set_mode.exit.i.i

lpi2c_imx_set_mode.exit.i.i:                      ; preds = %if.else7.i.i.i, %if.else4.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge, %if.else.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge, %if.end.i.lpi2c_imx_set_mode.exit.i.i_crit_edge
  %mode.0.i.i.i = phi i32 [ 0, %if.end.i.lpi2c_imx_set_mode.exit.i.i_crit_edge ], [ 1, %if.else.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge ], [ 2, %if.else4.i.i.i.lpi2c_imx_set_mode.exit.i.i_crit_edge ], [ %..i.i.i, %if.else7.i.i.i ]
  %mode14.i.i.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %mode14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mode.0.i.i.i, ptr %mode14.i.i.i, align 8
  %clk.i.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i.i, align 8
  %call.i38.i = tail call i32 @clk_get_rate(ptr noundef %13) #8
  %14 = ptrtoint ptr %mode14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode14.i.i.i, align 8
  %.off.i.i = add i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %bitrate1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitrate1.i.i.i, align 4
  %18 = lshr exact i32 %spec.select.i.i, 1
  %sub.i.i = sub nuw nsw i32 -3, %18
  %div.i.i = udiv i32 %call.i38.i, %17
  %sub7.i.i = add i32 %sub.i.i, %div.i.i
  %add.i.i = add i32 %sub7.i.i, 2
  %div8.i.i = udiv i32 %add.i.i, 3
  %conv10.i.i = and i32 %div8.i.i, 255
  %sub11.i.i = sub i32 %sub7.i.i, %conv10.i.i
  %conv13.i.i = and i32 %sub11.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i.i)
  %cmp14.i.i = icmp eq i32 %conv13.i.i, 0
  br i1 %cmp14.i.i, label %lpi2c_imx_set_mode.exit.i.i.if.end22.i.i_crit_edge, label %for.cond.i.i

lpi2c_imx_set_mode.exit.i.i.if.end22.i.i_crit_edge: ; preds = %lpi2c_imx_set_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.cond.i.i:                                     ; preds = %lpi2c_imx_set_mode.exit.i.i
  %mul.1.i.i = shl i32 %17, 1
  %div.1.i.i = udiv i32 %call.i38.i, %mul.1.i.i
  %sub7.1.i.i = add i32 %div.1.i.i, %sub.i.i
  %add.1.i.i = add i32 %sub7.1.i.i, 2
  %div8.1.i.i = udiv i32 %add.1.i.i, 3
  %conv10.1.i.i = and i32 %div8.1.i.i, 255
  %sub11.1.i.i = sub i32 %sub7.1.i.i, %conv10.1.i.i
  %conv13.1.i.i = and i32 %sub11.1.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.1.i.i)
  %cmp14.1.i.i = icmp eq i32 %conv13.1.i.i, 0
  br i1 %cmp14.1.i.i, label %for.cond.i.i.if.end22.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end22.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %mul.2.i.i = shl i32 %17, 2
  %div.2.i.i = udiv i32 %call.i38.i, %mul.2.i.i
  %sub7.2.i.i = add i32 %div.2.i.i, %sub.i.i
  %add.2.i.i = add i32 %sub7.2.i.i, 2
  %div8.2.i.i = udiv i32 %add.2.i.i, 3
  %conv10.2.i.i = and i32 %div8.2.i.i, 255
  %sub11.2.i.i = sub i32 %sub7.2.i.i, %conv10.2.i.i
  %conv13.2.i.i = and i32 %sub11.2.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.2.i.i)
  %cmp14.2.i.i = icmp eq i32 %conv13.2.i.i, 0
  br i1 %cmp14.2.i.i, label %for.cond.1.i.i.if.end22.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.end22.i.i_crit_edge:            ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %mul.3.i.i = shl i32 %17, 3
  %div.3.i.i = udiv i32 %call.i38.i, %mul.3.i.i
  %sub7.3.i.i = add i32 %div.3.i.i, %sub.i.i
  %add.3.i.i = add i32 %sub7.3.i.i, 2
  %div8.3.i.i = udiv i32 %add.3.i.i, 3
  %conv10.3.i.i = and i32 %div8.3.i.i, 255
  %sub11.3.i.i = sub i32 %sub7.3.i.i, %conv10.3.i.i
  %conv13.3.i.i = and i32 %sub11.3.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.3.i.i)
  %cmp14.3.i.i = icmp eq i32 %conv13.3.i.i, 0
  br i1 %cmp14.3.i.i, label %for.cond.2.i.i.if.end22.i.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.end22.i.i_crit_edge:            ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %mul.4.i.i = shl i32 %17, 4
  %div.4.i.i = udiv i32 %call.i38.i, %mul.4.i.i
  %sub7.4.i.i = add i32 %div.4.i.i, %sub.i.i
  %add.4.i.i = add i32 %sub7.4.i.i, 2
  %div8.4.i.i = udiv i32 %add.4.i.i, 3
  %conv10.4.i.i = and i32 %div8.4.i.i, 255
  %sub11.4.i.i = sub i32 %sub7.4.i.i, %conv10.4.i.i
  %conv13.4.i.i = and i32 %sub11.4.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.4.i.i)
  %cmp14.4.i.i = icmp eq i32 %conv13.4.i.i, 0
  br i1 %cmp14.4.i.i, label %for.cond.3.i.i.if.end22.i.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.end22.i.i_crit_edge:            ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %mul.5.i.i = shl i32 %17, 5
  %div.5.i.i = udiv i32 %call.i38.i, %mul.5.i.i
  %sub7.5.i.i = add i32 %div.5.i.i, %sub.i.i
  %add.5.i.i = add i32 %sub7.5.i.i, 2
  %div8.5.i.i = udiv i32 %add.5.i.i, 3
  %conv10.5.i.i = and i32 %div8.5.i.i, 255
  %sub11.5.i.i = sub i32 %sub7.5.i.i, %conv10.5.i.i
  %conv13.5.i.i = and i32 %sub11.5.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.5.i.i)
  %cmp14.5.i.i = icmp eq i32 %conv13.5.i.i, 0
  br i1 %cmp14.5.i.i, label %for.cond.4.i.i.if.end22.i.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.end22.i.i_crit_edge:            ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %mul.6.i.i = shl i32 %17, 6
  %div.6.i.i = udiv i32 %call.i38.i, %mul.6.i.i
  %sub7.6.i.i = add i32 %div.6.i.i, %sub.i.i
  %add.6.i.i = add i32 %sub7.6.i.i, 2
  %div8.6.i.i = udiv i32 %add.6.i.i, 3
  %conv10.6.i.i = and i32 %div8.6.i.i, 255
  %sub11.6.i.i = sub i32 %sub7.6.i.i, %conv10.6.i.i
  %conv13.6.i.i = and i32 %sub11.6.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.6.i.i)
  %cmp14.6.i.i = icmp eq i32 %conv13.6.i.i, 0
  br i1 %cmp14.6.i.i, label %for.cond.5.i.i.if.end22.i.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.if.end22.i.i_crit_edge:            ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %mul.7.i.i = shl i32 %17, 7
  %div.7.i.i = udiv i32 %call.i38.i, %mul.7.i.i
  %sub7.7.i.i = add i32 %div.7.i.i, %sub.i.i
  %add.7.i.i = add i32 %sub7.7.i.i, 2
  %div8.7.i.i = udiv i32 %add.7.i.i, 3
  %conv10.7.i.i = and i32 %div8.7.i.i, 255
  %sub11.7.i.i = sub i32 %sub7.7.i.i, %conv10.7.i.i
  %conv13.7.i.i = and i32 %sub11.7.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.7.i.i)
  %cmp14.7.i.i = icmp eq i32 %conv13.7.i.i, 0
  br i1 %cmp14.7.i.i, label %for.cond.6.i.i.if.end22.i.i_crit_edge, label %rpm_put.i

for.cond.6.i.i.if.end22.i.i_crit_edge:            ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %for.cond.6.i.i.if.end22.i.i_crit_edge, %for.cond.5.i.i.if.end22.i.i_crit_edge, %for.cond.4.i.i.if.end22.i.i_crit_edge, %for.cond.3.i.i.if.end22.i.i_crit_edge, %for.cond.2.i.i.if.end22.i.i_crit_edge, %for.cond.1.i.i.if.end22.i.i_crit_edge, %for.cond.i.i.if.end22.i.i_crit_edge, %lpi2c_imx_set_mode.exit.i.i.if.end22.i.i_crit_edge
  %conv47.pre-phi.i.i = phi i32 [ %conv10.7.i.i, %for.cond.6.i.i.if.end22.i.i_crit_edge ], [ %conv10.6.i.i, %for.cond.5.i.i.if.end22.i.i_crit_edge ], [ %conv10.5.i.i, %for.cond.4.i.i.if.end22.i.i_crit_edge ], [ %conv10.4.i.i, %for.cond.3.i.i.if.end22.i.i_crit_edge ], [ %conv10.3.i.i, %for.cond.2.i.i.if.end22.i.i_crit_edge ], [ %conv10.2.i.i, %for.cond.1.i.i.if.end22.i.i_crit_edge ], [ %conv10.1.i.i, %for.cond.i.i.if.end22.i.i_crit_edge ], [ %conv10.i.i, %lpi2c_imx_set_mode.exit.i.i.if.end22.i.i_crit_edge ]
  %conv116.lcssa.i.i = phi i32 [ 7, %for.cond.6.i.i.if.end22.i.i_crit_edge ], [ 6, %for.cond.5.i.i.if.end22.i.i_crit_edge ], [ 5, %for.cond.4.i.i.if.end22.i.i_crit_edge ], [ 4, %for.cond.3.i.i.if.end22.i.i_crit_edge ], [ 3, %for.cond.2.i.i.if.end22.i.i_crit_edge ], [ 2, %for.cond.1.i.i.if.end22.i.i_crit_edge ], [ 1, %for.cond.i.i.if.end22.i.i_crit_edge ], [ 0, %lpi2c_imx_set_mode.exit.i.i.if.end22.i.i_crit_edge ]
  %sub11.lcssa.i.i = phi i32 [ %sub11.7.i.i, %for.cond.6.i.i.if.end22.i.i_crit_edge ], [ %sub11.6.i.i, %for.cond.5.i.i.if.end22.i.i_crit_edge ], [ %sub11.5.i.i, %for.cond.4.i.i.if.end22.i.i_crit_edge ], [ %sub11.4.i.i, %for.cond.3.i.i.if.end22.i.i_crit_edge ], [ %sub11.3.i.i, %for.cond.2.i.i.if.end22.i.i_crit_edge ], [ %sub11.2.i.i, %for.cond.1.i.i.if.end22.i.i_crit_edge ], [ %sub11.1.i.i, %for.cond.i.i.if.end22.i.i_crit_edge ], [ %sub11.i.i, %lpi2c_imx_set_mode.exit.i.i.if.end22.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp24.i.i = icmp eq i32 %15, 4
  %..i.i = select i1 %cmp24.i.i, i32 16777216, i32 0
  %or.i.i = or i32 %conv116.lcssa.i.i, %..i.i
  %or35.i.i = or i32 %or.i.i, 512
  %temp.0.i.i = select i1 %cmp24.i.i, i32 %or35.i.i, i32 %or.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %temp.0.i.i) #8
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #8, !srcloc !86
  %or41.i.i = mul nuw nsw i32 %spec.select.i.i, 16842752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or41.i.i) #8
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr46.i.i = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i.i, i32 %22) #8, !srcloc !86
  %25 = shl nuw nsw i32 %conv47.pre-phi.i.i, 23
  %shl51.i.i = and i32 %25, 2130706432
  %shl53.i.i = shl nuw nsw i32 %conv47.pre-phi.i.i, 16
  %or54.i.i = or i32 %shl51.i.i, %shl53.i.i
  %shl56.i.i = shl nuw nsw i32 %conv47.pre-phi.i.i, 8
  %or57.i.i = or i32 %or54.i.i, %shl56.i.i
  %conv58.i.i = and i32 %sub11.lcssa.i.i, 255
  %or59.i.i = or i32 %or57.i.i, %conv58.i.i
  %26 = ptrtoint ptr %mode14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode14.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp61.i.i = icmp eq i32 %27, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or59.i.i) #8
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  br i1 %cmp61.i.i, label %do.body64.i.i, label %do.body70.i.i

do.body64.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr68.i.i = getelementptr i8, ptr %30, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i.i, i32 %28) #8, !srcloc !86
  br label %lpi2c_imx_master_enable.exit

do.body70.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr74.i.i = getelementptr i8, ptr %30, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i.i, i32 %28) #8, !srcloc !86
  br label %lpi2c_imx_master_enable.exit

rpm_put.i:                                        ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i, align 8
  %call.i40.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i40.i, ptr %last_busy.i.i, align 8
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i, align 8
  %call.i41.i = tail call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #8
  br label %cleanup

lpi2c_imx_master_enable.exit:                     ; preds = %do.body70.i.i, %do.body64.i.i
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %39 = or i32 %38, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %39) #8, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp144 = icmp sgt i32 %num, 0
  br i1 %cmp144, label %for.body.lr.ph, label %lpi2c_imx_master_enable.exit.stop_crit_edge

lpi2c_imx_master_enable.exit.stop_crit_edge:      ; preds = %lpi2c_imx_master_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop

for.body.lr.ph:                                   ; preds = %lpi2c_imx_master_enable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp6 = icmp eq i32 %num, 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %delivered = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 7
  %msglen = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 6
  %complete = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 5
  %wait.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 5, i32 1
  %rx_buf.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 3
  %block_data.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 8
  %rxfifosize.i.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 11
  %tx_buf.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 4
  %txfifosize.i.i = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %45 = or i32 %44, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %45) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 8323072) #8, !srcloc !86
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx, align 4
  %conv.i.i = zext i16 %51 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %flags.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 1
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags.i.i, align 2
  %54 = and i16 %53, 1
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %55 = or i16 %54, 1024
  %conv.i = zext i16 %55 to i32
  %or10.i = or i32 %shl.i.masked.i, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #8
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %58, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %56) #8, !srcloc !86
  %call16.i = tail call fastcc i32 @lpi2c_imx_bus_busy(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool3.not = icmp eq i32 %call16.i, 0
  br i1 %tobool3.not, label %if.end5, label %for.body.disable_crit_edge

for.body.disable_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable

if.end5:                                          ; preds = %for.body
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp8 = icmp eq i16 %60, 0
  br i1 %cmp8, label %land.lhs.true.stop_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true.stop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %61 = ptrtoint ptr %delivered to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %delivered, align 4
  %len13 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 2
  %62 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len13, align 4
  %conv14 = zext i16 %63 to i32
  %64 = ptrtoint ptr %msglen to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv14, ptr %msglen, align 8
  %65 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %complete, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #8
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags.i.i, align 2
  %68 = and i16 %67, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool17.not = icmp eq i16 %68, 0
  %buf.i116 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 3
  %69 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf.i116, align 4
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %rx_buf.i, align 8
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %flags.i.i, align 2
  %74 = and i16 %73, 1024
  %and.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %block_data.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and.i, ptr %block_data.i, align 8
  %76 = ptrtoint ptr %msglen to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msglen, align 8
  %78 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delivered, align 4
  %sub.i.i111 = sub i32 %77, %79
  %80 = ptrtoint ptr %rxfifosize.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rxfifosize.i.i, align 4
  %shr.i.i = lshr i32 %81, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i111, i32 %shr.i.i)
  %cmp.i.i112 = icmp ugt i32 %sub.i.i111, %shr.i.i
  %phi.bo.i.i = shl i32 %shr.i.i, 16
  %temp.0.i.i113 = select i1 %cmp.i.i112, i32 %phi.bo.i.i, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %82 = tail call i32 @llvm.bswap.i32(i32 %temp.0.i.i113) #8
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i114 = getelementptr i8, ptr %84, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114, i32 %82) #8, !srcloc !86
  %85 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %86)
  %cmp.i = icmp ugt i16 %86, 256
  %conv1.i = zext i16 %86 to i32
  %sub.i = add nsw i32 %conv1.i, -1
  %phi.bo.i = or i32 %sub.i, 256
  %cond.i = select i1 %cmp.i, i32 511, i32 %phi.bo.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %87 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %89, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %87) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 33816576) #8, !srcloc !86
  br label %if.end21

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %70, ptr %tx_buf.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %txfifosize.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %txfifosize.i.i, align 8
  %shr.i.i117 = lshr i32 %94, 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i117) #8
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %97, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i119, i32 %95) #8, !srcloc !86
  tail call fastcc void @lpi2c_imx_write_txfifo(ptr noundef %1) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.end21.stop_crit_edge, label %if.end25

if.end21.stop_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop

if.end25:                                         ; preds = %if.end21
  %98 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %flags.i.i, align 2
  %100 = and i16 %99, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool30.not = icmp eq i16 %100, 0
  br i1 %tobool30.not, label %if.then31, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then31:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %101, 50
  br label %do.body.i

do.body.i:                                        ; preds = %if.end41.i.do.body.i_crit_edge, %if.then31
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %103, i32 92
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  %add.ptr5.i123 = getelementptr i8, ptr %106, i32 20
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i123) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %108 = and i32 %107, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i124 = icmp eq i32 %108, 0
  br i1 %tobool.not.i124, label %if.end18.i, label %do.body10.i

do.body10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpi2c_imx_xfer, %stop)) #8
          to label %if.then17.i [label %stop], !srcloc !109

if.then17.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.26) #8
  br label %stop

if.end18.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %sub.i125 = sub i32 %add.i, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i125)
  %cmp.i126 = icmp slt i32 %sub.i125, 0
  br i1 %cmp.i126, label %do.body21.i, label %if.end41.i

do.body21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpi2c_imx_xfer, %stop)) #8
          to label %if.then35.i [label %stop], !srcloc !109

if.then35.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev37.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug292, ptr noundef %dev37.i, ptr noundef nonnull @.str.27) #8
  br label %stop

if.end41.i:                                       ; preds = %if.end18.i
  tail call void @schedule() #8
  %tobool43.not.i = icmp ult i32 %104, 16777216
  br i1 %tobool43.not.i, label %if.end41.i.for.inc_crit_edge, label %if.end41.i.do.body.i_crit_edge

if.end41.i.do.body.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end41.i.for.inc_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end41.i.for.inc_crit_edge, %if.end25.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.stop_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.stop_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop

stop:                                             ; preds = %for.inc.stop_crit_edge, %if.then35.i, %do.body21.i, %if.then17.i, %do.body10.i, %if.end21.stop_crit_edge, %land.lhs.true.stop_crit_edge, %lpi2c_imx_master_enable.exit.stop_crit_edge
  %tobool42.not = phi i32 [ -110, %if.then35.i ], [ -5, %if.then17.i ], [ -110, %do.body21.i ], [ -5, %do.body10.i ], [ -5, %lpi2c_imx_master_enable.exit.stop_crit_edge ], [ -5, %land.lhs.true.stop_crit_edge ], [ -110, %if.end21.stop_crit_edge ], [ -5, %for.inc.stop_crit_edge ]
  %result.2 = phi i32 [ -110, %if.then35.i ], [ -5, %if.then17.i ], [ -110, %do.body21.i ], [ -5, %do.body10.i ], [ 0, %lpi2c_imx_master_enable.exit.stop_crit_edge ], [ 0, %land.lhs.true.stop_crit_edge ], [ -110, %if.end21.stop_crit_edge ], [ 0, %for.inc.stop_crit_edge ]
  tail call fastcc void @lpi2c_imx_stop(ptr noundef %1)
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %111, i32 20
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %113 = and i32 %112, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool40.not = icmp eq i32 %113, 0
  %spec.select = select i1 %tobool40.not, i32 %result.2, i32 %tobool42.not
  br label %disable

disable:                                          ; preds = %stop, %for.body.disable_crit_edge
  %result.3 = phi i32 [ %spec.select, %stop ], [ %call16.i, %for.body.disable_crit_edge ]
  %114 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %115, i32 16
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %117 = and i32 %116, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i, align 4
  %add.ptr3.i130 = getelementptr i8, ptr %119, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i130, i32 %117) #8, !srcloc !86
  %120 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %parent.i, align 8
  %call.i.i132 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i133 = getelementptr inbounds %struct.device, ptr %121, i32 0, i32 12, i32 22
  %122 = ptrtoint ptr %last_busy.i.i133 to i32
  call void @__asan_store8_noabort(i32 %122)
  store volatile i64 %call.i.i132, ptr %last_busy.i.i133, align 8
  %123 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %parent.i, align 8
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %124, i32 noundef 13) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpi2c_imx_xfer.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpi2c_imx_xfer, %do.end)) #8
          to label %if.then52 [label %do.end], !srcloc !109

if.then52:                                        ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.3)
  %cmp54 = icmp slt i32 %result.3, 0
  %cond = select i1 %cmp54, ptr @.str.20, ptr @.str.21
  %result.3.num = select i1 %cmp54, i32 %result.3, i32 %num
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpi2c_imx_xfer.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond, i32 noundef %result.3.num) #8
  br label %do.end

do.end:                                           ; preds = %if.then52, %disable
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.3)
  %cmp60 = icmp slt i32 %result.3, 0
  %result.3.num107 = select i1 %cmp60, i32 %result.3, i32 %num
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rpm_put.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.3.num107, %do.end ], [ %call.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ -22, %rpm_put.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpi2c_imx_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369929
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpi2c_imx_stop(ptr noundef %lpi2c_imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131072) #8, !srcloc !86
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr324 = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr324) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not25 = icmp eq i32 %6, 0
  br i1 %tobool.not25, label %if.end.lr.ph, label %entry.do.end20_crit_edge

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.end.lr.ph:                                     ; preds = %entry
  %add = add i32 %0, 50
  br label %if.end

if.end:                                           ; preds = %if.end18.if.end_crit_edge, %if.end.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body7, label %if.end18

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpi2c_imx_stop.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpi2c_imx_stop, %do.end20)) #8
          to label %if.then14 [label %do.end20], !srcloc !109

if.then14:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %lpi2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpi2c_imx_stop.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  br label %do.end20

if.end18:                                         ; preds = %if.end
  tail call void @schedule() #8
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %11 = and i32 %10, 131072
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end18.if.end_crit_edge, label %if.end18.do.end20_crit_edge

if.end18.do.end20_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.end18.if.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end20:                                         ; preds = %if.end18.do.end20_crit_edge, %if.then14, %do.body7, %entry.do.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpi2c_imx_bus_busy(ptr noundef %lpi2c_imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %base = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %2, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !83
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %and33 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not34 = icmp eq i32 %and33, 0
  br i1 %tobool.not34, label %if.end.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.lr.ph:                                     ; preds = %entry
  %add = add i32 %0, 50
  br label %if.end

do.body:                                          ; preds = %if.end21.do.body_crit_edge, %entry.do.body_crit_edge
  %.lcssa = phi i32 [ %3, %entry.do.body_crit_edge ], [ %11, %if.end21.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %.lcssa) #8, !srcloc !86
  br label %cleanup

if.end:                                           ; preds = %if.end21.if.end_crit_edge, %if.end.lr.ph
  %7 = phi i32 [ %4, %if.end.lr.ph ], [ %12, %if.end21.if.end_crit_edge ]
  %and4 = and i32 %7, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body10, label %if.end21

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpi2c_imx_bus_busy.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lpi2c_imx_bus_busy, %cleanup)) #8
          to label %if.then17 [label %cleanup], !srcloc !109

if.then17:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %lpi2c_imx, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpi2c_imx_bus_busy.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  tail call void @schedule() #8
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %and = and i32 %12, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end21.if.end_crit_edge, label %if.end21.do.body_crit_edge

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end21.if.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup:                                          ; preds = %if.then17, %do.body10, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -11, %do.body ], [ -110, %if.then17 ], [ -110, %do.body10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpi2c_imx_write_txfifo(ptr noundef %lpi2c_imx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 92
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !83
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %delivered = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 7
  %txfifosize = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 10
  %4 = ptrtoint ptr %txfifosize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txfifosize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp24 = icmp ult i32 %3, %5
  br i1 %cmp24, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %msglen = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 6
  %tx_buf = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %txcnt.025 = phi i32 [ %3, %while.body.lr.ph ], [ %inc6, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivered, align 4
  %8 = ptrtoint ptr %msglen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msglen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2 = icmp eq i32 %7, %9
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_buf, align 4
  %inc = add i32 %7, 1
  %12 = ptrtoint ptr %delivered to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %delivered, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %7
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %15 = shl nuw i32 %conv, 24
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %15) #8, !srcloc !86
  %inc6 = add nuw i32 %txcnt.025, 1
  %18 = ptrtoint ptr %txfifosize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txfifosize, align 8
  %cmp = icmp ult i32 %inc6, %19
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %20 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivered, align 4
  %msglen8 = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 6
  %22 = ptrtoint ptr %msglen8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msglen8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp9 = icmp ult i32 %21, %23
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 17039360) #8, !srcloc !86
  br label %if.end12

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %complete = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %lpi2c_imx, i32 0, i32 5
  tail call void @complete(ptr noundef %complete) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi2c_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpi2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  %clk = getelementptr inbounds %struct.lpi2c_imx_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_i2c_imx_lpi2c__294_674_lpi2c_imx_driver_init6, !1, !"__initcall__kmod_i2c_imx_lpi2c__294_674_lpi2c_imx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 674, i32 1}
!2 = !{ptr @__exitcall_lpi2c_imx_driver_exit, !1, !"__exitcall_lpi2c_imx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 676, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 677, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 678, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 668, i32 11}
!12 = !{ptr @lpi2c_imx_driver, !13, !"lpi2c_imx_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 664, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 566, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lpi2c_imx_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpi2c_imx_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 571, i32 8}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 578, i32 3}
!26 = !{ptr @lpi2c_imx_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpi2c_imx_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 587, i32 3}
!30 = !{ptr @lpi2c_imx_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lpi2c_imx_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 608, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lpi2c_imx_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @lpi2c_imx_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @lpi2c_imx_algo, !38, !"lpi2c_imx_algo", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 528, i32 35}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 495, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @lpi2c_imx_xfer.__UNIQUE_ID_ddebug293, !40, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!44 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 135, i32 4}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lpi2c_imx_bus_busy.__UNIQUE_ID_ddebug289, !47, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 319, i32 4}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug291, !54, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 324, i32 4}
!59 = !{ptr @lpi2c_imx_txfifo_empty.__UNIQUE_ID_ddebug292, !58, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 192, i32 4}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lpi2c_imx_stop.__UNIQUE_ID_ddebug290, !61, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!64 = !{ptr @lpi2c_imx_of_match, !65, !"lpi2c_imx_of_match", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 533, i32 34}
!66 = !{ptr @lpi2c_pm_ops, !67, !"lpi2c_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 657, i32 32}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-imx-lpi2c.c", i32 650, i32 3}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @lpi2c_runtime_resume._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @lpi2c_runtime_resume._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148254433, i64 2148254459, i64 2148254488, i64 2148254522, i64 2148254553, i64 2148254576}
!83 = !{i64 6877248}
!84 = !{i64 2155685177}
!85 = !{i64 2155650333}
!86 = !{i64 6876830}
!87 = !{i64 2155678651}
!88 = !{i64 2155673271}
!89 = !{i64 2155671474}
!90 = !{i64 2155673585}
!91 = !{i64 2155674006}
!92 = !{i64 2148253852}
!93 = !{i64 738675, i64 738700, i64 738722, i64 738738, i64 738750, i64 738770, i64 738794, i64 738810, i64 738822}
!94 = !{i64 2148254040}
!95 = !{i64 2155662047}
!96 = !{i64 2155662452}
!97 = !{i64 2155660333}
!98 = !{i64 2155660741}
!99 = !{i64 2155663137}
!100 = !{i64 2155663444}
!101 = !{i64 2155654917}
!102 = !{i64 2155655306}
!103 = !{i64 2155655716}
!104 = !{i64 2155656135}
!105 = !{i64 2155674516}
!106 = !{i64 2155670994}
!107 = !{i64 2155665157}
!108 = !{i64 2155665668}
!109 = !{i64 2148736248, i64 2148736253, i64 2148736266, i64 2148736310, i64 2148736344, i64 2148736365}
!110 = !{i64 2155675390}
!111 = !{i64 2155664138}
!112 = !{i64 2155664445}
!113 = !{i64 2155656553}
!114 = !{i64 2155657262}
!115 = !{i64 2155651033}
!116 = !{i64 2155651342}
!117 = !{i64 2155672186}
!118 = !{i64 2155672411}
