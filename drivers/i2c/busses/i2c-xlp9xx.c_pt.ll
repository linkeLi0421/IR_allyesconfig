; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-xlp9xx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-xlp9xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xlp9xx_i2c_dev = type { ptr, %struct.i2c_adapter, %struct.completion, %struct.i2c_smbus_alert_setup, ptr, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_xlp9xx__300_593_xlp9xx_i2c_driver_init6 = internal global ptr @xlp9xx_i2c_driver_init, section ".initcall6.init", align 4
@xlp9xx_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xlp9xx_i2c_probe, ptr @xlp9xx_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xlp9xx_i2c_driver_exit = internal global ptr @xlp9xx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [64 x i8] c"i2c_xlp9xx.author=Subhendu Sekhar Behera <sbehera@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [60 x i8] c"i2c_xlp9xx.description=XLP9XX/5XX I2C Bus Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [46 x i8] c"i2c_xlp9xx.file=drivers/i2c/busses/i2c-xlp9xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [26 x i8] c"i2c_xlp9xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xlp9xx-i2c\00", [21 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ request failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlp9xx_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-xlp9xx.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_probe._entry_ptr = internal global ptr @xlp9xx_i2c_probe._entry, section ".printk_index", align 4
@xlp9xx_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @xlp9xx_i2c_xfer, ptr null, ptr null, ptr null, ptr @xlp9xx_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_xlp9xx\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No active SMBus alert %d\0A\00", [38 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I2C bus:%d added\0A\00", [46 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xlp9xx_i2c_get_frequency\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"using default input frequency %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using default frequency %u\0A\00", [36 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 481, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid frequency %u, using default\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_get_frequency._entry_ptr = internal global ptr @xlp9xx_i2c_get_frequency._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xlp9xx_i2c_xfer_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"transfer error %x!\0A\00", [44 x i8] zeroinitializer }, align 32
@xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c transfer timed out!\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"xlp9xx_i2c_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 584, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 588, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 533, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"xlp9xx_i2c_algo\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 454, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 554, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 557, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 469, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 475, i32 45 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 478, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 480, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 87, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 403, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-xlp9xx.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 411, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_xlp9xx_i2c_driver_exit, ptr @__initcall__kmod_i2c_xlp9xx__300_593_xlp9xx_i2c_driver_init6, ptr @xlp9xx_i2c_driver_exit, ptr @xlp9xx_i2c_get_frequency._entry, ptr @xlp9xx_i2c_get_frequency._entry_ptr, ptr @xlp9xx_i2c_probe._entry, ptr @xlp9xx_i2c_probe._entry_ptr, ptr @xlp9xx_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xlp9xx_i2c_algo, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp9xx_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp9xx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp9xx_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlp9xx_i2c_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp9xx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xlp9xx_i2c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xlp9xx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xlp9xx_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp9xx_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1472, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 9
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call8, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  %alert_data = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 3
  %3 = tail call i32 @llvm.smax.i32(i32 %call13, i32 0)
  %4 = ptrtoint ptr %alert_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %alert_data, align 8
  tail call fastcc void @xlp9xx_i2c_get_frequency(ptr noundef %pdev, ptr noundef nonnull %call.i)
  %ip_clk_hz.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %ip_clk_hz.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip_clk_hz.i, align 4
  %clk_hz.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 13
  %7 = ptrtoint ptr %clk_hz.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_hz.i, align 8
  %add.i = add i32 %6, -1
  %sub.i = add i32 %add.i, %8
  %div.i = udiv i32 %sub.i, %8
  %sub2.i = add i32 %div.i, -8
  %div3.i = udiv i32 %sub2.i, 5
  %sub4.i = add nsw i32 %div3.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i32, ptr %10, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65536) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr.i2.i = getelementptr i32, ptr %12, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 1342177280) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %sub4.i) #7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr.i5.i = getelementptr i32, ptr %17, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #7, !srcloc !65
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 8
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %call.i137 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @xlp9xx_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %21, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool27.not = icmp eq i32 %call.i137, 0
  br i1 %tobool27.not, label %if.end30, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end12
  %msg_complete = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #7
  %adapter = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xlp9xx_i2c_algo, ptr %algo, align 8
  %class = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %class, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %of_node41 = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %28 = ptrtoint ptr %of_node41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %of_node41, align 8
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %call.i, align 8
  %name45 = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1, i32 12
  %30 = call ptr @memcpy(ptr %name45, ptr @.str, i32 11)
  %driver_data.i.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call49 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end30
  %32 = ptrtoint ptr %alert_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %alert_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %if.end52.do.body56_crit_edge, label %if.end.i

if.end52.do.body56_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

if.end.i:                                         ; preds = %if.end52
  %call.i138 = tail call ptr @i2c_new_smbus_alert_device(ptr noundef %adapter, ptr noundef %alert_data) #7
  %cmp.i.i = icmp ugt ptr %call.i138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xlp9xx_i2c_smbus_setup.exit, label %xlp9xx_i2c_smbus_setup.exit.thread

xlp9xx_i2c_smbus_setup.exit.thread:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ara6.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %ara6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i138, ptr %ara6.i, align 4
  br label %if.end67

xlp9xx_i2c_smbus_setup.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call.i138 to i32
  br label %do.body56

do.body56:                                        ; preds = %xlp9xx_i2c_smbus_setup.exit, %if.end52.do.body56_crit_edge
  %retval.0.i139146 = phi i32 [ %35, %xlp9xx_i2c_smbus_setup.exit ], [ -22, %if.end52.do.body56_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlp9xx_i2c_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xlp9xx_i2c_probe, %if.end67)) #7
          to label %if.then62 [label %if.end67], !srcloc !66

if.then62:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xlp9xx_i2c_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i139146) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %do.body56, %xlp9xx_i2c_smbus_setup.exit.thread
  %driver_data.i.i140 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i140 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i140, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlp9xx_i2c_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xlp9xx_i2c_probe, %cleanup)) #7
          to label %if.then82 [label %cleanup], !srcloc !66

if.then82:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %call.i, i32 0, i32 1, i32 11
  %37 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xlp9xx_i2c_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end67, %if.end30.cleanup_crit_edge, %do.end, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call.i137, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call49, %if.end30.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp9xx_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !65
  %irq = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %5) #7
  %adapter = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i5 = getelementptr i32, ptr %7, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #7, !srcloc !65
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlp9xx_i2c_get_frequency(ptr noundef %pdev, ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #7
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freq, align 4, !annotation !67
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ip_clk_hz = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 12
  %1 = ptrtoint ptr %ip_clk_hz to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 133000000, ptr %ip_clk_hz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xlp9xx_i2c_get_frequency, %if.end11)) #7
          to label %if.then6 [label %if.end11], !srcloc !66

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ip_clk_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip_clk_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %3) #7
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @clk_get_rate(ptr noundef %call) #7
  %ip_clk_hz10 = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 12
  %4 = ptrtoint ptr %ip_clk_hz10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call9, ptr %ip_clk_hz10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6, %if.then
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %freq, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.else35, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100000, ptr %freq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xlp9xx_i2c_get_frequency, %if.end43)) #7
          to label %if.then30 [label %if.end43], !srcloc !66

if.then30:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %7) #7
  br label %if.end43

if.else35:                                        ; preds = %if.end11
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq, align 4
  %10 = add i32 %9, -400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400000, i32 %10)
  %11 = icmp ult i32 %10, -400000
  br i1 %11, label %do.end40, label %if.else35.if.end43_crit_edge

if.else35.if.end43_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end40:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %9) #10
  %12 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100000, ptr %freq, align 4
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.else35.if.end43_crit_edge, %if.then30, %if.then15
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freq, align 4
  %clk_hz = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 13
  %15 = ptrtoint ptr %clk_hz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %clk_hz, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp9xx_i2c_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !68
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i51 = getelementptr i32, ptr %5, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %2) #7, !srcloc !65
  %and = and i32 %3, 33556481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %msg_err = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 14
  %6 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %msg_err, align 4
  br label %xfer_done

if.end2:                                          ; preds = %if.end
  %and3 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end2.if.end7_crit_edge, label %land.lhs.true

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end2
  %msg_len = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 11
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %land.lhs.true.xfer_done_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.xfer_done_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_done

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end2.if.end7_crit_edge
  %msg_read = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 6
  %9 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msg_read, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.then9, label %if.else17

if.then9:                                         ; preds = %if.end7
  %and10 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.if.end26_crit_edge, label %if.then12

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then12:                                        ; preds = %if.then9
  %msg_buf_remaining = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 10
  %11 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_buf_remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  %msg_buf.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 15
  %13 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msg_buf.i, align 8
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 128) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then14
  %i.015.i = phi i32 [ 0, %if.then14 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %14, i32 %i.015.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %18 = shl nuw i32 %conv.i, 24
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #7, !srcloc !65
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %xlp9xx_i2c_fill_tx_fifo.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

xlp9xx_i2c_fill_tx_fifo.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_buf_remaining, align 4
  %sub.i = sub i32 %22, %15
  store i32 %sub.i, ptr %msg_buf_remaining, align 4
  %23 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msg_buf.i, align 8
  %add.ptr.i52 = getelementptr i8, ptr %24, i32 %15
  store ptr %add.ptr.i52, ptr %msg_buf.i, align 8
  br label %if.end26

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xlp9xx_i2c_mask_irq(ptr noundef %dev_id)
  br label %if.end26

if.else17:                                        ; preds = %if.end7
  %and18 = and i32 %3, 4100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else17.if.end26_crit_edge, label %if.then20

if.else17.if.end26_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %if.else17
  %msg_buf_remaining21 = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 10
  %25 = ptrtoint ptr %msg_buf_remaining21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_buf_remaining21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %if.then20.if.end26_crit_edge, label %if.then23

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %if.then20
  %msg_buf.i53 = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 15
  %27 = ptrtoint ptr %msg_buf.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msg_buf.i53, align 8
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i55 = getelementptr i32, ptr %30, i32 12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #7, !srcloc !68
  %32 = lshr i32 %31, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %31)
  %tobool.not.i = icmp ult i32 %31, 16777216
  br i1 %tobool.not.i, label %if.then23.if.end26_crit_edge, label %if.end.i

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end.i:                                         ; preds = %if.then23
  %len_recv.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 7
  %33 = ptrtoint ptr %len_recv.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %len_recv.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.not.i = icmp eq i8 %34, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then2.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then2.i:                                       ; preds = %if.end.i
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i71.i = getelementptr i32, ptr %36, i32 5
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #7, !srcloc !68
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %dec.i = add nsw i32 %32, -1
  %conv4.i = and i32 %38, 255
  %39 = add nsw i32 %conv4.i, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %39)
  %40 = icmp ult i32 %39, -32
  br i1 %40, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.then2.i
  %41 = ptrtoint ptr %msg_buf_remaining21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %msg_buf_remaining21, align 4
  %msg_len.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 11
  %42 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %msg_len.i, align 8
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %44, i32 1
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr.i14.i.i = getelementptr i32, ptr %47, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #7, !srcloc !68
  %49 = lshr i32 %48, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %50 = ptrtoint ptr %msg_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_len.i, align 8
  %add.i.i = add nuw nsw i32 %49, 4
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 %add.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %52)
  %cmp2.i.i = icmp ugt i32 %52, 33
  br i1 %cmp2.i.i, label %if.then9.i.if.end26_crit_edge, label %if.end.i.i

if.then9.i.if.end26_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end.i.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = and i32 %45, -65536
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  %shl.i.i = shl nuw nsw i32 %52, 16
  %or.i.i = or i32 %shl.i.i, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr.i16.i.i = getelementptr i32, ptr %57, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %55) #7, !srcloc !65
  br label %if.end26

if.end10.i:                                       ; preds = %if.then2.i
  %conv.i57 = trunc i32 %38 to i8
  %incdec.ptr.i = getelementptr i8, ptr %28, i32 1
  %58 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i57, ptr %28, align 1
  %client_pec.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 8
  %59 = ptrtoint ptr %client_pec.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %client_pec.i, align 2, !range !70
  %61 = zext i8 %60 to i32
  %spec.select.i = add i32 %38, %61
  %conv14.i = and i32 %spec.select.i, 255
  %62 = ptrtoint ptr %msg_buf_remaining21 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv14.i, ptr %msg_buf_remaining21, align 4
  %add.i = add nuw nsw i32 %conv14.i, 1
  %msg_len17.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 11
  %63 = ptrtoint ptr %msg_len17.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i, ptr %msg_len17.i, align 8
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i73.i = getelementptr i32, ptr %65, i32 1
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.i) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 8
  %add.ptr.i14.i74.i = getelementptr i32, ptr %68, i32 12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i74.i) #7, !srcloc !68
  %70 = lshr i32 %69, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %71 = ptrtoint ptr %msg_len17.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_len17.i, align 8
  %add.i76.i = add nuw nsw i32 %70, 4
  %73 = tail call i32 @llvm.umax.i32(i32 %72, i32 %add.i76.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %73)
  %cmp2.i77.i = icmp ugt i32 %73, 33
  br i1 %cmp2.i77.i, label %if.end10.i.xlp9xx_i2c_update_rlen.exit82.i_crit_edge, label %if.end.i81.i

if.end10.i.xlp9xx_i2c_update_rlen.exit82.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xlp9xx_i2c_update_rlen.exit82.i

if.end.i81.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = and i32 %66, -65536
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  %shl.i78.i = shl nuw nsw i32 %73, 16
  %or.i79.i = or i32 %shl.i78.i, %75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i79.i) #7
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 8
  %add.ptr.i16.i80.i = getelementptr i32, ptr %78, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i80.i, i32 %76) #7, !srcloc !65
  br label %xlp9xx_i2c_update_rlen.exit82.i

xlp9xx_i2c_update_rlen.exit82.i:                  ; preds = %if.end.i81.i, %if.end10.i.xlp9xx_i2c_update_rlen.exit82.i_crit_edge
  %79 = ptrtoint ptr %len_recv.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %len_recv.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %xlp9xx_i2c_update_rlen.exit82.i, %if.end.i.if.end19.i_crit_edge
  %buf.0.i = phi ptr [ %incdec.ptr.i, %xlp9xx_i2c_update_rlen.exit82.i ], [ %28, %if.end.i.if.end19.i_crit_edge ]
  %len.0.i = phi i32 [ %dec.i, %xlp9xx_i2c_update_rlen.exit82.i ], [ %32, %if.end.i.if.end19.i_crit_edge ]
  %80 = ptrtoint ptr %msg_buf_remaining21 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_buf_remaining21, align 4
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 %len.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp2387.not.i = icmp eq i32 %82, 0
  br i1 %cmp2387.not.i, label %if.end19.i.for.end.i_crit_edge, label %if.end19.i.for.body.i59_crit_edge

if.end19.i.for.body.i59_crit_edge:                ; preds = %if.end19.i
  br label %for.body.i59

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i59:                                     ; preds = %for.body.i59.for.body.i59_crit_edge, %if.end19.i.for.body.i59_crit_edge
  %buf.189.i = phi ptr [ %incdec.ptr28.i, %for.body.i59.for.body.i59_crit_edge ], [ %buf.0.i, %if.end19.i.for.body.i59_crit_edge ]
  %i.088.i = phi i32 [ %inc27.i, %for.body.i59.for.body.i59_crit_edge ], [ 0, %if.end19.i.for.body.i59_crit_edge ]
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 8
  %add.ptr.i84.i = getelementptr i32, ptr %84, i32 5
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #7, !srcloc !68
  %86 = lshr i32 %85, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %conv26.i = trunc i32 %86 to i8
  %87 = ptrtoint ptr %buf.189.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv26.i, ptr %buf.189.i, align 1
  %inc27.i = add nuw i32 %i.088.i, 1
  %incdec.ptr28.i = getelementptr i8, ptr %buf.189.i, i32 1
  %exitcond.not.i58 = icmp eq i32 %inc27.i, %82
  br i1 %exitcond.not.i58, label %for.body.i59.for.end.i_crit_edge, label %for.body.i59.for.body.i59_crit_edge

for.body.i59.for.body.i59_crit_edge:              ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i59

for.body.i59.for.end.i_crit_edge:                 ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i59.for.end.i_crit_edge, %if.end19.i.for.end.i_crit_edge
  %buf.1.lcssa.i = phi ptr [ %buf.0.i, %if.end19.i.for.end.i_crit_edge ], [ %incdec.ptr28.i, %for.body.i59.for.end.i_crit_edge ]
  %88 = ptrtoint ptr %msg_buf_remaining21 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_buf_remaining21, align 4
  %sub.i60 = sub i32 %89, %82
  store i32 %sub.i60, ptr %msg_buf_remaining21, align 4
  %90 = ptrtoint ptr %msg_buf.i53 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf.1.lcssa.i, ptr %msg_buf.i53, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %82)
  %tobool32.not.i = icmp eq i32 %89, %82
  br i1 %tobool32.not.i, label %for.end.i.if.end26_crit_edge, label %if.then33.i

for.end.i.if.end26_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %len_recv.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %len_recv.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i.i = icmp eq i8 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub.i60)
  %cmp.i.i = icmp ugt i32 %sub.i60, 128
  %phi.bo.i.i = shl i32 %sub.i60, 8
  %spec.select.i.i = select i1 %cmp.i.i, i32 32768, i32 %phi.bo.i.i
  %thres.0.i.i = select i1 %tobool.not.i.i, i32 %spec.select.i.i, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %thres.0.i.i) #7
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i86.i = getelementptr i32, ptr %95, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86.i, i32 %93) #7, !srcloc !65
  br label %if.end26

if.end26:                                         ; preds = %if.then33.i, %for.end.i.if.end26_crit_edge, %if.end.i.i, %if.then9.i.if.end26_crit_edge, %if.then23.if.end26_crit_edge, %if.then20.if.end26_crit_edge, %if.else17.if.end26_crit_edge, %if.else, %xlp9xx_i2c_fill_tx_fifo.exit, %if.then9.if.end26_crit_edge
  %and27 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end26.xfer_done_crit_edge

if.end26.xfer_done_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_done

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xfer_done:                                        ; preds = %if.end26.xfer_done_crit_edge, %land.lhs.true.xfer_done_crit_edge, %if.then1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 8
  %add.ptr.i62 = getelementptr i32, ptr %97, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 0) #7, !srcloc !65
  %msg_complete = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %msg_complete) #7
  br label %cleanup

cleanup:                                          ; preds = %xfer_done, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %xfer_done ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlp9xx_i2c_mask_irq(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %3 = and i32 %2, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i2 = getelementptr i32, ptr %5, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %3) #7, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlp9xx_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %1, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %busy_timeout.07.i = phi i32 [ 50, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %while.body.i.if.end6_crit_edge, label %if.end.i

while.body.i.if.end6_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add nsw i32 %busy_timeout.07.i, -1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then:                                          ; preds = %if.end.i
  %ip_clk_hz.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %ip_clk_hz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_clk_hz.i, align 4
  %clk_hz.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %clk_hz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_hz.i, align 8
  %add.i = add i32 %7, -1
  %sub.i = add i32 %add.i, %9
  %div.i = udiv i32 %sub.i, %9
  %sub2.i = add i32 %div.i, -8
  %div3.i = udiv i32 %sub2.i, 5
  %sub4.i = add nsw i32 %div3.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i28 = getelementptr i32, ptr %11, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 65536) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i2.i = getelementptr i32, ptr %13, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 1342177280) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %sub4.i) #7
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i5.i = getelementptr i32, ptr %18, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #7, !srcloc !65
  br label %while.body.i33

while.body.i33:                                   ; preds = %if.end.i36.while.body.i33_crit_edge, %if.then
  %busy_timeout.07.i30 = phi i32 [ 50, %if.then ], [ %dec.i34, %if.end.i36.while.body.i33_crit_edge ]
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i31 = getelementptr i32, ptr %20, i32 3
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i32 = icmp eq i32 %22, 0
  br i1 %cmp.i32, label %while.body.i33.if.end6_crit_edge, label %if.end.i36

while.body.i33.if.end6_crit_edge:                 ; preds = %while.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i36:                                       ; preds = %while.body.i33
  %dec.i34 = add nsw i32 %busy_timeout.07.i30, -1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %tobool.not.i35 = icmp eq i32 %dec.i34, 0
  br i1 %tobool.not.i35, label %if.end.i36.cleanup_crit_edge, label %if.end.i36.while.body.i33_crit_edge

if.end.i36.while.body.i33_crit_edge:              ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i33

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %while.body.i33.if.end6_crit_edge, %while.body.i.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp45 = icmp sgt i32 %num, 0
  br i1 %cmp45, label %for.body.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %sub = add nsw i32 %num, -1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.046
  call void @__sanitizer_cov_trace_cmp4(i32 %i.046, i32 %sub)
  %cmp7 = icmp eq i32 %i.046, %sub
  %conv = zext i1 %cmp7 to i32
  %call8 = tail call fastcc i32 @xlp9xx_i2c_xfer_msg(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.i36.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %if.end6.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ], [ %num, %for.cond.cleanup_crit_edge ], [ -5, %if.end.i36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlp9xx_i2c_functionality(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369931
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlp9xx_i2c_xfer_msg(ptr noundef %priv, ptr nocapture noundef %msg, i32 noundef %last_msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %msg_buf = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %msg_buf, align 8
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len1, align 4
  %conv = zext i16 %4 to i32
  %msg_len = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 11
  %5 = ptrtoint ptr %msg_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %msg_len, align 8
  %msg_buf_remaining = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 10
  %6 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %msg_buf_remaining, align 4
  %msg_err = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msg_err, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %msg_read = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 6
  %10 = trunc i16 %9 to i8
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %msg_read to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %msg_read, align 4
  %msg_complete = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %msg_complete, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 9
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i32, ptr %15, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #7, !srcloc !65
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msg, align 4
  %conv3 = zext i16 %17 to i32
  %shl = shl nuw nsw i32 %conv3, 1
  %18 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msg_read, align 4, !range !70
  %20 = zext i8 %19 to i32
  %or = or i32 %shl, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %add.ptr.i207 = getelementptr i32, ptr %23, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %21) #7, !srcloc !65
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %add.ptr.i209 = getelementptr i32, ptr %25, i32 1
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %27 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %msg_read, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not = icmp eq i8 %28, 0
  %masksel = select i1 %tobool8.not, i32 0, i32 2
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags, align 2
  %31 = lshr i16 %30, 4
  %.lobit229 = and i16 %31, 1
  %32 = zext i16 %.lobit229 to i32
  %33 = and i16 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool23.not = icmp eq i16 %33, 0
  %len_recv = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 7
  %.lobit = lshr exact i16 %33, 10
  %34 = trunc i16 %.lobit to i8
  %35 = ptrtoint ptr %len_recv to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %len_recv, align 1
  br i1 %tobool23.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len1, align 4
  %conv29 = zext i16 %37 to i32
  %phi.bo = shl nuw i32 %conv29, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond30 = phi i32 [ %phi.bo, %cond.false ], [ 2228224, %entry.cond.end_crit_edge ]
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags, align 2
  %client_pec = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 8
  %40 = trunc i16 %39 to i8
  %41 = lshr i8 %40, 2
  %42 = and i8 %41, 1
  %43 = ptrtoint ptr %client_pec to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %client_pec, align 2
  br i1 %tobool8.not, label %cond.end.if.end39_crit_edge, label %if.then38

cond.end.if.end39_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then38:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then38.xlp9xx_i2c_update_rx_fifo_thres.exit_crit_edge

if.then38.xlp9xx_i2c_update_rx_fifo_thres.exit_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %xlp9xx_i2c_update_rx_fifo_thres.exit

if.else.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_buf_remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %45)
  %cmp.i = icmp ugt i32 %45, 128
  %phi.bo.i = shl i32 %45, 8
  %spec.select.i = select i1 %cmp.i, i32 32768, i32 %phi.bo.i
  br label %xlp9xx_i2c_update_rx_fifo_thres.exit

xlp9xx_i2c_update_rx_fifo_thres.exit:             ; preds = %if.else.i, %if.then38.xlp9xx_i2c_update_rx_fifo_thres.exit_crit_edge
  %thres.0.i = phi i32 [ 256, %if.then38.xlp9xx_i2c_update_rx_fifo_thres.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %thres.0.i) #7
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %48, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %46) #7, !srcloc !65
  br label %if.end39

if.end39:                                         ; preds = %xlp9xx_i2c_update_rx_fifo_thres.exit, %cond.end.if.end39_crit_edge
  %49 = and i32 %26, -50397184
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %and18.masked = or i32 %masksel, %50
  %and40 = or i32 %and18.masked, %32
  %or42 = or i32 %and40, %cond30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %or42) #7
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 8
  %add.ptr.i211 = getelementptr i32, ptr %53, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %51) #7, !srcloc !65
  %54 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %msg_read, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool44.not = icmp eq i8 %55, 0
  br i1 %tobool44.not, label %if.then45, label %if.end39.if.then49_crit_edge

if.end39.if.then49_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.then45:                                        ; preds = %if.end39
  %56 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %msg_buf, align 8
  %58 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_buf_remaining, align 4
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp114.not.i = icmp eq i32 %60, 0
  br i1 %cmp114.not.i, label %if.then45.if.end46_crit_edge, label %if.then45.for.body.i_crit_edge

if.then45.for.body.i_crit_edge:                   ; preds = %if.then45
  br label %for.body.i

if.then45.if.end46_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then45.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then45.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %57, i32 %i.015.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %63 = shl nuw i32 %conv.i, 24
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i214 = getelementptr i32, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i214, i32 %63) #7, !srcloc !65
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %60
  br i1 %exitcond.not.i, label %for.body.i.if.end46_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end46_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46:                                         ; preds = %for.body.i.if.end46_crit_edge, %if.then45.if.end46_crit_edge
  %66 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_buf_remaining, align 4
  %sub.i = sub i32 %67, %60
  store i32 %sub.i, ptr %msg_buf_remaining, align 4
  %68 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %msg_buf, align 8
  %add.ptr.i215 = getelementptr i8, ptr %69, i32 %60
  store ptr %add.ptr.i215, ptr %msg_buf, align 8
  %70 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %70)
  %.pr = load i8, ptr %msg_read, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool48.not = icmp eq i8 %.pr, 0
  br i1 %tobool48.not, label %if.else57, label %if.end46.if.then49_crit_edge

if.end46.if.then49_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.then49:                                        ; preds = %if.end46.if.then49_crit_edge, %if.end39.if.then49_crit_edge
  %71 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp = icmp eq i16 %72, 0
  %spec.select = select i1 %cmp, i32 33568773, i32 33560581
  br label %if.end67

if.else57:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp60 = icmp eq i16 %74, 0
  %. = select i1 %cmp60, i32 33568769, i32 33560585
  br label %if.end67

if.end67:                                         ; preds = %if.else57, %if.then49
  %intr_mask.0 = phi i32 [ %spec.select, %if.then49 ], [ %., %if.else57 ]
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i217 = getelementptr i32, ptr %76, i32 13
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i217) #7, !srcloc !68
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %or.i = or i32 %78, %intr_mask.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %79 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 8
  %add.ptr.i3.i = getelementptr i32, ptr %81, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %79) #7, !srcloc !65
  %82 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool69.not = icmp eq i16 %83, 0
  br i1 %tobool69.not, label %if.end67.if.end76_crit_edge, label %if.then70

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %msg_read, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool72.not = icmp eq i8 %85, 0
  %or75 = select i1 %tobool72.not, i32 -1879048192, i32 -1610612736
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.end67.if.end76_crit_edge
  %cmd.0 = phi i32 [ %or75, %if.then70 ], [ -2147483648, %if.end67.if.end76_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_msg)
  %tobool77.not = icmp eq i32 %last_msg, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %86 = or i32 %cmd.0, 1073741824
  %87 = select i1 %tobool77.not, i32 %cmd.0, i32 %86
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 8
  %add.ptr.i219 = getelementptr i32, ptr %89, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %87) #7, !srcloc !65
  %call83 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete, i32 noundef 100) #7
  %90 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_err, align 4
  %and85 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else97, label %do.body

do.body:                                          ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xlp9xx_i2c_xfer_msg, %do.end)) #7
          to label %if.then94 [label %do.end], !srcloc !66

if.then94:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %94 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_err, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug294, ptr noundef %93, ptr noundef nonnull @.str.17, i32 noundef %95) #7
  br label %do.end

do.end:                                           ; preds = %if.then94, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 8
  %add.ptr.i221 = getelementptr i32, ptr %97, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221, i32 1073741824) #7, !srcloc !65
  br label %cleanup

if.else97:                                        ; preds = %if.end76
  %and99 = and i32 %91, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end103, label %if.else97.cleanup_crit_edge

if.else97.cleanup_crit_edge:                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end103:                                        ; preds = %if.else97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp104 = icmp eq i32 %call83, 0
  br i1 %cmp104, label %do.body107, label %if.end127

do.body107:                                       ; preds = %if.end103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xlp9xx_i2c_xfer_msg, %do.end125)) #7
          to label %if.then121 [label %do.end125], !srcloc !66

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug295, ptr noundef %99, ptr noundef nonnull @.str.18) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then121, %do.body107
  %ip_clk_hz.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 12
  %100 = ptrtoint ptr %ip_clk_hz.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ip_clk_hz.i, align 4
  %clk_hz.i = getelementptr inbounds %struct.xlp9xx_i2c_dev, ptr %priv, i32 0, i32 13
  %102 = ptrtoint ptr %clk_hz.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %clk_hz.i, align 8
  %add.i = add i32 %101, -1
  %sub.i222 = add i32 %add.i, %103
  %div.i = udiv i32 %sub.i222, %103
  %sub2.i = add i32 %div.i, -8
  %div3.i = udiv i32 %sub2.i, 5
  %sub4.i = add nsw i32 %div3.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i224 = getelementptr i32, ptr %105, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i224, i32 65536) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 8
  %add.ptr.i2.i = getelementptr i32, ptr %107, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 1342177280) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %108 = tail call i32 @llvm.bswap.i32(i32 %sub4.i) #7
  %109 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i, align 8
  %add.ptr.i5.i = getelementptr i32, ptr %112, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #7, !srcloc !65
  br label %cleanup

if.end127:                                        ; preds = %if.end103
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %flags, align 2
  %115 = and i16 %114, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool131.not = icmp eq i16 %115, 0
  br i1 %tobool131.not, label %if.end127.cleanup_crit_edge, label %if.then132

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then132:                                       ; preds = %if.end127
  %116 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msg_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool134.not = icmp eq i32 %117, 0
  br i1 %tobool134.not, label %if.then132.cleanup_crit_edge, label %if.end136

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end136:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  %conv138 = trunc i32 %117 to i16
  %118 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv138, ptr %len1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.then132.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %do.end125, %if.else97.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -110, %do.end125 ], [ -6, %if.else97.cleanup_crit_edge ], [ -71, %if.then132.cleanup_crit_edge ], [ 0, %if.end136 ], [ 0, %if.end127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_smbus_alert_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !40, !41, !42, !43, !45, !46, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_i2c_xlp9xx__300_593_xlp9xx_i2c_driver_init6, !1, !"__initcall__kmod_i2c_xlp9xx__300_593_xlp9xx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 593, i32 1}
!2 = !{ptr @__exitcall_xlp9xx_i2c_driver_exit, !1, !"__exitcall_xlp9xx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 595, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 596, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 597, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 588, i32 11}
!12 = !{ptr @xlp9xx_i2c_driver, !13, !"xlp9xx_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 584, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 533, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xlp9xx_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @xlp9xx_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 554, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @xlp9xx_i2c_probe.__UNIQUE_ID_ddebug298, !23, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 557, i32 2}
!28 = !{ptr @xlp9xx_i2c_probe.__UNIQUE_ID_ddebug299, !27, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 469, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug296, !30, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 475, i32 45}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 478, i32 3}
!37 = !{ptr @xlp9xx_i2c_get_frequency.__UNIQUE_ID_ddebug297, !36, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 480, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @xlp9xx_i2c_get_frequency._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @xlp9xx_i2c_get_frequency._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xlp9xx_i2c_algo, !47, !"xlp9xx_i2c_algo", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 454, i32 35}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 403, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug294, !49, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-xlp9xx.c", i32 411, i32 3}
!54 = !{ptr @xlp9xx_i2c_xfer_msg.__UNIQUE_ID_ddebug295, !53, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2155580173}
!65 = !{i64 6868367}
!66 = !{i64 2148961537, i64 2148961542, i64 2148961555, i64 2148961599, i64 2148961633, i64 2148961654}
!67 = !{!"auto-init"}
!68 = !{i64 6868785}
!69 = !{i64 2155580998}
!70 = !{i8 0, i8 2}
