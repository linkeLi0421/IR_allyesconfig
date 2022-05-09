; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-exynos5.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-exynos5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.exynos_hsi2c_variant = type { i32, i32 }
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
%struct.exynos5_i2c = type { %struct.i2c_adapter, ptr, %struct.completion, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_exynos5__302_956_exynos5_i2c_driver_init6 = internal global ptr @exynos5_i2c_driver_init, section ".initcall6.init", align 4
@exynos5_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos5_i2c_probe, ptr @exynos5_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos5_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_i2c_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos5_i2c_driver_exit = internal global ptr @exynos5_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [50 x i8] c"i2c_exynos5.description=Exynos5 HS-I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [68 x i8] c"i2c_exynos5.author=Naveen Krishna Chatradhi <ch.naveen@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [57 x i8] c"i2c_exynos5.author=Taekgyun Ko <taeggyun.ko@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [48 x i8] c"i2c_exynos5.file=drivers/i2c/busses/i2c-exynos5\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [27 x i8] c"i2c_exynos5.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exynos5-hsi2c\00", [18 x i8] zeroinitializer }, align 32
@exynos5_i2c_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_hsi2c_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynosautov9-hsi2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynosautov9_hsi2c_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@exynos5_i2c_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_i2c_suspend_noirq, ptr @exynos5_i2c_resume_noirq, ptr @exynos5_i2c_suspend_noirq, ptr @exynos5_i2c_resume_noirq, ptr @exynos5_i2c_suspend_noirq, ptr @exynos5_i2c_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos5-i2c\00", [20 x i8] zeroinitializer }, align 32
@exynos5_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @exynos5_i2c_xfer, ptr null, ptr null, ptr null, ptr @exynos5_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsi2c\00", [26 x i8] zeroinitializer }, align 32
@exynos5_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 813, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos5_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-exynos5.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos5_i2c_probe._entry_ptr = internal global ptr @exynos5_i2c_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsi2c_pclk\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cannot get pclk\00", [16 x i8] zeroinitializer }, align 32
@exynos5_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@exynos5_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 854, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot request HS-I2C IRQ %d\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos5_i2c_probe._entry_ptr.14 = internal global ptr @exynos5_i2c_probe._entry.12, section ".printk_index", align 4
@exynos5_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 748, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s timeout\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos5_i2c_xfer_msg\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos5_i2c_xfer_msg._entry_ptr = internal global ptr @exynos5_i2c_xfer_msg._entry, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@exynos5_i2c_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_exynos5\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos5_i2c_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Deal with arbitration lose\0A\00", [36 x i8] zeroinitializer }, align 32
@exynos5_i2c_irq.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.24, i8 0, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No ACK from device\0A\00", [44 x i8] zeroinitializer }, align 32
@exynos5_i2c_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.25, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No device\0A\00", [21 x i8] zeroinitializer }, align 32
@exynos5_i2c_irq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.26, i8 0, i8 120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Accessing device timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@exynos5_i2c_irq.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.24, i8 0, i8 123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@exynos5_i2c_irq.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.25, i8 0, i8 124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@exynos5_i2c_irq.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@exynos5_i2c_irq.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.6, ptr @.str.26, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@exynos5_i2c_set_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 342, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s clock set-up failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos5_i2c_set_timing\00", [41 x i8] zeroinitializer }, align 32
@exynos5_i2c_set_timing._entry_ptr = internal global ptr @exynos5_i2c_set_timing._entry, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HS\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FS\00", [29 x i8] zeroinitializer }, align 32
@exynos5_i2c_set_timing.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.6, ptr @.str.31, i8 0, i8 90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tSTART_SU: %X, tSTART_HD: %X, tSTOP_SU: %X\0A\00", [52 x i8] zeroinitializer }, align 32
@exynos5_i2c_set_timing.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.6, ptr @.str.32, i8 0, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tDATA_SU: %X, tSCL_L: %X, tSCL_H: %X\0A\00", [58 x i8] zeroinitializer }, align 32
@exynos5_i2c_set_timing.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.6, ptr @.str.33, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nClkDiv: %X, tSR_RELEASE: %X\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos5_i2c_set_timing.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.6, ptr @.str.34, i8 0, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tDATA_HD: %X\0A\00", [18 x i8] zeroinitializer }, align 32
@exynos5250_hsi2c_data = internal constant { %struct.exynos_hsi2c_variant, [24 x i8] } { %struct.exynos_hsi2c_variant { i32 64, i32 0 }, [24 x i8] zeroinitializer }, align 32
@exynos5260_hsi2c_data = internal constant { %struct.exynos_hsi2c_variant, [24 x i8] } { %struct.exynos_hsi2c_variant { i32 16, i32 0 }, [24 x i8] zeroinitializer }, align 32
@exynos7_hsi2c_data = internal constant { %struct.exynos_hsi2c_variant, [24 x i8] } { %struct.exynos_hsi2c_variant { i32 16, i32 1 }, [24 x i8] zeroinitializer }, align 32
@exynosautov9_hsi2c_data = internal constant { %struct.exynos_hsi2c_variant, [24 x i8] } { %struct.exynos_hsi2c_variant { i32 64, i32 2 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"exynos5_i2c_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 946, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 950, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"exynos5_i2c_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 240, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"exynos5_i2c_dev_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 941, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 802, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 805, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"exynos5_i2c_algorithm\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 787, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 811, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 813, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 817, i32 48 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 820, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 844, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 854, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 747, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 87, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 468, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 472, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 476, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 480, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 341, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 360, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 362, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 364, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 366, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"exynos5250_hsi2c_data\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 220, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"exynos5260_hsi2c_data\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 225, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"exynos7_hsi2c_data\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 230, i32 42 }
@___asan_gen_.173 = private unnamed_addr constant [24 x i8] c"exynosautov9_hsi2c_data\00", align 1
@___asan_gen_.174 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-exynos5.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 235, i32 42 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_exynos5_i2c_driver_exit, ptr @__initcall__kmod_i2c_exynos5__302_956_exynos5_i2c_driver_init6, ptr @exynos5_i2c_driver_exit, ptr @exynos5_i2c_probe._entry, ptr @exynos5_i2c_probe._entry.12, ptr @exynos5_i2c_probe._entry_ptr, ptr @exynos5_i2c_probe._entry_ptr.14, ptr @exynos5_i2c_set_timing._entry, ptr @exynos5_i2c_set_timing._entry_ptr, ptr @exynos5_i2c_xfer_msg._entry, ptr @exynos5_i2c_xfer_msg._entry_ptr, ptr @exynos5_i2c_driver, ptr @.str, ptr @exynos5_i2c_match, ptr @exynos5_i2c_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @exynos5_i2c_algorithm, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @exynos5_i2c_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @exynos5250_hsi2c_data, ptr @exynos5260_hsi2c_data, ptr @exynos7_hsi2c_data, ptr @exynosautov9_hsi2c_data], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_i2c_set_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_hsi2c_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5260_hsi2c_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_hsi2c_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynosautov9_hsi2c_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_i2c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos5_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos5_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1504, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_clock = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 12
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %op_clock, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %op_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100000, ptr %op_clock, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call7 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 48) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @exynos5_i2c_algorithm, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %retries, align 8
  %dev12 = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev12, align 8
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %clk = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %call21 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  %pclk = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21, ptr %pclk, align 4
  %cmp.i150 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call21 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call.i151 = tail call i32 @clk_prepare(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call21) #7
  br label %cleanup

if.end34:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  %call.i152 = tail call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end.i156, label %if.end34.err_pclk_crit_edge

if.end34.err_pclk_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pclk

if.end.i156:                                      ; preds = %if.end34
  %call1.i154 = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool2.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool2.not.i155, label %if.end39, label %if.end.i156.err_pclk.sink.split_crit_edge

if.end.i156.err_pclk.sink.split_crit_edge:        ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pclk.sink.split

if.end39:                                         ; preds = %if.end.i156
  %call40 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call40, ptr %regs, align 4
  %cmp.i160 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call40 to i32
  br label %err_clk

if.end46:                                         ; preds = %if.end39
  %of_node49 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %14 = ptrtoint ptr %of_node49 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %of_node49, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 36
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #7, !srcloc !119
  %lock = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @exynos5_i2c_probe.__key, i16 noundef signext 3) #7
  %msg_complete = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #7
  %call58 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call58, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp = icmp slt i32 %call58, 0
  br i1 %cmp, label %if.end46.err_clk_crit_edge, label %if.end60

if.end46.err_clk_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end60:                                         ; preds = %if.end46
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i161 = icmp eq ptr %25, null
  br i1 %tobool.not.i161, label %if.end.i162, label %if.end60.dev_name.exit_crit_edge

if.end60.dev_name.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i162:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i162, %if.end60.dev_name.exit_crit_edge
  %retval.0.i163 = phi ptr [ %27, %if.end.i162 ], [ %25, %if.end60.dev_name.exit_crit_edge ]
  %call.i164 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call58, ptr noundef nonnull @exynos5_i2c_irq, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i163, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp66.not = icmp eq i32 %call.i164, 0
  br i1 %cmp66.not, label %if.end73, label %do.end70

do.end70:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %29) #10
  br label %err_clk

if.end73:                                         ; preds = %dev_name.exit
  %call75 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %variant = getelementptr inbounds %struct.exynos5_i2c, ptr %call.i, i32 0, i32 13
  %30 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call75, ptr %variant, align 4
  %call76 = tail call fastcc i32 @exynos5_hsi2c_clock_setup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end73.err_clk_crit_edge

if.end73.err_clk_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end79:                                         ; preds = %if.end73
  tail call fastcc void @exynos5_i2c_reset(ptr noundef nonnull %call.i)
  %call81 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end79.err_clk_crit_edge, label %if.end84

if.end79.err_clk_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end84:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %33) #7
  %34 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  br label %cleanup

err_clk:                                          ; preds = %if.end79.err_clk_crit_edge, %if.end73.err_clk_crit_edge, %do.end70, %if.end46.err_clk_crit_edge, %if.then43
  %ret.0 = phi i32 [ %13, %if.then43 ], [ %call58, %if.end46.err_clk_crit_edge ], [ %call.i164, %do.end70 ], [ %call76, %if.end73.err_clk_crit_edge ], [ %call81, %if.end79.err_clk_crit_edge ]
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %37) #7
  br label %err_pclk.sink.split

err_pclk.sink.split:                              ; preds = %err_clk, %if.end.i156.err_pclk.sink.split_crit_edge
  %.sink = phi ptr [ %37, %err_clk ], [ %11, %if.end.i156.err_pclk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_clk ], [ %call1.i154, %if.end.i156.err_pclk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %err_pclk

err_pclk:                                         ; preds = %err_pclk.sink.split, %if.end34.err_pclk_crit_edge
  %ret.1 = phi i32 [ %call.i152, %if.end34.err_pclk_crit_edge ], [ %ret.1.ph, %err_pclk.sink.split ]
  %38 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %39) #7
  tail call void @clk_unprepare(ptr noundef %39) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pclk, %if.end84, %if.then3.i, %if.end29.cleanup_crit_edge, %if.then24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ %call28, %if.then24 ], [ %ret.1, %err_pclk ], [ 0, %if.end84 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i151, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_unprepare(ptr noundef %3) #7
  %pclk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -22, ptr %state, align 4
  %lock = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %regs = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 5
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #7, !srcloc !119
  %variant = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 13
  %7 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %variant, align 4
  %hw = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb4_crit_edge
    i32 1, label %entry.sw.bb4_crit_edge438
    i32 0, label %sw.bb97
  ]

entry.sw.bb4_crit_edge438:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge438
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %sw.bb4.sw.epilog.sink.split_crit_edge

sw.bb4.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb4
  %and6 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else20, label %do.body9

do.body9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then16 [label %stop.sink.split], !srcloc !122

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug292, ptr noundef %13, ptr noundef nonnull @.str.23) #7
  br label %stop.sink.split

if.else20:                                        ; preds = %if.else
  %and21 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else44, label %do.body24

do.body24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then38 [label %stop.sink.split], !srcloc !122

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %dev39 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %14 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug293, ptr noundef %15, ptr noundef nonnull @.str.24) #7
  br label %stop.sink.split

if.else44:                                        ; preds = %if.else20
  %and45 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else68, label %do.body48

do.body48:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then62 [label %stop.sink.split], !srcloc !122

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %16 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev63, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug294, ptr noundef %17, ptr noundef nonnull @.str.25) #7
  br label %stop.sink.split

if.else68:                                        ; preds = %if.else44
  %and69 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else68.sw.epilog_crit_edge, label %do.body72

if.else68.sw.epilog_crit_edge:                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then86 [label %stop.sink.split], !srcloc !122

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %dev87 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %18 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev87, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug295, ptr noundef %19, ptr noundef nonnull @.str.26) #7
  br label %stop.sink.split

sw.bb97:                                          ; preds = %entry
  %and98 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %sw.bb97.sw.epilog_crit_edge, label %if.end101

sw.bb97.sw.epilog_crit_edge:                      ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end101:                                        ; preds = %sw.bb97
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr105 = getelementptr i8, ptr %21, i32 80
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #7, !srcloc !117
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %and109 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.else132, label %do.body112

do.body112:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then126 [label %stop.sink.split], !srcloc !122

if.then126:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #9
  %dev127 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %24 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev127, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug296, ptr noundef %25, ptr noundef nonnull @.str.24) #7
  br label %stop.sink.split

if.else132:                                       ; preds = %if.end101
  %and133 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.else156, label %do.body136

do.body136:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then150 [label %stop.sink.split], !srcloc !122

if.then150:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  %dev151 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %26 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev151, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug297, ptr noundef %27, ptr noundef nonnull @.str.25) #7
  br label %stop.sink.split

if.else156:                                       ; preds = %if.else132
  %and157 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.else180, label %do.body160

do.body160:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then174 [label %stop.sink.split], !srcloc !122

if.then174:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  %dev175 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %28 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev175, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug298, ptr noundef %29, ptr noundef nonnull @.str.23) #7
  br label %stop.sink.split

if.else180:                                       ; preds = %if.else156
  %and181 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.else204, label %do.body184

do.body184:                                       ; preds = %if.else180
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_irq, %stop.sink.split)) #7
          to label %if.then198 [label %stop.sink.split], !srcloc !122

if.then198:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %dev199 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 8
  %30 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev199, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_irq.__UNIQUE_ID_ddebug299, ptr noundef %31, ptr noundef nonnull @.str.26) #7
  br label %stop.sink.split

if.else204:                                       ; preds = %if.else180
  %and205 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.else204.sw.epilog_crit_edge, label %if.else204.sw.epilog.sink.split_crit_edge

if.else204.sw.epilog.sink.split_crit_edge:        ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else204.sw.epilog_crit_edge:                   ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.else204.sw.epilog.sink.split_crit_edge, %sw.bb4.sw.epilog.sink.split_crit_edge
  %trans_done208 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 11
  %32 = ptrtoint ptr %trans_done208 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %trans_done208, align 4
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else204.sw.epilog_crit_edge, %sw.bb97.sw.epilog_crit_edge, %if.else68.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %msg = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 1
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool216.not = icmp eq i16 %38, 0
  %and217 = and i32 %4, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  %or.cond = select i1 %tobool216.not, i1 true, i1 %tobool218.not
  br i1 %or.cond, label %if.else246, label %if.then219

if.then219:                                       ; preds = %sw.epilog
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr223 = getelementptr i8, ptr %40, i32 48
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr223) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %42 = lshr i32 %41, 8
  %and227 = and i32 %42, 127
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msg, align 8
  %len229 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %len229 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %len229, align 4
  %conv230 = zext i16 %46 to i32
  %msg_ptr = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 3
  %47 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_ptr, align 4
  %sub = sub i32 %conv230, %48
  %49 = tail call i32 @llvm.umin.i32(i32 %and227, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp233432.not = icmp eq i32 %49, 0
  br i1 %cmp233432.not, label %if.then219.stop.sink.split_crit_edge, label %if.then219.while.body_crit_edge

if.then219.while.body_crit_edge:                  ; preds = %if.then219
  br label %while.body

if.then219.stop.sink.split_crit_edge:             ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop.sink.split

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then219.while.body_crit_edge
  %len.0433 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %49, %if.then219.while.body_crit_edge ]
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr238 = getelementptr i8, ptr %51, i32 56
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr238) #7, !srcloc !117
  %53 = lshr i32 %52, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %conv242 = trunc i32 %53 to i8
  %54 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %msg, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf, align 4
  %58 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_ptr, align 4
  %inc = add i32 %59, 1
  store i32 %inc, ptr %msg_ptr, align 4
  %arrayidx = getelementptr i8, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv242, ptr %arrayidx, align 1
  %dec = add nsw i32 %len.0433, -1
  %cmp233 = icmp ugt i32 %len.0433, 1
  br i1 %cmp233, label %while.body.while.body_crit_edge, label %while.body.stop.sink.split_crit_edge

while.body.stop.sink.split_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop.sink.split

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.else246:                                       ; preds = %sw.epilog
  %and247 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.else246.stop_crit_edge, label %if.then249

if.else246.stop_crit_edge:                        ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop

if.then249:                                       ; preds = %if.else246
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr253 = getelementptr i8, ptr %62, i32 48
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #7, !srcloc !117
  %64 = lshr i32 %63, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %and258 = and i32 %64, 127
  %65 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %variant, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %sub260 = sub i32 %68, %and258
  %69 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %msg, align 8
  %len262 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %len262 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %len262, align 4
  %conv263 = zext i16 %72 to i32
  %msg_ptr264 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 3
  %73 = ptrtoint ptr %msg_ptr264 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_ptr264, align 4
  %sub265 = sub i32 %conv263, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %sub260, i32 %sub265)
  %cmp266 = icmp ugt i32 %sub260, %sub265
  br i1 %cmp266, label %if.then268, label %if.then249.if.end287_crit_edge

if.then249.if.end287_crit_edge:                   ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end287

if.then268:                                       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %add.ptr272 = getelementptr i8, ptr %76, i32 32
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %78 = and i32 %77, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr281 = getelementptr i8, ptr %80, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281, i32 %78) #7, !srcloc !119
  %81 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %msg, align 8
  %len283 = getelementptr inbounds %struct.i2c_msg, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %len283 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %len283, align 4
  %conv284 = zext i16 %84 to i32
  %85 = ptrtoint ptr %msg_ptr264 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_ptr264, align 4
  %sub286 = sub i32 %conv284, %86
  br label %if.end287

if.end287:                                        ; preds = %if.then268, %if.then249.if.end287_crit_edge
  %len.1 = phi i32 [ %sub286, %if.then268 ], [ %sub260, %if.then249.if.end287_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp289434 = icmp sgt i32 %len.1, 0
  br i1 %cmp289434, label %if.end287.while.body291_crit_edge, label %if.end287.stop.sink.split_crit_edge

if.end287.stop.sink.split_crit_edge:              ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop.sink.split

if.end287.while.body291_crit_edge:                ; preds = %if.end287
  br label %while.body291

while.body291:                                    ; preds = %while.body291.while.body291_crit_edge, %if.end287.while.body291_crit_edge
  %len.2435 = phi i32 [ %dec303, %while.body291.while.body291_crit_edge ], [ %len.1, %if.end287.while.body291_crit_edge ]
  %87 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %msg, align 8
  %buf293 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %buf293 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf293, align 4
  %91 = ptrtoint ptr %msg_ptr264 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_ptr264, align 4
  %inc295 = add i32 %92, 1
  store i32 %inc295, ptr %msg_ptr264, align 4
  %arrayidx296 = getelementptr i8, ptr %90, i32 %92
  %93 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx296, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %conv300 = zext i8 %94 to i32
  %95 = shl nuw i32 %conv300, 24
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %add.ptr302 = getelementptr i8, ptr %97, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr302, i32 %95) #7, !srcloc !119
  %dec303 = add nsw i32 %len.2435, -1
  %cmp289 = icmp ugt i32 %len.2435, 1
  br i1 %cmp289, label %while.body291.while.body291_crit_edge, label %while.body291.stop.sink.split_crit_edge

while.body291.stop.sink.split_crit_edge:          ; preds = %while.body291
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop.sink.split

while.body291.while.body291_crit_edge:            ; preds = %while.body291
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body291

stop.sink.split:                                  ; preds = %while.body291.stop.sink.split_crit_edge, %if.end287.stop.sink.split_crit_edge, %while.body.stop.sink.split_crit_edge, %if.then219.stop.sink.split_crit_edge, %if.then198, %do.body184, %if.then174, %do.body160, %if.then150, %do.body136, %if.then126, %do.body112, %if.then86, %do.body72, %if.then62, %do.body48, %if.then38, %do.body24, %if.then16, %do.body9
  %.sink = phi i32 [ -11, %do.body9 ], [ -11, %if.then16 ], [ -6, %do.body24 ], [ -6, %if.then38 ], [ -6, %do.body48 ], [ -6, %if.then62 ], [ -110, %do.body72 ], [ -110, %if.then86 ], [ -6, %do.body112 ], [ -6, %if.then126 ], [ -6, %do.body136 ], [ -6, %if.then150 ], [ -11, %do.body160 ], [ -11, %if.then174 ], [ -110, %do.body184 ], [ -110, %if.then198 ], [ 0, %if.then219.stop.sink.split_crit_edge ], [ 0, %if.end287.stop.sink.split_crit_edge ], [ 0, %while.body291.stop.sink.split_crit_edge ], [ 0, %while.body.stop.sink.split_crit_edge ]
  %98 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink, ptr %state, align 4
  br label %stop

stop:                                             ; preds = %stop.sink.split, %if.else246.stop_crit_edge
  %trans_done308 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 11
  %99 = ptrtoint ptr %trans_done308 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %trans_done308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool309.not = icmp eq i32 %100, 0
  br i1 %tobool309.not, label %stop.lor.lhs.false_crit_edge, label %land.lhs.true310

stop.lor.lhs.false_crit_edge:                     ; preds = %stop
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true310:                                 ; preds = %stop
  %msg311 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 1
  %101 = ptrtoint ptr %msg311 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %msg311, align 8
  %len312 = getelementptr inbounds %struct.i2c_msg, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %len312 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %len312, align 4
  %conv313 = zext i16 %104 to i32
  %msg_ptr314 = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 3
  %105 = ptrtoint ptr %msg_ptr314 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msg_ptr314, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv313)
  %cmp315 = icmp eq i32 %106, %conv313
  br i1 %cmp315, label %land.lhs.true310.do.body321_crit_edge, label %land.lhs.true310.lor.lhs.false_crit_edge

land.lhs.true310.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true310.do.body321_crit_edge:            ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body321

lor.lhs.false:                                    ; preds = %land.lhs.true310.lor.lhs.false_crit_edge, %stop.lor.lhs.false_crit_edge
  %107 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp318 = icmp slt i32 %108, 0
  br i1 %cmp318, label %lor.lhs.false.do.body321_crit_edge, label %lor.lhs.false.if.end326_crit_edge

lor.lhs.false.if.end326_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end326

lor.lhs.false.do.body321_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body321

do.body321:                                       ; preds = %lor.lhs.false.do.body321_crit_edge, %land.lhs.true310.do.body321_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %109 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs, align 4
  %add.ptr325 = getelementptr i8, ptr %110, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr325, i32 0) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %112, i32 36
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %115, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %113) #7, !srcloc !119
  %msg_complete = getelementptr inbounds %struct.exynos5_i2c, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %msg_complete) #7
  br label %if.end326

if.end326:                                        ; preds = %do.body321, %lor.lhs.false.if.end326_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_hsi2c_clock_setup(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %i2c, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %op_clock = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 12
  %0 = ptrtoint ptr %op_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %1)
  %cmp1 = icmp ult i32 %1, 1000000
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %i2c, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %lor.lhs.false.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_i2c_reset(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %3 = or i32 %2, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !119
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %9 = and i32 %8, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !119
  %call.i = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %i2c, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.exynos5_hsi2c_clock_setup.exit_crit_edge, label %lor.lhs.false.i

entry.exynos5_hsi2c_clock_setup.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_hsi2c_clock_setup.exit

lor.lhs.false.i:                                  ; preds = %entry
  %op_clock.i = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 12
  %12 = ptrtoint ptr %op_clock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_clock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %13)
  %cmp1.i = icmp ult i32 %13, 1000000
  br i1 %cmp1.i, label %lor.lhs.false.i.exynos5_hsi2c_clock_setup.exit_crit_edge, label %if.end.i

lor.lhs.false.i.exynos5_hsi2c_clock_setup.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_hsi2c_clock_setup.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %i2c, i1 noundef zeroext true) #7
  br label %exynos5_hsi2c_clock_setup.exit

exynos5_hsi2c_clock_setup.exit:                   ; preds = %if.end.i, %lor.lhs.false.i.exynos5_hsi2c_clock_setup.exit_crit_edge, %entry.exynos5_hsi2c_clock_setup.exit_crit_edge
  tail call fastcc void @exynos5_i2c_init(ptr noundef %i2c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %pclk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.err_pclk_crit_edge

if.end.err_pclk_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pclk

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp38 = icmp sgt i32 %num, 0
  br i1 %cmp38, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %msg.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 1
  %msg_ptr.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 3
  %trans_done.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 11
  %msg_complete.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 2
  %variant.i.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 13
  %regs.i.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 5
  %op_clock.i.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 12
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %lock.i.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 10
  %state.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %exynos5_i2c_xfer_msg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %exynos5_i2c_xfer_msg.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.039
  %add = add nuw nsw i32 %i.039, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp5 = icmp eq i32 %add, %num
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %msg.i, align 8
  %7 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %msg_ptr.i, align 4
  %8 = ptrtoint ptr %trans_done.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %trans_done.i, align 4
  %9 = ptrtoint ptr %msg_complete.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msg_complete.i, align 4
  %10 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw.i.i, align 4
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %17 = and i32 %16, 1073741823
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg.i, align 8
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags3.i.i, align 2
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i.i, label %if.else22.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %or6.i.i = or i32 %18, 64
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len.i.i, align 4
  %conv9.i.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv9.i.i)
  %cmp11.i.i = icmp ult i32 %29, %conv9.i.i
  %mul.i.i = mul i32 %29, 3
  %div143.i.i = lshr i32 %mul.i.i, 2
  %cond.i.i = select i1 %cmp11.i.i, i32 %div143.i.i, i32 %conv9.i.i
  %conv19.i.i = shl i32 %cond.i.i, 4
  %shl.i.i = and i32 %conv19.i.i, 1048560
  br label %if.end47.i.i

if.else22.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %or23.i.i = or i32 %18, 128
  %len25.i.i = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 2
  %30 = ptrtoint ptr %len25.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %len25.i.i, align 4
  %conv26.i.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %variant.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv26.i.i)
  %cmp29.i.i = icmp ult i32 %35, %conv26.i.i
  %div35142.i.i = lshr i32 %35, 2
  %cond41.i.i = select i1 %cmp29.i.i, i32 %div35142.i.i, i32 %conv26.i.i
  %shl44.i.i = shl i32 %cond41.i.i, 16
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.else22.i.i, %if.then5.i.i
  %.sink.i.i = phi i32 [ 1, %if.else22.i.i ], [ 66, %if.then5.i.i ]
  %fifo_ctl.0.in.i.i = phi i32 [ %shl44.i.i, %if.else22.i.i ], [ %shl.i.i, %if.then5.i.i ]
  %i2c_auto_conf.0.i.i = phi i32 [ 0, %if.else22.i.i ], [ 65536, %if.then5.i.i ]
  %i2c_ctl.0.i.i = phi i32 [ %or23.i.i, %if.else22.i.i ], [ %or6.i.i, %if.then5.i.i ]
  %fifo_ctl.0.i.i = or i32 %fifo_ctl.0.in.i.i, 3
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %20, align 4
  %38 = and i16 %37, 1023
  %and50.i.i = zext i16 %38 to i32
  %shl51.i.i = shl nuw nsw i32 %and50.i.i, 10
  %39 = ptrtoint ptr %op_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %op_clock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %40)
  %cmp52.i.i = icmp ugt i32 %40, 999999
  br i1 %cmp52.i.i, label %if.then54.i.i, label %if.end47.i.i.do.body.i.i_crit_edge

if.end47.i.i.do.body.i.i_crit_edge:               ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.then54.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr.i.i, align 4
  %and55.i.i = shl i32 %42, 24
  %add.i.i = and i32 %and55.i.i, 117440512
  %shl57.i.i = or i32 %shl51.i.i, %add.i.i
  %or58.i.i = or i32 %shl57.i.i, 134217728
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then54.i.i, %if.end47.i.i.do.body.i.i_crit_edge
  %i2c_addr.0.i.i = phi i32 [ %or58.i.i, %if.then54.i.i ], [ %shl51.i.i, %if.end47.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %i2c_addr.0.i.i) #7
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr61.i.i = getelementptr i8, ptr %45, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i.i, i32 %43) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %fifo_ctl.0.i.i) #7
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 4
  %add.ptr66.i.i = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i.i, i32 %46) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %i2c_ctl.0.i.i) #7
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #7, !srcloc !119
  %52 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %variant.i.i, align 4
  %hw.i.i.i = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.exynos5_i2c_message_start.exit.i_crit_edge, label %if.end.i.i.i

do.body.i.i.exynos5_i2c_message_start.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_message_start.exit.i

if.end.i.i.i:                                     ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %56, 10
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 4
  %add.ptr14.i.i.i = getelementptr i8, ptr %58, i32 80
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %60 = and i32 %59, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %60)
  %cmp3.not15.i.i.i = icmp eq i32 %60, 201326592
  br i1 %cmp3.not15.i.i.i, label %if.end.i.i.i.if.end5.i.i.i_crit_edge, label %if.end.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge

if.end.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_message_start.exit.i

if.end.i.i.i.if.end5.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %exynos5_i2c_bus_recover.exit.i.i.i.if.end5.i.i.i_crit_edge, %if.end.i.i.i.if.end5.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.end5.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge, label %if.end8.i.i.i

if.end5.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_message_start.exit.i

if.end8.i.i.i:                                    ; preds = %if.end5.i.i.i
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %65 = or i32 %64, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #7, !srcloc !119
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr7.i.i.i.i = getelementptr i8, ptr %69, i32 64
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %71 = and i32 %70, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i, align 4
  %add.ptr15.i.i.i.i = getelementptr i8, ptr %73, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i.i.i, i32 %71) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i, align 4
  %add.ptr20.i.i.i.i = getelementptr i8, ptr %75, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i.i, i32 268435456) #7, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add1.neg.i.i.i.i.i = sub i32 -11, %76
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end8.i.i.i
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %78, i32 80
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %80 = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i.i.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.exynos5_i2c_wait_bus_idle.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

do.body.i.i.i.i.i.exynos5_i2c_wait_bus_idle.exit.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_wait_bus_idle.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i.i.i = add i32 %add1.neg.i.i.i.i.i, %81
  %cmp.i.i.i.i.i = icmp slt i32 %sub.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.exynos5_i2c_wait_bus_idle.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.i.exynos5_i2c_wait_bus_idle.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_wait_bus_idle.exit.i.i.i.i

if.end.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

exynos5_i2c_wait_bus_idle.exit.i.i.i.i:           ; preds = %if.end.i.i.i.i.i.exynos5_i2c_wait_bus_idle.exit.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.exynos5_i2c_wait_bus_idle.exit.i.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i, align 4
  %add.ptr26.i.i.i.i = getelementptr i8, ptr %83, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i.i.i, i32 67108864) #7, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %add1.neg.i69.i.i.i.i = sub i32 -11, %84
  br label %do.body.i72.i.i.i.i

do.body.i72.i.i.i.i:                              ; preds = %if.end.i75.i.i.i.i.do.body.i72.i.i.i.i_crit_edge, %exynos5_i2c_wait_bus_idle.exit.i.i.i.i
  %85 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i70.i.i.i.i = getelementptr i8, ptr %86, i32 80
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i.i.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %88 = and i32 %87, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i71.i.i.i.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i71.i.i.i.i, label %do.body.i72.i.i.i.i.exynos5_i2c_bus_recover.exit.i.i.i_crit_edge, label %if.end.i75.i.i.i.i

do.body.i72.i.i.i.i.exynos5_i2c_bus_recover.exit.i.i.i_crit_edge: ; preds = %do.body.i72.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_bus_recover.exit.i.i.i

if.end.i75.i.i.i.i:                               ; preds = %do.body.i72.i.i.i.i
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %sub.i73.i.i.i.i = add i32 %add1.neg.i69.i.i.i.i, %89
  %cmp.i74.i.i.i.i = icmp slt i32 %sub.i73.i.i.i.i, 0
  br i1 %cmp.i74.i.i.i.i, label %if.end.i75.i.i.i.i.do.body.i72.i.i.i.i_crit_edge, label %if.end.i75.i.i.i.i.exynos5_i2c_bus_recover.exit.i.i.i_crit_edge

if.end.i75.i.i.i.i.exynos5_i2c_bus_recover.exit.i.i.i_crit_edge: ; preds = %if.end.i75.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_bus_recover.exit.i.i.i

if.end.i75.i.i.i.i.do.body.i72.i.i.i.i_crit_edge: ; preds = %if.end.i75.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i72.i.i.i.i

exynos5_i2c_bus_recover.exit.i.i.i:               ; preds = %if.end.i75.i.i.i.i.exynos5_i2c_bus_recover.exit.i.i.i_crit_edge, %do.body.i72.i.i.i.i.exynos5_i2c_bus_recover.exit.i.i.i_crit_edge
  %90 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i, align 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %93 = and i32 %92, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #7, !srcloc !119
  %96 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i.i, align 4
  %add.ptr44.i.i.i.i = getelementptr i8, ptr %97, i32 64
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i.i.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %99 = or i32 %98, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i.i, align 4
  %add.ptr53.i.i.i.i = getelementptr i8, ptr %101, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i.i.i.i, i32 %99) #7, !srcloc !119
  %102 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %103, i32 80
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %105 = and i32 %104, 251658240
  %cmp3.not.i.i.i = icmp eq i32 %105, 201326592
  br i1 %cmp3.not.i.i.i, label %exynos5_i2c_bus_recover.exit.i.i.i.if.end5.i.i.i_crit_edge, label %exynos5_i2c_bus_recover.exit.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge

exynos5_i2c_bus_recover.exit.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge: ; preds = %exynos5_i2c_bus_recover.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_message_start.exit.i

exynos5_i2c_bus_recover.exit.i.i.i.if.end5.i.i.i_crit_edge: ; preds = %exynos5_i2c_bus_recover.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i.i

exynos5_i2c_message_start.exit.i:                 ; preds = %exynos5_i2c_bus_recover.exit.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge, %if.end5.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge, %if.end.i.i.i.exynos5_i2c_message_start.exit.i_crit_edge, %do.body.i.i.exynos5_i2c_message_start.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 0
  %..i.i = select i1 %cmp.i.i, i32 512, i32 3968
  %or46.i.i = or i32 %.sink.i.i, %..i.i
  %call78.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %106 = tail call i32 @llvm.bswap.i32(i32 %or46.i.i) #7
  %107 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i, align 4
  %add.ptr87.i.i = getelementptr i8, ptr %108, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i.i, i32 %106) #7, !srcloc !119
  %or91.i.i = or i32 %i2c_auto_conf.0.i.i, 131072
  %spec.select.i.i = select i1 %cmp5, i32 %or91.i.i, i32 %i2c_auto_conf.0.i.i
  %109 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %msg.i, align 8
  %len94.i.i = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %len94.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %len94.i.i, align 4
  %conv95.i.i = zext i16 %112 to i32
  %or96.i.i = or i32 %spec.select.i.i, %conv95.i.i
  %or97.i.i = or i32 %or96.i.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %113 = tail call i32 @llvm.bswap.i32(i32 %or97.i.i) #7
  %114 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i.i, align 4
  %add.ptr102.i.i = getelementptr i8, ptr %115, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i.i, i32 %113) #7, !srcloc !119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call78.i.i) #7
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete.i, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then8.thread.i, label %if.end.i

if.then8.thread.i:                                ; preds = %exynos5_i2c_message_start.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @exynos5_i2c_reset(ptr noundef %1) #7
  br label %do.end.i

if.end.i:                                         ; preds = %exynos5_i2c_message_start.exit.i
  %116 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp3.i = icmp eq i32 %117, 0
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  br i1 %cmp5, label %if.then4.i, label %land.lhs.true.i.exynos5_i2c_xfer_msg.exit_crit_edge

land.lhs.true.i.exynos5_i2c_xfer_msg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_xfer_msg.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %add1.neg.i.i = sub i32 -11, %118
  br label %do.body.i30.i

do.body.i30.i:                                    ; preds = %if.end.i.i.do.body.i30.i_crit_edge, %if.then4.i
  %119 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %120, i32 80
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %122 = and i32 %121, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i29.i = icmp eq i32 %122, 0
  br i1 %tobool.not.i29.i, label %do.body.i30.i.exynos5_i2c_xfer_msg.exit_crit_edge, label %if.end.i.i

do.body.i30.i.exynos5_i2c_xfer_msg.exit_crit_edge: ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_i2c_xfer_msg.exit

if.end.i.i:                                       ; preds = %do.body.i30.i
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add1.neg.i.i, %123
  %cmp.i31.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i31.i, label %if.end.i.i.do.body.i30.i_crit_edge, label %if.then8.thread45.i

if.end.i.i.do.body.i30.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i30.i

if.then8.thread45.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @exynos5_i2c_reset(ptr noundef %1) #7
  br label %for.end

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp7.i = icmp slt i32 %117, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.for.end_crit_edge

if.end6.i.for.end_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then8.i:                                       ; preds = %if.end6.i
  tail call fastcc void @exynos5_i2c_reset(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %117)
  %cmp9.i = icmp eq i32 %117, -110
  br i1 %cmp9.i, label %if.then8.i.do.end.i_crit_edge, label %if.then8.i.for.end_crit_edge

if.then8.i.for.end_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then8.i.do.end.i_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i.do.end.i_crit_edge, %if.then8.thread.i
  %dev.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 8
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 8
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.039, i32 1
  %126 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %flags.i, align 2
  %128 = and i16 %127, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool11.not.i = icmp eq i16 %128, 0
  %cond.i = select i1 %tobool11.not.i, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond.i) #10
  br label %for.end

exynos5_i2c_xfer_msg.exit:                        ; preds = %do.body.i30.i.exynos5_i2c_xfer_msg.exit_crit_edge, %land.lhs.true.i.exynos5_i2c_xfer_msg.exit_crit_edge
  %exitcond.not = icmp eq i32 %add, %num
  br i1 %exitcond.not, label %exynos5_i2c_xfer_msg.exit.for.end_crit_edge, label %exynos5_i2c_xfer_msg.exit.for.body_crit_edge

exynos5_i2c_xfer_msg.exit.for.body_crit_edge:     ; preds = %exynos5_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

exynos5_i2c_xfer_msg.exit.for.end_crit_edge:      ; preds = %exynos5_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %exynos5_i2c_xfer_msg.exit.for.end_crit_edge, %do.end.i, %if.then8.i.for.end_crit_edge, %if.end6.i.for.end_crit_edge, %if.then8.thread45.i, %for.cond.preheader.for.end_crit_edge
  %ret.1 = phi i32 [ -16, %if.then8.thread45.i ], [ %117, %if.end6.i.for.end_crit_edge ], [ -110, %do.end.i ], [ %117, %if.then8.i.for.end_crit_edge ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %exynos5_i2c_xfer_msg.exit.for.end_crit_edge ]
  %129 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %130) #7
  br label %err_pclk

err_pclk:                                         ; preds = %for.end, %if.end.err_pclk_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.err_pclk_crit_edge ], [ %ret.1, %for.end ]
  %131 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %132) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool12.not = icmp eq i32 %ret.2, 0
  %spec.select = select i1 %tobool12.not, i32 %num, i32 %ret.2
  br label %cleanup

cleanup:                                          ; preds = %err_pclk, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %err_pclk ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos5_i2c_func(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251527177
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_i2c_set_timing(ptr nocapture noundef readonly %i2c, i1 noundef zeroext %hs_timings) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 6
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %variant = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 13
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %hw = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp7 = icmp eq i32 %5, 2
  %op_clock8 = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 12
  %6 = ptrtoint ptr %op_clock8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_clock8, align 8
  br i1 %cmp7, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %mul = shl i32 %7, 4
  %div9 = udiv i32 %call, %mul
  %sub = shl i32 %div9, 16
  %shl = add i32 %sub, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %regs = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 5
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  br i1 %hs_timings, label %do.body, label %do.body12

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %10, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !119
  br label %cleanup

do.body12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr16 = getelementptr i8, ptr %10, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %8) #7, !srcloc !119
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %7)
  %cmp = icmp ugt i32 %7, 999999
  %spec.select = select i1 %cmp, i32 100000, i32 %7
  %cond6 = select i1 %hs_timings, i32 %7, i32 %spec.select
  %regs18 = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 5
  %11 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs18, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %14 = lshr i32 %13, 8
  %and = and i32 %14, 7
  %div22 = udiv i32 %call, %cond6
  %15 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant, align 4
  %hw26 = getelementptr inbounds %struct.exynos_hsi2c_variant, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hw26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp27.not = icmp eq i32 %18, 1
  %sub29 = select i1 %cmp27.not, i32 0, i32 %and
  %.neg = add i32 %div22, -8
  %19 = add nuw nsw i32 %and, %sub29
  %spec.select243 = sub i32 %.neg, %19
  %div31 = sdiv i32 %spec.select243, 512
  %add = add nsw i32 %div31, 1
  %div32 = sdiv i32 %spec.select243, %add
  %sub33 = add i32 %div32, -2
  %20 = add i32 %spec.select243, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131068, i32 %20)
  %21 = icmp ult i32 %20, -131068
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub33)
  %cmp37 = icmp slt i32 %sub33, 2
  %or.cond244 = select i1 %21, i1 true, i1 %cmp37
  br i1 %or.cond244, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %cond43 = select i1 %hs_timings, ptr @.str.29, ptr @.str.30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond43) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end17
  %div45258259 = lshr i32 %sub33, 1
  %div47242 = lshr i32 %sub33, 2
  %shl49 = shl i32 %div45258259, 24
  %shl50 = shl i32 %div45258259, 16
  %or = or i32 %shl49, %shl50
  %shl51 = shl i32 %div45258259, 8
  %or52 = or i32 %or, %shl51
  %shl53 = shl i32 %div47242, 24
  %or55 = or i32 %shl51, %div45258259
  %or57 = or i32 %or55, %shl53
  %shl58 = shl i32 %div31, 16
  %or60 = or i32 %shl58, %sub33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_set_timing, %do.body75)) #7
          to label %if.then70 [label %do.body75], !srcloc !122

if.then70:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %dev71 = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 8
  %24 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev71, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug288, ptr noundef %25, ptr noundef nonnull @.str.31, i32 noundef %div45258259, i32 noundef %div45258259, i32 noundef %div45258259) #7
  br label %do.body75

do.body75:                                        ; preds = %if.then70, %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_set_timing, %do.body94)) #7
          to label %if.then89 [label %do.body94], !srcloc !122

if.then89:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  %dev90 = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 8
  %26 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev90, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug289, ptr noundef %27, ptr noundef nonnull @.str.32, i32 noundef %div47242, i32 noundef %div45258259, i32 noundef %div45258259) #7
  br label %do.body94

do.body94:                                        ; preds = %if.then89, %do.body75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_set_timing, %do.body113)) #7
          to label %if.then108 [label %do.body113], !srcloc !122

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %dev109 = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 8
  %28 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev109, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug290, ptr noundef %29, ptr noundef nonnull @.str.33, i32 noundef %div31, i32 noundef %sub33) #7
  br label %do.body113

do.body113:                                       ; preds = %if.then108, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@exynos5_i2c_set_timing, %do.end131)) #7
          to label %if.then127 [label %do.end131], !srcloc !122

if.then127:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  %dev128 = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 8
  %30 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev128, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug291, ptr noundef %31, ptr noundef nonnull @.str.34, i32 noundef %div47242) #7
  br label %do.end131

do.end131:                                        ; preds = %if.then127, %do.body113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %33 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs18, align 4
  br i1 %hs_timings, label %do.body134, label %do.body150

do.body134:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr138 = getelementptr i8, ptr %34, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %32) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or57)
  %36 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs18, align 4
  %add.ptr143 = getelementptr i8, ptr %37, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %35) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %39 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs18, align 4
  %add.ptr148 = getelementptr i8, ptr %40, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %38) #7, !srcloc !119
  br label %do.body166

do.body150:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr154 = getelementptr i8, ptr %34, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %32) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %or57)
  %42 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs18, align 4
  %add.ptr159 = getelementptr i8, ptr %43, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %41) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %45 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs18, align 4
  %add.ptr164 = getelementptr i8, ptr %46, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %44) #7, !srcloc !119
  br label %do.body166

do.body166:                                       ; preds = %do.body150, %do.body134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %div47242)
  %48 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs18, align 4
  %add.ptr170 = getelementptr i8, ptr %49, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %47) #7, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %do.body166, %do.end41, %do.body12, %do.body
  %retval.0 = phi i32 [ -22, %do.end41 ], [ 0, %do.body166 ], [ 0, %do.body12 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos5_i2c_init(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !117
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %7 = and i32 %6, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %7) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 150994944) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 251658240) #7, !srcloc !119
  %op_clock = getelementptr inbounds %struct.exynos5_i2c, ptr %i2c, i32 0, i32 12
  %14 = ptrtoint ptr %op_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %15)
  %cmp = icmp ugt i32 %15, 999999
  br i1 %cmp, label %do.body21, label %entry.do.body28_crit_edge

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

do.body21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %add = and i32 %17, 7
  %shl = or i32 %add, 8
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %shl) #7, !srcloc !119
  %or = or i32 %3, 536870912
  br label %do.body28

do.body28:                                        ; preds = %do.body21, %entry.do.body28_crit_edge
  %i2c_conf.0 = phi i32 [ %or, %do.body21 ], [ %3, %entry.do.body28_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %or31 = or i32 %i2c_conf.0, -2147483648
  %20 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %20) #7, !srcloc !119
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1) #7
  %locked_flags.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #7
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 1) #7
  %clk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_unprepare(ptr noundef %11) #7
  %pclk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_i2c_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call.i27 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i31, label %if.end.err_pclk_crit_edge

if.end.err_pclk_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pclk

if.end.i31:                                       ; preds = %if.end
  %call1.i29 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool2.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool2.not.i30, label %if.end5, label %if.end.i31.err_pclk.sink.split_crit_edge

if.end.i31.err_pclk.sink.split_crit_edge:         ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pclk.sink.split

if.end5:                                          ; preds = %if.end.i31
  %call.i35 = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i = icmp slt i32 %call.i35, 0
  br i1 %cmp.i, label %if.end5.err_clk_crit_edge, label %lor.lhs.false.i

if.end5.err_clk_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

lor.lhs.false.i:                                  ; preds = %if.end5
  %op_clock.i = getelementptr inbounds %struct.exynos5_i2c, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %op_clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_clock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %7)
  %cmp1.i = icmp ult i32 %7, 1000000
  br i1 %cmp1.i, label %lor.lhs.false.i.exynos5_hsi2c_clock_setup.exit_crit_edge, label %if.end.i36

lor.lhs.false.i.exynos5_hsi2c_clock_setup.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos5_hsi2c_clock_setup.exit

if.end.i36:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call fastcc i32 @exynos5_i2c_set_timing(ptr noundef %1, i1 noundef zeroext true) #7
  br label %exynos5_hsi2c_clock_setup.exit

exynos5_hsi2c_clock_setup.exit:                   ; preds = %if.end.i36, %lor.lhs.false.i.exynos5_hsi2c_clock_setup.exit_crit_edge
  %retval.0.i37 = phi i32 [ %call2.i, %if.end.i36 ], [ %call.i35, %lor.lhs.false.i.exynos5_hsi2c_clock_setup.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i37)
  %tobool7.not = icmp eq i32 %retval.0.i37, 0
  br i1 %tobool7.not, label %if.end9, label %exynos5_hsi2c_clock_setup.exit.err_clk_crit_edge

exynos5_hsi2c_clock_setup.exit.err_clk_crit_edge: ; preds = %exynos5_hsi2c_clock_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end9:                                          ; preds = %exynos5_hsi2c_clock_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @exynos5_i2c_init(ptr noundef %1)
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #7
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock_ops.i.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %1, i32 noundef 1) #7
  %locked_flags.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #7
  %16 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1) #7
  br label %cleanup

err_clk:                                          ; preds = %exynos5_hsi2c_clock_setup.exit.err_clk_crit_edge, %if.end5.err_clk_crit_edge
  %retval.0.i3744 = phi i32 [ %retval.0.i37, %exynos5_hsi2c_clock_setup.exit.err_clk_crit_edge ], [ %call.i35, %if.end5.err_clk_crit_edge ]
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %21) #7
  br label %err_pclk.sink.split

err_pclk.sink.split:                              ; preds = %err_clk, %if.end.i31.err_pclk.sink.split_crit_edge
  %.sink = phi ptr [ %21, %err_clk ], [ %5, %if.end.i31.err_pclk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i3744, %err_clk ], [ %call1.i29, %if.end.i31.err_pclk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %err_pclk

err_pclk:                                         ; preds = %err_pclk.sink.split, %if.end.err_pclk_crit_edge
  %ret.0 = phi i32 [ %call.i27, %if.end.err_pclk_crit_edge ], [ %ret.0.ph, %err_pclk.sink.split ]
  %22 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %23) #7
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pclk, %if.end9, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_pclk ], [ 0, %if.end9 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_i2c_exynos5__302_956_exynos5_i2c_driver_init6, !1, !"__initcall__kmod_i2c_exynos5__302_956_exynos5_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 956, i32 1}
!2 = !{ptr @__exitcall_exynos5_i2c_driver_exit, !1, !"__exitcall_exynos5_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 958, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 959, i32 1}
!7 = !{ptr @__UNIQUE_ID_author305, !8, !"__UNIQUE_ID_author305", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 960, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 961, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 950, i32 11}
!14 = !{ptr @exynos5_i2c_driver, !15, !"exynos5_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 946, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 802, i32 31}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 805, i32 26}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 811, i32 38}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 813, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @exynos5_i2c_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @exynos5_i2c_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 817, i32 48}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 820, i32 10}
!34 = !{ptr @exynos5_i2c_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 844, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 854, i32 3}
!39 = !{ptr @exynos5_i2c_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @exynos5_i2c_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @exynos5_i2c_algorithm, !42, !"exynos5_i2c_algorithm", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 787, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 747, i32 4}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @exynos5_i2c_xfer_msg._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @exynos5_i2c_xfer_msg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 468, i32 4}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug292, !55, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 472, i32 4}
!61 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug293, !60, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 476, i32 4}
!64 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug294, !63, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 480, i32 4}
!67 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug295, !66, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!68 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug296, !69, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 492, i32 4}
!70 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug297, !71, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 496, i32 4}
!72 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug298, !73, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 500, i32 4}
!74 = !{ptr @exynos5_i2c_irq.__UNIQUE_ID_ddebug299, !75, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 504, i32 4}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 341, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @exynos5_i2c_set_timing._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @exynos5_i2c_set_timing._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 360, i32 2}
!85 = !{ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug288, !84, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 362, i32 2}
!88 = !{ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug289, !87, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 364, i32 2}
!91 = !{ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug290, !90, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 366, i32 2}
!94 = !{ptr @exynos5_i2c_set_timing.__UNIQUE_ID_ddebug291, !93, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!95 = !{ptr @exynos5_i2c_match, !96, !"exynos5_i2c_match", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 240, i32 34}
!97 = !{ptr @exynos5250_hsi2c_data, !98, !"exynos5250_hsi2c_data", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 220, i32 42}
!99 = !{ptr @exynos5260_hsi2c_data, !100, !"exynos5260_hsi2c_data", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 225, i32 42}
!101 = !{ptr @exynos7_hsi2c_data, !102, !"exynos7_hsi2c_data", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 230, i32 42}
!103 = !{ptr @exynosautov9_hsi2c_data, !104, !"exynosautov9_hsi2c_data", i1 false, i1 false}
!104 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 235, i32 42}
!105 = !{ptr @exynos5_i2c_dev_pm_ops, !106, !"exynos5_i2c_dev_pm_ops", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-exynos5.c", i32 941, i32 32}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2155633661}
!117 = !{i64 6847230}
!118 = !{i64 2155634552}
!119 = !{i64 6846812}
!120 = !{i64 2155656098}
!121 = !{i64 2155656323}
!122 = !{i64 2148715247, i64 2148715252, i64 2148715265, i64 2148715309, i64 2148715343, i64 2148715364}
!123 = !{i64 2155666102}
!124 = !{i64 2155675668}
!125 = !{i64 2155677856}
!126 = !{i64 2155678353}
!127 = !{i64 2155678870}
!128 = !{i64 2155679101}
!129 = !{i64 2155679503}
!130 = !{i64 2155679896}
!131 = !{i64 2155654283}
!132 = !{i64 2155654516}
!133 = !{i64 2155655189}
!134 = !{i64 2155655422}
!135 = !{i64 2155686923}
!136 = !{i64 2155687420}
!137 = !{i64 2155687832}
!138 = !{i64 2155688243}
!139 = !{i64 2155685848}
!140 = !{i64 2155681438}
!141 = !{i64 2155681666}
!142 = !{i64 2155682327}
!143 = !{i64 2155682556}
!144 = !{i64 2155682964}
!145 = !{i64 2155680551}
!146 = !{i64 2155683390}
!147 = !{i64 2155684069}
!148 = !{i64 2155684297}
!149 = !{i64 2155684958}
!150 = !{i64 2155685187}
!151 = !{i64 2155689002}
!152 = !{i64 2155689435}
!153 = !{i64 2155635930}
!154 = !{i64 2155647957}
!155 = !{i64 2155648389}
!156 = !{i64 2155649253}
!157 = !{i64 2155649685}
!158 = !{i64 2155650118}
!159 = !{i64 2155650820}
!160 = !{i64 2155651307}
!161 = !{i64 2155651544}
!162 = !{i64 2155652002}
!163 = !{i64 2155652468}
!164 = !{i64 2155653001}
!165 = !{i64 2155653568}
