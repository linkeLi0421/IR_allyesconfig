; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-davinci.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-davinci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.davinci_i2c_platform_data = type { i32, i32, i8, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.davinci_i2c_dev = type { ptr, ptr, %struct.completion, ptr, i32, ptr, i32, i32, i32, i8, %struct.i2c_adapter, %struct.notifier_block, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__UNIQUE_ID_alias311 = internal constant [39 x i8] c"i2c_davinci.alias=platform:i2c_davinci\00", section ".modinfo", align 1
@__initcall__kmod_i2c_davinci__312_967_davinci_i2c_init_driver4 = internal global ptr @davinci_i2c_init_driver, section ".initcall4.init", align 4
@davinci_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_i2c_probe, ptr @davinci_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_i2c_exit_driver = internal global ptr @davinci_i2c_exit_driver, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [43 x i8] c"i2c_davinci.author=Texas Instruments India\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [51 x i8] c"i2c_davinci.description=TI DaVinci I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [48 x i8] c"i2c_davinci.file=drivers/i2c/busses/i2c-davinci\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [24 x i8] c"i2c_davinci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_davinci\00", [20 x i8] zeroinitializer }, align 32
@davinci_i2c_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@davinci_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @davinci_i2c_suspend, ptr @davinci_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get irq resource\0A\00", [40 x i8] zeroinitializer }, align 32
@davinci_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 777, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"davinci_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-davinci.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_i2c_probe._entry_ptr = internal global ptr @davinci_i2c_probe._entry, section ".printk_index", align 4
@davinci_i2c_platform_data_default = internal global { %struct.davinci_i2c_platform_data, [20 x i8] } { %struct.davinci_i2c_platform_data { i32 100, i32 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,has-pfunc\00", [19 x i8] zeroinitializer }, align 32
@davinci_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 826, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to runtime_get device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@davinci_i2c_probe._entry_ptr.11 = internal global ptr @davinci_i2c_probe._entry.9, section ".printk_index", align 4
@davinci_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failure requesting irq %i\0A\00", [37 x i8] zeroinitializer }, align 32
@davinci_i2c_probe._entry_ptr.14 = internal global ptr @davinci_i2c_probe._entry.12, section ".printk_index", align 4
@davinci_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 842, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register cpufreq\0A\00", [36 x i8] zeroinitializer }, align 32
@davinci_i2c_probe._entry_ptr.17 = internal global ptr @davinci_i2c_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DaVinci I2C adapter\00", [44 x i8] zeroinitializer }, align 32
@i2c_davinci_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_davinci_xfer, ptr null, ptr null, ptr null, ptr @i2c_davinci_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@davinci_i2c_scl_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @davinci_i2c_get_scl, ptr @davinci_i2c_set_scl, ptr @davinci_i2c_get_sda, ptr null, ptr null, ptr @davinci_i2c_scl_prepare_recovery, ptr @davinci_i2c_scl_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@davinci_i2c_gpio_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_i2c_prepare_recovery, ptr @davinci_i2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scl\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sda\00", [28 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@i2c_davinci_init.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_davinci_init\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PSC  = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@i2c_davinci_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.24, i8 0, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLKL = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@i2c_davinci_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.25, i8 0, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLKH = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@i2c_davinci_init.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.26, i8 0, i8 69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bus_freq = %dkHz, bus_delay = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,keystone-i2c\00", [16 x i8] zeroinitializer }, align 32
@i2c_davinci_calc_clk_dividers.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c_davinci_calc_clk_dividers\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"input_clock = %d, CLK = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@i2c_davinci_isr.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_davinci_isr\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: stat=0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@i2c_davinci_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 615, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Too much work in one IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i2c_davinci_isr._entry_ptr = internal global ptr @i2c_davinci_isr._entry, section ".printk_index", align 4
@i2c_davinci_isr.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.34, i8 0, i8 -83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Address as slave interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@i2c_davinci_isr._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.4, i32 696, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unrecognized irq stat %d\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_davinci_isr._entry_ptr.37 = internal global ptr @i2c_davinci_isr._entry.35, section ".printk_index", align 4
@terminate_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RDR IRQ while no data requested\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"terminate_read\00", [17 x i8] zeroinitializer }, align 32
@terminate_read._entry_ptr = internal global ptr @terminate_read._entry, section ".printk_index", align 4
@terminate_write.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"terminate_write\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TDR IRQ while no data to send\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_davinci_xfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 -121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_davinci_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: msgs: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@i2c_davinci_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 544, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to runtime_get device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_davinci_xfer._entry_ptr = internal global ptr @i2c_davinci_xfer._entry, section ".printk_index", align 4
@i2c_davinci_xfer._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.4, i32 551, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for bus ready\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_davinci_xfer._entry_ptr.47 = internal global ptr @i2c_davinci_xfer._entry.45, section ".printk_index", align 4
@i2c_davinci_xfer.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.48, i8 0, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s [%d/%d] ret: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@i2c_davinci_wait_bus_not_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.49, ptr @.str.4, i32 396, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c_davinci_wait_bus_not_busy\00", [34 x i8] zeroinitializer }, align 32
@i2c_davinci_wait_bus_not_busy._entry_ptr = internal global ptr @i2c_davinci_wait_bus_not_busy._entry, section ".printk_index", align 4
@i2c_davinci_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 423, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"transfer to own address aborted\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_davinci_xfer_msg\00", [43 x i8] zeroinitializer }, align 32
@i2c_davinci_xfer_msg._entry_ptr = internal global ptr @i2c_davinci_xfer_msg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i2c_davinci_xfer_msg._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"controller timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_davinci_xfer_msg._entry_ptr.54 = internal global ptr @i2c_davinci_xfer_msg._entry.52, section ".printk_index", align 4
@i2c_davinci_xfer_msg._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 502, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"abnormal termination buf_len=%zu\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_davinci_xfer_msg._entry_ptr.57 = internal global ptr @i2c_davinci_xfer_msg._entry.55, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"davinci_i2c_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 952, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 956, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"davinci_i2c_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 753, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"davinci_i2c_pm\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 937, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 771, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 777, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [34 x i8] c"davinci_i2c_platform_data_default\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 139, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 798, i32 48 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 804, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 826, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 836, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 842, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 850, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"i2c_davinci_algo\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 748, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [30 x i8] c"davinci_i2c_scl_recovery_info\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 374, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [31 x i8] c"davinci_i2c_gpio_recovery_info\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 312, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 861, i32 49 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 867, i32 49 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 87, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 271, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 273, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 275, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 277, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 212, i32 50 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 248, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 613, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 615, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 692, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 696, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 586, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 595, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 540, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 544, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 551, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 557, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 396, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 423, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 492, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-davinci.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 501, i32 3 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_alias311, ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_davinci_i2c_exit_driver, ptr @__initcall__kmod_i2c_davinci__312_967_davinci_i2c_init_driver4, ptr @davinci_i2c_exit_driver, ptr @davinci_i2c_probe._entry, ptr @davinci_i2c_probe._entry.12, ptr @davinci_i2c_probe._entry.15, ptr @davinci_i2c_probe._entry.9, ptr @davinci_i2c_probe._entry_ptr, ptr @davinci_i2c_probe._entry_ptr.11, ptr @davinci_i2c_probe._entry_ptr.14, ptr @davinci_i2c_probe._entry_ptr.17, ptr @i2c_davinci_isr._entry, ptr @i2c_davinci_isr._entry.35, ptr @i2c_davinci_isr._entry_ptr, ptr @i2c_davinci_isr._entry_ptr.37, ptr @i2c_davinci_wait_bus_not_busy._entry, ptr @i2c_davinci_wait_bus_not_busy._entry_ptr, ptr @i2c_davinci_xfer._entry, ptr @i2c_davinci_xfer._entry.45, ptr @i2c_davinci_xfer._entry_ptr, ptr @i2c_davinci_xfer._entry_ptr.47, ptr @i2c_davinci_xfer_msg._entry, ptr @i2c_davinci_xfer_msg._entry.52, ptr @i2c_davinci_xfer_msg._entry.55, ptr @i2c_davinci_xfer_msg._entry_ptr, ptr @i2c_davinci_xfer_msg._entry_ptr.54, ptr @i2c_davinci_xfer_msg._entry_ptr.57, ptr @terminate_read._entry, ptr @terminate_read._entry_ptr, ptr @davinci_i2c_driver, ptr @.str, ptr @davinci_i2c_of_match, ptr @davinci_i2c_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @davinci_i2c_platform_data_default, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @i2c_davinci_algo, ptr @davinci_i2c_scl_recovery_info, ptr @davinci_i2c_gpio_recovery_info, ptr @.str.19, ptr @.str.20, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_platform_data_default to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_scl_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2c_gpio_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_isr._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terminate_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_xfer._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_wait_bus_not_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_xfer_msg._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_davinci_xfer_msg._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2c_init_driver() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_i2c_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_i2c_exit_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.store.select = select i1 %tobool.not, i32 -6, i32 %call
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev2, i32 noundef %spec.store.select, ptr noundef nonnull @.str.1) #10
  br label %cleanup140

if.end4:                                          ; preds = %entry
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 1472, i32 noundef 3520) #10
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.2) #13
  br label %cleanup140

if.end10:                                         ; preds = %if.end4
  %cmd_complete = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #10
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev5, ptr %call.i, align 8
  %irq13 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %irq13, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdata, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool17.not = icmp eq ptr %4, null
  br i1 %tobool17.not, label %land.lhs.true, label %if.end10.if.end45_crit_edge

if.end10.if.end45_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %if.then42, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #10
  %9 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %prop, align 4, !annotation !149
  %call.i231 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 12, i32 noundef 3520) #10
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i231, ptr %pdata, align 4
  %tobool25.not = icmp eq ptr %call.i231, null
  br i1 %tobool25.not, label %cleanup140.critedge, label %if.end27

if.end27:                                         ; preds = %if.then20
  %11 = call ptr @memcpy(ptr %call.i231, ptr @davinci_i2c_platform_data_default, i32 12)
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool32.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool32.not, label %if.then33, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prop, align 4
  %div = udiv i32 %15, 1000
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %17, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27.if.end35_crit_edge
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i232 = call ptr @of_find_property(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef null) #10
  %tobool.i = icmp ne ptr %call.i232, null
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 4
  %has_pfunc = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %22, i32 0, i32 3
  %frombool = zext i1 %tobool.i to i8
  %23 = ptrtoint ptr %has_pfunc to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %has_pfunc, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #10
  br label %if.end45

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @davinci_i2c_platform_data_default, ptr %pdata, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end35, %if.end10.if.end45_crit_edge
  %call47 = call ptr @devm_clk_get(ptr noundef %dev5, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call47, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call47 to i32
  br label %cleanup140

if.end53:                                         ; preds = %if.end45
  %call54 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %base = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call54, ptr %base, align 4
  %cmp.i233 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call54 to i32
  br label %cleanup140

if.end60:                                         ; preds = %if.end53
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %30, i32 noundef 1000) #10
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %32, i1 noundef zeroext true) #10
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_enable(ptr noundef %34) #10
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 8
  %call.i234 = call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %cmp66 = icmp slt i32 %call.i234, 0
  br i1 %cmp66, label %do.end70, label %if.end73

do.end70:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %call.i234) #13
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 8
  call fastcc void @pm_runtime_put_noidle(ptr noundef %40)
  br label %cleanup140

if.end73:                                         ; preds = %if.end60
  call fastcc void @i2c_davinci_init(ptr noundef nonnull %call.i)
  %41 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq13, align 8
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %call.i235 = call i32 @devm_request_threaded_irq(ptr noundef %dev5, i32 noundef %42, ptr noundef nonnull @i2c_davinci_isr, ptr noundef null, i32 noundef 0, ptr noundef %44, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool78.not = icmp eq i32 %call.i235, 0
  br i1 %tobool78.not, label %if.end85, label %do.end82

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq13, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.13, i32 noundef %46) #13
  br label %err_unuse_clocks

if.end85:                                         ; preds = %if.end73
  %freq_transition.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 11
  %47 = ptrtoint ptr %freq_transition.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @i2c_davinci_cpufreq_transition, ptr %freq_transition.i, align 8
  %call.i236 = call i32 @cpufreq_register_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %tobool87.not = icmp eq i32 %call.i236, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.16) #13
  br label %err_unuse_clocks

if.end93:                                         ; preds = %if.end85
  %adapter = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10
  %driver_data.i.i237 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 9, i32 8
  %48 = ptrtoint ptr %driver_data.i.i237 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i237, align 4
  %49 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 256, ptr %class, align 4
  %name94 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 12
  %call95 = call i32 @strlcpy(ptr noundef %name94, ptr noundef nonnull @.str.18, i32 noundef 48) #10
  %algo = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 2
  %51 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @i2c_davinci_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 9, i32 1
  %52 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev5, ptr %parent, align 8
  %timeout = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 7
  %53 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 100, ptr %timeout, align 4
  %of_node99 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %54 = ptrtoint ptr %of_node99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node99, align 8
  %of_node101 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 9, i32 27
  %56 = ptrtoint ptr %of_node101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %of_node101, align 8
  %57 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata, align 4
  %has_pfunc103 = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %has_pfunc103 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %has_pfunc103, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool104.not = icmp eq i8 %60, 0
  br i1 %tobool104.not, label %if.else106, label %if.then105

if.then105:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %bus_recovery_info = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 16
  %61 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @davinci_i2c_scl_recovery_info, ptr %bus_recovery_info, align 4
  br label %if.end128

if.else106:                                       ; preds = %if.end93
  %gpio_recovery = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %58, i32 0, i32 2
  %62 = ptrtoint ptr %gpio_recovery to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %gpio_recovery, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool108.not = icmp eq i8 %63, 0
  br i1 %tobool108.not, label %if.else106.if.end128_crit_edge, label %if.then109

if.else106.if.end128_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then109:                                       ; preds = %if.else106
  %bus_recovery_info110 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 16
  %64 = ptrtoint ptr %bus_recovery_info110 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @davinci_i2c_gpio_recovery_info, ptr %bus_recovery_info110, align 4
  %call112 = call ptr @devm_gpiod_get(ptr noundef %dev5, ptr noundef nonnull @.str.19, i32 noundef 15) #10
  store ptr %call112, ptr getelementptr inbounds (%struct.i2c_bus_recovery_info, ptr @davinci_i2c_gpio_recovery_info, i32 0, i32 8), align 4
  %cmp.i238 = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i238, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %call112 to i32
  br label %err_unuse_clocks

if.end118:                                        ; preds = %if.then109
  %call120 = call ptr @devm_gpiod_get(ptr noundef %dev5, ptr noundef nonnull @.str.20, i32 noundef 1) #10
  store ptr %call120, ptr getelementptr inbounds (%struct.i2c_bus_recovery_info, ptr @davinci_i2c_gpio_recovery_info, i32 0, i32 9), align 4
  %cmp.i239 = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %if.then123, label %if.end118.if.end128_crit_edge

if.end118.if.end128_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %call120 to i32
  br label %err_unuse_clocks

if.end128:                                        ; preds = %if.end118.if.end128_crit_edge, %if.else106.if.end128_crit_edge, %if.then105
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.davinci_i2c_dev, ptr %call.i, i32 0, i32 10, i32 11
  %69 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %nr, align 4
  %call129 = call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end128.err_unuse_clocks_crit_edge

if.end128.err_unuse_clocks_crit_edge:             ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unuse_clocks

if.end132:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 8
  %call.i240 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 12, i32 22
  %72 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store volatile i64 %call.i240, ptr %last_busy.i, align 8
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 8
  %call.i241 = call i32 @__pm_runtime_suspend(ptr noundef %74, i32 noundef 13) #10
  br label %cleanup140

err_unuse_clocks:                                 ; preds = %if.end128.err_unuse_clocks_crit_edge, %if.then123, %if.then115, %do.end91, %do.end82
  %r.0 = phi i32 [ %call.i235, %do.end82 ], [ %call.i236, %do.end91 ], [ %call129, %if.end128.err_unuse_clocks_crit_edge ], [ %65, %if.then115 ], [ %66, %if.then123 ]
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %76, i1 noundef zeroext false) #10
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 8
  %call.i242 = call i32 @__pm_runtime_idle(ptr noundef %78, i32 noundef 4) #10
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 8
  call void @__pm_runtime_disable(ptr noundef %80, i1 noundef zeroext true) #10
  br label %cleanup140

cleanup140.critedge:                              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #10
  br label %cleanup140

cleanup140:                                       ; preds = %cleanup140.critedge, %err_unuse_clocks, %if.end132, %do.end70, %if.then57, %if.then50, %do.end, %if.then
  %retval.1 = phi i32 [ %call3, %if.then ], [ %26, %if.then50 ], [ %28, %if.then57 ], [ %call.i234, %do.end70 ], [ %r.0, %err_unuse_clocks ], [ 0, %if.end132 ], [ -12, %do.end ], [ -12, %cleanup140.critedge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %freq_transition.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @cpufreq_unregister_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #10
  %adapter = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 10
  tail call void @i2c_del_adapter(ptr noundef %adapter) #10
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i17 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp = icmp slt i32 %call.i17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !152
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !153
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #10, !srcloc !154
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %6, i1 noundef zeroext false) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 4) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i17, %if.then.cleanup_crit_edge ], [ %call.i17, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #10, !srcloc !152
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !153
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_davinci_init(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %base.i.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !155
  %5 = and i16 %4, -8193
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %5) #10, !srcloc !154
  tail call fastcc void @i2c_davinci_calc_clk_dividers(ptr noundef %dev)
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 2048) #10, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_init.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_init, %do.body7)) #10
          to label %if.then [label %do.body7], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 48
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !155
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #10
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_init.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.23, i32 noundef %conv) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_init, %do.body28)) #10
          to label %if.then21 [label %do.body28], !srcloc !156

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i12) #10, !srcloc !155
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #10
  %conv24 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_init.__UNIQUE_ID_ddebug303, ptr noundef %17, ptr noundef nonnull @.str.24, i32 noundef %conv24) #10
  br label %do.body28

do.body28:                                        ; preds = %if.then21, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_init, %do.body49)) #10
          to label %if.then42 [label %do.body49], !srcloc !156

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14) #10, !srcloc !155
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  %conv45 = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_init.__UNIQUE_ID_ddebug304, ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef %conv45) #10
  br label %do.body49

do.body49:                                        ; preds = %if.then42, %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_init.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_init, %do.end67)) #10
          to label %if.then63 [label %do.end67], !srcloc !156

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %bus_delay = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %bus_delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bus_delay, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_init.__UNIQUE_ID_ddebug305, ptr noundef %29, ptr noundef nonnull @.str.26, i32 noundef %31, i32 noundef %33) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body49
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %35, i32 36
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16) #10, !srcloc !155
  %37 = or i16 %36, 8192
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i17 = getelementptr i8, ptr %39, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i17, i16 %37) #10, !srcloc !154
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i19, i16 9984) #10, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_davinci_isr(i32 noundef %this_irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %land.rhs.i, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

land.rhs.i:                                       ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.while.cond.preheader_crit_edge

land.rhs.i.while.cond.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %land.rhs.i.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %base.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev_id, i32 0, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %6, i32 40
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i169) #10, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not171 = icmp eq i16 %7, 0
  br i1 %tobool.not171, label %while.cond.preheader.while.end_crit_edge, label %do.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body.lr.ph:                                    ; preds = %while.cond.preheader
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %cmd_complete70 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev_id, i32 0, i32 2
  %buf_len51 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev_id, i32 0, i32 6
  %buf54 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev_id, i32 0, i32 5
  %terminate.i162 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev_id, i32 0, i32 9
  %stop = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev_id, i32 0, i32 8
  %cmd_err29 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev_id, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %while.cond.backedge.do.body_crit_edge, %do.body.lr.ph
  %9 = phi i16 [ %8, %do.body.lr.ph ], [ %95, %while.cond.backedge.do.body_crit_edge ]
  %count.0172 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %while.cond.backedge.do.body_crit_edge ]
  %conv173 = zext i16 %9 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_isr.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_isr, %do.end)) #10
          to label %if.then8 [label %do.end], !srcloc !156

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_isr.__UNIQUE_ID_ddebug309, ptr noundef %11, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %conv173) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %inc = add nuw nsw i32 %count.0172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0172)
  %cmp = icmp eq i32 %count.0172, 100
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.32) #13
  br label %while.end

if.end17:                                         ; preds = %do.end
  %14 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %do.end93 [
    i16 1, label %sw.bb
    i16 2, label %sw.bb18
    i16 3, label %sw.bb23
    i16 4, label %sw.bb38
    i16 5, label %sw.bb50
    i16 6, label %sw.bb69
    i16 7, label %do.body72
  ]

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %cmd_err29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_err29, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %cmd_err29, align 4
  %17 = ptrtoint ptr %buf_len51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %buf_len51, align 4
  tail call void @complete(ptr noundef %cmd_complete70) #10
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %cmd_err29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_err29, align 4
  %or20 = or i32 %19, 2
  store i32 %or20, ptr %cmd_err29, align 4
  %20 = ptrtoint ptr %buf_len51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buf_len51, align 4
  tail call void @complete(ptr noundef %cmd_complete70) #10
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %if.end17
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i144, i16 1024) #10, !srcloc !154
  %23 = ptrtoint ptr %buf_len51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_len51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25 = icmp eq i32 %24, 0
  br i1 %cmp25, label %land.lhs.true, label %sw.bb23.lor.lhs.false_crit_edge

sw.bb23.lor.lhs.false_crit_edge:                  ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb23
  %25 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp27.not = icmp eq i32 %26, 0
  br i1 %cmp27.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then31_crit_edge

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %sw.bb23.lor.lhs.false_crit_edge
  %27 = ptrtoint ptr %cmd_err29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd_err29, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %land.lhs.true.if.then31_crit_edge
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %30, i32 36
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i146) #10, !srcloc !155
  %32 = or i16 %31, 8
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %34, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i148, i16 %32) #10, !srcloc !154
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %lor.lhs.false.if.end36_crit_edge
  tail call void @complete(ptr noundef %cmd_complete70) #10
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %if.end17
  %35 = ptrtoint ptr %buf_len51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_len51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool40.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %sw.bb38
  %add.ptr.i150 = getelementptr i8, ptr %38, i32 24
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i150) #10, !srcloc !155
  %40 = lshr i16 %39, 8
  %conv43 = trunc i16 %40 to i8
  %41 = ptrtoint ptr %buf54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf54, align 8
  %incdec.ptr = getelementptr i8, ptr %42, i32 1
  store ptr %incdec.ptr, ptr %buf54, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv43, ptr %42, align 1
  %44 = ptrtoint ptr %buf_len51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_len51, align 4
  %dec = add i32 %45, -1
  store i32 %dec, ptr %buf_len51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool46.not = icmp eq i32 %dec, 0
  br i1 %tobool46.not, label %if.end48, label %if.then41.while.cond.backedge_crit_edge

if.then41.while.cond.backedge_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i152, i16 2048) #10, !srcloc !154
  br label %while.cond.backedge

if.else:                                          ; preds = %sw.bb38
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 36
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !155
  %49 = or i16 %48, 128
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %51, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %49) #10, !srcloc !154
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %53, i32 24
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i12.i) #10, !srcloc !155
  %55 = ptrtoint ptr %terminate.i162 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %terminate.i162, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i153 = icmp eq i8 %56, 0
  br i1 %tobool.not.i153, label %do.end.i, label %if.else.while.cond.backedge_crit_edge

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.38) #13
  br label %while.cond.backedge

sw.bb50:                                          ; preds = %if.end17
  %59 = ptrtoint ptr %buf_len51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_len51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool52.not = icmp eq i32 %60, 0
  br i1 %tobool52.not, label %if.else67, label %if.then53

if.then53:                                        ; preds = %sw.bb50
  %61 = ptrtoint ptr %buf54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf54, align 8
  %incdec.ptr55 = getelementptr i8, ptr %62, i32 1
  store ptr %incdec.ptr55, ptr %buf54, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  %conv56 = zext i8 %64 to i16
  %65 = shl nuw i16 %conv56, 8
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i155, i16 %65) #10, !srcloc !154
  %68 = ptrtoint ptr %buf_len51 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_len51, align 4
  %dec58 = add i32 %69, -1
  store i32 %dec58, ptr %buf_len51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec58)
  %tobool60.not = icmp eq i32 %dec58, 0
  br i1 %tobool60.not, label %if.end62, label %if.then53.while.cond.backedge_crit_edge

if.then53.while.cond.backedge_crit_edge:          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end62:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %71, i32 4
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i157) #10, !srcloc !155
  %73 = and i16 %72, -4097
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i159, i16 %73) #10, !srcloc !154
  br label %while.cond.backedge

if.else67:                                        ; preds = %sw.bb50
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i161 = getelementptr i8, ptr %77, i32 36
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i161) #10, !srcloc !155
  %79 = or i16 %78, -32760
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %81, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 %79) #10, !srcloc !154
  %82 = ptrtoint ptr %terminate.i162 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %terminate.i162, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i163 = icmp eq i8 %83, 0
  br i1 %tobool.not.i163, label %do.body.i, label %if.else67.while.cond.backedge_crit_edge

if.else67.while.cond.backedge_crit_edge:          ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

do.body.i:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @terminate_write.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_isr, %while.cond.backedge)) #10
          to label %if.then7.i [label %while.cond.backedge], !srcloc !156

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @terminate_write.__UNIQUE_ID_ddebug308, ptr noundef %85, ptr noundef nonnull @.str.41) #10
  br label %while.cond.backedge

sw.bb69:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %87, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i165, i16 8192) #10, !srcloc !154
  tail call void @complete(ptr noundef %cmd_complete70) #10
  br label %while.cond.backedge

do.body72:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_isr.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_isr, %while.cond.backedge)) #10
          to label %if.then86 [label %while.cond.backedge], !srcloc !156

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_isr.__UNIQUE_ID_ddebug310, ptr noundef %89, ptr noundef nonnull @.str.34) #10
  br label %while.cond.backedge

do.end93:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.36, i32 noundef %conv173) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end93, %if.then86, %do.body72, %sw.bb69, %if.then7.i, %do.body.i, %if.else67.while.cond.backedge_crit_edge, %if.end62, %if.then53.while.cond.backedge_crit_edge, %do.end.i, %if.else.while.cond.backedge_crit_edge, %if.end48, %if.then41.while.cond.backedge_crit_edge, %if.end36, %sw.bb18, %sw.bb
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %93, i32 40
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !155
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #10
  %tobool.not = icmp eq i16 %94, 0
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.do.body_crit_edge

while.cond.backedge.do.body_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %do.end15, %while.cond.preheader.while.end_crit_edge
  %96 = xor i1 %tobool.not171, true
  %cond = zext i1 %96 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %while.end ], [ 0, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_davinci_calc_clk_dividers(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %clk2 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %clk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk2, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %of_node4 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node4, align 8
  %div = udiv i32 %call, 12000000
  %8 = trunc i32 %div to i16
  %conv = add nsw i16 %8, -1
  %conv5 = zext i16 %conv to i32
  %add = add nuw nsw i32 %conv5, 1
  %div6 = udiv i32 %call, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %div6)
  %cmp = icmp ugt i32 %div6, 12000000
  %spec.select = select i1 %cmp, i16 %8, i16 %conv
  %conv8 = zext i16 %spec.select to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %spec.select)
  %cmp9 = icmp ugt i16 %spec.select, 1
  %sub12 = sub nsw i32 7, %conv8
  %cond = select i1 %cmp9, i32 5, i32 %sub12
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %7, ptr noundef nonnull @.str.27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %spec.select91 = select i1 %tobool14.not, i32 %cond, i32 6
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %entry.if.end16_crit_edge
  %d.0 = phi i32 [ %cond, %entry.if.end16_crit_edge ], [ %spec.select91, %land.lhs.true ]
  %add18 = add nuw nsw i32 %conv8, 1
  %div19 = udiv i32 %call, %add18
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %mul = mul i32 %10, 1000
  %div20 = udiv i32 %div19, %mul
  %div24 = udiv i32 %div19, %div20
  call void @__sanitizer_cov_trace_cmp4(i32 %div24, i32 %mul)
  %cmp27 = icmp ugt i32 %div24, %mul
  %inc30 = zext i1 %cmp27 to i32
  %spec.select92 = add i32 %div20, %inc30
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %10)
  %cmp33 = icmp ugt i32 %10, 100
  %shl = shl i32 %spec.select92, 1
  %div36 = udiv i32 %shl, 3
  %shr = lshr i32 %spec.select92, 1
  %clkl.0 = select i1 %cmp33, i32 %div36, i32 %shr
  %add38 = add i32 %clkl.0, %d.0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select92, i32 %add38)
  %cmp39 = icmp ugt i32 %spec.select92, %add38
  %sub43 = sub i32 %spec.select92, %add38
  %sub44 = sub i32 %clkl.0, %d.0
  %phi.cast = trunc i32 %sub43 to i16
  %shl46.neg = mul i32 %d.0, 65534
  %sub47 = add i32 %spec.select92, %shl46.neg
  %clkh.0 = select i1 %cmp39, i16 %phi.cast, i16 1
  %clkl.1 = select i1 %cmp39, i32 %sub44, i32 %sub47
  %11 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #10
  %base.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %11) #10, !srcloc !154
  %14 = tail call i16 @llvm.bswap.i16(i16 %clkh.0) #10
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i94, i16 %14) #10, !srcloc !154
  %conv50 = trunc i32 %clkl.1 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv50) #10
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i96, i16 %17) #10, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_calc_clk_dividers.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_calc_clk_dividers, %do.end)) #10
          to label %if.then56 [label %do.end], !srcloc !156

if.then56:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_calc_clk_dividers.__UNIQUE_ID_ddebug301, ptr noundef %21, ptr noundef nonnull @.str.29, i32 noundef %call, i32 noundef %spec.select92) #10
  br label %do.end

do.end:                                           ; preds = %if.then56, %if.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_davinci_cpufreq_transition(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr i8, ptr %nb, i32 -1360
  %lock_ops.i = getelementptr i8, ptr %nb, i32 -1344
  %0 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_ops.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %adapter, i32 noundef 1) #10
  %4 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %val, label %entry.if.end3_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr i8, ptr %nb, i32 -1452
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 36
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !155
  %8 = and i16 %7, -8193
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %8) #10, !srcloc !154
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %nb, i32 -1456
  tail call fastcc void @i2c_davinci_calc_clk_dividers(ptr noundef %add.ptr)
  %base.i.i10 = getelementptr i8, ptr %nb, i32 -1452
  %11 = ptrtoint ptr %base.i.i10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i10, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %12, i32 36
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i11) #10, !srcloc !155
  %14 = or i16 %13, 8192
  %15 = ptrtoint ptr %base.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i10, align 4
  %add.ptr.i8.i12 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i12, i16 %14) #10, !srcloc !154
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then, %entry.if.end3_crit_edge
  %17 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock_ops.i, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %20(ptr noundef %adapter, i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_davinci_xfer(ptr noundef %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_xfer, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_xfer.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %num) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.44, i32 noundef %call.i) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !152
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end11.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !153
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %adapter.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 10
  %timeout1.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 10, i32 7
  %12 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout1.i, align 4
  %add.i = add i32 %13, %11
  %base.i.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end14
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !155
  %17 = and i16 %16, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %do.body.i.i2c_davinci_wait_bus_not_busy.exit_crit_edge, label %if.end.i

do.body.i.i2c_davinci_wait_bus_not_busy.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_davinci_wait_bus_not_busy.exit

if.end.i:                                         ; preds = %do.body.i
  %call2.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %18
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %do.end6.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end6.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.46) #13
  %call9.i = tail call i32 @i2c_recover_bus(ptr noundef %adapter.i) #10
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %22, i32 8
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i21.i) #10, !srcloc !155
  %24 = and i16 %23, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool13.not.i = icmp eq i16 %24, 0
  br i1 %tobool13.not.i, label %do.end6.i.i2c_davinci_wait_bus_not_busy.exit_crit_edge, label %do.end20

do.end6.i.i2c_davinci_wait_bus_not_busy.exit_crit_edge: ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_davinci_wait_bus_not_busy.exit

i2c_davinci_wait_bus_not_busy.exit:               ; preds = %do.end6.i.i2c_davinci_wait_bus_not_busy.exit_crit_edge, %do.body.i.i2c_davinci_wait_bus_not_busy.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2394 = icmp sgt i32 %num, 0
  br i1 %cmp2394, label %for.body.lr.ph, label %i2c_davinci_wait_bus_not_busy.exit.out_crit_edge

i2c_davinci_wait_bus_not_busy.exit.out_crit_edge: ; preds = %i2c_davinci_wait_bus_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %i2c_davinci_wait_bus_not_busy.exit
  %sub = add nsw i32 %num, -1
  br label %for.body

do.end20:                                         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.46) #13
  br label %out

for.cond:                                         ; preds = %do.end44
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.095
  call void @__sanitizer_cov_trace_cmp4(i32 %i.095, i32 %sub)
  %cmp24 = icmp eq i32 %i.095, %sub
  %conv = zext i1 %cmp24 to i32
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %30)
  %cmp.i81 = icmp eq i16 %30, 8
  br i1 %cmp.i81, label %do.end.i, label %if.end.i83

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.50) #13
  br label %i2c_davinci_xfer_msg.exit

if.end.i83:                                       ; preds = %for.body
  %pdata1.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 12
  %33 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata1.i, align 4
  %bus_delay.i = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %bus_delay.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i82 = icmp eq i32 %36, 0
  br i1 %tobool.not.i82, label %if.end.i83.if.end14.i_crit_edge, label %cond.false11.i

if.end.i83.if.end14.i_crit_edge:                  ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

cond.false11.i:                                   ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %cond.false11.i, %if.end.i83.if.end14.i_crit_edge
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #10
  %base.i.i84 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 1
  %41 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i85, i16 %40) #10, !srcloc !154
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.095, i32 3
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf.i, align 4
  %buf16.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 5
  %45 = ptrtoint ptr %buf16.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %buf16.i, align 8
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.095, i32 2
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %len.i, align 4
  %conv17.i = zext i16 %47 to i32
  %buf_len.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 6
  %48 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv17.i, ptr %buf_len.i, align 4
  %stop18.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 8
  %49 = ptrtoint ptr %stop18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %stop18.i, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %47) #10
  %51 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i200.i = getelementptr i8, ptr %52, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i200.i, i16 %50) #10, !srcloc !154
  %cmd_complete.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 2
  %53 = ptrtoint ptr %cmd_complete.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %cmd_complete.i, align 4
  %cmd_err.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 4
  %54 = ptrtoint ptr %cmd_err.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %cmd_err.i, align 4
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.095, i32 1
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i, align 2
  %57 = and i16 %56, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool22.not.i = icmp eq i16 %57, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 1056, i32 1312
  %58 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool28.not.i = icmp eq i16 %58, 0
  %or30.i = or i32 %spec.select.i, 512
  %flag.1.i = select i1 %tobool28.not.i, i32 %or30.i, i32 %spec.select.i
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp34.i = icmp eq i16 %60, 0
  %or37.i = or i32 %flag.1.i, 128
  %flag.2.i = select i1 %cmp34.i, i32 %or37.i, i32 %flag.1.i
  %61 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %62, i32 4
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i202.i) #10, !srcloc !155
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #10
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %flags.i, align 2
  %67 = and i16 %66, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool43.not.i = icmp eq i16 %67, 0
  %w.0.v.i = select i1 %tobool43.not.i, i16 16, i16 8
  %w.0.i = or i16 %w.0.v.i, %64
  %68 = tail call i16 @llvm.bswap.i16(i16 %w.0.i) #10
  %69 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i204.i = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i204.i, i16 %68) #10, !srcloc !154
  %terminate.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 9
  %71 = ptrtoint ptr %terminate.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %terminate.i, align 8
  %conv52.i = trunc i32 %flag.2.i to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv52.i) #10
  %73 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %74, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i206.i, i16 %72) #10, !srcloc !154
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags.i, align 2
  %77 = and i16 %76, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool56.not.i = icmp eq i16 %77, 0
  br i1 %tobool56.not.i, label %land.lhs.true.i, label %if.end14.i.if.end63.i_crit_edge

if.end14.i.if.end63.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %78 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool58.not.i = icmp eq i32 %79, 0
  br i1 %tobool58.not.i, label %land.lhs.true.i.if.end63.i_crit_edge, label %if.then59.i

land.lhs.true.i.if.end63.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then59.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %buf16.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buf16.i, align 8
  %incdec.ptr.i = getelementptr i8, ptr %81, i32 1
  store ptr %incdec.ptr.i, ptr %buf16.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %conv61.i = zext i8 %83 to i16
  %84 = shl nuw i16 %conv61.i, 8
  %85 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %86, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i208.i, i16 %84) #10, !srcloc !154
  %87 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf_len.i, align 4
  %dec.i = add i32 %88, -1
  store i32 %dec.i, ptr %buf_len.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %land.lhs.true.i.if.end63.i_crit_edge, %if.end14.i.if.end63.i_crit_edge
  %or64.i = or i32 %flag.2.i, 8192
  br i1 %cmp24, label %land.lhs.true66.i, label %if.end63.i.if.end73.i_crit_edge

if.end63.i.if.end73.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

land.lhs.true66.i:                                ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp69.not.i = icmp eq i16 %90, 0
  %or72.i = or i32 %flag.2.i, 10240
  %spec.select198.i = select i1 %cmp69.not.i, i32 %or64.i, i32 %or72.i
  br label %if.end73.i

if.end73.i:                                       ; preds = %land.lhs.true66.i, %if.end63.i.if.end73.i_crit_edge
  %flag.3.i = phi i32 [ %or64.i, %if.end63.i.if.end73.i_crit_edge ], [ %spec.select198.i, %land.lhs.true66.i ]
  %conv74.i = trunc i32 %flag.3.i to i16
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv74.i) #10
  %92 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %93, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i210.i, i16 %91) #10, !srcloc !154
  %timeout.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %28, i32 0, i32 10, i32 7
  %94 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %timeout.i, align 4
  %call76.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete.i, i32 noundef %95) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %do.end81.i, label %if.end85.i

do.end81.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.53) #13
  %call83.i = tail call i32 @i2c_recover_bus(ptr noundef %adap) #10
  %98 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %buf_len.i, align 4
  br label %i2c_davinci_xfer_msg.exit

if.end85.i:                                       ; preds = %if.end73.i
  %99 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %buf_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool87.not.i = icmp eq i32 %100, 0
  br i1 %tobool87.not.i, label %if.end99.i, label %do.end91.i

do.end91.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.56, i32 noundef %100) #13
  %103 = ptrtoint ptr %terminate.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %terminate.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %buf_len.i, align 4
  br label %i2c_davinci_xfer_msg.exit

if.end99.i:                                       ; preds = %if.end85.i
  %105 = ptrtoint ptr %cmd_err.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cmd_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool101.not.i = icmp eq i32 %106, 0
  br i1 %tobool101.not.i, label %if.then105.i, label %if.end108.i, !prof !158

if.then105.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %len.i, align 4
  %conv107.i = zext i16 %108 to i32
  br label %i2c_davinci_xfer_msg.exit

if.end108.i:                                      ; preds = %if.end99.i
  %and110.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %if.end114.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @i2c_davinci_init(ptr noundef %28) #10
  br label %i2c_davinci_xfer_msg.exit

if.end114.i:                                      ; preds = %if.end108.i
  %and116.i = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %if.end114.i.i2c_davinci_xfer_msg.exit_crit_edge, label %if.then118.i

if.end114.i.i2c_davinci_xfer_msg.exit_crit_edge:  ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_davinci_xfer_msg.exit

if.then118.i:                                     ; preds = %if.end114.i
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %flags.i, align 2
  %111 = and i16 %110, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool122.not.i = icmp eq i16 %111, 0
  br i1 %tobool122.not.i, label %if.end126.i, label %if.then123.i

if.then123.i:                                     ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %len.i, align 4
  %conv125.i = zext i16 %113 to i32
  br label %i2c_davinci_xfer_msg.exit

if.end126.i:                                      ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %115, i32 36
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i212.i) #10, !srcloc !155
  %117 = or i16 %116, 8
  %118 = ptrtoint ptr %base.i.i84 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i84, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %119, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i214.i, i16 %117) #10, !srcloc !154
  br label %i2c_davinci_xfer_msg.exit

i2c_davinci_xfer_msg.exit:                        ; preds = %if.end126.i, %if.then123.i, %if.end114.i.i2c_davinci_xfer_msg.exit_crit_edge, %if.then112.i, %if.then105.i, %do.end91.i, %do.end81.i, %do.end.i
  %retval.0.i86 = phi i32 [ -99, %do.end.i ], [ -121, %do.end91.i ], [ %conv107.i, %if.then105.i ], [ -5, %if.then112.i ], [ %conv125.i, %if.then123.i ], [ -121, %if.end126.i ], [ -110, %do.end81.i ], [ -5, %if.end114.i.i2c_davinci_xfer_msg.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_davinci_xfer.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_davinci_xfer, %do.end44)) #10
          to label %if.then40 [label %do.end44], !srcloc !156

if.then40:                                        ; preds = %i2c_davinci_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 8
  %add = add nuw nsw i32 %i.095, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_davinci_xfer.__UNIQUE_ID_ddebug307, ptr noundef %121, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, i32 noundef %add, i32 noundef %num, i32 noundef %retval.0.i86) #10
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %i2c_davinci_xfer_msg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i86)
  %cmp45 = icmp slt i32 %retval.0.i86, 0
  br i1 %cmp45, label %do.end44.out_crit_edge, label %for.cond

do.end44.out_crit_edge:                           ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.end44.out_crit_edge, %for.cond.out_crit_edge, %do.end20, %i2c_davinci_wait_bus_not_busy.exit.out_crit_edge
  %ret.0 = phi i32 [ -5, %do.end20 ], [ %num, %i2c_davinci_wait_bus_not_busy.exit.out_crit_edge ], [ %retval.0.i86, %do.end44.out_crit_edge ], [ %num, %for.cond.out_crit_edge ]
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 8
  %call.i87 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 12, i32 22
  %124 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store volatile i64 %call.i87, ptr %last_busy.i, align 8
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 8
  %call.i88 = tail call i32 @__pm_runtime_suspend(ptr noundef %126, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end11.i.i.i.i, %do.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call.i, %do.end11.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i2c_davinci_func(ptr nocapture noundef readnone %adap) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2c_get_scl(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !155
  %5 = lshr i16 %4, 8
  %6 = and i16 %5, 1
  %and = zext i16 %6 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_i2c_set_scl(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %base.i2 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %3, i32 88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 256) #10, !srcloc !154
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 92
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i3, i16 256) #10, !srcloc !154
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2c_get_sda(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !155
  %5 = lshr i16 %4, 8
  %6 = and i16 %5, 2
  %and = zext i16 %6 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_i2c_scl_prepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #10, !srcloc !154
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !155
  %7 = and i16 %6, -8193
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i.i, i16 %7) #10, !srcloc !154
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 256) #10, !srcloc !154
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4, i16 256) #10, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_i2c_scl_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #10, !srcloc !154
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @i2c_davinci_init(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_i2c_prepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #10, !srcloc !154
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !155
  %7 = and i16 %6, -8193
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %7) #10, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_i2c_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @i2c_davinci_init(ptr noundef %1)
  ret void
}

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
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !155
  %5 = and i16 %4, -8193
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %5) #10, !srcloc !154
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i.i = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !155
  %5 = or i16 %4, 8192
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 %5) #10, !srcloc !154
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__UNIQUE_ID_alias311, !1, !"__UNIQUE_ID_alias311", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 950, i32 1}
!2 = !{ptr @__initcall__kmod_i2c_davinci__312_967_davinci_i2c_init_driver4, !3, !"__initcall__kmod_i2c_davinci__312_967_davinci_i2c_init_driver4", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 967, i32 1}
!4 = !{ptr @__exitcall_davinci_i2c_exit_driver, !5, !"__exitcall_davinci_i2c_exit_driver", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 973, i32 1}
!6 = !{ptr @__UNIQUE_ID_author313, !7, !"__UNIQUE_ID_author313", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 975, i32 1}
!8 = !{ptr @__UNIQUE_ID_description314, !9, !"__UNIQUE_ID_description314", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 976, i32 1}
!10 = !{ptr @__UNIQUE_ID_file315, !11, !"__UNIQUE_ID_file315", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 977, i32 1}
!12 = !{ptr @__UNIQUE_ID_license316, !11, !"__UNIQUE_ID_license316", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 956, i32 11}
!15 = !{ptr @davinci_i2c_driver, !16, !"davinci_i2c_driver", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 952, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 771, i32 41}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 777, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @davinci_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @davinci_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 798, i32 48}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 804, i32 12}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 826, i32 3}
!33 = !{ptr @davinci_i2c_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @davinci_i2c_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 836, i32 3}
!37 = !{ptr @davinci_i2c_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @davinci_i2c_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 842, i32 3}
!41 = !{ptr @davinci_i2c_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @davinci_i2c_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 850, i32 22}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 861, i32 49}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 867, i32 49}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @davinci_i2c_platform_data_default, !53, !"davinci_i2c_platform_data_default", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 139, i32 41}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 271, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @i2c_davinci_init.__UNIQUE_ID_ddebug302, !55, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 273, i32 2}
!60 = !{ptr @i2c_davinci_init.__UNIQUE_ID_ddebug303, !59, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 275, i32 2}
!63 = !{ptr @i2c_davinci_init.__UNIQUE_ID_ddebug304, !62, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 277, i32 2}
!66 = !{ptr @i2c_davinci_init.__UNIQUE_ID_ddebug305, !65, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 212, i32 50}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 248, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @i2c_davinci_calc_clk_dividers.__UNIQUE_ID_ddebug301, !70, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 613, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @i2c_davinci_isr.__UNIQUE_ID_ddebug309, !74, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 615, i32 4}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @i2c_davinci_isr._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @i2c_davinci_isr._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 692, i32 4}
!84 = !{ptr @i2c_davinci_isr.__UNIQUE_ID_ddebug310, !83, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 696, i32 4}
!87 = !{ptr @i2c_davinci_isr._entry.35, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @i2c_davinci_isr._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 586, i32 3}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @terminate_read._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @terminate_read._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 595, i32 3}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @terminate_write.__UNIQUE_ID_ddebug308, !95, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!98 = !{ptr @i2c_davinci_algo, !99, !"i2c_davinci_algo", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 748, i32 35}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 540, i32 2}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @i2c_davinci_xfer.__UNIQUE_ID_ddebug306, !101, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 544, i32 3}
!106 = !{ptr @i2c_davinci_xfer._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @i2c_davinci_xfer._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 551, i32 3}
!110 = !{ptr @i2c_davinci_xfer._entry.45, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @i2c_davinci_xfer._entry_ptr.47, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 557, i32 3}
!114 = !{ptr @i2c_davinci_xfer.__UNIQUE_ID_ddebug307, !113, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 396, i32 2}
!117 = !{ptr @i2c_davinci_wait_bus_not_busy._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @i2c_davinci_wait_bus_not_busy._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 423, i32 3}
!121 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @i2c_davinci_xfer_msg._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @i2c_davinci_xfer_msg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 492, i32 3}
!126 = !{ptr @i2c_davinci_xfer_msg._entry.52, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @i2c_davinci_xfer_msg._entry_ptr.54, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 501, i32 3}
!130 = !{ptr @i2c_davinci_xfer_msg._entry.55, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @i2c_davinci_xfer_msg._entry_ptr.57, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @davinci_i2c_scl_recovery_info, !133, !"davinci_i2c_scl_recovery_info", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 374, i32 37}
!134 = !{ptr @davinci_i2c_gpio_recovery_info, !135, !"davinci_i2c_gpio_recovery_info", i1 false, i1 false}
!135 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 312, i32 37}
!136 = !{ptr @davinci_i2c_of_match, !137, !"davinci_i2c_of_match", i1 false, i1 false}
!137 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 753, i32 34}
!138 = !{ptr @davinci_i2c_pm, !139, !"davinci_i2c_pm", i1 false, i1 false}
!139 = !{!"../drivers/i2c/busses/i2c-davinci.c", i32 937, i32 32}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
!150 = !{i8 0, i8 2}
!151 = !{i64 2148232920}
!152 = !{i64 717743, i64 717768, i64 717790, i64 717806, i64 717818, i64 717838, i64 717862, i64 717878, i64 717890}
!153 = !{i64 2148233108}
!154 = !{i64 6854009}
!155 = !{i64 6854209}
!156 = !{i64 2148715316, i64 2148715321, i64 2148715334, i64 2148715378, i64 2148715412, i64 2148715433}
!157 = !{i64 2155830631}
!158 = !{!"branch_weights", i32 2000, i32 1}
