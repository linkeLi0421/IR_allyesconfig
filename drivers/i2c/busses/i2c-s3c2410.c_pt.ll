; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-s3c2410.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-s3c2410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.s3c24xx_i2c = type { %struct.wait_queue_head, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.i2c_adapter, ptr, [2 x ptr], ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.s3c2410_platform_i2c = type { i32, i32, i32, i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_s3c2410__322_1260_i2c_adap_s3c_init4 = internal global ptr @i2c_adap_s3c_init, section ".initcall4.init", align 4
@s3c24xx_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c24xx_i2c_probe, ptr @s3c24xx_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c24xx_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_i2c_dev_pm_ops, ptr null, ptr null }, ptr @s3c24xx_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_adap_s3c_exit = internal global ptr @i2c_adap_s3c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [47 x i8] c"i2c_s3c2410.description=S3C24XX I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [48 x i8] c"i2c_s3c2410.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [48 x i8] c"i2c_s3c2410.file=drivers/i2c/busses/i2c-s3c2410\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [24 x i8] c"i2c_s3c2410.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s3c-i2c\00", [24 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-hdmiphy-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-sata-phy-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_i2c_suspend_noirq, ptr @s3c24xx_i2c_resume_noirq, ptr @s3c24xx_i2c_suspend_noirq, ptr @s3c24xx_i2c_resume_noirq, ptr @s3c24xx_i2c_suspend_noirq, ptr @s3c24xx_i2c_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c24xx_driver_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2440-i2c\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"s3c2440-hdmiphy-i2c\00", i32 7 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c24xx_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-s3c2410.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr = internal global ptr @s3c24xx_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c2410-i2c\00", [20 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @s3c24xx_i2c_xfer, ptr null, ptr null, ptr null, ptr @s3c24xx_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->wait\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr.11 = internal global ptr @s3c24xx_i2c_probe._entry.9, section ".printk_index", align 4
@s3c24xx_i2c_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 1, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_s3c2410\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock source %p\0A\00", [47 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 1, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"registers %p (%p)\0A\00", [45 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2C clock enable failed\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr.17 = internal global ptr @s3c24xx_i2c_probe._entry.15, section ".printk_index", align 4
@s3c24xx_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"I2C controller init failed\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr.20 = internal global ptr @s3c24xx_i2c_probe._entry.18, section ".printk_index", align 4
@s3c24xx_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot find IRQ\0A\00", [47 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr.23 = internal global ptr @s3c24xx_i2c_probe._entry.21, section ".printk_index", align 4
@s3c24xx_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot claim IRQ %d\0A\00", [43 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr.26 = internal global ptr @s3c24xx_i2c_probe._entry.24, section ".printk_index", align 4
@s3c24xx_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register cpufreq notifier\0A\00", [59 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr.29 = internal global ptr @s3c24xx_i2c_probe._entry.27, section ".printk_index", align 4
@s3c24xx_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1183, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: S3C I2C adapter\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_probe._entry_ptr.33 = internal global ptr @s3c24xx_i2c_probe._entry.30, section ".printk_index", align 4
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,i2c-sda-delay\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,i2c-slave-addr\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung,i2c-max-bus-freq\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,sysreg-phandle\00", [41 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_xfer.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c24xx_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Retrying transmission (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s3c24xx_i2c_doxfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get bus (error %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c24xx_i2c_doxfer\00", [45 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_doxfer._entry_ptr = internal global ptr @s3c24xx_i2c_doxfer._entry, section ".printk_index", align 4
@s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"incomplete xfer (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 -74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c24xx_i2c_message_start\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"START: %08lx to IICSTAT, %02x to DS\0A\00", [59 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.44, ptr @.str.3, ptr @.str.46, i8 0, i8 68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iiccon, %08lx\0A\00", [17 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_message_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"deal with arbitration loss\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_message_start._entry_ptr = internal global ptr @s3c24xx_i2c_message_start._entry, section ".printk_index", align 4
@is_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ack was not received\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"is_ack\00", [25 x i8] zeroinitializer }, align 32
@is_ack._entry_ptr = internal global ptr @is_ack._entry, section ".printk_index", align 4
@i2c_s3c_irq_nextbyte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: called in STATE_IDLE\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_s3c_irq_nextbyte\00", [43 x i8] zeroinitializer }, align 32
@i2c_s3c_irq_nextbyte._entry_ptr = internal global ptr @i2c_s3c_irq_nextbyte._entry, section ".printk_index", align 4
@i2c_s3c_irq_nextbyte._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: called in STATE_STOP\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_s3c_irq_nextbyte._entry_ptr.54 = internal global ptr @i2c_s3c_irq_nextbyte._entry.52, section ".printk_index", align 4
@i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.51, ptr @.str.3, ptr @.str.48, i8 0, i8 102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.51, ptr @.str.3, ptr @.str.55, i8 0, i8 110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WRITE: No Ack\0A\00", [17 x i8] zeroinitializer }, align 32
@i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.51, ptr @.str.3, ptr @.str.56, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WRITE: Next Message\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.51, ptr @.str.3, ptr @.str.57, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"missing START before write->read\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.51, ptr @.str.3, ptr @.str.58, i8 0, i8 -124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"READ: Send Stop\0A\00", [47 x i8] zeroinitializer }, align 32
@i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.51, ptr @.str.3, ptr @.str.59, i8 0, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"READ: Next Transfer\0A\00", [43 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_stop.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c24xx_i2c_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STOP\0A\00", [26 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_master_complete.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c24xx_i2c_master_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"master_complete %d\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_wait_idle.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c24xx_i2c_wait_idle\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"waiting for bus idle\0A\00", [42 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_wait_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 684, ptr @.str.67, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for bus idle\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_wait_idle._entry_ptr = internal global ptr @s3c24xx_i2c_wait_idle._entry, section ".printk_index", align 4
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_parse_dt_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 959, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c gpio invalid at index %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c24xx_i2c_parse_dt_gpio\00", [38 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_parse_dt_gpio._entry_ptr = internal global ptr @s3c24xx_i2c_parse_dt_gpio._entry, section ".printk_index", align 4
@s3c24xx_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 989, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"slave address 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c24xx_i2c_init\00", [47 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_init._entry_ptr = internal global ptr @s3c24xx_i2c_init._entry, section ".printk_index", align 4
@s3c24xx_i2c_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot meet bus frequency required\0A\00", [60 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_init._entry_ptr.75 = internal global ptr @s3c24xx_i2c_init._entry.73, section ".printk_index", align 4
@s3c24xx_i2c_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.3, i32 1003, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bus frequency set to %d KHz\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_init._entry_ptr.78 = internal global ptr @s3c24xx_i2c_init._entry.76, section ".printk_index", align 4
@s3c24xx_i2c_init.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.72, ptr @.str.3, ptr @.str.79, i8 0, i8 -5, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"S3C2410_IICCON=0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 0, i8 -47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c24xx_i2c_clockrate\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pdata desired frequency %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_clockrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 850, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Unable to achieve desired frequency %luKHz. Lowest achievable %dKHz\0A\00", [59 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_clockrate._entry_ptr = internal global ptr @s3c24xx_i2c_clockrate._entry, section ".printk_index", align 4
@s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.80, ptr @.str.3, ptr @.str.83, i8 0, i8 -36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IICLC=%08lx\0A\00", [19 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.84, ptr @.str.3, i32 567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c24xx_i2c_irq\00", [16 x i8] zeroinitializer }, align 32
@s3c24xx_i2c_irq._entry_ptr = internal global ptr @s3c24xx_i2c_irq._entry, section ".printk_index", align 4
@s3c24xx_i2c_irq.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 -114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IRQ: error i2c->state == IDLE\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"s3c24xx_i2c_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1245, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1250, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"s3c24xx_i2c_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 143, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"s3c24xx_i2c_dev_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1235, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"s3c24xx_driver_ids\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 126, i32 40 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1059, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1079, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"s3c24xx_i2c_algorithm\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 789, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1086, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1090, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1092, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1096, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1105, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1122, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1129, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1141, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1149, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1157, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1183, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1024, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1025, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1026, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1038, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 772, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 698, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 716, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 730, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 263, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 272, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 284, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 231, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 393, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 397, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 443, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 468, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 483, i32 6 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 528, i32 5 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 533, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 293, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 172, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 647, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 684, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [36 x i8] c"../include/linux/pinctrl/consumer.h\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 209, i32 38 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 959, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 989, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 997, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1003, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1004, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 839, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 848, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 881, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 567, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-s3c2410.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 571, i32 3 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_i2c_adap_s3c_exit, ptr @__initcall__kmod_i2c_s3c2410__322_1260_i2c_adap_s3c_init4, ptr @i2c_adap_s3c_exit, ptr @i2c_s3c_irq_nextbyte._entry, ptr @i2c_s3c_irq_nextbyte._entry.52, ptr @i2c_s3c_irq_nextbyte._entry_ptr, ptr @i2c_s3c_irq_nextbyte._entry_ptr.54, ptr @is_ack._entry, ptr @is_ack._entry_ptr, ptr @s3c24xx_i2c_clockrate._entry, ptr @s3c24xx_i2c_clockrate._entry_ptr, ptr @s3c24xx_i2c_doxfer._entry, ptr @s3c24xx_i2c_doxfer._entry_ptr, ptr @s3c24xx_i2c_init._entry, ptr @s3c24xx_i2c_init._entry.73, ptr @s3c24xx_i2c_init._entry.76, ptr @s3c24xx_i2c_init._entry_ptr, ptr @s3c24xx_i2c_init._entry_ptr.75, ptr @s3c24xx_i2c_init._entry_ptr.78, ptr @s3c24xx_i2c_irq._entry, ptr @s3c24xx_i2c_irq._entry_ptr, ptr @s3c24xx_i2c_message_start._entry, ptr @s3c24xx_i2c_message_start._entry_ptr, ptr @s3c24xx_i2c_parse_dt_gpio._entry, ptr @s3c24xx_i2c_parse_dt_gpio._entry_ptr, ptr @s3c24xx_i2c_probe._entry, ptr @s3c24xx_i2c_probe._entry.15, ptr @s3c24xx_i2c_probe._entry.18, ptr @s3c24xx_i2c_probe._entry.21, ptr @s3c24xx_i2c_probe._entry.24, ptr @s3c24xx_i2c_probe._entry.27, ptr @s3c24xx_i2c_probe._entry.30, ptr @s3c24xx_i2c_probe._entry.9, ptr @s3c24xx_i2c_probe._entry_ptr, ptr @s3c24xx_i2c_probe._entry_ptr.11, ptr @s3c24xx_i2c_probe._entry_ptr.17, ptr @s3c24xx_i2c_probe._entry_ptr.20, ptr @s3c24xx_i2c_probe._entry_ptr.23, ptr @s3c24xx_i2c_probe._entry_ptr.26, ptr @s3c24xx_i2c_probe._entry_ptr.29, ptr @s3c24xx_i2c_probe._entry_ptr.33, ptr @s3c24xx_i2c_wait_idle._entry, ptr @s3c24xx_i2c_wait_idle._entry_ptr, ptr @s3c24xx_i2c_driver, ptr @.str, ptr @s3c24xx_i2c_match, ptr @s3c24xx_i2c_dev_pm_ops, ptr @s3c24xx_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @s3c24xx_i2c_algorithm, ptr @s3c24xx_i2c_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_driver_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_doxfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_message_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_s3c_irq_nextbyte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_s3c_irq_nextbyte._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_wait_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_parse_dt_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_clockrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_i2c_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_adap_s3c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c24xx_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_adap_s3c_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c24xx_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %pdata.0 = phi ptr [ null, %entry.if.end5_crit_edge ], [ %3, %if.then.if.end5_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1488, i32 noundef 3520) #9
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call.i283 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #9
  %pdata13 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %pdata13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i283, ptr %pdata13, align 8
  %tobool15.not = icmp eq ptr %call.i283, null
  br i1 %tobool15.not, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call.i284 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %7 = ptrtoint ptr %call.i284 to i32
  br label %s3c24xx_get_device_quirks.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data.i, align 4
  br label %s3c24xx_get_device_quirks.exit

s3c24xx_get_device_quirks.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i285 = phi i32 [ %7, %if.then.i ], [ %11, %if.end.i ]
  %quirks = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i285, ptr %quirks, align 4
  %sysreg = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 17
  %13 = ptrtoint ptr %sysreg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -2 to ptr), ptr %sysreg, align 8
  %tobool20.not = icmp eq ptr %pdata.0, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %s3c24xx_get_device_quirks.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pdata13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata13, align 8
  %16 = call ptr @memcpy(ptr %15, ptr %pdata.0, i32 24)
  br label %if.end25

if.else:                                          ; preds = %s3c24xx_get_device_quirks.exit
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool.not.i286 = icmp eq ptr %18, null
  br i1 %tobool.not.i286, label %if.else.if.end25_crit_edge, label %if.end.i287

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end.i287:                                      ; preds = %if.else
  %19 = ptrtoint ptr %pdata13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata13, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %20, align 4
  %sda_delay.i = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %20, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.34, ptr noundef %sda_delay.i, i32 noundef 1, i32 noundef 0) #9
  %slave_addr.i = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %20, i32 0, i32 2
  %call.i.i24.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.35, ptr noundef %slave_addr.i, i32 noundef 1, i32 noundef 0) #9
  %frequency.i = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %20, i32 0, i32 3
  %call.i.i25.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.36, ptr noundef %frequency.i, i32 noundef 1, i32 noundef 0) #9
  %call4.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %18, ptr noundef nonnull @.str.8) #9
  %call5.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %18, ptr noundef nonnull @.str.37) #9
  %22 = ptrtoint ptr %sysreg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i, ptr %sysreg, align 8
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i287.if.end25_crit_edge, label %if.end9.i

if.end.i287.if.end25_crit_edge:                   ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end9.i:                                        ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw i32 1, %call4.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call5.i, i32 noundef 564, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end25

if.end25:                                         ; preds = %if.end9.i, %if.end.i287.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then21
  %adap = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13
  %name = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 12
  %call26 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.6, i32 noundef 48) #9
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %adap, align 8
  %algo = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 2
  %24 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @s3c24xx_i2c_algorithm, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 8
  %25 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %retries, align 8
  %class = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 1
  %26 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 256, ptr %class, align 4
  %tx_setup = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %tx_setup to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 50, ptr %tx_setup, align 8
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @s3c24xx_i2c_probe.__key) #9
  %dev35 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 12
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev35, align 8
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %clk = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 11
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call37, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end43, label %do.body46

do.end43:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

do.body46:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_probe, %do.end57)) #9
          to label %if.then52 [label %do.end57], !srcloc !208

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_probe.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %31) #9
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body46
  %call58 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call60 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call58) #9
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 10
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call60, ptr %regs, align 8
  %cmp.i288 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.then63, label %do.body67

if.then63:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call60 to i32
  br label %cleanup

do.body67:                                        ; preds = %do.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_probe.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_probe, %do.end86)) #9
          to label %if.then81 [label %do.end86], !srcloc !208

if.then81:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_probe.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %35, ptr noundef %call58) #9
  br label %do.end86

do.end86:                                         ; preds = %if.then81, %do.body67
  %algo_data = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 3
  %36 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %algo_data, align 4
  %dev90 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 9
  %parent = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 9, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %parent, align 8
  %38 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev35, align 8
  %call.i.i289 = tail call ptr @devm_pinctrl_get(ptr noundef %39) #9
  %cmp.i.i.i = icmp ugt ptr %call.i.i289, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end86.devm_pinctrl_get_select_default.exit_crit_edge, label %if.end.i.i

do.end86.devm_pinctrl_get_select_default.exit_crit_edge: ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select_default.exit

if.end.i.i:                                       ; preds = %do.end86
  %call2.i.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call.i.i289, ptr noundef nonnull @.str.68) #9
  %cmp.i1.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i.i, label %if.then4.i.i, label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i289) #9
  br label %devm_pinctrl_get_select_default.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = tail call i32 @pinctrl_select_state(ptr noundef %call.i.i289, ptr noundef %call2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i290 = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i290, label %if.then8.i.i, label %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge

if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_pinctrl_get_select_default.exit

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_pinctrl_put(ptr noundef %call.i.i289) #9
  %40 = inttoptr i32 %call7.i.i to ptr
  br label %devm_pinctrl_get_select_default.exit

devm_pinctrl_get_select_default.exit:             ; preds = %if.then8.i.i, %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge, %if.then4.i.i, %do.end86.devm_pinctrl_get_select_default.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call2.i.i, %if.then4.i.i ], [ %40, %if.then8.i.i ], [ %call.i.i289, %do.end86.devm_pinctrl_get_select_default.exit_crit_edge ], [ %call.i.i289, %if.end6.i.i.devm_pinctrl_get_select_default.exit_crit_edge ]
  %pctrl = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %pctrl to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i.i, ptr %pctrl, align 4
  %42 = ptrtoint ptr %pdata13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata13, align 8
  %cfg_gpio = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg_gpio, align 4
  %tobool94.not = icmp eq ptr %45, null
  br i1 %tobool94.not, label %if.else100, label %if.then95

if.then95:                                        ; preds = %devm_pinctrl_get_select_default.exit
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev35, align 8
  %add.ptr = getelementptr i8, ptr %47, i32 -16
  tail call void %45(ptr noundef %add.ptr) #9
  br label %if.end107

if.else100:                                       ; preds = %devm_pinctrl_get_select_default.exit
  %cmp.i291 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %land.lhs.true, label %if.else100.if.end107_crit_edge

if.else100.if.end107_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

land.lhs.true:                                    ; preds = %if.else100
  %48 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %quirks, align 4
  %and.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i292 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i292, label %for.cond.preheader.i, label %land.lhs.true.if.end107_crit_edge

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

for.cond.preheader.i:                             ; preds = %land.lhs.true
  %50 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev35, align 8
  %call.i294 = tail call ptr @devm_gpiod_get_index(ptr noundef %51, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %arrayidx.i = getelementptr %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 15, i32 0
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i294, ptr %arrayidx.i, align 4
  %cmp.i.i295 = icmp ugt ptr %call.i294, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i295, label %for.cond.preheader.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge, label %for.inc.i

for.cond.preheader.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_i2c_parse_dt_gpio.exit

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %53 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev35, align 8
  %call.1.i = tail call ptr @devm_gpiod_get_index(ptr noundef %54, ptr noundef null, i32 noundef 1, i32 noundef 0) #9
  %arrayidx.1.i = getelementptr %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 15, i32 1
  %55 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge, label %for.inc.i.if.end107_crit_edge

for.inc.i.if.end107_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

for.inc.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_i2c_parse_dt_gpio.exit

s3c24xx_i2c_parse_dt_gpio.exit:                   ; preds = %for.inc.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge, %for.cond.preheader.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge
  %i.017.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge ], [ 1, %for.inc.i.s3c24xx_i2c_parse_dt_gpio.exit_crit_edge ]
  %56 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.69, i32 noundef %i.017.lcssa.i) #12
  br label %cleanup

if.end107:                                        ; preds = %for.inc.i.if.end107_crit_edge, %land.lhs.true.if.end107_crit_edge, %if.else100.if.end107_crit_edge, %if.then95
  %58 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk, align 4
  %call.i297 = tail call i32 @clk_prepare(ptr noundef %59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool.not.i298 = icmp eq i32 %call.i297, 0
  br i1 %tobool.not.i298, label %if.end.i299, label %if.end107.do.end114_crit_edge

if.end107.do.end114_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end114

if.end.i299:                                      ; preds = %if.end107
  %call1.i = tail call i32 @clk_enable(ptr noundef %59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end116, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %59) #9
  br label %do.end114

do.end114:                                        ; preds = %if.then3.i, %if.end107.do.end114_crit_edge
  %retval.0.i300.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i297, %if.end107.do.end114_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end116:                                        ; preds = %if.end.i299
  %call117 = tail call fastcc i32 @s3c24xx_i2c_init(ptr noundef nonnull %call.i)
  %60 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp.not = icmp eq i32 %call117, 0
  br i1 %cmp.not, label %if.end125, label %do.end122

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  %62 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %63) #9
  br label %cleanup

if.end125:                                        ; preds = %if.end116
  %64 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %quirks, align 4
  %and = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool127.not = icmp eq i32 %and, 0
  br i1 %tobool127.not, label %if.then128, label %if.end125.if.end152_crit_edge

if.end125.if.end152_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then128:                                       ; preds = %if.end125
  %call129 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 7
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call129, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end134, label %if.end137

do.end134:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %68) #9
  br label %cleanup

if.end137:                                        ; preds = %if.then128
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i301 = icmp eq ptr %70, null
  br i1 %tobool.not.i301, label %if.end.i302, label %if.end137.dev_name.exit_crit_edge

if.end137.dev_name.exit_crit_edge:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i302:                                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i302, %if.end137.dev_name.exit_crit_edge
  %retval.0.i303 = phi ptr [ %72, %if.end.i302 ], [ %70, %if.end137.dev_name.exit_crit_edge ]
  %call.i304 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call129, ptr noundef nonnull @s3c24xx_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i303, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %cmp143.not = icmp eq i32 %call.i304, 0
  br i1 %cmp143.not, label %dev_name.exit.if.end152_crit_edge, label %do.end147

dev_name.exit.if.end152_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.end147:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %74) #12
  %75 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %76) #9
  br label %cleanup

if.end152:                                        ; preds = %dev_name.exit.if.end152_crit_edge, %if.end125.if.end152_crit_edge
  %77 = ptrtoint ptr %pdata13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdata13, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %nr = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 11
  %81 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %nr, align 4
  %82 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node, align 8
  %of_node168 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 9, i32 27
  %84 = ptrtoint ptr %of_node168 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %of_node168, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call171 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %if.then173, label %do.end179

if.then173:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %86 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %87) #9
  br label %cleanup

do.end179:                                        ; preds = %if.end152
  %init_name.i305 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %call.i, i32 0, i32 13, i32 9, i32 3
  %88 = ptrtoint ptr %init_name.i305 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init_name.i305, align 8
  %tobool.not.i306 = icmp eq ptr %89, null
  br i1 %tobool.not.i306, label %if.end.i307, label %do.end179.dev_name.exit309_crit_edge

do.end179.dev_name.exit309_crit_edge:             ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit309

if.end.i307:                                      ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev90, align 4
  br label %dev_name.exit309

dev_name.exit309:                                 ; preds = %if.end.i307, %do.end179.dev_name.exit309_crit_edge
  %retval.0.i308 = phi ptr [ %91, %if.end.i307 ], [ %89, %do.end179.dev_name.exit309_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i308) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit309, %if.then173, %do.end147, %do.end134, %do.end122, %do.end114, %s3c24xx_i2c_parse_dt_gpio.exit, %if.then63, %do.end43, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -2, %do.end43 ], [ %33, %if.then63 ], [ %retval.0.i300.ph, %do.end114 ], [ %call117, %do.end122 ], [ %call171, %if.then173 ], [ 0, %dev_name.exit309 ], [ %call129, %do.end134 ], [ %call.i304, %do.end147 ], [ -22, %do.end ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -22, %s3c24xx_i2c_parse_dt_gpio.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %adap = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 13
  tail call void @i2c_del_adapter(ptr noundef %adap) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c24xx_i2c_init(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #9
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freq, align 4, !annotation !209
  %pdata1 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 14
  %1 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  tail call void @arm_heavy_mb() #9
  %slave_addr = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slave_addr, align 4
  %conv = trunc i32 %4 to i8
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #9, !srcloc !211
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #9, !srcloc !213
  %call = call fastcc i32 @s3c24xx_i2c_clockrate(ptr noundef %i2c, ptr noundef nonnull %freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  br i1 %cmp.not, label %do.end23, label %do.end19

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.74) #12
  br label %cleanup

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.77, i32 noundef %18) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_init.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_init, %cleanup)) #9
          to label %if.then30 [label %cleanup], !srcloc !208

if.then30:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !215
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_init.__UNIQUE_ID_ddebug319, ptr noundef %20, ptr noundef nonnull @.str.79, i32 noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.end23, %do.end19
  %retval.0 = phi i32 [ -22, %do.end19 ], [ 0, %if.then30 ], [ 0, %do.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !215
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %dev_id, i32 0, i32 12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.47) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.s3c24xx_i2c, ptr %dev_id, i32 0, i32 8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body4, label %if.end29

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_irq.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_irq, %do.end15)) #9
          to label %if.then11 [label %do.end15], !srcloc !208

if.then11:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %dev_id, i32 0, i32 12
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_irq.__UNIQUE_ID_ddebug311, ptr noundef %9, ptr noundef nonnull @.str.85) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %13 = and i32 %12, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !213
  br label %out

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @i2c_s3c_irq_nextbyte(ptr noundef %dev_id, i32 noundef %3)
  br label %out

out:                                              ; preds = %if.end29, %do.end15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %clk = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 8
  %4 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27 = icmp sgt i32 %5, 0
  br i1 %cmp27, label %for.body.lr.ph, label %for.cond.preheader.cleanup.sink.split_crit_edge

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %retry.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @s3c24xx_i2c_doxfer(ptr noundef %1, ptr noundef %msgs, i32 noundef %num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, -11
  br i1 %cmp2.not, label %do.body, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_xfer.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_xfer, %do.end)) #9
          to label %if.then11 [label %do.end], !srcloc !208

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_xfer.__UNIQUE_ID_ddebug316, ptr noundef %7, ptr noundef nonnull @.str.39, i32 noundef %retry.028) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #9
  %inc = add nuw nsw i32 %retry.028, 1
  %9 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retries, align 8
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %do.end.for.body_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.sink.split:                               ; preds = %do.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -121, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ %call1, %for.body.cleanup.sink.split_crit_edge ], [ -121, %do.end.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c24xx_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268402717
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c24xx_i2c_doxfer(ptr noundef %i2c, ptr noundef %msgs, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec3.i = phi i32 [ 399, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 1) #9
  %dec.i = add nsw i32 %dec3.i, -1
  %cmp.not.i = icmp eq i32 %dec3.i, 0
  br i1 %cmp.not.i, label %do.end, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef -110) #12
  br label %out

if.end:                                           ; preds = %while.body.i
  %msg = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 2
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msgs, ptr %msg, align 8
  %msg_num = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 3
  %7 = ptrtoint ptr %msg_num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num, ptr %msg_num, align 4
  %msg_ptr = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 5
  %8 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %msg_ptr, align 4
  %msg_idx = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 4
  %9 = ptrtoint ptr %msg_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msg_idx, align 8
  %state = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 8
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 8
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @arm_heavy_mb() #9
  %14 = or i32 %13, 536870912
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !213
  tail call fastcc void @s3c24xx_i2c_message_start(ptr noundef %i2c, ptr noundef %msgs)
  %quirks = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 1
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks, align 4
  %and = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then1

if.then1:                                         ; preds = %if.end
  %19 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %num)
  %cmp3.not = icmp eq i32 %20, %num
  br i1 %cmp3.not, label %if.then1.out_crit_edge, label %do.body5

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_doxfer, %out)) #9
          to label %if.then11 [label %out], !srcloc !208

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %21 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug313, ptr noundef %22, ptr noundef nonnull @.str.42, i32 noundef %20) #9
  br label %out

if.end17:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 721) #9
  %23 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25 = icmp eq i32 %24, 0
  br i1 %cmp25, label %if.end17.if.else.sink.split_crit_edge, label %if.then37

if.end17.if.else.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.sink.split

if.then37:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call39179 = call i32 @prepare_to_wait_event(ptr noundef %i2c, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %26 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp42180 = icmp eq i32 %27, 0
  br i1 %cmp42180, label %if.end63.thread183, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  br label %cleanup

if.end63.thread183:                               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %i2c, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.else.sink.split

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %__ret38.1181 = phi i32 [ %__ret38.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then37.cleanup_crit_edge ]
  %call60 = call i32 @schedule_timeout(i32 noundef %__ret38.1181) #9
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %i2c, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %28 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp42 = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool46.not = icmp eq i32 %call60, 0
  %30 = select i1 %cmp42, i1 %tobool46.not, i1 false
  %__ret38.1 = select i1 %30, i32 1, i32 %call60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %tobool52.not = icmp eq i32 %__ret38.1, 0
  %31 = select i1 %cmp42, i1 true, i1 %tobool52.not
  br i1 %31, label %if.end63, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %phi.cmp = icmp eq i32 %__ret38.1, 0
  call void @finish_wait(ptr noundef %i2c, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  %32 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_idx, align 8
  br i1 %phi.cmp, label %do.body68, label %if.end63.if.else_crit_edge

if.end63.if.else_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_doxfer, %if.end109)) #9
          to label %if.then82 [label %if.end109], !srcloc !208

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %dev83 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %34 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev83, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug314, ptr noundef %35, ptr noundef nonnull @.str.43) #9
  br label %if.end109

if.else.sink.split:                               ; preds = %if.end63.thread183, %if.end17.if.else.sink.split_crit_edge
  %36 = ptrtoint ptr %msg_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_idx, align 8
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %if.end63.if.else_crit_edge
  %38 = phi i32 [ %33, %if.end63.if.else_crit_edge ], [ %37, %if.else.sink.split ]
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %num)
  %cmp87.not = icmp eq i32 %38, %num
  br i1 %cmp87.not, label %if.else.if.end109_crit_edge, label %do.body89

if.else.if.end109_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.body89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_doxfer, %if.end109)) #9
          to label %if.then103 [label %if.end109], !srcloc !208

if.then103:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  %dev104 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %39 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev104, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug315, ptr noundef %40, ptr noundef nonnull @.str.42, i32 noundef %38) #9
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %do.body89, %if.else.if.end109_crit_edge, %if.then82, %do.body68
  %41 = phi i32 [ %num, %if.else.if.end109_crit_edge ], [ %38, %if.then103 ], [ %33, %if.then82 ], [ %33, %do.body68 ], [ %38, %do.body89 ]
  %42 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %quirks, align 4
  %and111 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end109.out_crit_edge

if.end109.out_crit_edge:                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end114:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @s3c24xx_i2c_wait_idle(ptr noundef %i2c)
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr.i167 = getelementptr i8, ptr %45, i32 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #9, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  %47 = and i32 %46, -268435457
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %49, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %47) #9, !srcloc !213
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !215
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  %53 = and i32 %52, 1342177279
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #9, !srcloc !213
  br label %out

out:                                              ; preds = %if.end114, %if.end109.out_crit_edge, %if.then11, %do.body5, %if.then1.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -11, %do.end ], [ %20, %if.then11 ], [ %num, %if.then1.out_crit_edge ], [ %41, %if.end109.out_crit_edge ], [ %41, %if.end114 ], [ %20, %do.body5 ]
  %state115 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 8
  %56 = ptrtoint ptr %state115 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %state115, align 8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_i2c_message_start(ptr noundef %i2c, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg, align 4
  %2 = shl i16 %1, 1
  %3 = and i16 %2, 254
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %stat.0 = select i1 %tobool.not, i32 208, i32 144
  %7 = or i16 %6, %3
  %8 = lshr i16 %5, 13
  %.lobit = and i16 %8, 1
  %addr.1121 = xor i16 %7, %.lobit
  %regs.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %12 = or i32 %11, -2147483648
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !213
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !215
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %19 = shl nuw i32 %stat.0, 24
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr15 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %19) #9, !srcloc !213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_message_start, %do.body27)) #9
          to label %if.then23 [label %do.body27], !srcloc !208

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr.1 = zext i16 %addr.1121 to i32
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug302, ptr noundef %23, ptr noundef nonnull @.str.45, i32 noundef %stat.0, i32 noundef %addr.1) #9
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  tail call void @arm_heavy_mb() #9
  %conv30 = trunc i16 %addr.1121 to i8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 8
  %add.ptr32 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %conv30) #9, !srcloc !211
  %tx_setup = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 6
  %26 = ptrtoint ptr %tx_setup to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_setup, align 8
  %sub.i = add i32 %27, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %div.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_message_start, %do.body52)) #9
          to label %if.then47 [label %do.body52], !srcloc !208

if.then47:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %dev48 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %29 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev48, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug303, ptr noundef %30, ptr noundef nonnull @.str.46, i32 noundef %18) #9
  br label %do.body52

do.body52:                                        ; preds = %if.then47, %do.body27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %17) #9, !srcloc !213
  %or57 = or i32 %stat.0, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void @arm_heavy_mb() #9
  %33 = shl nuw i32 %or57, 24
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr62 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %33) #9, !srcloc !213
  %quirks = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 1
  %36 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks, align 4
  %and63 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body52.if.end85_crit_edge, label %while.cond.preheader

do.body52.if.end85_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

while.cond.preheader:                             ; preds = %do.body52
  %msg_num = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 3
  %38 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not122 = icmp eq i32 %39, 0
  br i1 %cmp.not122, label %while.cond.preheader.if.end85_crit_edge, label %for.body.i.preheader.lr.ph

while.cond.preheader.if.end85_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

for.body.i.preheader.lr.ph:                       ; preds = %while.cond.preheader
  %dev83 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end84.for.body.i.preheader_crit_edge, %for.body.i.preheader.lr.ph
  %stat.1123 = phi i32 [ %or57, %for.body.i.preheader.lr.ph ], [ %53, %if.end84.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.body.i.preheader
  %tries.019.i = phi i32 [ %dec.i, %if.end13.i.for.body.i_crit_edge ], [ 50, %for.body.i.preheader ]
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  %43 = and i32 %42, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool2.not.i = icmp eq i32 %43, 0
  br i1 %tobool2.not.i, label %for.body.i.if.end13.i_crit_edge, label %if.then.i

for.body.i.if.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then.i:                                        ; preds = %for.body.i
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool11.not.i = icmp eq i32 %47, 0
  br i1 %tobool11.not.i, label %while.body, label %if.then.i.if.end13.i_crit_edge

if.then.i.if.end13.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i.if.end13.i_crit_edge, %for.body.i.if.end13.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %dec.i = add nsw i32 %tries.019.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %is_ack.exit, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

is_ack.exit:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev83, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.48) #12
  br label %if.end85

while.body:                                       ; preds = %if.then.i
  tail call fastcc void @i2c_s3c_irq_nextbyte(ptr noundef %i2c, i32 noundef %stat.1123)
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %add.ptr73 = getelementptr i8, ptr %51, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #9, !srcloc !215
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  %and77 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %while.body.if.end84_crit_edge, label %do.end82

while.body.if.end84_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

do.end82:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev83, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.47) #12
  br label %if.end84

if.end84:                                         ; preds = %do.end82, %while.body.if.end84_crit_edge
  %56 = ptrtoint ptr %msg_num to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_num, align 4
  %cmp.not = icmp eq i32 %57, 0
  br i1 %cmp.not, label %if.end84.if.end85_crit_edge, label %if.end84.for.body.i.preheader_crit_edge

if.end84.for.body.i.preheader_crit_edge:          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

if.end84.if.end85_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85:                                         ; preds = %if.end84.if.end85_crit_edge, %is_ack.exit, %while.cond.preheader.if.end85_crit_edge, %do.body52.if.end85_crit_edge
  ret void
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_i2c_wait_idle(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_wait_idle.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_wait_idle, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_wait_idle.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.65) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i64 @ktime_get() #9
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not64 = icmp eq i32 %5, 0
  br i1 %tobool8.not64, label %do.end.if.end52_crit_edge, label %land.rhs.preheader

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.rhs.preheader:                               ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !239
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr22 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !215
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.rhs.preheader.while.end_crit_edge, label %land.rhs.1

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.1:                                       ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !239
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr22.1 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.1) #9, !srcloc !215
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  br label %while.end

while.end:                                        ; preds = %land.rhs.1, %land.rhs.preheader.while.end_crit_edge
  %iicstat.0.lcssa.ph = phi i32 [ %9, %land.rhs.preheader.while.end_crit_edge ], [ %13, %land.rhs.1 ]
  %.pre = and i32 %iicstat.0.lcssa.ph, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool28.not69 = icmp eq i32 %.pre, 0
  br i1 %tobool28.not69, label %while.end.if.end52_crit_edge, label %while.end.land.rhs29_crit_edge

while.end.land.rhs29_crit_edge:                   ; preds = %while.end
  br label %land.rhs29

while.end.if.end52_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.rhs29:                                       ; preds = %while.body32.land.rhs29_crit_edge, %while.end.land.rhs29_crit_edge
  %now.071 = phi i64 [ %call36, %while.body32.land.rhs29_crit_edge ], [ %call4, %while.end.land.rhs29_crit_edge ]
  %delay.070 = phi i32 [ %spec.select, %while.body32.land.rhs29_crit_edge ], [ 1, %while.end.land.rhs29_crit_edge ]
  %sub.i = sub i64 %now.071, %call4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %14, i32 0) #13, !srcloc !241
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %14, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !242
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %16, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 5000, i64 %cond213.i.i.i)
  %cmp = icmp slt i64 %cond213.i.i.i, 5000
  br i1 %cmp, label %while.body32, label %do.end50.critedge

while.body32:                                     ; preds = %land.rhs29
  %mul = shl i32 %delay.070, 1
  tail call void @usleep_range_state(i32 noundef %delay.070, i32 noundef %mul, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %delay.070)
  %cmp33 = icmp ult i32 %delay.070, 500
  %spec.select = select i1 %cmp33, i32 %mul, i32 %delay.070
  %call36 = tail call i64 @ktime_get() #9
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr40 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %20 = and i32 %19, 536870912
  %tobool28.not = icmp eq i32 %20, 0
  br i1 %tobool28.not, label %while.body32.if.end52_crit_edge, label %while.body32.land.rhs29_crit_edge

while.body32.land.rhs29_crit_edge:                ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs29

while.body32.if.end52_crit_edge:                  ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end50.critedge:                                ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #11
  %dev51 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %21 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev51, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.66) #12
  br label %if.end52

if.end52:                                         ; preds = %do.end50.critedge, %while.body32.if.end52_crit_edge, %while.end.if.end52_crit_edge, %do.end.if.end52_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_s3c_irq_nextbyte(ptr noundef %i2c, i32 noundef %iicstat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.out_ack_crit_edge [
    i32 0, label %do.end
    i32 4, label %do.end4
    i32 1, label %sw.bb6
    i32 3, label %entry.sw.bb42_crit_edge
    i32 2, label %sw.bb145
  ]

entry.out_ack_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ack

entry.sw.bb42_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i32 %iicstat, 1
  br label %sw.bb42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #12
  br label %out

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51) #12
  tail call fastcc void @s3c24xx_i2c_disable_irq(ptr noundef %i2c)
  br label %out_ack

sw.bb6:                                           ; preds = %entry
  %and = and i32 %iicstat, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb6.if.end19_crit_edge, label %land.lhs.true

sw.bb6.if.end19_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %sw.bb6
  %msg = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 2
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %do.body9, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body9:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_s3c_irq_nextbyte, %do.end18)) #9
          to label %if.then15 [label %do.end18], !srcloc !208

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %12 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug305, ptr noundef %13, ptr noundef nonnull @.str.48) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body9
  tail call fastcc void @s3c24xx_i2c_stop(ptr noundef %i2c, i32 noundef -6)
  br label %out_ack

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %sw.bb6.if.end19_crit_edge
  %msg20 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 2
  %14 = ptrtoint ptr %msg20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msg20, align 8
  %flags21 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags21 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags21, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool24.not = icmp eq i16 %18, 0
  %. = select i1 %tobool24.not, i32 3, i32 2
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %., ptr %state, align 8
  %msg_idx.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 4
  %20 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_idx.i, align 8
  %msg_num.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 3
  %22 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_num.i, align 4
  %sub.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %sub.i)
  %cmp.i.not = icmp ult i32 %21, %sub.i
  br i1 %cmp.i.not, label %if.end19.if.end36_crit_edge, label %land.lhs.true31

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true31:                                  ; preds = %if.end19
  %len = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp = icmp eq i16 %25, 0
  br i1 %cmp, label %if.then35, label %land.lhs.true31.if.end36_crit_edge

land.lhs.true31.if.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s3c24xx_i2c_stop(ptr noundef %i2c, i32 noundef 0)
  br label %out_ack

if.end36:                                         ; preds = %land.lhs.true31.if.end36_crit_edge, %if.end19.if.end36_crit_edge
  br i1 %tobool24.not, label %if.end36.sw.bb42_crit_edge, label %if.end36.prepare_read_crit_edge

if.end36.prepare_read_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepare_read

if.end36.sw.bb42_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42

sw.bb42:                                          ; preds = %if.end36.sw.bb42_crit_edge, %entry.sw.bb42_crit_edge
  %and49.pre-phi = phi i32 [ %.pre, %entry.sw.bb42_crit_edge ], [ %and, %if.end36.sw.bb42_crit_edge ]
  %msg43 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 2
  %26 = ptrtoint ptr %msg43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg43, align 8
  %flags44 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %flags44 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags44, align 2
  %30 = and i16 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool47.not = icmp ne i16 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.pre-phi)
  %tobool50.not = icmp eq i32 %and49.pre-phi, 0
  %or.cond = or i1 %tobool50.not, %tobool47.not
  br i1 %or.cond, label %retry_write.preheader, label %do.body52

retry_write.preheader:                            ; preds = %sw.bb42
  %msg_ptr.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 5
  %msg_idx.i20 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 4
  %msg_num.i21 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 3
  %dev99 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  br label %retry_write

do.body52:                                        ; preds = %sw.bb42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_s3c_irq_nextbyte, %do.end70)) #9
          to label %if.then66 [label %do.end70], !srcloc !208

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %dev67 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %31 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev67, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug306, ptr noundef %32, ptr noundef nonnull @.str.55) #9
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body52
  tail call fastcc void @s3c24xx_i2c_stop(ptr noundef %i2c, i32 noundef -111)
  br label %out_ack

retry_write:                                      ; preds = %if.then111.retry_write_crit_edge, %retry_write.preheader
  %33 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_ptr.i, align 4
  %35 = ptrtoint ptr %msg43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %msg43, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len.i, align 4
  %conv.i16 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i16)
  %cmp.i17.not = icmp ult i32 %34, %conv.i16
  br i1 %cmp.i17.not, label %if.then75, label %if.else80

if.then75:                                        ; preds = %retry_write
  call void @__sanitizer_cov_trace_pc() #11
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  %inc = add nuw i32 %34, 1
  %41 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc, ptr %msg_ptr.i, align 4
  %arrayidx = getelementptr i8, ptr %40, i32 %34
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %43) #9, !srcloc !211
  %tx_setup = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 6
  %46 = ptrtoint ptr %tx_setup to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_setup, align 8
  %sub.i18 = add i32 %47, 999
  %div.i = udiv i32 %sub.i18, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %48(i32 noundef %div.i) #9
  br label %out_ack

if.else80:                                        ; preds = %retry_write
  %49 = ptrtoint ptr %msg_idx.i20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_idx.i20, align 8
  %51 = ptrtoint ptr %msg_num.i21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_num.i21, align 4
  %sub.i22 = add i32 %52, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub.i22)
  %cmp.i23.not = icmp ult i32 %50, %sub.i22
  br i1 %cmp.i23.not, label %do.body84, label %if.else142

do.body84:                                        ; preds = %if.else80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_s3c_irq_nextbyte, %do.end102)) #9
          to label %if.then98 [label %do.end102], !srcloc !208

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev99, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug307, ptr noundef %54, ptr noundef nonnull @.str.56) #9
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %do.body84
  %55 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %msg_ptr.i, align 4
  %56 = ptrtoint ptr %msg_idx.i20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_idx.i20, align 8
  %inc104 = add i32 %57, 1
  store i32 %inc104, ptr %msg_idx.i20, align 8
  %58 = ptrtoint ptr %msg43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %msg43, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %59, i32 1
  store ptr %incdec.ptr, ptr %msg43, align 8
  %flags107 = getelementptr %struct.i2c_msg, ptr %59, i32 1, i32 1
  %60 = ptrtoint ptr %flags107 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags107, align 2
  %conv108 = zext i16 %61 to i32
  %and109 = and i32 %conv108, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.else138, label %if.then111

if.then111:                                       ; preds = %do.end102
  %and115 = and i32 %conv108, 1
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.then111.retry_write_crit_edge, label %do.body118

if.then111.retry_write_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry_write

do.body118:                                       ; preds = %if.then111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_s3c_irq_nextbyte, %do.end136)) #9
          to label %if.then132 [label %do.end136], !srcloc !208

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev99, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug308, ptr noundef %63, ptr noundef nonnull @.str.57) #9
  br label %do.end136

do.end136:                                        ; preds = %if.then132, %do.body118
  tail call fastcc void @s3c24xx_i2c_stop(ptr noundef %i2c, i32 noundef -22)
  br label %out_ack

if.else138:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s3c24xx_i2c_message_start(ptr noundef %i2c, ptr noundef %incdec.ptr)
  %64 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %state, align 8
  br label %out_ack

if.else142:                                       ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s3c24xx_i2c_stop(ptr noundef %i2c, i32 noundef 0)
  br label %out_ack

sw.bb145:                                         ; preds = %entry
  %regs146 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %65 = ptrtoint ptr %regs146 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs146, align 8
  %add.ptr147 = getelementptr i8, ptr %66, i32 12
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr147) #9, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  %msg151 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 2
  %68 = ptrtoint ptr %msg151 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %msg151, align 8
  %buf152 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %buf152 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf152, align 4
  %msg_ptr153 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 5
  %72 = ptrtoint ptr %msg_ptr153 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_ptr153, align 4
  %inc154 = add i32 %73, 1
  store i32 %inc154, ptr %msg_ptr153, align 4
  %arrayidx155 = getelementptr i8, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %67, ptr %arrayidx155, align 1
  %75 = load ptr, ptr %msg151, align 8
  %flags157 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %flags157 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags157, align 2
  %78 = and i16 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool160.not = icmp eq i16 %78, 0
  br i1 %tobool160.not, label %sw.bb145.prepare_read_crit_edge, label %land.lhs.true161

sw.bb145.prepare_read_crit_edge:                  ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepare_read

land.lhs.true161:                                 ; preds = %sw.bb145
  %len163 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 2
  %79 = ptrtoint ptr %len163 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %len163, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %80)
  %cmp165 = icmp eq i16 %80, 1
  br i1 %cmp165, label %if.then167, label %land.lhs.true161.prepare_read_crit_edge

land.lhs.true161.prepare_read_crit_edge:          ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepare_read

if.then167:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #11
  %conv168 = zext i8 %67 to i16
  %add = add nuw nsw i16 %conv168, 1
  %81 = ptrtoint ptr %len163 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %add, ptr %len163, align 4
  br label %prepare_read

prepare_read:                                     ; preds = %if.then167, %land.lhs.true161.prepare_read_crit_edge, %sw.bb145.prepare_read_crit_edge, %if.end36.prepare_read_crit_edge
  %msg.i25 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 2
  %82 = ptrtoint ptr %msg.i25 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %msg.i25, align 8
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %flags.i, align 2
  %86 = and i16 %85, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool.not.i = icmp eq i16 %86, 0
  br i1 %tobool.not.i, label %prepare_read.is_msglast.exit_crit_edge, label %land.lhs.true.i

prepare_read.is_msglast.exit_crit_edge:           ; preds = %prepare_read
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_msglast.exit

land.lhs.true.i:                                  ; preds = %prepare_read
  %len.i26 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 2
  %87 = ptrtoint ptr %len.i26 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %len.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %88)
  %cmp.i27 = icmp eq i16 %88, 1
  br i1 %cmp.i27, label %land.lhs.true.i.if.else181_crit_edge, label %land.lhs.true.i.is_msglast.exit_crit_edge

land.lhs.true.i.is_msglast.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_msglast.exit

land.lhs.true.i.if.else181_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else181

is_msglast.exit:                                  ; preds = %land.lhs.true.i.is_msglast.exit_crit_edge, %prepare_read.is_msglast.exit_crit_edge
  %msg_ptr.i28 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 5
  %89 = ptrtoint ptr %msg_ptr.i28 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_ptr.i28, align 4
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 2
  %91 = ptrtoint ptr %len5.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %len5.i, align 4
  %conv6.i = zext i16 %92 to i32
  %sub.i29 = add nsw i32 %conv6.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %sub.i29)
  %cmp7.i.not = icmp eq i32 %90, %sub.i29
  br i1 %cmp7.i.not, label %if.then176, label %is_msglast.exit.if.else181_crit_edge

is_msglast.exit.if.else181_crit_edge:             ; preds = %is_msglast.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else181

if.then176:                                       ; preds = %is_msglast.exit
  %msg_idx.i31 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 4
  %93 = ptrtoint ptr %msg_idx.i31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %msg_idx.i31, align 8
  %msg_num.i32 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 3
  %95 = ptrtoint ptr %msg_num.i32 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_num.i32, align 4
  %sub.i33 = add i32 %96, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %sub.i33)
  %cmp.i34.not = icmp ult i32 %94, %sub.i33
  br i1 %cmp.i34.not, label %if.then176.out_ack_crit_edge, label %if.then179

if.then176.out_ack_crit_edge:                     ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ack

if.then179:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 8
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  tail call void @arm_heavy_mb() #9
  %100 = and i32 %99, 2147483647
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #9, !srcloc !213
  br label %out_ack

if.else181:                                       ; preds = %is_msglast.exit.if.else181_crit_edge, %land.lhs.true.i.if.else181_crit_edge
  %msg_ptr.i36 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 5
  %103 = ptrtoint ptr %msg_ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_ptr.i36, align 4
  %len.i38 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 2
  %105 = ptrtoint ptr %len.i38 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %len.i38, align 4
  %conv.i39 = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv.i39)
  %cmp.i40.not = icmp ult i32 %104, %conv.i39
  br i1 %cmp.i40.not, label %if.else181.out_ack_crit_edge, label %if.then184

if.else181.out_ack_crit_edge:                     ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ack

if.then184:                                       ; preds = %if.else181
  %msg_idx.i42 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 4
  %107 = ptrtoint ptr %msg_idx.i42 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %msg_idx.i42, align 8
  %msg_num.i43 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 3
  %109 = ptrtoint ptr %msg_num.i43 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %msg_num.i43, align 4
  %sub.i44 = add i32 %110, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %sub.i44)
  %cmp.i45.not = icmp ult i32 %108, %sub.i44
  br i1 %cmp.i45.not, label %do.body208, label %do.body188

do.body188:                                       ; preds = %if.then184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_s3c_irq_nextbyte, %do.end206)) #9
          to label %if.then202 [label %do.end206], !srcloc !208

if.then202:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #11
  %dev203 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %111 = ptrtoint ptr %dev203 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev203, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug309, ptr noundef %112, ptr noundef nonnull @.str.58) #9
  br label %do.end206

do.end206:                                        ; preds = %if.then202, %do.body188
  tail call fastcc void @s3c24xx_i2c_stop(ptr noundef %i2c, i32 noundef 0)
  br label %out_ack

do.body208:                                       ; preds = %if.then184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_s3c_irq_nextbyte, %do.end226)) #9
          to label %if.then222 [label %do.end226], !srcloc !208

if.then222:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #11
  %dev223 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %113 = ptrtoint ptr %dev223 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev223, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug310, ptr noundef %114, ptr noundef nonnull @.str.59) #9
  br label %do.end226

do.end226:                                        ; preds = %if.then222, %do.body208
  %115 = ptrtoint ptr %msg_ptr.i36 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %msg_ptr.i36, align 4
  %116 = ptrtoint ptr %msg_idx.i42 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msg_idx.i42, align 8
  %inc229 = add i32 %117, 1
  store i32 %inc229, ptr %msg_idx.i42, align 8
  %118 = ptrtoint ptr %msg.i25 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %msg.i25, align 8
  %incdec.ptr231 = getelementptr %struct.i2c_msg, ptr %119, i32 1
  store ptr %incdec.ptr231, ptr %msg.i25, align 8
  br label %out_ack

out_ack:                                          ; preds = %do.end226, %do.end206, %if.else181.out_ack_crit_edge, %if.then179, %if.then176.out_ack_crit_edge, %if.else142, %if.else138, %do.end136, %if.then75, %do.end70, %if.then35, %do.end18, %do.end4, %entry.out_ack_crit_edge
  %regs237 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %120 = ptrtoint ptr %regs237 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs237, align 8
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  %123 = and i32 %122, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  %124 = ptrtoint ptr %regs237 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs237, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #9, !srcloc !213
  br label %out

out:                                              ; preds = %out_ack, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_i2c_disable_irq(ptr nocapture noundef readonly %i2c) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %3 = and i32 %2, -536870913
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !213
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_i2c_stop(ptr noundef %i2c, i32 noundef %ret) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !215
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_stop.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_stop, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_stop.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.61) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %quirks = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 1
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %iicstat.0.v = select i1 %tobool7.not, i32 -33, i32 -17
  %iicstat.0 = and i32 %iicstat.0.v, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %iicstat.0)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %8) #9, !srcloc !213
  %state = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 8
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_master_complete.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_stop, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !208

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_master_complete.__UNIQUE_ID_ddebug301, ptr noundef %13, ptr noundef nonnull @.str.63, i32 noundef %ret) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %msg_ptr.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 5
  %14 = ptrtoint ptr %msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_ptr.i, align 4
  %msg.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %msg.i, align 8
  %msg_idx.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 4
  %16 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_idx.i, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %msg_idx.i, align 8
  %msg_num.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 3
  %18 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %msg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool4.not.i = icmp eq i32 %ret, 0
  br i1 %tobool4.not.i, label %do.end.i.if.end7.i_crit_edge, label %if.then5.i

do.end.i.if.end7.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %msg_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %ret, ptr %msg_idx.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %do.end.i.if.end7.i_crit_edge
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 4
  %and.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end7.i.s3c24xx_i2c_master_complete.exit_crit_edge

if.end7.i.s3c24xx_i2c_master_complete.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s3c24xx_i2c_master_complete.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef %i2c, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %s3c24xx_i2c_master_complete.exit

s3c24xx_i2c_master_complete.exit:                 ; preds = %if.then9.i, %if.end7.i.s3c24xx_i2c_master_complete.exit_crit_edge
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %25 = and i32 %24, -536870913
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !213
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c24xx_i2c_clockrate(ptr nocapture noundef %i2c, ptr nocapture noundef writeonly %got) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 14
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 8
  %clk = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 11
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #9
  %clkrate = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 9
  %4 = ptrtoint ptr %clkrate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %clkrate, align 4
  %div = udiv i32 %call, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_clockrate, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %frequency = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug317, ptr noundef %6, ptr noundef nonnull @.str.81, i32 noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frequency6 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %frequency6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frequency6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  %.op = udiv i32 %10, 1000
  %div8 = select i1 %tobool7.not, i32 100, i32 %.op
  %div.i = udiv i32 %div, %div8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 256
  %..i = select i1 %cmp.i, i32 512, i32 16
  %sub.i = add nsw i32 %div.i, -1
  %add.i = add nsw i32 %sub.i, %..i
  %11 = select i1 %cmp.i, i32 9, i32 4
  %div221.i = lshr i32 %add.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %add.i)
  %cmp3.i = icmp ugt i32 %..i, %add.i
  %12 = tail call i32 @llvm.umin.i32(i32 %div221.i, i32 17) #9
  %13 = select i1 %cmp3.i, i32 1, i32 %12
  %mul.i = mul nuw nsw i32 %13, %..i
  %div9.i = udiv i32 %div, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.i, i32 %div8)
  %cmp = icmp ugt i32 %div9.i, %div8
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev14 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.82, i32 noundef %div8, i32 noundef %div9.i) #12
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %16 = ptrtoint ptr %got to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div9.i, ptr %got, align 4
  %regs = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 10
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  %20 = and i32 %19, -1325400065
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %sub = add nsw i32 %13, -1
  %or = or i32 %21, %sub
  %or21 = or i32 %or, 64
  %spec.select = select i1 %cmp.i, i32 %or21, i32 %or
  %quirks = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 1
  %22 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks, align 4
  %and23 = lshr i32 %23, 2
  %24 = and i32 %and23, 2
  %25 = or i32 %spec.select, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !213
  %29 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks, align 4
  %and34 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end15.cleanup_crit_edge, label %if.then36

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %if.end15
  %sda_delay37 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %sda_delay37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sda_delay37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool38.not = icmp eq i32 %32, 0
  br i1 %tobool38.not, label %if.then36.do.body51_crit_edge, label %if.then39

if.then36.do.body51_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %32, %div
  %sub41 = add i32 %mul, 999999
  %div42 = udiv i32 %sub41, 1000000
  %33 = trunc i32 %div42 to i16
  %div45.lhs.trunc = add nuw nsw i16 %33, 4
  %div45117 = udiv i16 %div45.lhs.trunc, 5
  %34 = tail call i16 @llvm.umin.i16(i16 %div45117, i16 3)
  %35 = or i16 %34, 4
  %or49 = zext i16 %35 to i32
  br label %do.body51

do.body51:                                        ; preds = %if.then39, %if.then36.do.body51_crit_edge
  %sda_delay.0 = phi i32 [ %or49, %if.then39 ], [ 0, %if.then36.do.body51_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_i2c_clockrate, %do.body70)) #9
          to label %if.then65 [label %do.body70], !srcloc !208

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %i2c, i32 0, i32 12
  %36 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev66, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug318, ptr noundef %37, ptr noundef nonnull @.str.83, i32 noundef %sda_delay.0) #9
  br label %do.body70

do.body70:                                        ; preds = %if.then65, %do.body51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %sda_delay.0)
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %add.ptr74 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %38) #9, !srcloc !213
  br label %cleanup

cleanup:                                          ; preds = %do.body70, %if.end15.cleanup_crit_edge, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ 0, %do.body70 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 13
  %lock_ops.i.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 13, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #9
  %locked_flags.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 13, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #9
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #9
  %sysreg = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %sysreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysreg, align 8
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sys_i2c_cfg = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 18
  %call3 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef 564, ptr noundef %sys_i2c_cfg) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sysreg = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %sysreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysreg, align 8
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sys_i2c_cfg = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %sys_i2c_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sys_i2c_cfg, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 564, i32 noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc i32 @s3c24xx_i2c_init(ptr noundef %1)
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  %adap = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 13
  %lock_ops.i.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock_ops.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %adap, i32 noundef 1) #9
  %locked_flags.i = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 13, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #9
  %14 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %17(ptr noundef %adap, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
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
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !90, !91, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !195, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__initcall__kmod_i2c_s3c2410__322_1260_i2c_adap_s3c_init4, !1, !"__initcall__kmod_i2c_s3c2410__322_1260_i2c_adap_s3c_init4", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1260, i32 1}
!2 = !{ptr @__exitcall_i2c_adap_s3c_exit, !3, !"__exitcall_i2c_adap_s3c_exit", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1266, i32 1}
!4 = !{ptr @__UNIQUE_ID_description323, !5, !"__UNIQUE_ID_description323", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1268, i32 1}
!6 = !{ptr @__UNIQUE_ID_author324, !7, !"__UNIQUE_ID_author324", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1269, i32 1}
!8 = !{ptr @__UNIQUE_ID_file325, !9, !"__UNIQUE_ID_file325", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1270, i32 1}
!10 = !{ptr @__UNIQUE_ID_license326, !9, !"__UNIQUE_ID_license326", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1250, i32 11}
!13 = !{ptr @s3c24xx_i2c_driver, !14, !"s3c24xx_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1245, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1059, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @s3c24xx_i2c_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @s3c24xx_i2c_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1079, i32 26}
!25 = !{ptr @s3c24xx_i2c_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1086, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1090, i32 38}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1092, i32 3}
!32 = !{ptr @s3c24xx_i2c_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @s3c24xx_i2c_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1096, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @s3c24xx_i2c_probe.__UNIQUE_ID_ddebug320, !35, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1105, i32 2}
!40 = !{ptr @s3c24xx_i2c_probe.__UNIQUE_ID_ddebug321, !39, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1122, i32 3}
!43 = !{ptr @s3c24xx_i2c_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @s3c24xx_i2c_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1129, i32 3}
!47 = !{ptr @s3c24xx_i2c_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @s3c24xx_i2c_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1141, i32 4}
!51 = !{ptr @s3c24xx_i2c_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @s3c24xx_i2c_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1149, i32 4}
!55 = !{ptr @s3c24xx_i2c_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @s3c24xx_i2c_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1157, i32 3}
!59 = !{ptr @s3c24xx_i2c_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @s3c24xx_i2c_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1183, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @s3c24xx_i2c_probe._entry.30, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @s3c24xx_i2c_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1024, i32 27}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1025, i32 27}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1026, i32 27}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1038, i32 4}
!74 = !{ptr @s3c24xx_i2c_algorithm, !75, !"s3c24xx_i2c_algorithm", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 789, i32 35}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 772, i32 3}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @s3c24xx_i2c_xfer.__UNIQUE_ID_ddebug316, !77, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 698, i32 3}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @s3c24xx_i2c_doxfer._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @s3c24xx_i2c_doxfer._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 716, i32 4}
!87 = !{ptr @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug313, !86, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 730, i32 3}
!90 = !{ptr @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug314, !89, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!91 = !{ptr @s3c24xx_i2c_doxfer.__UNIQUE_ID_ddebug315, !92, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 732, i32 3}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 263, i32 2}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug302, !94, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 272, i32 2}
!99 = !{ptr @s3c24xx_i2c_message_start.__UNIQUE_ID_ddebug303, !98, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 284, i32 5}
!102 = !{ptr @s3c24xx_i2c_message_start._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @s3c24xx_i2c_message_start._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 231, i32 2}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @is_ack._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @is_ack._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 393, i32 3}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @i2c_s3c_irq_nextbyte._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @i2c_s3c_irq_nextbyte._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 397, i32 3}
!116 = !{ptr @i2c_s3c_irq_nextbyte._entry.52, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @i2c_s3c_irq_nextbyte._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug305, !119, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!119 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 409, i32 4}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 443, i32 5}
!122 = !{ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug306, !121, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 468, i32 4}
!125 = !{ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug307, !124, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 483, i32 6}
!128 = !{ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug308, !127, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 528, i32 5}
!131 = !{ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug309, !130, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 533, i32 5}
!134 = !{ptr @i2c_s3c_irq_nextbyte.__UNIQUE_ID_ddebug310, !133, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 293, i32 2}
!137 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @s3c24xx_i2c_stop.__UNIQUE_ID_ddebug304, !136, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 172, i32 2}
!141 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @s3c24xx_i2c_master_complete.__UNIQUE_ID_ddebug301, !140, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 647, i32 2}
!145 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @s3c24xx_i2c_wait_idle.__UNIQUE_ID_ddebug312, !144, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 684, i32 3}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @s3c24xx_i2c_wait_idle._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @s3c24xx_i2c_wait_idle._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/pinctrl/consumer.h", i32 209, i32 38}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 959, i32 4}
!156 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @s3c24xx_i2c_parse_dt_gpio._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @s3c24xx_i2c_parse_dt_gpio._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 989, i32 2}
!161 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @s3c24xx_i2c_init._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @s3c24xx_i2c_init._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 997, i32 3}
!166 = !{ptr @s3c24xx_i2c_init._entry.73, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @s3c24xx_i2c_init._entry_ptr.75, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1003, i32 2}
!170 = !{ptr @s3c24xx_i2c_init._entry.76, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @s3c24xx_i2c_init._entry_ptr.78, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1004, i32 2}
!174 = !{ptr @s3c24xx_i2c_init.__UNIQUE_ID_ddebug319, !173, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 839, i32 2}
!177 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug317, !176, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 848, i32 3}
!181 = !{ptr @s3c24xx_i2c_clockrate._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @s3c24xx_i2c_clockrate._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 881, i32 3}
!185 = !{ptr @s3c24xx_i2c_clockrate.__UNIQUE_ID_ddebug318, !184, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 567, i32 3}
!188 = !{ptr @s3c24xx_i2c_irq._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @s3c24xx_i2c_irq._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 571, i32 3}
!192 = !{ptr @s3c24xx_i2c_irq.__UNIQUE_ID_ddebug311, !191, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!193 = !{ptr @s3c24xx_i2c_match, !194, !"s3c24xx_i2c_match", i1 false, i1 false}
!194 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 143, i32 34}
!195 = !{ptr @s3c24xx_i2c_dev_pm_ops, !196, !"s3c24xx_i2c_dev_pm_ops", i1 false, i1 false}
!196 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 1235, i32 32}
!197 = !{ptr @s3c24xx_driver_ids, !198, !"s3c24xx_driver_ids", i1 false, i1 false}
!198 = !{!"../drivers/i2c/busses/i2c-s3c2410.c", i32 126, i32 40}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{i64 2148721438, i64 2148721443, i64 2148721456, i64 2148721500, i64 2148721534, i64 2148721555}
!209 = !{!"auto-init"}
!210 = !{i64 2155983217}
!211 = !{i64 6852806}
!212 = !{i64 2155985116}
!213 = !{i64 6853003}
!214 = !{i64 2155985500}
!215 = !{i64 6853421}
!216 = !{i64 2155991917}
!217 = !{i64 2155945843}
!218 = !{i64 2155950302}
!219 = !{i64 2155950529}
!220 = !{i64 2155953153}
!221 = !{i64 2155907484}
!222 = !{i64 2155907722}
!223 = !{i64 2155951359}
!224 = !{i64 2155951586}
!225 = !{i64 2155952247}
!226 = !{i64 2155952492}
!227 = !{i64 2155905274}
!228 = !{i64 2155905512}
!229 = !{i64 2155911027}
!230 = !{i64 2155911246}
!231 = !{i64 2155914075}
!232 = !{i64 2155916592}
!233 = !{i64 2155917003}
!234 = !{i64 2155908416}
!235 = !{i64 2155908912}
!236 = !{i64 2155917676}
!237 = !{i64 2155955903}
!238 = !{i64 2155956187}
!239 = !{i64 2155956029}
!240 = !{i64 2155956674}
!241 = !{i64 1144613, i64 1144640, i64 1144662, i64 1144690}
!242 = !{i64 1145021, i64 1145048, i64 1145081, i64 1145102, i64 1145129, i64 1145155}
!243 = !{i64 2155957180}
!244 = !{i64 2155931026}
!245 = !{i64 6853201}
!246 = !{i64 2155935954}
!247 = !{i64 2155904165}
!248 = !{i64 2155904405}
!249 = !{i64 2155944955}
!250 = !{i64 2155945182}
!251 = !{i64 2155906375}
!252 = !{i64 2155906615}
!253 = !{i64 2155919973}
!254 = !{i64 2155922328}
!255 = !{i64 2155977739}
!256 = !{i64 2155978007}
!257 = !{i64 2155980777}
